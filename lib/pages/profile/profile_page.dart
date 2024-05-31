import 'package:cuoi_ki_flutter/components/button/app_elevated_button.dart';
import 'package:cuoi_ki_flutter/models/models.dart';
import 'package:cuoi_ki_flutter/pages/profile/chage_profile.dart';
import 'package:cuoi_ki_flutter/pages/profile/change_pass.dart';
import 'package:cuoi_ki_flutter/resources/app_color.dart';
import 'package:cuoi_ki_flutter/services/local/share_prefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kcontentColor,
        title: const Text("Tài khoản",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           UserAccountsDrawerHeader(
            accountName: Text(username),
            accountEmail: Text(useremail),
            currentAccountPicture: CircleAvatar(
              child: Text(username.isNotEmpty ? username[0] : ''),
            ),
            
            decoration: const BoxDecoration(
              color: AppColor.kprimaryColor,
              image: DecorationImage(
                  image: AssetImage('images/profile.png'), // Thay đổi đường dẫn tới ảnh nền của bạn
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
            
            ),
          ),
            const SizedBox(height: 30),
            Align(
                      alignment: Alignment.centerLeft,
                      child: AppElevatedButton(
                        width: 600,
                        onPressed: (){
                                Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(builder: (context) => const ChangeProfile()),
                                  (Route<dynamic> route) => false,
                                );} ,
                        text: 'Chỉnh sửa thông tin',
                      ),
                    ),
            const SizedBox(height: 20),
            Align(
                 alignment: Alignment.centerLeft,
                  child: AppElevatedButton(
                    width: 600,
                     onPressed: (){
                                Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(builder: (context) => const ChangePassword()),
                                  (Route<dynamic> route) => false,
                                ); } ,
                  text: 'Đổi mật khẩu',
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
