import 'package:flutter/material.dart';
import 'package:flutter_chillhall_app/resources/color_resources.dart';
import 'package:flutter_chillhall_app/resources/images.dart';
import 'package:flutter_chillhall_app/src/core/presentation/widgets/basic_textfield.dart';
import 'package:flutter_chillhall_app/src/core/presentation/widgets/buttons/button_filled.dart';
import 'package:flutter_chillhall_app/src/core/presentation/widgets/password_textfield.dart';
import 'package:flutter_chillhall_app/src/features/auth/presentation/widgets/auth_provider_item.dart';
import 'package:flutter_chillhall_app/theme/text_theme.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios)),
                    SizedBox(
                      height: 16,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Image.asset(
                            AppIcons.chillHallLogoMotto,
                            width: 200,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Text(
                      "Sign in",
                      style: TextDecorations.geSemiBoldTextStyle(context, fontSize: 24.0),
                    ),
                    Row(
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextDecorations.getNormalTextStyle(context, fontSize: 12.0),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        InkWell(
                            onTap: () {},
                            child: Text(
                              "Create an account",
                              style: TextDecorations.getNormalTextStyle(context, fontSize: 12.0, color: Colors.blue),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    BasicTextField(
                      tittleText: "Email or Phone Number",
                      hintText: "johndoe@gmail.com",
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    PasswordTextField(
                      tittleText: "Password",
                      hintText: "Password",
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Forget password?",
                            style: TextDecorations.getNormalTextStyle(context, fontSize: 12.0),
                          )),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    ButtonFilled(
                      buttonText: "Sign in",
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      checkAuthentication: false,
                      function: () {},
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                            child: Container(
                          color: AppColors.white10,
                          height: 1,
                        )),
                        SizedBox(
                          width: 4,
                        ),
                        Text("Continue with"),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Container(
                            color: AppColors.white10,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: AuthProviderItem(
                            image: AppIcons.google_logo,
                          ),
                        ),
                        Expanded(
                          child: AuthProviderItem(
                            image: AppIcons.facebook_logo,
                          ),
                        ),
                        Expanded(
                            child: AuthProviderItem(
                          image: AppIcons.appple_logo,
                        )),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
