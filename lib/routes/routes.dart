import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PageRouting{

static goToNextPage({required BuildContext context, required Widget navigateTo}){
  return Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context)=> navigateTo),
      );
}
}