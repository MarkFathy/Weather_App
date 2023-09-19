import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/components/colors.dart';

class DefaultTextField extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final bool obsecure;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;
  final String? hintText;
  final String? labelText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final VoidCallback? onEditingCompleted;
  final ValueChanged<String>? onFieldSubmitted;
  final bool readOnly;




  const DefaultTextField({
    super.key,
    required this.controller,
    required this.validator,
    this.keyboardType = TextInputType.text,
    this.obsecure = false,
    this.readOnly = false,
    this.suffixIcon,
    this.prefixIcon,
    this.hintText,
    this.labelText,
    this.onChanged,
    this.onEditingCompleted,
    this.onFieldSubmitted,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obsecure,
      onChanged: onChanged,
      onEditingComplete: onEditingCompleted,
      cursorColor: blueColor,
      readOnly: readOnly,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: whiteColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: whiteColor,
          ),
        ),
        hintText: hintText,
        hintStyle:const TextStyle(
          color: whiteColor
        )
      ),
    );

  }
}


class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final bool obsecure;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;
  final String? hintText;
  final String? labelText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final VoidCallback? onEditingCompleted;
  final ValueChanged<String>? onFieldSubmitted;
  final bool readOnly;




  const SearchTextField({
    super.key,
    required this.controller,
    required this.validator,
    this.keyboardType = TextInputType.text,
    this.obsecure = false,
    this.readOnly = false,
    this.suffixIcon,
    this.prefixIcon,
    this.hintText,
    this.labelText,
    this.onChanged,
    this.onEditingCompleted,
    this.onFieldSubmitted,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obsecure,
      onChanged: onChanged,
      onEditingComplete: onEditingCompleted,
      cursorColor: blueColor,
      readOnly: readOnly,
      decoration: InputDecoration(
        suffixIcon:suffixIcon,
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: blueColor,
            )),
        hintText: hintText,
      ),
    );
  }
}


class OTPTextField extends StatelessWidget {
  const OTPTextField({this.onSaved,super.key});
   final FormFieldSetter<String>? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      onChanged: (value){
        if(value.length==1)
        {
          FocusScope.of(context).nextFocus();
        }
      },

      onSaved: onSaved,
      keyboardType: TextInputType.number,
      maxLength:1 ,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),

        ),
          counterText: "",
      ),
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleLarge,

    );
  }
}
