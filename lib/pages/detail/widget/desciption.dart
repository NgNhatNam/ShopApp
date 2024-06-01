import 'package:cuoi_ki_flutter/resources/app_color.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String description;
  const Description({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                color: AppColor.black,
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Miêu tả",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColor.white,
                    fontSize: 16),
              ),
            ),
            const Text(
              "Thông số",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColor.black,
                  fontSize: 16),
            ),
            const Text(
              "Đánh giá",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColor.black,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
            color: AppColor.grey,
          ),
        ),
      ],
    );
  }
}