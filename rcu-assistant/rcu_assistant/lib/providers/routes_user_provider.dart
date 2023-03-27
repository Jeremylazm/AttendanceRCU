
import 'package:flutter/material.dart';

class RoutesUserProvider extends ChangeNotifier {
  int _indexRoute = 0;
  int _indexAdminRoute = 0;

  int get indexRoute => _indexRoute; 
  int get indexAdminRoute => _indexAdminRoute; 

  set indexRoute(int newIndex){
    _indexRoute = newIndex;
    notifyListeners();
  }

  set indexAdminRoute(int newIndex){
    _indexAdminRoute = newIndex;
    notifyListeners();
  }
}