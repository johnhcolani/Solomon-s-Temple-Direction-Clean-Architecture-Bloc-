import 'package:flutter_bloc/flutter_bloc.dart';
import 'splash_event.dart';
import 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitialState()) {
    on<StartSplashEvent>((event, emit) async {
      // Simulate a delay to show the splash screen
<<<<<<< HEAD
      await Future.delayed(Duration(seconds: 3));
=======
      await Future.delayed(const Duration(seconds: 3));
>>>>>>> dc2c875 (Fixed Video player and gradle)
      emit(SplashFinishedState());
    });
  }
}
