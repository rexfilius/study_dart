import 'dart:convert';
import 'dart:io';

import 'package:study_dart/generated/route_guide.pb.dart';

const coordFactor = 1e7;

final List<Feature> featuresDb = _readDatabase();

List<Feature> _readDatabase() {
  final dbData = File('data/route_guide_db.json').readAsStringSync();
  final List db = jsonDecode(dbData);
  return db.map((entry) {
    final location = Point()
      ..latitude = entry['location']['latitude']
      ..longitude = entry['location']['longitude'];
    return Feature()
      ..name = entry['name']
      ..location = location;
  }).toList();
}
