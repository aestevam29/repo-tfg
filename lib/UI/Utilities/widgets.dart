import 'package:flutter/material.dart';

final Color primaryColor = Color.fromARGB(255, 68, 157, 122); // Verde claro para elementos destacados
final Color accentColor = Color.fromARGB(255, 63, 67, 63); // Gris claro para acentos y fondos
final Color primaryTextColor = Color(0xFF2D2D2D); // Casi negro para texto principal
final Color secondaryTextColor = Color.fromARGB(255, 44, 71, 72); // Gris para texto secundario
final Color cardBackgroundColor = Color(0xFFF0F0F0); // Color de fondo para tarjetas
final Color backgroundColor = Colors.grey.shade300;

class myGreenButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final BoxDecoration decoration;
  final EdgeInsetsGeometry padding;

  myGreenButton({
    required this.onPressed,
    required this.child,
    required this.decoration,
    this.padding = const EdgeInsets.all(8.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color:Colors.grey.shade500,
            offset: Offset(4,4),
            blurRadius: 5,
            spreadRadius: 1
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-4,-4),
            blurRadius: 5,
            spreadRadius: 1
          )
        ]
      ),
      padding: padding,
      child: TextButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}


class myTransparentButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final BoxDecoration decoration;
  final EdgeInsetsGeometry padding;

  myTransparentButton({
    required this.onPressed,
    required this.child,
    required this.decoration,
    this.padding = const EdgeInsets.all(8.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color:Colors.grey.shade500,
            offset: Offset(4,4),
            blurRadius: 5,
            spreadRadius: 1
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-4,-4),
            blurRadius: 5,
            spreadRadius: 1
          )
        ]
      ),
      padding: padding,
      child: TextButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}

class myTransparentTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;
  final String labelText;

  myTransparentTextField({
    required this.controller,
    required this.obscureText,
    required this.hintText,
    required this.labelText, required TextInputType keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(4, 4),
            blurRadius: 5,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-4, -4),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.transparent, 
        ),
      ),
    );
  }
}
