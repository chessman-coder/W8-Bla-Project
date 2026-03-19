import 'package:blabla/data/repositories/ride_preference/ride_perference_repository.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';
import 'package:flutter/material.dart';

class RidePreferenceState extends ChangeNotifier {
  final RidePerferenceRepository _repository;
  RidePreference? _selectedPref;

  List<RidePreference> _prefHistory = [];
  RidePreferenceState(this._repository) {
    _loadHistory();
  }

  Future<void> _loadHistory() async {
    _prefHistory = await _repository.getRidePref();
    notifyListeners();
  }

  RidePreference? get selectedPref => _selectedPref;

  List<RidePreference> get prefHistory => List.unmodifiable(_prefHistory);

  Future<void> selectPref(RidePreference pref) async {
    if (pref != _selectedPref) {
      _selectedPref = pref;
      await _repository.addRidePref(pref);
      _prefHistory = await _repository.getRidePref();
      notifyListeners();
    }
  }
}
