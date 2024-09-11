import 'package:flutter/material.dart';

class NTextFormField extends StatelessWidget {
   NTextFormField({super.key, this.hintText, this.label, this.controller,  this.validator, this.prefixIcon, this.prefixIconColor});

final String? hintText;
final Widget? label;
final TextEditingController? controller;
 FormFieldValidator<String?>? validator;
 final Icon? prefixIcon;
 final Color? prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
                          validator:validator,    
                          controller: controller,
                          decoration: InputDecoration(
                            label:  label,
                            hintText: hintText,
                            prefixIcon: prefixIcon,
                            prefixIconColor:prefixIconColor ,
                          
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        );
  }
}