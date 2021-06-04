abstract class BlocPatternState {
  int get count;
}

class BlocPatternInitial extends BlocPatternState {
  @override
  int count = 0;
}

class BlocPatternIncrementCountSuccess extends BlocPatternState {
  @override
  final int count;

  BlocPatternIncrementCountSuccess(this.count);
}

class BlocPatternIncrementCountFailure extends BlocPatternState {
  @override
  final int count;
  final String errorMessage;

  BlocPatternIncrementCountFailure(this.count, this.errorMessage);
}
