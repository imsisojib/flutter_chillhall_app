import 'package:flutter/material.dart';
import 'package:flutter_chillhall_app/resources/color_resources.dart';
import 'package:flutter_chillhall_app/resources/images.dart';
import 'package:flutter_chillhall_app/router/routes.dart';
import 'package:flutter_chillhall_app/src/core/presentation/widgets/basic_textfield.dart';
import 'package:flutter_chillhall_app/src/core/presentation/widgets/buttons/button_filled.dart';
import 'package:flutter_chillhall_app/src/core/presentation/widgets/password_textfield.dart';
import 'package:flutter_chillhall_app/src/features/auth/presentation/widgets/auth_provider_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios)),
                    const SizedBox(
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
                    const SizedBox(
                      height: 48,
                    ),
                    Text(
                      "Sign in",
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontSize: 20.sp,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Don't have an account?",
                          style: theme.textTheme.labelMedium,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                Routes.signupScreen,
                              );
                            },
                            child: Text(
                              "Create an account",
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: Colors.blue,
                              ),
                            ),),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    BasicTextField(
                      tittleText: "Email or Phone Number",
                      hintText: "johndoe@gmail.com",
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    PasswordTextField(
                      tittleText: "Password",
                      hintText: "Password",
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Forget password?",
                            style: theme.textTheme.labelMedium,
                          )),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    ButtonFilled(
                      buttonText: "Sign in",
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      checkAuthentication: false,
                      function: () {},
                    ),
                    const SizedBox(
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
                        const SizedBox(
                          width: 4,
                        ),
                        const Text("Continue with"),
                        const SizedBox(
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
                    const SizedBox(
                      height: 24,
                    ),
                    const Row(
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
