import 'package:flutter/material.dart';
import 'package:my_fapp/widgets/Mybuttonwidget.dart';
import 'package:my_fapp/appColors/app_colors.dart';
import 'package:my_fapp/widgets/textfromfieldwidget.dart';
import 'package:my_fapp/styles/login_screenstyle.dart';
import 'package:my_fapp/svgimages/svg_images.dart';
import 'package:my_fapp/widgets/Mybuttonwidget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_fapp/styles/signupscreenstyle.dart';

class Signup extends StatelessWidget {

Widget socialButton({required Widget child, required VoidCallback onPressed}) {
    return MaterialButton(
      shape: OutlineInputBorder(
        borderSide: BorderSide(
          width: 0.5,
          color: AppColors.baseGrey40Color,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
  Widget buildTopPart(){
    return Column(
      children: [
        Image.asset(
          "images/Logo.png",
        height:150,
        ),
        Textfromfieldwidget(
          hintText: "Full name",
          obscureText: false,
        ),
          Textfromfieldwidget(
          hintText: "Email",
          obscureText: false,
        ),
          Textfromfieldwidget(
          hintText: "Password",
          obscureText: true,
        ),
          Textfromfieldwidget(
          hintText: "Confirm",
          obscureText: true,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: MyButtonWidget(
            onPress: (){},
            color: AppColors.baseDarkPinkColor,
            text: "Create an account",
          ),
        ),
        SizedBox(
          height:20,
        ),
        RichText(
          text: TextSpan(
            text: "By Signing up you agree to our\n\t",
            style: SignUpScreenStyles.signInAgressStyle,
            children: <TextSpan>[
              TextSpan(
                text: "Terms",
                style: SignUpScreenStyles.termsTextStyle,
              ),
              TextSpan(
                text: "and \t",
                style: SignUpScreenStyles.andTextStyle,
              ),
              TextSpan(
                text: "Conditions ",
                style: SignUpScreenStyles.condtionTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget buildBottomPart(){
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "or sign in with social networks",
            style: SignUpScreenStyles.signinsocialStyles,
          ),
          SizedBox(
            height: 10,
          ),
      Padding(padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              socialButton(
                onPressed: (){},
                child: SvgPicture.asset(
                  SvgImages.facebook,
                  color: AppColors.baseBlackColor,
                  width: 45,
              ),
              ),
              socialButton(
                onPressed: (){},
                child: SvgPicture.asset(
                  SvgImages.google,
                  color: AppColors.baseBlackColor,
                  width: 45,
              ),
              ),
              socialButton(
                onPressed: (){},
                child: SvgPicture.asset(
                  SvgImages.twitter,
                  color: AppColors.baseBlackColor,
                  width: 45,
              ),
              ),
          ],
        ),
        ),
        Container(
          margin: EdgeInsets.all(20.0),
          child: MaterialButton(
            onPressed: (){},
            color: AppColors.baseGrey10Color,
             height: 55, 
             elevation: 0, 
          child: Center(
            child: Text(
              "Sign Up",
              style: SignUpScreenStyles.signupbuttonStyle,
            ),
          ),
          ),
        ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          buildTopPart(),
          buildBottomPart(),
        ],
      ),
      ),
    );
  }
}