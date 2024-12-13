import 'package:flutter_test/flutter_test.dart';
import 'package:solomon_prayers_compass/core/utils/location_util.dart';

void main(){
  group('LocationUtil.calculateBearing', (){
test('Calculates correct bearing from one point to another', (){
  // Define start and end coordinates
<<<<<<< HEAD
  final startLatitude = 31.7784;
  final startLongitude = 35.2309;
  final endLatitude = 21.4225;
  final endLongitude = 39.8262;
=======
  const startLatitude = 31.7784;
  const startLongitude = 35.2309;
  const endLatitude = 21.4225;
  const endLongitude = 39.8262;
>>>>>>> dc2c875 (Fixed Video player and gradle)

  // Calculate the expected bearing using this function
  final calculatedBearing = LocationUtil.calculateBearing(
      startLatitude, startLongitude, endLatitude, endLongitude);

<<<<<<< HEAD
  final expectedBearing = 157.29;
=======
  const expectedBearing = 157.29;
>>>>>>> dc2c875 (Fixed Video player and gradle)

  expect(calculatedBearing, closeTo(expectedBearing, 0.1));

});

test('Bearing is correctly normalized to 0-360 degrees', () {
<<<<<<< HEAD
  final startLatitude = 31.7784;
  final startLongitude = 35.2309;
  final endLatitude = -31.7784;
  final endLongitude = -35.2309;
=======
  const startLatitude = 31.7784;
  const startLongitude = 35.2309;
  const endLatitude = -31.7784;
  const endLongitude = -35.2309;
>>>>>>> dc2c875 (Fixed Video player and gradle)

  final bearing = LocationUtil.calculateBearing(
    startLatitude,
    startLongitude,
    endLatitude,
    endLongitude,
  );

  // Ensure the bearing is within the expected 0-360 range
  expect(bearing, greaterThanOrEqualTo(0.0));
  expect(bearing, lessThanOrEqualTo(360.0));
});

  });
}