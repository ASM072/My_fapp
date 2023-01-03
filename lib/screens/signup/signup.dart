import 'package:flutter/material.dart';
import '../../widgets/Mybuttonwidget.dart';
import '../../appColors/app_colors.dart';
import '../../widgets/textfromfieldwidget.dart';
import '../../svgimages/svg_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../styles/signupscreenstyle.dart';

class Signup extends StatelessWidget {

Widget socialButton({required Widget child, required VoidCallback onPressed}) {
    return MaterialButton(
      shape: OutlineInputBorder(
        borderSide: const BorderSide(
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
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: MyButtonWidget(
            onPress: (){},
            color: AppColors.baseDarkPinkColor,
            text: "Create an account",
          ),
        ),
        const SizedBox(
          height:20,
        ),
        RichText(
          text: const TextSpan(
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
    return SizedBox(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "or sign in with social networks",
            style: SignUpScreenStyles.signinsocialStyles,
          ),
          const SizedBox(
            height: 10,
          ),
      Padding(padding: const EdgeInsets.all(10.0),
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
          margin: const EdgeInsets.all(20.0),
          child: MaterialButton(
            onPressed: (){},
            color: AppColors.baseGrey10Color,
             height: 55, 
             elevation: 0, 
          child: const Center(
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
        physics: const BouncingScrollPhysics(),
        children: [
          buildTopPart(),
          buildBottomPart(),
        ],
      ),
      ),
    );
  }
}