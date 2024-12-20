import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? profixIcon;
  final TextEditingController controller;
  final bool? isPassword;
  final bool? isMath;
  final bool? isObscure;
  final Function? toggleObscure;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.profixIcon,
    required this.controller,
    this.isPassword = false,
    this.isMath = false,
    this.isObscure = false,
    this.toggleObscure,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        keyboardType: isPassword == true
            ? TextInputType.text
            : TextInputType.emailAddress,
        obscureText: isPassword == true ? isObscure! : false,
        controller: controller,
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: isMath == true
                ? const BorderSide(color: Colors.red)
                : const BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: isMath == true
                ? const BorderSide(color: Colors.red)
                : const BorderSide(color: Colors.grey),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon:
              profixIcon != null ? Icon(profixIcon, color: Colors.grey) : null,
          suffixIcon: isPassword!
              ? IconButton(
                  onPressed: toggleObscure as void Function()?,
                  icon: isObscure!
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                )
              : null,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
        ),
        validator: (value) {
          if (value!.isEmpty) return 'Campo requerido';
          if (isPassword == true && value.length < 6) {
            return 'Contraseña muy corta';
          } else if (isPassword == false && !value.contains('@')) {
            return 'Correo inválido';
          }
          return null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}
