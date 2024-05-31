import 'package:cuoi_ki_flutter/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:cuoi_ki_flutter/provider/cart_provider.dart';

class PaidProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final paidProducts = provider.paidProducts;
    final totalPaidPrice = provider.totalPaidPrice();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kcontentColor,
        title: const Text(
          "Sản phẩm đã thanh toán",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Hiển thị danh sách sản phẩm đã thanh toán
          Expanded(
            child: ListView.builder(
              itemCount: paidProducts.length,
              itemBuilder: (context, index) {
                final product = paidProducts[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(product.image),
                  ),
                  title: Text(product.title),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('\$${product.price}'),
                      Text('Số lượng: ${product.quantity}'),
                    ],
                  ),
                );
              },
            ),
          ),
          // Hiển thị tổng giá trị đã thanh toán
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Tổng giá trị đã thanh toán: \$${totalPaidPrice.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColor.pink,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
