import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final double balance;
  final int cardId;
  final int expiryDate;
  final int expiryMonth;
  final Color color;
  const CardItem({
    super.key,
    required this.balance,
    required this.cardId,
    required this.expiryMonth,
    required this.expiryDate,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: 340,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(12))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Balance",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                Image.asset("asset/icons/visa.png", width: 50,)
              ],
            ),
            Text(
              "\$$balance",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$cardId",
                  style: const TextStyle(
                      color: Colors.white
                  ),
                ),
                Text(
                  "$expiryMonth/$expiryDate",
                  style: const TextStyle(
                      color: Colors.white
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
