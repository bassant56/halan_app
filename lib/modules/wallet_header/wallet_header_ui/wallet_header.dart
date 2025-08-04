import 'package:flutter/material.dart';

class WalletHeader extends StatefulWidget {
  const WalletHeader({super.key});

  @override
  State<WalletHeader> createState() => _WalletHeaderState();
}

class _WalletHeaderState extends State<WalletHeader> {
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
                    '1',
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
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFFFFFF),
                  ),
                  child: SizedBox(
                    width: 25.695703506469727,
                    height: 19.109939575195312,
                    child: const Icon(
                      Icons.account_balance_wallet,
                      color: Color(0xffFF5A0C),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'اجمالي المحفظة',
                      style: TextStyle(
                        color: Color(0xff5E6160),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      '80,000,712 جنيه',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          '43 عميل',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff5E6160),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 2),
                        SizedBox(
                          child: Icon(
                            Icons.arrow_upward,
                            color: Color(0xff00A970),
                            size: 16,
                          ),
                          width: 16,
                          height: 16,
                        ),
                        Text(
                          ' 43% نمو',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff00A970),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
