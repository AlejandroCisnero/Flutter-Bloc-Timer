class Ticker {
  const Ticker();

  Stream<int> ticker({required int ticks}) {
    return Stream.periodic(
      const Duration(seconds: 1),
      ((computationCount) {
        return ticks - computationCount - 1;
      }),
    );
  }
}
