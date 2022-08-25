import 'package:flutter/material.dart';

import '../components/my_custom_icons_icons.dart';
import '../components/payment_method.dart';
import '../components/reusable_button.dart';
import '../constants/constants.dart';
import 'payment_message.dart';

enum PaymentMethod {
  creditCard,
  applePay,
  payPal,
}

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  PaymentMethod? paymentMethod;

  final int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SafeArea(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color: const Color(0xFFECF0EF),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color(0xFF444460),
                        size: 30.0,
                      ),
                      onPressed: () {
                        // Navigator.pop(context);
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 80.0,
                  ),
                  const Text(
                    'Checkout',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF696C7D),
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),

            // DELIVERY ADDRESS
            Row(
              children: const [
                Text(
                  "Delivery Address",
                  style: TextStyle(
                    color: Color(0xFF4D5658),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15.0),

            // ADDRESS CARD CONTAINER
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xFFEBEFEE),
              ),
              child: ListTile(
                isThreeLine: true,
                title: const Padding(
                  padding: EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: Text(
                    "Femi Richard",
                    style: TextStyle(
                      color: Color(0xFF484A57),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(
                    "070419001234\n2 Bakara Estate, Lekki - Lagos.",
                    style: TextStyle(
                      color: Color(0xFF484A57),
                      fontSize: 15.0,
                    ),
                  ),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 16.0,
                      width: 16.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: const Color(0xFFA6A8A7),
                      ),
                      child: const Center(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Color(0xFFEEF0EF),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15.0),

            // ADD NEW ADDRESS
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // ADD BUTTON TEXT
                Container(
                  height: 18.0,
                  width: 18.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: const Color(0xFF8E8E8E),
                  ),
                  child: const Center(
                    child: Text(
                      "+",
                      style: TextStyle(
                        color: Color(0xFFEEF0EF),
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 10.0),

                // ADD LOCATION TEXT
                const Text(
                  "Add Location",
                  style: TextStyle(
                    color: Color(0xFF8E8E8E),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 50.0),

            // PAYMENT METHOD
            Row(
              children: const [
                Text(
                  "Payment Method",
                  style: TextStyle(
                    color: Color(0xFF71787B),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15.0),

            // SELECT PAYMENT METHOD
            ReusablePaymentMethod(
              onChanged: () {
                setState(() {
                  paymentMethod = PaymentMethod.creditCard;
                });
              },
              onPress: () {
                setState(() {
                  paymentMethod = PaymentMethod.creditCard;
                });
              },
              borderColor: paymentMethod == PaymentMethod.creditCard
                  ? kActiveBorderColor
                  : kInactiveBorderColor,
              paymentTypeText: "Credit Card",
              paymentTypeIcon: MyCustomIcons.mastercard,
              paymentTypeIconColor: const Color(0xFFEB963F),
              value: 1,
              groupValue: paymentMethod == PaymentMethod.creditCard ? 1 : 0,
              radioColor: paymentMethod == PaymentMethod.creditCard
                  ? kActiveRadioColor
                  : kInActiveRadioColor,
            ),

            const SizedBox(height: 20.0),

            ReusablePaymentMethod(
              onChanged: () {
                setState(() {
                  paymentMethod = PaymentMethod.applePay;
                });
              },
              onPress: () {
                setState(() {
                  paymentMethod = PaymentMethod.applePay;
                });
              },
              borderColor: paymentMethod == PaymentMethod.applePay
                  ? kActiveBorderColor
                  : kInactiveBorderColor,
              paymentTypeText: "Apple Pay",
              paymentTypeIcon: Icons.apple,
              paymentTypeIconColor: const Color(0xFFA4A6A5),
              value: 2,
              groupValue: paymentMethod == PaymentMethod.applePay ? 2 : _value,
              radioColor: paymentMethod == PaymentMethod.applePay
                  ? kActiveRadioColor
                  : kInActiveRadioColor,
            ),

            const SizedBox(height: 20.0),

            ReusablePaymentMethod(
              onChanged: () {
                setState(() {
                  paymentMethod = PaymentMethod.payPal;
                });
              },
              onPress: () {
                setState(() {
                  paymentMethod = PaymentMethod.payPal;
                });
              },
              borderColor: paymentMethod == PaymentMethod.payPal
                  ? kActiveBorderColor
                  : kInactiveBorderColor,
              paymentTypeText: "PayPal",
              paymentTypeIcon: Icons.paypal,
              paymentTypeIconColor: const Color(0xFF3D4C80),
              value: 3,
              groupValue: paymentMethod == PaymentMethod.payPal ? 3 : _value,
              radioColor: paymentMethod == PaymentMethod.payPal
                  ? kActiveRadioColor
                  : kInActiveRadioColor,
            ),

            const SizedBox(height: 60.0),

            // TOTAL PRICE
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Total",
                    style: TextStyle(
                      color: Color(0xFFACAEAD),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        "₦ ",
                        style: TextStyle(
                          color: Color(0xFF37B5CD),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "45,000",
                        style: TextStyle(
                          color: Color(0xFF51516B),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // PAY NOW BUTTON
            ReusableButton(
              buttonText: "Pay Now",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrderCompleted(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
