
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/components/colors.dart';

class Generalbtn extends StatelessWidget {
    const Generalbtn({required this.text,super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: (){
          },
            style:ElevatedButton.styleFrom(
              shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r)
              ),
            ), child: Text(text,
          style: TextStyle(
            color: whiteColor,
            fontSize: 20.sp
          ),
          ),


          ),
        ),
      ),
    );
  }
}
class FirstBtn extends StatelessWidget {
   const FirstBtn({required this.text1,super.key,required this.onPressed});
   final String text1;
   final VoidCallback? onPressed;

   @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 110.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15).r,
        color: blueColor
      ),
      child: TextButton(onPressed: onPressed,child: Text(text1,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: whiteColor
      ),
      ),
      ),
    );
  }
}

