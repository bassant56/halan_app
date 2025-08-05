import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffF9FAFC),
              shape: BoxShape.circle,
            ),
            width: 56,
            height: 56,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: SvgPicture.asset(
                'assets/Wallet_LO.svg',
                width: 32,
                height: 32,
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'اجمالي المحفظة',
                  style: TextStyle(
                    color: Color(0xff5E6160),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Text(
                  '80,000,712 جنيه',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ' 43% نمو',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff00A970),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 2),
                    Container(
                      width: 16,
                      height: 16,
                      child: SvgPicture.asset(
                        'assets/Combined Shape.svg',
                        width: 11,
                        height: 12,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                      child: Container(
                        color: Color(0xffB9BABA),
                        width: 1,
                        height: 16,
                      ),
                    ),
                    Text(
                      '43 عميل',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff5E6160),
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
    );
  }
}
