
import 'package:flutter/material.dart';

class RoutesUserProvider extends ChangeNotifier {
  int _indexRoute = 0;

  int get indexRoute => _indexRoute; 

  set indexRoute(int newIndex){
    _indexRoute = newIndex;
    notifyListeners();
  }
}