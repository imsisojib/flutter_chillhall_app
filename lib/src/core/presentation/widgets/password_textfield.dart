import 'package:flutter/material.dart';
import 'package:flutter_chillhall_app/resources/color_resources.dart';
import 'package:flutter_chillhall_app/theme/text_theme.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PasswordTextField extends StatefulHookWidget {
  final String? initialValue;
  final String? hintText;
  final String? tittleText;
  final String? additionalTittleText;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final Function? onChanged;
  final bool isPasswordVisible;
  final Color enableBorderColor;
  final double height;

  ///use isExpand=false, in Password or email fields, where sized can't be updated.
  ///Reason to make this component: basically we need textfield with tittle. so here it is.
  ///tittleText: if it is null, then tittle won't be shown.
  ///isPassword is false by default
  ///isPasswordVisible is false by default
  const PasswordTextField({
    super.key,
    this.initialValue,
    this.height = 55,
    this.tittleText,
    this.additionalTittleText,
    this.controller,
    this.inputType,
    this.hintText,
    this.onChanged,
    this.isPasswordVisible = false,
    this.enableBorderColor = AppColors.white10,
  });

  @override
  State<StatefulWidget> createState() {
    return _PasswordTextFieldState(
        initialValue: initialValue,
        height: height,
        tittleText: tittleText,
        additionalTittleText: additionalTittleText,
        hintText: hintText,
        controller: controller,
        inputType: inputType,
        onChanged: onChanged,
        isPasswordVisible: isPasswordVisible,
        enableBorderColor: enableBorderColor);
  }
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final String? initialValue;
  final String? hintText;
  final String? tittleText;
  final String? additionalTittleText;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final Function? onChanged;
  bool isPasswordVisible;
  Color enableBorderColor;
  double height;

  _PasswordTextFieldState(
      {this.initialValue,
      required this.height,
      this.tittleText,
      this.additionalTittleText,
      this.controller,
      this.inputType,
      this.hintText,
      this.onChanged,
      required this.isPasswordVisible,
      required this.enableBorderColor});

  @override
  void dispose() {
    //controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
            visible: tittleText == null ? false : true,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          tittleText ?? "",
                          style: TextDecorations.getNormalTextStyle(context),
                        ),
                        Text(
                          additionalTittleText ?? "",
                          style: TextDecorations.getNormalTextStyle(context),
                        ),
                      ],
                    ),
                    Visibility(
                      visible: true, //always will be used for password field
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                        child: isPasswordVisible
                            ? const Icon(
                                Icons.visibility,
                                color: AppColors.red400,
                              )
                            : const Icon(
                                Icons.visibility_off,
                                color: AppColors.red400,
                              ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
              ],
            )),
        TextFormField(
          initialValue: initialValue,
          onChanged: (value) {
            if (onChanged != null) onChanged!(value);
          },
          scrollPhysics: const BouncingScrollPhysics(),
          maxLines: 1,
          maxLength: null,
          obscureText: !isPasswordVisible,
          controller: controller,
          keyboardType: inputType,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
            isDense: true,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: enableBorderColor,
                ),
                borderRadius: BorderRadius.circular(4)),
            border: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: enableBorderColor, style: BorderStyle.solid), borderRadius: BorderRadius.circular(4)),
            hintText: hintText,
            hintStyle: TextStyle(
              color: AppColors.white25,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}
