import 'package:flutter/material.dart';
import '../constants.dart';

// ignore: camel_case_types
class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, this.isLoading = true});

  //final void Function() onTap;

  final VoidCallback onTap;
  final bool isLoading;

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
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : const Text(
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
