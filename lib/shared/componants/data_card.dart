import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DataCard extends StatelessWidget {
  final String label;
  final String amount;
  final String icon1;
  final String icon2;
  final String avg;
  final Color backgroundColor;
  final Color avgColor;

  DataCard({
    required this.label,
    required this.amount,
    required this.icon1,
    required this.icon2,
    required this.avg,
    required this.avgColor,
    super.key,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xffFFFFFF),
      ),
      // width: 185,
      //  height: 124,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                //width: 63,
                // height: 25,
                child: Row(
                  children: [
                    Text(
                      avg,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: avgColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                      child: SvgPicture.asset(icon2, width: 16, height: 16),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF9FAFC),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 40,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: SvgPicture.asset(icon1, width: 24, height: 24),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color(0xff5E6160),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Expanded(
            child: Text(
              amount,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xff1C211F),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
