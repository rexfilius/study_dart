/// A thread is a sequence of commands that a computer executes.
/// Some programming languages support multithreading, which is running
/// multiple threads at the same time, while others do not.
/// Dart, in particular, is a single-threaded language.
///
/// To understand Dart's model for handling long-running tasks, and also to see
/// why the creators of Dart decided to make Dart single-threaded, it's helpful
/// to understand the difference between parallelism and concurrency.
/// In common English, these words mean approximately the same thing,
/// but in computer science, there's a distinction.
///
/// PARALLELISM is when multiple tasks run at the same time on multiple
/// processors or CPU cores. CONCURRENCY, on the other hand, is when multiple
/// tasks take turns running on a single CPU core.
///
/// When a restaurant has a single person alternately taking orders and
/// clearing tables, that's concurrency. But a restaurant that has one person
/// taking orders and a different person clearing tables, that's parallelism.
///
/// Dart's single thread runs in what it calls an isolate. Each isolate has its
/// own allocated memory area, which ensures that no isolate can access any
/// other isolate's state. That means that there's no need for a complicated
/// locking system. It also means that sensitive data is much more secure.
/// Such a system greatly reduces the cognitive load on a programmer.
///
/// SYNCHRONOUS vs ASYNCHRONOUS
/// The word synchronous is composed of syn, meaning "together", and chron,
/// meaning "time", thus together in time. Synchronous code is where each
/// instruction is executed in order, one line of code immediately following
/// the previous one. This is in contrast to asynchronous code, which means not
/// together in time. That is, with asynchronous code, certain tasks are
/// rescheduled to be run in the future when the thread isn't busy.
///
/// but How does Dart manage to schedule tasks asynchronously?
/// Dart uses what it calls an event loop to execute tasks that had previously
/// been postponed. The event loop has two queues: a microtask queue and an
/// event queue. The microtask queue is mostly used internally by Dart.
/// The event queue is for events like a user entering a keystroke or touching
/// the screen, or data coming from a database, file, or remote server.
///
/// Things to note =>
/// 1. Synchronous tasks in the main isolate thread are always run immediately.
/// You can't interrupt them.
/// 2. If Dart finds any long-running tasks that agree to be
/// postponed, Dart puts them in the event queue.
/// 3. When Dart is finished running the synchronous tasks, the event loop
/// checks the microtask queue. If the microtask queue has any tasks, the event
/// loop puts them on the main thread to execute next. The event loop
/// keeps checking the microtask queue until it’s empty.
/// 4. If the synchronous tasks and microtask queue are both empty, then the
/// event loop sends the next waiting task in the event queue to run in the
/// main thread. Once it gets there, the code is executed synchronously. Just
/// like any other synchronous code, nothing can interrupt it after it starts.
/// 5. If any new microtasks enter the microtask queue, the event loop always
/// handles them before the next event in the event queue.
/// 6.  This process continues until all of the queues are empty.
///
/// NOTE: When people say Dart is single-threaded, they mean that Dart only
/// runs on a single thread in the isolate. However, that doesn't mean you
/// can't have tasks running on another thread.
void main() {

}