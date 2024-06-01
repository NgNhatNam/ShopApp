import 'package:cuoi_ki_flutter/resources/app_color.dart';
import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product(
      {required this.title,
      required this.review,
      required this.description,
      required this.image,
      required this.price,
      required this.colors,
      required this.seller,
      required this.category,
      required this.rate,
      required this.quantity});
}

final List<Product> all = [
   Product(
    title: "Vans Old Skool",
    description:
        "Giày Vans Old Skool cổ điển, phong cách và dễ phối đồ. Chất liệu bền bỉ và thoải mái cho người sử dụng.",
    image: "assets/images/shoes/vansoldskool.png",
    price: 300,
    seller: "Mrs Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Giày",
    review: "(200 đánh giá)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Giày nữ",
    description:
        "Giày nữ thời trang, thiết kế thanh lịch và thoải mái. Phù hợp cho nhiều dịp khác nhau từ công sở đến dạo phố.",
    image: "assets/images/shoes/women-shoes.png",
    price: 500,
    seller: "Shoes Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Giày",
    review: "(100 đánh giá)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Giày thể thao",
    description:
        "Giày thể thao nhẹ nhàng và êm ái, thiết kế năng động. Lý tưởng cho các hoạt động thể thao và luyện tập hàng ngày.",
    image: "assets/images/shoes/sportsshoes.png",
    price: 155,
    seller: "Hari Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Giày",
    review: "(60 đánh giá)",
    rate: 3.0,
    quantity: 1,
  ),
  Product(
    title: "Quần Jean",
    description:
        "Quần Jean nam thời trang, chất liệu bền đẹp và thoải mái. Phù hợp cho nhiều phong cách và hoàn cảnh khác nhau.",
    image: "assets/images/menfashion/pants.png",
    price: 155,
    seller: "Jean Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Thời trang nam",
    review: "(90 đánh giá)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Tai nghe không dây",
    description:
        "Tai nghe không dây chất lượng cao, âm thanh sống động và pin lâu dài. Thiết kế hiện đại và thoải mái khi đeo.",
    image: "assets/images/all/wireless.png",
    price: 120,
    seller: "Tariqul isalm",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Điện tử",
    review: "(320 đánh giá)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Áo len nữ",
    description:
        "Áo len nữ mềm mại và ấm áp, thiết kế thời trang phù hợp cho mùa đông. Chất liệu cao cấp và bền đẹp.",
    image: "assets/images/all/sweet.png",
    price: 120,
    seller: "Joy Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Thời trang nữ",
    review: "(32 đánh giá)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Đồng hồ thông minh",
    description:
        "Đồng hồ thông minh với nhiều tính năng hiện đại, theo dõi sức khỏe và thông báo tin nhắn. Thiết kế tinh tế và sang trọng.",
    image: "assets/images/all/miband.jpg",
    price: 55,
    seller: "Ram Das",
    colors: [
     AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Điện tử",
    review: "(20 đánh giá)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Áo khoác nam",
    description:
        "Áo khoác nam phong cách, giữ ấm tốt và chống gió. Thiết kế mạnh mẽ và nam tính, phù hợp cho mọi hoạt động ngoài trời.",
    image: "assets/images/all/jacket.png",
    price: 155,
    seller: "Jacket Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Thời trang nam",
    review: "(20 đánh giá)",
    rate: 5.0,
    quantity: 1,
  ),
   Product(
    title: "Đồng hồ",
    description:
        "Đồng hồ cao cấp với thiết kế sang trọng, phù hợp cho các dịp quan trọng. Chất lượng tuyệt vời và độ bền cao.",
    image: "assets/images/menfashion/watch.png",
    price: 1000,
    seller: "Jacket Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Thời trang nam",
    review: "(100 đánh giá)",
    rate: 5.0,
    quantity: 1,
  ),
   Product(
    title: "Air Jordan",
    description:
        "Giày thể thao Air Jordan nổi tiếng, thiết kế đẹp mắt và thoải mái. Phù hợp cho cả hoạt động thể thao và thời trang hàng ngày.",
    image: "assets/images/shoes/AirJordan.png",
    price: 255,
    seller: "The Seller",
    colors: [
      AppColor.grey,
      AppColor.green,
      AppColor.brown,
      
    ],
    category: "Giày",
    review: "(55 đánh giá)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Nước hoa Super",
    description:
        "Nước hoa Super với hương thơm quyến rũ, lưu hương lâu dài. Thiết kế chai sang trọng và tinh tế.",
    image: "assets/images/beauty/perfume.png",
    price: 155,
    seller: "Love Seller",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Làm đẹp",
    review: "(99 đánh giá)",
    rate: 4.7,
    quantity: 1,
  ),
  Product(
    title: "Nhẫn cưới",
    description:
        "Nhẫn cưới đẹp mắt với thiết kế tinh xảo, chất liệu cao cấp. Biểu tượng của tình yêu và sự gắn kết vĩnh cửu.",
    image: "assets/images/jewelry/weddingring.png",
    price: 155,
    seller: "I Am Seller",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Trang sức",
    review: "(80 đánh giá)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Quần",
    description:
        "Quần thời trang nữ với chất liệu thoải mái, thiết kế hiện đại. Phù hợp cho nhiều hoàn cảnh và dễ dàng phối đồ.",
    image: "assets/images/womenfashion/pants.png",
    price: 155,
    seller: "PK Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Thời trang nữ",
    review: "(55 đánh giá)",
    rate: 5.0,
    quantity: 1,
  ),
];

final List<Product> shoes = [
  Product(
    title: "Air Jordan",
    description:
        "Giày thể thao Air Jordan nổi tiếng, thiết kế đẹp mắt và thoải mái. Phù hợp cho cả hoạt động thể thao và thời trang hàng ngày.",
    image: "assets/images/shoes/AirJordan.png",
    price: 255,
    seller: "The Seller",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Giày",
    review: "(55 đánh giá)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Vans Old Skool",
    description:
        "Giày Vans Old Skool cổ điển, phong cách và dễ phối đồ. Chất liệu bền bỉ và thoải mái cho người sử dụng.",
    image: "assets/images/shoes/vansoldskool.png",
    price: 300,
    seller: "Mrs Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Giày",
    review: "(200 đánh giá)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Giày nữ",
    description:
        "Giày nữ thời trang, thiết kế thanh lịch và thoải mái. Phù hợp cho nhiều dịp khác nhau từ công sở đến dạo phố.",
    image: "assets/images/shoes/women-shoes.png",
    price: 500,
    seller: "Shoes Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Giày",
    review: "(100 đánh giá)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Giày thể thao",
    description:
        "Giày thể thao nhẹ nhàng và êm ái, thiết kế năng động. Lý tưởng cho các hoạt động thể thao và luyện tập hàng ngày.",
    image: "assets/images/shoes/sportsshoes.png",
    price: 155,
    seller: "Hari Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Giày",
    review: "(60 đánh giá)",
    rate: 3.0,
    quantity: 1,
  ),
  Product(
    title: "Sneaker trắng",
    description:
        "Sneaker trắng phong cách, dễ dàng phối đồ. Chất liệu cao cấp và bền bỉ, phù hợp cho mọi hoàn cảnh.",
    image: "assets/images/shoes/whitesneaker.png",
    price: 400,
    seller: "K Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Giày",
    review: "(30 đánh giá)",
    rate: 4.2,
    quantity: 1,
  ),
];

final List<Product> jewelry = [
  Product(
    title: "Bông tai",
    description:
        "Bông tai đẹp, thiết kế tinh tế và sang trọng. Chất liệu cao cấp, mang lại vẻ đẹp hoàn hảo cho người đeo.",
    image: "assets/images/jewelry/earrings.png",
    price: 3000,
    seller: "Gold Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Trang sức",
    review: "(320 đánh giá)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Hộp trang sức",
    description:
        "Hộp trang sức sang trọng, chất liệu bền bỉ và đẹp mắt. Bảo quản trang sức của bạn một cách an toàn và ngăn nắp.",
    image: "assets/images/jewelry/jewelry-box.png",
    price: 300,
    seller: "Love Love",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Trang sức",
    review: "(100 đánh giá)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Nhẫn cưới",
    description:
        "Nhẫn cưới đẹp mắt với thiết kế tinh xảo, chất liệu cao cấp. Biểu tượng của tình yêu và sự gắn kết vĩnh cửu.",
    image: "assets/images/jewelry/weddingring.png",
    price: 155,
    seller: "I Am Seller",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Trang sức",
    review: "(80 đánh giá)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Vòng cổ",
    description:
        "Vòng cổ sang trọng với thiết kế tinh tế, chất liệu cao cấp. Phù hợp cho các dịp đặc biệt và làm quà tặng ý nghĩa.",
    image: "assets/images/jewelry/necklace-jewellery.png",
    price: 5000,
    seller: "Jewellery Store",
    colors: [
     AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Trang sức",
    review: "(22 đánh giá)",
    rate: 3.5,
    quantity: 1,
  ),
];


final List<Product> menfashion = [
  Product(
    title: "Quần Jean",
    description:
        "Quần Jean nam thời trang, chất liệu bền đẹp và thoải mái. Phù hợp cho nhiều phong cách và hoàn cảnh khác nhau.",
    image: "assets/images/menfashion/pants.png",
    price: 155,
    seller: "Jean Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Thời trang nam",
    review: "(90 đánh giá)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Đồng hồ",
    description:
        "Đồng hồ cao cấp với thiết kế sang trọng, phù hợp cho các dịp quan trọng. Chất lượng tuyệt vời và độ bền cao.",
    image: "assets/images/menfashion/watch.png",
    price: 1000,
    seller: "Jacket Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Thời trang nam",
    review: "(100 đánh giá)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Áo khoác nam",
    description:
        "Áo khoác nam phong cách, giữ ấm tốt và chống gió. Thiết kế mạnh mẽ và nam tính, phù hợp cho mọi hoạt động ngoài trời.",
    image: "assets/images/all/jacket.png",
    price: 155,
    seller: "Jacket Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Thời trang nam",
    review: "(20 đánh giá)",
    rate: 5.0,
    quantity: 1,
  ),
];

final List<Product> beauty = [
  Product(
    title: "Nước hoa Super",
    description:
        "Nước hoa Super với hương thơm quyến rũ, lưu hương lâu dài. Thiết kế chai sang trọng và tinh tế.",
    image: "assets/images/beauty/perfume.png",
    price: 155,
    seller: "Love Seller",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Làm đẹp",
    review: "(99 đánh giá)",
    rate: 4.7,
    quantity: 1,
  ),
  Product(
    title: "Mặt nạ làm đẹp",
    description:
        "Mặt nạ làm đẹp với công thức dưỡng ẩm và làm sáng da. Sử dụng dễ dàng và mang lại hiệu quả tức thì.",
    image: "assets/images/beauty/facecare.png",
    price: 155,
    seller: "Love Seller",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Làm đẹp",
    review: "(50 đánh giá)",
    rate: 4.7,
    quantity: 1,
  ),
];

final List<Product> womenfashion = [
  Product(
    title: "Quần",
    description:
        "Quần thời trang nữ với chất liệu thoải mái, thiết kế hiện đại. Phù hợp cho nhiều hoàn cảnh và dễ dàng phối đồ.",
    image: "assets/images/womenfashion/pants.png",
    price: 155,
    seller: "PK Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Thời trang nữ",
    review: "(55 đánh giá)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Áo len nữ",
    description:
        "Áo len nữ mềm mại và ấm áp, thiết kế thời trang phù hợp cho mùa đông. Chất liệu cao cấp và bền đẹp.",
    image: "assets/images/all/sweet.png",
    price: 120,
    seller: "Joy Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Thời trang nữ",
    review: "(32 đánh giá)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Giày nữ",
    description:
        "Giày nữ thời trang, thiết kế thanh lịch và thoải mái. Phù hợp cho nhiều dịp khác nhau từ công sở đến dạo phố.",
    image: "assets/images/shoes/women-shoes.png",
    price: 500,
    seller: "Shoes Store",
    colors: [
      AppColor.brown,
      AppColor.pink,
      AppColor.green,
    ],
    category: "Giày",
    review: "(100 đánh giá)",
    rate: 4.8,
    quantity: 1,
  ),
];
