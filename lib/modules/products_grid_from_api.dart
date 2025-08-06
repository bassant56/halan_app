import 'package:flutter/material.dart';
import 'package:halan_app/models/wallet_screen_model.dart';
import 'package:halan_app/shared/componants/data_card.dart';

class ProductsGridFromApi extends StatelessWidget {
  final List<Product> products;

  const ProductsGridFromApi({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 1.4,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children:
          products.map((product) {
            return DataCard(
              label: product.title,
              amount: '${product.value} ${product.walletUnit}',
              icon1: product.logo,
              icon2:
                  product.growthType.contains('up')
                      ? 'assets/assets_product/ic_outlined_arrowupright_green.svg'
                      : 'assets/assets_product/ic_outlined_arrowdownleft_red.svg',
              iconColor: product.growthType == 'up' ? 'green_icon' : 'red_icon',
              avg: '${product.growth}%',
              avgColor: product.growthType == 'up' ? 'green_avg' : 'red_avg',
            );
          }).toList(),
    );
  }
}
