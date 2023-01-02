import 'package:flutter/material.dart';
import '../styles/detailscreenstyles.dart';
import '../appColors/app_colors.dart';
import '../screens/detailscreen/detailscreen.dart';

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
      margin: EdgeInsets.all(10.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
            fillColor: AppColors.baseWhiteColor,
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),),),
        hint: Text(
          "${widget.hintText}",
          style: DetailScreenStyles.productDropDownStyle,
        ),
        value: widget.ratingController,
        items: widget.item
            .map((e) => DropdownMenuItem(
                  child: Text(e),
                  value: e,
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
