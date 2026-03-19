import 'package:blabla/data/repositories/location/location_repository.dart';
import 'package:blabla/data/repositories/location/location_repository_mock.dart';
import 'package:blabla/data/repositories/ride/ride_repository.dart';
import 'package:blabla/data/repositories/ride/ride_repository_mock.dart';
import 'package:blabla/data/repositories/ride_preference/ride_perference_repository.dart';
import 'package:blabla/data/repositories/ride_preference/ride_perference_repository_mock.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'main_common.dart';

List<SingleChildWidget> get devProvider {
  return [
    Provider<LocationRepository>(create: (_) => LocationRepositoryMock()),
    Provider<RidePerferenceRepository>(
      create: (_) => RidePerferenceRepositoryMock(),
    ),
    Provider<RideRepository>(create: (_) => RideRepositoryMock()),
  ];
}

void main() {
  mainCommon(devProvider);
}
