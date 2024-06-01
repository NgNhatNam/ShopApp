import 'package:cuoi_ki_flutter/models/product_model.dart';
import 'package:cuoi_ki_flutter/provider/cart_provider.dart';
import 'package:cuoi_ki_flutter/resources/app_color.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatefulWidget {
  final Product product;
  const AddToCart({Key? key, required this.product}) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: Colors.black, // Set the background color to black
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColor.white, width: 2),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    if (currentIndex != 1) {
                      setState(() {
                        currentIndex--;
                      });
                    }
                  },
                  iconSize: 18,
                  icon: const Icon(
                    Icons.remove,
                    color: AppColor.white,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  currentIndex.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColor.white,
                  ),
                ),
                const SizedBox(width: 5),
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex++;
                    });
                  },
                  iconSize: 18,
                  icon: const Icon(
                    Icons.add,
                    color: AppColor.white,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 15),
          GestureDetector(
            onTap: () {
              provider.toggleFavorite(widget.product);
              const snackBar = SnackBar(
                content: Text(
                  "Thêm thành công!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColor.white,
                  ),
                ),
                duration: const Duration(seconds: 1),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: AppColor.kprimaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "Thêm vào giỏ hàng",
                style: TextStyle(
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
