import 'package:flutter/material.dart';
import 'package:flutter_chillhall_app/resources/color_resources.dart';

class AuthProviderItem extends StatelessWidget{
  final String image;
  final double height;
  final double width;
  const AuthProviderItem({Key? key, required this.image, this.height=32, this.width=32}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: AppColors.white10,
        padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
        child: Image.asset(image,height: height,width: width,),
      ),
    );
  }

}