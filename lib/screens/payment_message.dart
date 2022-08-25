import 'package:flutter/material.dart';

import '../components/reusable_button.dart';

class OrderCompleted extends StatefulWidget {
  const OrderCompleted({Key? key}) : super(key: key);

  @override
  State<OrderCompleted> createState() => _OrderCompletedState();
}

class _OrderCompletedState extends State<OrderCompleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 250.0,
            ),
            Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                color: const Color(0xFF34BFE0),
                borderRadius: BorderRadius.circular(
                  100.0,
                ),
              ),
              child: const Icon(
                Icons.check,
                color: Color(0xFFF9F4FB),
                size: 100.0,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Center(
              child: Text(
                "Order Completed Successfully!",
                style: TextStyle(
                  color: Color(0xFFB3B5B4),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Center(
              child: Text(
                "Thank you.",
                style: TextStyle(
                  color: Color(0xFFB3B5B4),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 230.0,
            ),
            ReusableButton(
              buttonText: "My Orders",
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
