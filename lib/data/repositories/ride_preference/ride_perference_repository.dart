import 'package:blabla/model/ride_pref/ride_pref.dart';

abstract class RidePerferenceRepository {
  Future<List<RidePreference>> getRidePref();
  Future<void> addRidePref(RidePreference pref);
  Future<void> removeRidePref(RidePreference pref);
}
