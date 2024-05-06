import 'package:flutter/material.dart';

class HomeState = HomeStateBase with _$HomeSTate;

abstract class HomesStateBase with Store {
  HomesStateBase(this._dayRepository);

  final DayRepository _dayRepository;

  @observable
  Day day;

  @observable
  bool isLoading = false;

  @action
  Future<void> getDay({
    @required double latitude,
    @required double longitude,
  }) async {
    isLoading = true;
    final data =
        await _dayRepository.getDay(latitude: latitude, longitude: longitude);
    day = data;
    isLoading = false;
  }
}
