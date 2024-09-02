/// Most computers, even on mobile platforms, have multi-core CPUs.
/// To take advantage of all those cores, developers traditionally use
/// shared-memory threads running concurrently. However, shared-state
/// concurrency is error prone and can lead to complicated code.
///
///Instead of threads, all Dart code runs inside of isolates. Each isolate has
/// its own memory heap, ensuring that no isolate's state is accessible
/// from any other isolate.
///
/// For more information on Isolates, check links in dart docs
