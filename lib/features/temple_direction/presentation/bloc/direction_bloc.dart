import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solomon_prayers_compass/features/temple_direction/presentation/bloc/direction_event.dart';
import 'package:solomon_prayers_compass/features/temple_direction/presentation/bloc/direction_state.dart';
import '../../domain/usecases/get_direction.dart';

class DirectionBloc extends Bloc<DirectionEvent, DirectionState> {
  final GetDirection getDirection;

  DirectionBloc({required this.getDirection}) : super(InitialState()) {
    on<GetDirectionEvent>((event, emit) async {
      print("📡 GetDirectionEvent received");
      print("📍 From: Lat ${event.latitude}, Lon ${event.longitude}");
      print("🕌 To: Temple at Lat 31.7784, Lon 35.2353");
      emit(LoadingState());
      final failureOrDirection = await getDirection(Params(latitude: event.latitude, longitude: event.longitude));
      failureOrDirection.fold(
            (failure) => print("❌ Error calculating direction: $failure"),
            (direction) => print("🧭 Calculated bearing: ${direction.bearing.toStringAsFixed(2)}°"),
      );
      failureOrDirection.fold(
            (failure) => emit(ErrorState("Failed to fetch direction: $failure")),
            (direction) => emit(LoadedState(direction.bearing)),
      );
    });
  }
}