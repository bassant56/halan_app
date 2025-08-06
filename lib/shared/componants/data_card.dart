import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DataCard extends StatelessWidget {
  final String label;
  final String amount;
  final String icon1;
  final String icon2;
  final String iconColor;
  late Color backgroundColor;
  final String avg;
  final String avgColor;
  late Color backgroundColorAvg;

  DataCard({
    required this.label,
    required this.amount,
    required this.icon1,
    required this.icon2,
    required this.iconColor,
    super.key,
    required this.avg,
    required this.avgColor,
  });

  void getColor() {
    if (iconColor == 'red_icon') {
      backgroundColor = Color(0xffFEF7F8);
    } else if (iconColor == 'green_icon') {
      backgroundColor = Color(0xffF5FCF9);
    } else {
      backgroundColor = Color(0xffF9FAFC);
    }
  }

  void getColorAvg() {
    if (avgColor == 'red_avg') {
      backgroundColorAvg = Colors.red;
    } else if (avgColor == 'green_avg') {
      backgroundColorAvg = Colors.green;
    } else {
      backgroundColorAvg = Color(0x005e6160);
    }
  }

  @override
  Widget build(BuildContext context) {
    getColor();
    getColorAvg();
    //print(icon2);
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
                        color: backgroundColorAvg,
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
