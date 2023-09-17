import 'package:flutter/material.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final bool obscureText;
  final VoidCallback onPressed;

  CustomButtonWithIcon({
    required this.labelText,
    required this.icon,
    required this.obscureText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        suffixIcon: obscureText
            ? IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: onPressed,
              )
            : null,
      ),
    );
  }
}
