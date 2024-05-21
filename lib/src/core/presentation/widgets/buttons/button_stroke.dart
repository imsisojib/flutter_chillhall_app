import 'package:flutter/material.dart';
import 'package:flutter_chillhall_app/resources/color_resources.dart';
import 'package:provider/provider.dart';

class ButtonStroke extends StatelessWidget{

  final String? buttonText;
  final Color buttonColor;
  final double width;
  final double height;
  final double borderRadius;
  final TextStyle? buttonTextStyle;
  final Function? function;
  final bool checkAuthentication;

  const ButtonStroke({Key? key,this.buttonText,this.buttonColor=AppColors.red400,this.width=100,this.height=35,this.borderRadius=8,this.buttonTextStyle, this.function, this.checkAuthentication=false}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: buttonColor,
          border: Border.all(
            color: AppColors.red400,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius))
      ),
      child: MaterialButton(
        padding: EdgeInsets.all(0),
        onPressed: (){

          //function will check first
          if(function!=null){
            function!();
            return;
          }
        },
        child: Text(buttonText??"",style: buttonTextStyle,),
      ),
    );
  }

}