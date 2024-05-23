import 'package:flutter/material.dart';
import 'package:flutter_chillhall_app/resources/color_resources.dart';
import 'package:flutter_chillhall_app/resources/images.dart';
import 'package:flutter_chillhall_app/router/routes.dart';
import 'package:flutter_chillhall_app/src/core/presentation/widgets/basic_textfield.dart';
import 'package:flutter_chillhall_app/src/core/presentation/widgets/buttons/button_filled.dart';
import 'package:flutter_chillhall_app/src/core/presentation/widgets/password_textfield.dart';
import 'package:flutter_chillhall_app/src/features/auth/presentation/widgets/auth_provider_item.dart';

class ScreenSignUp extends StatelessWidget {
  ScreenSignUp({super.key});

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

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
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
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
                      "Sign up",
                      style: theme.textTheme.displayMedium,
                    ),
                    Row(
                      children: [
                        Text(
                          "Already have account?",
                          style: theme.textTheme.labelMedium,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              Routes.loginScreen,
                              (route) => false,
                            );
                          },
                          child: Text(
                            "Sign in",
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    BasicTextField(
                      tittleText: "Name",
                      hintText: "John Doe",
                      controller: _nameController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    BasicTextField(
                      tittleText: "Email or Phone Number",
                      hintText: "johndoe@gmail.com",
                      controller: _emailController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    PasswordTextField(
                      tittleText: "Password",
                      hintText: "Password",
                      controller: _passwordController,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    ButtonFilled(
                      checkAuthentication: false,
                      buttonText: "Sign Up",
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      function: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          Routes.homeScreen,
                          (route) => false,
                        );
                      },
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
                        Text(
                          "Continue with",
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: AppColors.white25,
                          ),
                        ),
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
