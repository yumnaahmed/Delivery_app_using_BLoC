
import 'package:flutter/material.dart';

class Style{
  static getRegularFont(double fontSize,){
    return TextStyle(fontSize: fontSize);
  }
  static getSemiBoldFont(double fontSize, ){
    return TextStyle(fontSize: fontSize,fontWeight: FontWeight.w500);
  }
  static getBoldFont(double fontSize,){
    return TextStyle(fontSize: fontSize,fontWeight: FontWeight.bold);
  }

}