import 'package:flutter/material.dart';

class WalletInformation extends StatelessWidget {
  final String iconPath;
  final String title;
  final String description;
  const WalletInformation({
    super.key,
    required this.iconPath,
    required this.title,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 80,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(Radius.circular(12))
                ),
                child: Image.asset(iconPath),
              ),
              const SizedBox(width: 13,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.grey[700]
                    ),
                  )
                ],
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}

