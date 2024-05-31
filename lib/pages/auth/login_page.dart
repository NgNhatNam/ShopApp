

import 'package:cuoi_ki_flutter/pages/nav_bar_screen.dart';
import 'package:cuoi_ki_flutter/components/button/app_elevated_button.dart';
import 'package:cuoi_ki_flutter/components/text_field/app_text_field.dart';
import 'package:cuoi_ki_flutter/components/text_field/app_text_field_pass.dart';
import 'package:cuoi_ki_flutter/models/models.dart';
import 'package:cuoi_ki_flutter/pages/auth/register_page.dart';
import 'package:cuoi_ki_flutter/resources/app_color.dart';
import 'package:cuoi_ki_flutter/services/local/share_prefs.dart';
import 'package:cuoi_ki_flutter/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userpasswordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();
  
  SharedPrefs prefs = SharedPrefs();
  UserModel user = UserModel();


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
      user = value ?? UserModel();
      emailController.text = user.email ?? '';
      passwordController.text = user.password ?? '';
      setState(() {});
    });
  }

  void _login() {
    if (formKey.currentState!.validate()) {
      if (emailController.text == user.email && userpasswordController.text == user.password) {
        // Đặt cho người dùng là đăng nhập
        user.keylogin = '1';  
        prefs.saveUser(user);

        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const BottomNavBar()),
          (Route<dynamic> route) => false,
        );
      } else {
        // Handle incorrect login details
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Tài khoản hoặc mật khẩu không đúng')),
        );
      }
    }
  }


  Widget build(BuildContext context) {
     return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),

      child: Scaffold(
      backgroundColor: AppColor.white,
      body: Center(
        child: SingleChildScrollView(
              child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Form(
                key: formKey,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Chào mừng',
                  style: TextStyle(color: AppColor.pink, 
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Center(
                    child: Image.asset(
                      'images/logo.png',
                      width: 200.0,
                    ),
                  ), 
                const Text(
                  'Đăng nhập tài khoản',
                  style: TextStyle(color: AppColor.grey, 
                  fontSize: 15.0,),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 50.0),
                AppTextField(
                    controller: emailController,
                    textInputAction: TextInputAction.next,
                    hintText: "Email",
                    prefixIcon: const Icon(Icons.email, color: AppColor.white),
                    validator: Validator.emailValidator.call,
                    
                  ),
                const SizedBox(height: 10.0),
                
                AppTextFieldPassword(
                    controller: userpasswordController,
                    textInputAction: TextInputAction.done,
                    hintText: 'Mật khẩu',
                    validator: Validator.passwordValidator.call,
                  ),
                
                
                const SizedBox(height: 20.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Bạn chưa có tài khoản? ', 
                      style: TextStyle(color: Colors.black.withOpacity(0.3), 
                              fontSize: 16.0)),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                            return const RegisterPage();
                          }));
                        },
                        child: const Text(
                          'Đăng kí',
                          style: TextStyle(
                            color: AppColor.pink,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),

                  Align(
                      alignment: Alignment.center,
                      child: AppElevatedButton(
                        onPressed: _login ,
                        text: 'Đăng nhập',
                      ),
                    ),
],
            ),
          )
          ))),
    ));

  }
}