import 'package:flutter/material.dart';
import 'package:test_bloc_and_firebase/utils/styles.dart';

class CustomAppBarWithoutLeading extends StatelessWidget {
  String title;

  Widget? rightIcon1;
  VoidCallback? rightIcon1Press;


  CustomAppBarWithoutLeading(
      {Key? key,
      required this.title,

      this.rightIcon1,
      this.rightIcon1Press,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: AppBar(
        title: Text(
          title,
          style: Style.getSemiBoldFont(18),
        ),
        centerTitle: false,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        actions: [
          GestureDetector(
            onTap: rightIcon1Press,
            child: rightIcon1,
          )
        ],
      ),
    );
  }
}
class CustomAppBarWithLeading extends StatelessWidget {
  String title;
  Widget? leftIcon1;
  Widget? rightIcon1;
  VoidCallback? rightIcon1Press;
  VoidCallback? leftIcon1Press;

  CustomAppBarWithLeading(
      {Key? key,
        required this.title,
        this.leftIcon1,
        this.rightIcon1,
        this.rightIcon1Press,
        this.leftIcon1Press,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Style.getSemiBoldFont(18),
      ),
      centerTitle: false,
      elevation: 0,
      automaticallyImplyLeading: false,
      // leading: GestureDetector(
      //   onTap: leftIcon1Press,
      //   child: leftIcon1,
      // ),
      actions: [
        GestureDetector(
          onTap: rightIcon1Press,
          child: rightIcon1,
        )
      ],
    );
  }
}