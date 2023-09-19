import 'package:flutter/material.dart';
import '../constants.dart';

// ignore: camel_case_types
class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap});

  //final void Function() onTap;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Add",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 1),
          ),
        ),
      ),
    );
  }
}
