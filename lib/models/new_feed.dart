class Article {
  final String title;
  final String image;
  final String author;
  final String postedOn;
  final String description;

  Article(
      {required this.title,
      required this.image,
      required this.author,
      required this.postedOn,
      required this.description,
      });
}

final List<Article> articles = [
 Article(
    title: "Mã giảm giá Shopee lên đến 50% cho đơn hàng trên 500k",
    author: "Shopee",
    image: "assets/images/feed/feed1.png",
    postedOn: "Hôm qua",
    description: "Shopee vừa tung ra mã giảm giá lên đến 50% cho các đơn hàng trị giá trên 500k. Đây là cơ hội tuyệt vời để bạn mua sắm với giá cực kỳ ưu đãi. Hãy nhanh tay nhập mã để không bỏ lỡ cơ hội này.",
  ),
  Article(
    title: "Mã giảm giá Lazada: Giảm ngay 20% cho tất cả sản phẩm điện tử",
    image: "assets/images/feed/feed2.png",
    author: "Lazada",
    postedOn: "4 giờ trước",
    description: "Lazada đang có chương trình khuyến mãi đặc biệt, giảm ngay 20% cho tất cả các sản phẩm điện tử. Từ điện thoại, laptop đến các thiết bị gia dụng, bạn đều có thể mua sắm với giá ưu đãi. Nhanh tay nhập mã trước khi hết hạn!",
  ),
  Article(
    title: "Mã giảm giá Tiki cho sách và văn phòng phẩm: Giảm đến 30%",
    author: "Tiki",
    image: "assets/images/feed/feed3.png",
    postedOn: "2 ngày trước",
    description: "Tiki đang áp dụng mã giảm giá đến 30% cho các sản phẩm sách và văn phòng phẩm. Đây là dịp để bạn bổ sung thêm kiến thức và dụng cụ học tập với chi phí tiết kiệm. Hãy nhập mã ngay để được giảm giá.",
  ),
  Article(
    title: "Mã giảm giá Now: Giảm 25% cho đơn hàng đầu tiên",
    author: "Now",
    image: "assets/images/feed/feed4.png",
    postedOn: "22 giờ trước",
    description: "Now đang triển khai mã giảm giá 25% cho các đơn hàng đầu tiên. Đây là cơ hội để bạn trải nghiệm dịch vụ giao đồ ăn nhanh chóng và tiện lợi với giá ưu đãi. Đừng quên nhập mã khi đặt hàng nhé!",
  ),
  Article(
    title: "Mã giảm giá Sendo: Giảm ngay 100k cho đơn hàng từ 500k",
    author: "Sendo",
    image: "assets/images/feed/feed5.png",
    postedOn: "2 giờ trước",
    description: "Sendo vừa tung ra mã giảm giá 100k cho các đơn hàng từ 500k. Đây là dịp tốt để bạn mua sắm các sản phẩm yêu thích với giá tiết kiệm. Hãy nhập mã và tận hưởng ưu đãi ngay hôm nay.",
  ),
  Article(
    title: "Mã giảm giá VinID: Giảm giá 15% cho tất cả dịch vụ",
    author: "VinID",
    image: "assets/images/feed/feed6.png",
    postedOn: "10 ngày trước",
    description: "VinID đang có mã giảm giá 15% cho tất cả các dịch vụ. Từ mua sắm, ăn uống đến giải trí, bạn đều có thể tiết kiệm chi phí với mã giảm giá này. Nhanh tay nhập mã và trải nghiệm dịch vụ với giá ưu đãi.",
  ),
  Article(
    title: "Mã giảm giá Grab: Giảm 50k cho chuyến đi đầu tiên",
    author: "Grab",
    image: "assets/images/feed/feed7.png",
    postedOn: "10 giờ trước",
    description: "Grab vừa công bố mã giảm giá 50k cho chuyến đi đầu tiên của bạn. Đây là cơ hội để bạn trải nghiệm dịch vụ di chuyển tiện lợi và tiết kiệm. Nhập mã ngay khi đặt chuyến đi để được giảm giá.",
  ),
];
