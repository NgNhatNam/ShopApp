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
    image: "images/all.png",
  ),
  Category(
    title: "Giày",
    image: "images/shoes.png",
  ),
  Category(
    title: "Làm đẹp",
    image: "images/beauty.png",
  ),
  Category(
    title: "Đồ\nnữ",
    image: "images/image1.png",
  ),
  Category(
    title: "Trang\nsức",
    image: "images/jewelry.png",
  ),
  Category(
    title: "Đồ\nnam",
    image: "images/men.png",
  ),
];