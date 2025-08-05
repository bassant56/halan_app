import 'package:flutter/material.dart';
import 'package:halan_app/modules/wallet_screen/wallet_screen_ui/widgits/products_grid.dart';
import 'package:halan_app/modules/wallet_screen/wallet_screen_ui/widgits/wallet_header.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'المحفظة',
          style: TextStyle(
            color: Color(0xff061A40),
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        leading: Stack(
          alignment: Alignment.topRight,
          children: [
            IconButton(
              icon: const Icon(Icons.notifications_none, color: Colors.black),
              onPressed: () {},
            ),
            Positioned(
              right: 5,
              top: 1,
              child: Container(
                width: 14,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    '0.6',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              WalletHeader(),
              SizedBox(height: 32),
              Text(
                textAlign: TextAlign.right,
                'المنتجات',
                style: TextStyle(
                  color: Color(0xff1C211F),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 16),
              ProductsGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
