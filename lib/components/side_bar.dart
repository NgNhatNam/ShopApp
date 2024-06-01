import 'package:cuoi_ki_flutter/models/models.dart';
import 'package:cuoi_ki_flutter/pages/auth/login_page.dart';
import 'package:cuoi_ki_flutter/pages/cart/paid_product.dart';
import 'package:cuoi_ki_flutter/resources/app_color.dart';
import 'package:cuoi_ki_flutter/services/local/share_prefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  SharedPrefs prefs = SharedPrefs();
  UserModel user = UserModel();
  String username = '';
  String useremail = '';

  @override
  void initState() {
    super.initState();
    _getUser();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  void _getUser() {
    prefs.getUser().then((value) {
      setState(() {
        user = value ?? UserModel();
        username = user.username ?? '';
        useremail = user.email ?? '';
      });
    });
  }

  void _logout() async {
    user.keylogin = '0'; // Đặt trạng thái đăng xuất
    await prefs.saveUser(user);
    Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const LoginPage()),
          (Route<dynamic> route) => false,
        );  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      surfaceTintColor: AppColor.white,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(username),
            accountEmail: Text(useremail),
            currentAccountPicture: CircleAvatar(
              child: Text(username.isNotEmpty ? username[0] : ''),
            ),
            decoration: const BoxDecoration(
              color: AppColor.bgColor,
              image: DecorationImage(
                  image: AssetImage('assets/images/profile.png'), // Thay đổi đường dẫn tới ảnh nền của bạn
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('Đã thanh toán'),
            onTap:() {
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PaidProductsPage(),
                  ),
                );
            },
          ),

          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Đăng xuất'),
            onTap: _logout,
          ),
        ],
      ),
    );
  }
}
