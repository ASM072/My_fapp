import 'package:flutter/material.dart';
import 'package:my_fapp/widgets/Mybuttonwidget.dart';
import 'package:my_fapp/appColors/app_colors.dart';
import 'package:my_fapp/widgets/textfromfieldwidget.dart';
import 'package:my_fapp/styles/login_screenstyle.dart';
import 'package:my_fapp/svgimages/svg_images.dart';
import 'package:my_fapp/widgets/Mybuttonwidget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_fapp/screens/signup/signup.dart';
import 'package:my_fapp/routes/routes.dart';
import 'package:my_fapp/styles/signupscreenstyle.dart';



class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}



class _LoginScreenState extends State<LoginScreen> {
Widget buildTopPart(){
  return Column(
    children: [
      Image.asset(
        "images/Logo.png",
        height: 150,
        ),
        Column(
          children: [
            Textfromfieldwidget(
              hintText: "E-mail",
              obscureText: false,
            ),
            Textfromfieldwidget(
              hintText: "Password",
              obscureText: true,
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: MyButtonWidget(
                text: "Sign In",
                color: AppColors.baseBlackColor,
                onPress: (){
                  },
                ), 
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: MyButtonWidget(
                text: "Sign Up",
                color: AppColors.baseDarkPinkColor,
                onPress: () { 
                 PageRouting.goToNextPage(
                  context: context,
                navigateTo: Signup(),
            );
          },
                ), 
              ),
            ],
          ),
        ),
         SizedBox(
              height: 20,
            ),
            Text("Forgot Password", style: LoginScreenStyles.forgotPasswordStyles,), 
     ],
  );
}

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
Widget buildBottomPart({required BuildContext context}){
  return Container(
    height: 300,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "or sign in with social networks", 
        style: LoginScreenStyles.signinSocialStyles
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
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
            color: AppColors.baseGrey10Color,
             height: 55, 
             elevation: 0, 
             shape: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
             ),
          child: Center(
            child: Text(
              "Sign Up",
              style: LoginScreenStyles.signupbuttonStyles,
            ),
          ),
          onPressed: () { 
            PageRouting.goToNextPage(
              context: context,
              navigateTo: Signup(),
            );
          },
          ),
        ),
      ],
    ),
  );
}


  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, 
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildTopPart(),
                  buildBottomPart(context: context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
