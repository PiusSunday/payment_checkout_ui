import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  final String buttonText;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: const Color(0xFF34BFE0),
              ),
              child: Center(
                child: Text(
                  buttonText,
                  style: const TextStyle(
                    color: Color(0xFFE4FFFF),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
