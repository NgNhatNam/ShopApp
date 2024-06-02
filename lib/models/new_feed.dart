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
    title: "Giảm giá đến 50% cho các sản phẩm thời trang tại shop NNN",
    author: "NNN",
    image: "assets/images/feed/feed1.png",
    postedOn: "Hôm qua",
    description: "Shop NNN đang có chương trình giảm giá lớn lên đến 50% cho các sản phẩm thời trang. Đây là cơ hội tuyệt vời để bạn làm mới tủ đồ của mình với các bộ trang phục mới nhất. Hãy nhanh tay đến cửa hàng hoặc truy cập website của chúng tôi để không bỏ lỡ cơ hội này.",
  ),
  Article(
    title: "Sale mạnh 20% cho tất cả các mặt hàng điện tử tại shop NNN",
    image: "assets/images/feed/feed2.png",
    author: "NNN",
    postedOn: "4 giờ trước",
    description: "Shop NNN đang có chương trình khuyến mãi đặc biệt, giảm ngay 20% cho tất cả các mặt hàng điện tử. Từ điện thoại, laptop đến các thiết bị gia dụng, bạn đều có thể mua sắm với giá ưu đãi. Hãy nhanh tay nhập mã trước khi hết hạn!",
  ),
  Article(
    title: "Giảm giá đến 30% cho sách và văn phòng phẩm tại shop NNN",
    author: "NNN",
    image: "assets/images/feed/feed3.png",
    postedOn: "2 ngày trước",
    description: "Shop NNN đang áp dụng mã giảm giá đến 30% cho các sản phẩm sách và văn phòng phẩm. Đây là dịp để bạn bổ sung thêm kiến thức và dụng cụ học tập với chi phí tiết kiệm. Hãy đến cửa hàng của chúng tôi hoặc truy cập trang web để được giảm giá.",
  ),
  Article(
    title: "Giảm 25% cho đơn hàng đầu tiên tại shop NNN",
    author: "NNN",
    image: "assets/images/feed/feed4.png",
    postedOn: "22 giờ trước",
    description: "Shop NNN đang triển khai chương trình giảm giá 25% cho các đơn hàng đầu tiên. Đây là cơ hội để bạn trải nghiệm dịch vụ mua sắm tuyệt vời của chúng tôi với giá ưu đãi. Đừng quên nhập mã khi đặt hàng nhé!",
  ),
  Article(
    title: "Giảm ngay 100k cho đơn hàng từ 500k tại shop NNN",
    author: "NNN",
    image: "assets/images/feed/feed5.png",
    postedOn: "2 giờ trước",
    description: "Shop NNN vừa tung ra mã giảm giá 100k cho các đơn hàng từ 500k. Đây là dịp tốt để bạn mua sắm các sản phẩm yêu thích với giá tiết kiệm. Hãy nhập mã và tận hưởng ưu đãi ngay hôm nay.",
  ),
  Article(
    title: "Giảm giá 15% cho tất cả dịch vụ tại shop NNN",
    author: "NNN",
    image: "assets/images/feed/feed6.png",
    postedOn: "10 ngày trước",
    description: "Shop NNN đang có mã giảm giá 15% cho tất cả các dịch vụ. Từ mua sắm, ăn uống đến giải trí, bạn đều có thể tiết kiệm chi phí với mã giảm giá này. Nhanh tay nhập mã và trải nghiệm dịch vụ với giá ưu đãi.",
  ),
  Article(
    title: "Giảm 50k cho chuyến đi đầu tiên đến shop NNN",
    author: "NNN",
    image: "assets/images/feed/feed7.png",
    postedOn: "10 giờ trước",
    description: "Shop NNN vừa công bố mã giảm giá 50k cho chuyến đi đầu tiên đến cửa hàng của chúng tôi. Đây là cơ hội để bạn trải nghiệm dịch vụ di chuyển tiện lợi và tiết kiệm. Nhập mã ngay khi đặt chuyến đi để được giảm giá.",
  ),
];
