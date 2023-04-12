
import 'package:flutter/material.dart';

bool stringToBool(String data){
  if (data.toLowerCase() == "true" || data.toLowerCase() == "1") {
    return true;
  }
  return false;
}


Color generateColorFromName(String name) {
  // Obtener el hashcode del nombre
  int hashCode = name.hashCode;

  // Calcular los valores RGB en base al hashcode
  int red = (hashCode & 0xFF0000) >> 16;
  int green = (hashCode & 0x00FF00) >> 8;
  int blue = hashCode & 0x0000FF;

  // Crear y devolver un objeto Color con los valores RGB y una opacidad de 1.0
  return Color.fromRGBO(red, green, blue, 0.6);
}