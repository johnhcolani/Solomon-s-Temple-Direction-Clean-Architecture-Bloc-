import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solomon_prayers_compass/features/temple_direction/presentation/screens/splash_screen.dart';
import 'features/temple_direction/data/models/location_data_source.dart';
import 'features/temple_direction/data/repository/temple_direction_repository_impl.dart';
import 'features/temple_direction/domain/usecases/get_direction.dart';
import 'features/temple_direction/presentation/bloc/splash_bloc/splash_bloc.dart';
import 'features/temple_direction/presentation/bloc/direction_bloc.dart';

void main() async{
  final dataSource = LocationDataSource();
  final bearing = await dataSource.getDirectionToTemple(40.7128, -74.0060); // New York
  print("Bearing from NY to Temple: $bearing"); // Should print ~70°
  WidgetsFlutterBinding.ensureInitialized();
       SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const SolomonTempleApp());
}

class SolomonTempleApp extends StatelessWidget {
  const SolomonTempleApp({super.key});

  @override
  Widget build(BuildContext context) {
    final directionRepository = DirectionRepositoryImpl(
      locationDataSource: LocationDataSource(),
    );
    final getDirection = GetDirection(directionRepository);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DirectionBloc(getDirection: getDirection),
        ),
        BlocProvider(
          create: (context) => SplashBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Temple of Solomon Direction',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const SplashScreen(),
      ),
    );
  }
}
