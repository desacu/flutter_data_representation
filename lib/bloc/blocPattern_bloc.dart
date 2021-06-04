import 'package:bloc/bloc.dart';
import 'package:data_representation/bloc/blocPattern.dart';

class BlocPatternBloc extends Bloc<BlocPatternEvent, BlocPatternState> {
  @override
  get initialState => BlocPatternInitial();

  @override
  Stream<BlocPatternState> mapEventToState(BlocPatternEvent event) async* {
    if (event is BlocPatternIncrementedCount) {
      try {
        // uncomment the following line to show error status.
        // throw Error();
        int newCount = state.count + 1;
        yield BlocPatternIncrementCountSuccess(newCount);
      } catch (e) {
        yield BlocPatternIncrementCountFailure(state.count, 'A error has occurred');
      }
    }
  }
}
