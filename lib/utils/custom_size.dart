import 'package:flutter/cupertino.dart';

class CustomSize{
  static sizeHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
  static sizeWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
    //423.5
  }
}