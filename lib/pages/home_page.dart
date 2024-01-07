import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../component/cart_item.dart';
import '../component/wallet_button.dart';
import '../component/wallet_information.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
            text: "My ",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
            children: [
              TextSpan(
                text: "Wallet",
                style: TextStyle(fontWeight: FontWeight.normal)
              )
            ]
          )
        ),
        elevation: 0,
        backgroundColor: Colors.grey[300],
        actions: [
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: Colors.grey[400],
              shape: BoxShape.circle
            ),
            child: const Icon(Icons.add),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings"
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.monetization_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: [
          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              children: [
                CardItem(
                  balance: 5300.25,
                  cardId: 123456789,
                  expiryMonth: 10,
                  expiryDate: 25,
                  color: Colors.purple,
                ),
                CardItem(
                  balance: 3300.25,
                  cardId: 123456789,
                  expiryMonth: 10,
                  expiryDate: 25,
                  color: Colors.grey,
                ),
                CardItem(
                  balance: 200.25,
                  cardId: 123456789,
                  expiryMonth: 10,
                  expiryDate: 25,
                  color: Colors.blue,
                ),
              ],
            ),
          ),

          const SizedBox(height: 8,),

          SmoothPageIndicator(
            controller: _pageController,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey,
              dotColor: Colors.grey.shade400
            ),
          ),

          const SizedBox(height: 42,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WalletButton(
                  name: "Send",
                  icon: "asset/icons/send-money.png",
                ),
                WalletButton(
                  name: "Pay",
                  icon: "asset/icons/credit-card.png",
                ),
                WalletButton(
                  name: "Bill",
                  icon: "asset/icons/bill.png",
                ),
              ],
            ),
          ),

          const SizedBox(height: 32,),

          Column(
            children: [
              WalletInformation(
                iconPath: "asset/icons/analysis.png",
                title: "Statistics",
                description: "Payments and Income",
              ),
              WalletInformation(
                iconPath: "asset/icons/cash-flow.png",
                title: "Transactions",
                description: "Transaction History",
              ),
            ],
          )
        ],
      ),
    );
  }
}
