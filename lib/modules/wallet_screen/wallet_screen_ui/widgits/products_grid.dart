import 'package:flutter/material.dart';
import 'package:halan_app/shared/componants/data_card.dart';

class ProductsGrid extends StatelessWidget {
  ProductsGrid({super.key});
  final List<Map<String, dynamic>> items = [
    {
      'label': 'تمويل مشروعات متوسطة',
      'amount': '30,906,000 جنيه',
      'icon1': 'assets/assets_product/Combined Shape UG.svg',
      'icon2': 'assets/assets_product/ill_spot_pay_SME_LO.svg',
    },
    {
      'label': 'تمويل متناهي الصغر',
      'amount': '20,406,124 جنيه',
      'icon1': 'assets/assets_product/Combined Shape UG.svg',
      'icon2': 'assets/assets_product/ill_spot_pay_MF_LO.svg',
    },
    {
      'label': 'دهب',
      'amount': '920,000 جنيه',
      'icon1': 'assets/assets_product/Combined Shape BG.svg',
      'icon2': 'assets/assets_product/ill_spot_pay_gold_LO.svg',
    },
    {
      'label': 'تمويل استهلاكي',
      'amount': '10,406,124 جنيه',
      'icon1': 'assets/assets_product/Combined Shape BR.svg',
      'icon2': 'assets/assets_product/ill_spot_pay_cf_LO.svg',
    },
    {
      'label': 'جمعيه',
      'amount': '5,420,000 جنيه',
      'icon1': 'assets/assets_product/Combined Shape UR.svg',
      'icon2': 'assets/assets_product/ill_spot_pay_gam3eya_LO.svg',
    },
    {
      'label': 'اثتثمار',
      'amount': '7,906,000 جنيه',
      'icon1': 'assets/assets_product/Combined Shape BG.svg',
      'icon2': 'assets/assets_product/ill_spot_pay_invest_LO.svg',
    },
    {
      'label': 'كارت حالا',
      'amount': '25,000 كارت',
      'icon1': '',
      'icon2': 'assets/assets_product/ill_spot_pay_card_LO.svg',
    },
    {
      'label': 'نوكيا',
      'amount': '25,000 كارت',
      'icon1': 'assets/assets_product/Combined Shape UG.svg',
      'icon2': 'assets/assets_product/nokia.svg',
    },
    {
      'label': 'حالاً أدڤانس',
      'amount': '30,000 جنيه',
      'icon1': '0',
      'icon2': 'assets/assets_product/ill_spot_pay_card_LO (1).svg',
    },
    {
      'label': 'خدمات',
      'amount': '1,906,000 جنيه',
      'icon1': 'assets/assets_product/Combined Shape BR.svg',
      'icon2': 'assets/assets_product/ill_spot_comm_services_LO.svg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
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
                ),
              )
              .toList(),
    );
  }
}
