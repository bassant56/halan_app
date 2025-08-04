import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
            ),
            width: 56.w,
            height: 56.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: SvgPicture.asset(
                'assets/Wallet_LO.svg',
                width: 32.w,
                height: 32.h,
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'اجمالي المحفظة',
                  style: TextStyle(
                    color: Color(0xff5E6160),
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Text(
                  '80,000,712 جنيه',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ' 43% نمو',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xff00A970),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 2.w),
                    Container(
                      width: 16.w,
                      height: 16.h,
                      child: SvgPicture.asset(
                        'assets/Combined Shape.svg',
                        width: 11.w,
                        height: 12.h,
                      ),
                    ),
                    VerticalDivider(color: Color(0xffB9BABA), width: 16.w),
                    Text(
                      '43 عميل',
                      style: TextStyle(
                        fontSize: 10,
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
