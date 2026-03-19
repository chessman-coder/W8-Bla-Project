import 'package:blabla/data/dummy_data.dart';
import 'package:blabla/data/repositories/ride_preference/ride_perference_repository.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';

class RidePerferenceRepositoryMock implements RidePerferenceRepository {
  @override
  Future<List<RidePreference>> getRidePref() async {
    return fakeRidePrefs;
  }
}
