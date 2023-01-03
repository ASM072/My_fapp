// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../appColors/app_colors.dart';
import '../styles/detailscreenstyles.dart';

class DropDownButtonWidget extends StatefulWidget {
  final String hintText;
  String? ratingController;
  final List<String> item;
  DropDownButtonWidget({required this.hintText, required this.ratingController, required this.item});
  @override
  _DropDownButtonWidgetState createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
            fillColor: AppColors.baseWhiteColor,
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),),),
        hint: Text(
          widget.hintText,
          style: DetailScreenStyles.productDropDownStyle,
        ),
        value: widget.ratingController,
        items: widget.item
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ))
            .toList(),
        onChanged: (value) {
          setState(() {
            widget.ratingController = value;
          });
        },
      ),
    );
  }
}
