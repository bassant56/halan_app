import 'package:flutter/material.dart';
import 'package:halan_app/shared/componants/data_card.dart';

class ProductsGrid extends StatelessWidget {
  ProductsGrid({super.key});
  final List<Map<String, dynamic>> items = [
    {
      'label': 'تمويل مشروعات متوسطة',
      'amount': '30,906,000 جنيه',
      'icon1': 'assets/assets_product/ic_outlined_arrowdownleft_green.svg',
      'icon2': 'assets/Wallet_LO.svg',
      'iconColor': 'green_icon',
      'avgColor': 'green_avg',
      'avg': '20%',
    },
    {
      'label': 'تمويل متناهي الصغر',
      'amount': '20,406,124 جنيه',
      'icon1': 'assets/assets_product/ic_outlined_arrowupright_green.svg',
      'icon2': 'assets/assets_product/ill_spot_pay_MF_LO.svg',
      'iconColor': 'green_icon',
      'avgColor': 'green_avg',
      'avg': '45%',
    },
    {
      'label': 'دهب',
      'amount': '920,000 جنيه',
      'icon1': 'assets/assets_product/ic_outlined_arrowdownleft_green.svg',
      'icon2': 'assets/assets_product/ill_spot_pay_gold_LO.svg',
      'iconColor': 'green_icon',
      'avgColor': 'green_avg',
      'avg': '5%',
    },
    {
      'label': 'تمويل استهلاكي',
      'amount': '10,406,124 جنيه',
      'icon1': 'assets/assets_product/ic_outlined_arrowdownleft_red.svg',
      'icon2': 'assets/assets_product/ill_spot_pay_cf_LO.svg',
      'iconColor': 'red_icon',
      'avgColor': 'red_avg',
      'avg': '32%',
    },
    {
      'label': 'جمعيه',
      'amount': '5,420,000 جنيه',
      'icon1': 'assets/assets_product/ic_outlined_arrowupright_red.svg',
      'icon2': 'assets/assets_product/ill_spot_pay_gam3eya_LO.svg',
      'iconColor': 'red_icon',
      'avgColor': 'red_avg',
      'avg': '60%',
    },
    {
      'label': 'اثتثمار',
      'amount': '7,906,000 جنيه',
      'icon1': 'assets/assets_product/ic_outlined_arrowdownleft_green.svg',
      'icon2': 'assets/assets_product/ill_spot_pay_invest_LO.svg',
      'iconColor': 'green_icon',
      'avg': '55%',
      'avgColor': 'green_avg',
    },
    {
      'label': 'كارت حالا',
      'amount': '25,000 كارت',
      'icon1': '',
      'icon2': 'assets/assets_product/ill_spot_pay_card_LO.svg',
      'iconColor': 'clear',
      'avg': '0%',
      'avgColor': 'clear',
    },
    {
      'label': 'نوكيا',
      'amount': '25,000 كارت',
      'icon1': 'assets/assets_product/ic_outlined_arrowupright_green.svg',
      'icon2': 'assets/assets_product/nokia.svg',
      'iconColor': 'green_icon',
      'avgColor': 'green_avg',
      'avg': '75%',
    },
    {
      'label': 'حالاً أدڤانس',
      'amount': '30,000 جنيه',
      'icon1': '0',
      'icon2': 'assets/assets_product/ill_spot_pay_card_LO (1).svg',
      'iconColor': 'clear',
      'avg': '0%',
      'avgColor': 'clear',
    },
    {
      'label': 'خدمات',
      'amount': '1,906,000 جنيه',
      'icon1': 'assets/assets_product/ic_outlined_arrowdownleft_red.svg',
      'icon2': 'assets/assets_product/ill_spot_comm_services_LO.svg',
      'iconColor': 'red_icon',
      'avg': '32%',
      'avgColor': 'red_avg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 1.4,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children:
          items
              .map(
                (item) => DataCard(
                  label: item['label'],
                  amount: item['amount'],
                  icon1: item['icon2'],
                  icon2: item['icon1'],
                  iconColor: item['iconColor'],
                  avg: item['avg'],
                  avgColor: item['avgColor'],
                ),
              )
              .toList(),
    );
  }
}
