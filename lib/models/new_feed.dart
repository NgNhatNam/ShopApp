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
    title: "Instagram âm thầm giới hạn tùy chọn 'giới hạn thời gian hàng ngày'",
    author: "MacRumors",
    image: "assets/images/feed/feed1.png",
    postedOn: "Hôm qua",
    description: "Instagram đang thử nghiệm một tính năng mới cho phép người dùng giới hạn thời gian sử dụng mạng xã hội hàng ngày. Đây là một nỗ lực của họ để tăng cường sức khỏe tinh thần và giảm thiểu thời gian mà người dùng dành cho ứng dụng.",
  ),
  Article(
    title: "Chủ đề tối của Google Search trở nên hoàn toàn đen với một số người dùng trên web",
    image: "assets/images/feed/feed2.png",
    author: "9to5Google",
    postedOn: "4 giờ trước",
    description: "Google đang thử nghiệm chủ đề tối hoàn toàn mới cho trang tìm kiếm của họ. Điều này sẽ giúp giảm ánh sáng xanh và bảo vệ mắt của người dùng khi họ tìm kiếm thông tin vào ban đêm.",
  ), 
  Article(
    title: "Kiểm tra iPhone của bạn ngay bây giờ: dấu hiệu cảnh báo có người đang theo dõi bạn",
    author: "New York Times",
    image: "assets/images/feed/feed3.png",
    postedOn: "2 ngày trước",
    description: "Một số người dùng iPhone đã bắt đầu phát hiện ra dấu hiệu cảnh báo khả nghi trên thiết bị của mình, cho thấy có người đang theo dõi họ mà họ không nhận ra. Các chuyên gia đang khuyến cáo người dùng kiểm tra cài đặt bảo mật của họ và cập nhật phần mềm đến phiên bản mới nhất để bảo vệ dữ liệu cá nhân.",
  ),
  Article(
    title: "Trò chơi MMO Lost Ark cực kỳ phổ biến của Amazon đang 'quá tải' ở trung tâm châu Âu",
    author: "MacRumors",
    image: "assets/images/feed/feed4.png",
    postedOn: "22 giờ trước",
    description: "Sau khi ra mắt tại châu Âu, trò chơi trực tuyến nhiều người chơi (MMO) Lost Ark đã gây ra một cơn sốt lớn, nhưng đồng thời cũng gây ra một số vấn đề kỹ thuật. Các máy chủ chính của trò chơi đã gặp phải tình trạng quá tải và một số người chơi gặp khó khăn khi kết nối vào trò chơi.",
  ),
   Article(
    title: "Panasonic GH6 với độ phân giải 25 megapixel là máy ảnh Micro Four Thirds có độ phân giải cao nhất từ trước đến nay",
    author: "Polygon",
    image: "assets/images/feed/feed5.png",
    postedOn: "2 giờ trước",
    description: "Panasonic vừa ra mắt máy ảnh mới nhất của mình, GH6, với độ phân giải 25 megapixel. Điều này làm cho GH6 trở thành máy ảnh Micro Four Thirds có độ phân giải cao nhất từ trước đến nay. Ngoài ra, GH6 cũng được trang bị nhiều tính năng cao cấp khác như chụp ảnh RAW 10-bit và quay video 4K 120fps.",
  ),
  Article(
    title: "Samsung Galaxy S22 Ultra sạc một cách kỳ lạ chậm chạp",
    author: "TechRadar",
    image: "assets/images/feed/feed6.png",
    postedOn: "10 ngày trước",
    description: "Người dùng Samsung Galaxy S22 Ultra đã bắt đầu báo cáo rằng thiết bị của họ đang gặp phải vấn đề với tốc độ sạc pin. Mặc dù Samsung đã quảng cáo rằng S22 Ultra hỗ trợ sạc siêu nhanh, nhưng một số người dùng phản ánh rằng thiết bị của họ chỉ sạc một cách kỳ lạ chậm chạp, gây ra sự bất tiện khi sử dụng.",
  ),
  Article(
  title: "Snapchat công bố tính năng chia sẻ vị trí thời gian thực",
  author: "Fox Business",
  image: "assets/images/feed/feed7.png",
  postedOn: "10 giờ trước",
  description: "Snapchat vừa công bố tính năng mới cho phép người dùng chia sẻ vị trí của họ trong thời gian thực với bạn bè. Tính năng này cho phép bạn chọn thời gian cụ thể để chia sẻ vị trí của mình với một hoặc nhiều người trong danh sách bạn bè của mình. Điều này có thể hữu ích cho việc sắp xếp cuộc hẹn hoặc tổ chức sự kiện khi bạn muốn biết bạn bè của mình đang ở đâu.",
),
];
