import 'package:flutter/material.dart';
import 'package:panucci_ristorante/core/themes/app_colors.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Image(width: 30, image: AssetImage("assets/images/visa.png")),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "VISA Classic",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  "****-6789",
                  style: TextStyle(
                    color: AppColors.paymentMethodCardNumberColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
