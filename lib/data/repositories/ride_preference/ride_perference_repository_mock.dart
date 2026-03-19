import 'package:blabla/data/dummy_data.dart';
import 'package:blabla/data/repositories/ride_preference/ride_perference_repository.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';

class RidePerferenceRepositoryMock implements RidePerferenceRepository {
  @override
  Future<List<RidePreference>> getRidePref() async {
    return fakeRidePrefs;
  }

  @override
  Future<void> addRidePref(RidePreference pref) async {
    return fakeRidePrefs.add(pref);
  }

  @override
  Future<void> removeRidePref(RidePreference pref) async {
    fakeRidePrefs.remove(pref);
  }
}
