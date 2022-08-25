import 'package:flutter/material.dart';

class ReusablePaymentMethod extends StatelessWidget {
  const ReusablePaymentMethod({
    Key? key,
    required this.paymentTypeText,
    required this.paymentTypeIcon,
    required this.paymentTypeIconColor,
    required this.value,
    required this.groupValue,
    required this.radioColor,
    required this.borderColor,
    required this.onPress,
    required this.onChanged,
  }) : super(key: key);

  final String paymentTypeText;
  final IconData paymentTypeIcon;
  final Color paymentTypeIconColor;
  final int value;
  final int groupValue;
  final Color radioColor;

  final Color borderColor;

  final void Function()? onPress;

  final Function()? onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFEBEFEE),
          border: Border.all(
            color: borderColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(
            15.0,
          ),
        ),
        child: ListTile(
          leading: Icon(
            paymentTypeIcon,
            color: paymentTypeIconColor,
            size: 30.0,
          ),
          title: Text(
            paymentTypeText,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF5C6164),
            ),
          ),
          trailing: Radio(
            activeColor: radioColor,
            value: value,
            groupValue: groupValue,
            onChanged: (value) => onChanged,
          ),
        ),
      ),
    );
  }
}
