import '../../widgets/togglebuttonwidget.dart';
import 'package:flutter/material.dart';
import 'package:my_fapp/styles/homepagestyle.dart';
import 'package:my_fapp/screens/homepage/homepage.dart';
import 'package:my_fapp/svgimages/svg_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_fapp/appColors/app_colors.dart';
import 'package:my_fapp/widgets/showallwidget.dart';
import 'package:my_fapp/data/homepagedata.dart';
import 'package:my_fapp/models/singleproductmodel.dart';
import 'package:my_fapp/styles/subcategorystyles.dart';
import 'package:my_fapp/widgets/togglebuttonwidget.dart';



class ToggleButtonWidget extends StatefulWidget {

  @override
  _ToggleButtonWidgetState createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
List<bool> isSelected = [true, false, false];
FocusNode focusNodeButton1 = FocusNode();
FocusNode focusNodeButton2 = FocusNode();
FocusNode focusNodeButton3 = FocusNode();
List<FocusNode>? focusToggle;


@override 
void initState() { 
  focusToggle = [
    focusNodeButton1,
    focusNodeButton2,
    focusNodeButton3,
  ];
  super.initState();
}

@override
void dispose() {
  focusNodeButton1.dispose();
    focusNodeButton2.dispose();
    focusNodeButton3.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      borderWidth: 0,
      focusColor: null,
      fillColor: Colors.transparent,
      selectedColor: AppColors.baseDarkPinkColor,
      selectedBorderColor: Colors.transparent,
      borderColor: Colors.transparent,
      focusNodes: focusToggle,
      children: [
        Icon(
          Icons.grid_view,
          size: 15,
        ),
        Icon(
          Icons.view_agenda_outlined,
          size: 15,
        ),
        Icon(
          Icons.crop_landscape_sharp,
          size: 15,
        ),
      ],
      onPressed: (int index){
        
        setState((){
          for(
            int buttonIndex=0; 
            buttonIndex<isSelected.length;
            buttonIndex++
            ){
            if(buttonIndex==index){
              isSelected[buttonIndex]=true;
            }
            else{
              isSelected[buttonIndex]=false;
            }
          }
        }
        );
      },
      isSelected: isSelected,
    );
  }
}
