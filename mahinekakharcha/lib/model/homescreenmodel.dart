import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeScreenModel {
  double _width;
  double _height;
  Map<String, double> _data = {
    'Electricity Bill': 1240.00,
    'Servant Payment': 6000.00,
    'Mobile Bill': 2000.00
  };

  Map<String, double> get data => _data;

  set data(Map<String, double> data) {
    this._data = data;
  }

  set width(double width) {
    this._width = width;
  }

  double get width => _width;
  set height(double height) {
    this._height = height;
  }

  double get height => _height;
}
