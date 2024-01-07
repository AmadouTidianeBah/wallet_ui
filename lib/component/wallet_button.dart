import 'package:flutter/material.dart';

class WalletButton extends StatelessWidget {
  final String icon;
  final String name;
  const WalletButton({
    super.key,
    required this.name,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 12,
                spreadRadius: 4
              )
            ]
          ),
          child: Image.asset(icon),
        ),
        const SizedBox(height: 8,),
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
            letterSpacing: 2
          ),
        )
      ],
    );
  }
}
