import 'package:cuoi_ki_flutter/pages/detail/detail_page.dart';
import 'package:cuoi_ki_flutter/provider/favourite_provider.dart';
import 'package:cuoi_ki_flutter/resources/app_color.dart';
import 'package:flutter/material.dart';



class Favorite extends StatefulWidget {
  const Favorite({super.key
    });
  

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {

 
  
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final finalList = provider.favorites;
    
    return Scaffold(
      backgroundColor: AppColor.kcontentColor,
      appBar: AppBar(
        backgroundColor: AppColor.kcontentColor,
        title: const Text("Yêu thích",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: finalList.length,
              itemBuilder: (context, index) {
                final favoritItems = finalList[index];
                return Stack(
                  children: [
                    Padding(
                      
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                  Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => DetailPage(product: favoritItems),
                                            ),
                                          );
                              },
                              child: Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: AppColor.kcontentColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Image.asset(
                                  favoritItems.image,
                              ),
                              )
                              
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  favoritItems.title,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  favoritItems.category,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.grey,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "\$${favoritItems.price}",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      right: 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              finalList.removeAt(index);
                              setState(
                                () {},
                              );
                            },
                            child: const Icon(Icons.delete,
                                color: AppColor.red, size: 25),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}