class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categoriesList = [
  Category(
    title: "Tất\ncả",
    image: "assets/images/all.png",
  ),
  Category(
    title: "Giày",
    image: "assets/images/shoes.png",
  ),
  Category(
    title: "Làm đẹp",
    image: "assets/images/beauty.png",
  ),
  Category(
    title: "Đồ\nnữ",
    image: "assets/images/image1.png",
  ),
  Category(
    title: "Trang\nsức",
    image: "assets/images/jewelry.png",
  ),
  Category(
    title: "Đồ\nnam",
    image: "assets/images/men.png",
  ),
];