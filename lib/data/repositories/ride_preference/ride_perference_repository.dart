import 'package:blabla/model/ride_pref/ride_pref.dart';

abstract class RidePerferenceRepository {
  Future<List<RidePreference>> getRidePref();
}
