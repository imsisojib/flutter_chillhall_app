import 'package:flutter/material.dart';
import 'package:flutter_chillhall_app/resources/color_resources.dart';
import 'package:flutter_chillhall_app/theme/text_theme.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


class BasicTextField extends StatefulHookWidget{
  final String? initialValue;
  final String? hintText;
  final String? tittleText;
  final String? additionalTittleText;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final Function? onChanged;
  final bool isMandatoryField;
  final Color enableBorderColor;
  ///tittleText: if it is null, then tittle won't be shown.
  BasicTextField({Key? key, this.initialValue, this.tittleText, this.additionalTittleText, this.controller, this.inputType, this.hintText,this.onChanged,this.isMandatoryField=false,this.enableBorderColor=AppColors.white10,}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BasicTextFieldState(tittleText: tittleText,additionalTittleText: additionalTittleText,hintText: hintText,controller: controller,inputType: inputType,onChanged: onChanged, enableBorderColor: enableBorderColor, isMandatoryField: isMandatoryField);
  }

}

class _BasicTextFieldState extends State<BasicTextField>{
  String? initialValue;
  final String? hintText;
  final String? tittleText;
  final String? additionalTittleText;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final Function? onChanged;
  bool isMandatoryField;
  Color enableBorderColor;
  _BasicTextFieldState({this.initialValue,this.tittleText,this.additionalTittleText, this.controller, this.inputType, this.hintText,this.onChanged,required this.enableBorderColor,required this.isMandatoryField});

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
            visible: tittleText==null?false:true,
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Text(tittleText??"",style: TextDecorations.getNormalTextStyle(context),),
                      isMandatoryField?Text("*",style: TextDecorations.getNormalTextStyle(context,color: AppColors.red400),):Text(""),
                      Text(additionalTittleText??"",style: TextDecorations.getNormalTextStyle(context),),
                    ],),
                  ],),
                const SizedBox(height: 6,),
              ],
            )),
        SizedBox(
          child: TextFormField(
            initialValue: initialValue,
            onChanged: (value){
              if(onChanged != null) onChanged!(value);
            },
            scrollPhysics: const BouncingScrollPhysics(),
            controller: controller,
            keyboardType: inputType,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
              isDense: true,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: enableBorderColor,
                  ),
                  borderRadius: BorderRadius.circular(4)
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1,
                      color: enableBorderColor,
                      style: BorderStyle.solid
                  ),
                  borderRadius: BorderRadius.circular(4)
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                  color: AppColors.white25,
                fontSize: 13,
              ),

            ),
          ),
        ),
      ],
    );
  }

}