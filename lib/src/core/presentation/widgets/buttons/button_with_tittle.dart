
import 'package:flutter/material.dart';
import 'package:flutter_chillhall_app/theme/text_theme.dart';

import '../../../../../resources/color_resources.dart';

class ButtonWithTittle extends StatelessWidget{
  final String? hintText;
  final String? tittleText;
  final String? additionalTittleText;
  final String? buttonText;
  final Color buttonColor;
  final Color strokeColor;
  final double width;
  final double height;
  final double borderRadius;
  final TextStyle? buttonTextStyle;
  final String? route;
  final Function? function;
  final bool checkAuthentication;
  bool isMandatoryField;


  ButtonWithTittle({Key? key,this.buttonText,this.buttonColor=AppColors.red400,this.width=100,this.height=35,this.borderRadius=8,this.buttonTextStyle, this.route, this.function, this.checkAuthentication=false, this.hintText, this.tittleText, this.additionalTittleText,this.isMandatoryField=false, this.strokeColor=AppColors.white10}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: buttonColor,
              border: Border.all(
                color: strokeColor,
                width: 1,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(borderRadius))
          ),
          child: MaterialButton(
            padding: EdgeInsets.all(0),
            onPressed: (){

              /*if(checkAuthentication && !Provider.of<AuthProvider>(context,listen: false).authenticationStatus){
            Navigator.pushNamed(context, Routes.LOGIN);
            return;
          }

          //function will check first
          if(function!=null){
            function!();
            return;
          }

          if(route!=null) {
            pushNewScreen(
              context,
              screen: RouteFinder.findRoute(route!),
              withNavBar: true, // OPTIONAL VALUE. True by default.
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          }*/
            },
            child: Text(buttonText??"",style: buttonTextStyle,),
          ),
        )
      ],
    );
  }
}