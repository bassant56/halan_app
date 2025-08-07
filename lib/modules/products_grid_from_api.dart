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
              label: product.title ?? "",
              amount: '${product.value} ${product.walletUnit}',
              icon1: product.logo ?? "",
              icon2: getArrow(product.growthType),
              avg: '${product.growth ?? 0}%',
              backgroundColor: getColor(product.growthType),
              avgColor:
                  product.growthType!.contains("green")
                      ? Colors.green
                      : (product.growthType!.contains("red")
                          ? Colors.red
                          : Colors.grey),
            );
          }).toList(),
    );
  }

  String getArrow(String? growthType) {
    switch (growthType) {
      case "greenUp":
        return 'assets/assets_product/ic_outlined_arrowupright_green.svg';
      case "greenDown":
        return 'assets/assets_product/ic_outlined_arrowdownleft_green.svg';
      case "redUp":
        return 'assets/assets_product/ic_outlined_arrowupright_red.svg';
      case "redDown":
        return 'assets/assets_product/ic_outlined_arrowdownleft_red.svg';
      default:
        return "";
    }
  }

  Color getColor(String? growthType) {
    switch (growthType) {
      case "greenUp":
      case "greenDown":
        return Color(0xffF5FCF9);

      case "redUp":
      case "redDown":
        return Color(0xffFEF7F8);
      default:
        return Colors.white54;
    }
  }
}

/*
greenUp
greenDown
redDown
redUp
normal

 */
