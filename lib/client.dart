import 'dart:math' show Random;

import 'package:grpc/grpc.dart';
import 'package:study_dart/common.dart';
import 'package:study_dart/generated/route_guide.pbgrpc.dart';

class Client {
  late RouteGuideClient stub;

  Future<void> main(List<String> args) async {
    // To call service methods, we first need to create a gRPC channel
    // to communicate with the server. We create this by passing the
    // server address and port number to ClientChannel()
    final channel = ClientChannel(
      '127.0.0.1',
      port: 8080,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    // Once the gRPC channel is setup, we need a client stub to perform RPCs.
    // We get it by instantiating RouteGuideClient, which is provided by the
    // package generated from the ".proto" file.
    stub = RouteGuideClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
    );

    // Run all of the demos in order.
    try {
      await runGetFeature();
      await runListFeatures();
      await runRecordRoute();
      await runRouteChat();
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
  }

  void printFeature(Feature feature) {
    final latitude = feature.location.latitude;
    final longitude = feature.location.longitude;
    final name = feature.name.isEmpty
        ? 'no feature'
        : 'feature called "${feature.name}"';
    //
    final lat = latitude / coordFactor;
    final long = longitude / coordFactor;
    print('Found $name at $lat, $long');
  }

  /// Run the getFeature demo. Calls getFeature with a point known to have a
  /// feature and a point known not to have a feature.
  Future<void> runGetFeature() async {
    final point1 = Point()
      ..latitude = 409146138
      ..longitude = -746188906;
    final point2 = Point()
      ..latitude = 0
      ..longitude = 0;

    printFeature(await stub.getFeature(point1));
    printFeature(await stub.getFeature(point2));
  }

  /// Run the listFeatures demo. Calls listFeatures with a rectangle containing
  /// all of the features in the pre-generated database. Prints each response as
  /// it comes in.
  Future<void> runListFeatures() async {
    final lo = Point()
      ..latitude = 400000000
      ..longitude = -750000000;
    final hi = Point()
      ..latitude = 420000000
      ..longitude = -730000000;
    final rect = Rectangle()
      ..lo = lo
      ..hi = hi;

    print('Looking for features between 40, -75 and 42, -73');
    await for (var feature in stub.listFeatures(rect)) {
      printFeature(feature);
    }
  }

  /// Run the recordRoute demo. Sends several randomly chosen points from the
  /// pre-generated feature database with a variable delay in between. Prints
  /// the statistics when they are sent from the server.
  Future<void> runRecordRoute() async {
    Stream<Point> generateRoute(int count) async* {
      final random = Random();

      for (var i = 0; i < count; i++) {
        final point = featuresDb[random.nextInt(featuresDb.length)].location;
        print(
            'Visiting point ${point.latitude / coordFactor}, ${point.longitude / coordFactor}');
        yield point;
        await Future.delayed(Duration(milliseconds: 200 + random.nextInt(100)));
      }
    }

    final summary = await stub.recordRoute(generateRoute(10));
    print('Finished trip with ${summary.pointCount} points');
    print('Passed ${summary.featureCount} features');
    print('Travelled ${summary.distance} meters');
    print('It took ${summary.elapsedTime} seconds');
  }

  /// Run the routeChat demo. Send some chat messages, and print any chat
  /// messages that are sent from the server.
  Future<void> runRouteChat() async {
    RouteNote createNote(String message, int latitude, int longitude) {
      final location = Point()
        ..latitude = latitude
        ..longitude = longitude;
      return RouteNote()
        ..message = message
        ..location = location;
    }

    final notes = <RouteNote>[
      createNote('First message', 0, 0),
      createNote('Second message', 0, 1),
      createNote('Third message', 1, 0),
      createNote('Fourth message', 0, 0),
    ];

    Stream<RouteNote> outgoingNotes() async* {
      for (final note in notes) {
        // Short delay to simulate some other interaction.
        await Future.delayed(Duration(milliseconds: 10));
        print('Sending message ${note.message} at ${note.location.latitude}, '
            '${note.location.longitude}');
        yield note;
      }
    }

    final call = stub.routeChat(outgoingNotes());
    await for (var note in call) {
      print(
          'Got message ${note.message} at ${note.location.latitude}, ${note.location.longitude}');
    }
  }
}
