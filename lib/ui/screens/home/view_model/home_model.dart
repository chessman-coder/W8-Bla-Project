import 'package:blabla/model/ride_pref/ride_pref.dart';
import 'package:blabla/ui/states/ride_preference_state.dart';
import 'package:flutter/material.dart';

class HomeModel extends ChangeNotifier {
  final RidePreferenceState _ridePrefState;

  HomeModel({required RidePreferenceState ridePrefState})
    : _ridePrefState = ridePrefState {
    _ridePrefState.addListener(notifyListeners);
  }

  RidePreference? get selectedPref => _ridePrefState.selectedPref;
  List<RidePreference> get prefHistory => _ridePrefState.prefHistory;
  Future<void> selectPref(RidePreference pref) async {
    await _ridePrefState.selectPref(pref);
  }

  @override
  void dispose() {
    _ridePrefState.removeListener(notifyListeners);
    super.dispose();
  }
}
