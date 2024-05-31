import 'package:cuoi_ki_flutter/pages/home/widget/product_cart.dart';
import 'package:flutter/material.dart';
import 'package:cuoi_ki_flutter/models/product_model.dart';
import 'package:cuoi_ki_flutter/resources/app_color.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Product> _foundProducts = [];
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _foundProducts = all; // ban đầu hiển thị tất cả sản phẩm
  }

  void _filterProducts(String enteredKeyword) {
    List<Product> results = [];
    if (enteredKeyword.isEmpty) {
      results = all;
    } else {
      results = all.where((product) =>
          product.title.toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
    }
    setState(() {
      _foundProducts = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kcontentColor,
        title: const Text("Tìm kiếm",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.kcontentColor,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: AppColor.grey,
            size: 30,
          ),
          const SizedBox(width: 10),
          Flexible(
            flex: 4,
            child: 
            TextField(
              controller: _searchController,
              onChanged: (value) => _filterProducts(value),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Tìm kiếm...',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    _searchController.clear();
                    _filterProducts('');
                  },
                ),
              ),
            ),
          ),
          Container(
            height: 25,
            width: 1.5,
            color: AppColor.grey,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.tune,
              color: AppColor.grey,
            ),
          ),
        ],
      ),
    ),
            
            const SizedBox(height: 20),
            Expanded(
              child: _foundProducts.isNotEmpty
                  ? GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: _foundProducts.length,
                      itemBuilder: (context, index) => ProductCard(
                        product: _foundProducts[index],
                      ),
                    )
                  : const Text(
                      'Không tìm thấy sản phẩm nào',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
