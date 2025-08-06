import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halan_app/models/wallet_screen_model.dart';

class WalletHeaderFromApi extends StatelessWidget {
  final Wallet wallet;

  const WalletHeaderFromApi({super.key, required this.wallet});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xffF9FAFC),
              shape: BoxShape.circle,
            ),
            width: 56,
            height: 56,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(wallet.logo),
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
                Text(
                  '${wallet.walletTotal} ${wallet.walletUnit}',
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '${wallet.growthRate}% نمو',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xff00A970),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.trending_up, color: Colors.green),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: VerticalDivider(
                        thickness: 1,
                        color: Color(0xffB9BABA),
                      ),
                    ),
                    Text(
                      '${wallet.customers} عميل',
                      style: const TextStyle(
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
