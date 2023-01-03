import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../appColors/app_colors.dart';
import '../../svgimages/svg_images.dart';
import '../../widgets/Mybuttonwidget.dart';


class ProfileScreen extends StatelessWidget {
  AppBar buildAppBar(){
    return AppBar(
      elevation: 0.70,
      centerTitle: true,
      backgroundColor: AppColors.baseWhiteColor,
      title: const Text(
        "Account",
        style: TextStyle(
          color: AppColors.baseBlackColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: (){},
          icon: SvgPicture.asset(
            SvgImages.edit,
            color: AppColors.baseBlackColor,
            width: 25,
          ),
        ),
      ],
      shadowColor: AppColors.baseGrey10Color,
    );
  }

  Widget buildListTileWidget({required String leading, required String trailing}){
    return ListTile(
                  tileColor: AppColors.baseWhiteColor,
                  leading: Text(
                    leading,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  trailing: Text(
                    trailing,
                    style: const TextStyle(
                      fontSize: 16,
                    )
                  )

                );
  }

  Widget buildBottomListTile({required String leading, required String trailing}){
                return  ListTile(
                  onTap:(){},
                  tileColor: AppColors.baseWhiteColor,
                  leading: Text(
                    leading,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Wrap(
                    spacing: 5,
                    children: [
                      Text(
                        trailing,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                        )
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size:20,
                      ),
                    ],
                  ),
                );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: AppColors.baseGrey10Color,
      appBar: buildAppBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children:[
          Container(
            height: 200,
            margin: const EdgeInsets.only(bottom: 10),
            color: AppColors.baseWhiteColor,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Center(
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                        "https://images.theconversation.com/files/417198/original/file-20210820-25-1j3afhs.jpeg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip"
                      ),
                    ),
                  ),
                  Text(
                    "ASM",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "A B C .....",
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            )
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            color: AppColors.baseWhiteColor,
            child: Column(
              children: [
                buildListTileWidget(
                  leading: "Full Name",
                  trailing: "A S ,sdmsdM",
                ),
                const Divider(),
                buildListTileWidget(
                  leading: "Email",
                  trailing: "adlfndnd@nfsd,sM",
                ),
                buildListTileWidget(
                  leading: "Address",
                  trailing: "1249340234",
                ),
                buildListTileWidget(
                  leading: "Payment",
                  trailing: "6023  **** ****  1233",
                ),
              ]
            )
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            color: AppColors.baseWhiteColor,
            child: Column(
              children: [
                buildBottomListTile(
                  leading: "WishList",
                  trailing: "5",
                ),
                const Divider(),
                buildBottomListTile(
                  leading: "MyBag",
                  trailing: "3",
                ),
                const Divider(),
                buildBottomListTile(
                  leading: "MyOrders",
                  trailing: "one in transit",
                ),
              ]
            )
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            child: MyButtonWidget(
              color: AppColors.baseDarkPinkColor,
              onPress: (){},
              text: "Log Out",
            ),
          ),
        ],
      )
    );
  }
}