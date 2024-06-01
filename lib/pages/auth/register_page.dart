
import 'package:cuoi_ki_flutter/components/button/app_elevated_button.dart';
import 'package:cuoi_ki_flutter/components/text_field/app_text_field.dart';
import 'package:cuoi_ki_flutter/components/text_field/app_text_field_pass.dart';
import 'package:cuoi_ki_flutter/models/models.dart';
import 'package:cuoi_ki_flutter/pages/auth/login_page.dart';
import 'package:cuoi_ki_flutter/resources/app_color.dart';
import 'package:cuoi_ki_flutter/services/local/share_prefs.dart';
import 'package:cuoi_ki_flutter/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  SharedPrefs prefs = SharedPrefs();
  UserModel user = UserModel();
  
  GlobalKey<FormState> formkey = GlobalKey();



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
      userNameController.text = user.username ?? '';
      emailController.text = user.email ?? '';
      passwordController.text = user.password ?? '';
      setState(() {});
    });
  }

    void _register() {
    if (formkey.currentState!.validate()) {
      final user = UserModel()
        ..username = userNameController.text.trim()
        ..email = emailController.text.trim()
        ..password = passwordController.text.trim()
        ..keylogin = '0';  

      prefs.saveUser(user);

      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const LoginPage()),
        (Route<dynamic> route) => false,
      );
    }
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
      backgroundColor: AppColor.white,
      body: Center(
        child: SingleChildScrollView(
              child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Form(
                key: formkey,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Đăng kí',
                  style: TextStyle(color: AppColor.pink, fontSize: 24.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 200.0,
                    ),
                  ), 
                const Text(
                  'Tạo tài khoản mới',
                  style: TextStyle(color: AppColor.grey, 
                  fontSize: 15.0,),
                  textAlign: TextAlign.center,
                ),
               const SizedBox(height: 30.0),

                AppTextField(
                    controller: userNameController,
                    textInputAction: TextInputAction.next,
                    hintText: "User name",
                    prefixIcon: const Icon(Icons.person_2, color: AppColor.white),
                    validator: Validator.requiredValidator.call,
                  ),
                const SizedBox(height: 10.0),
                AppTextField(
                    controller: emailController,
                    textInputAction: TextInputAction.next,
                    hintText: "Email",
                    prefixIcon: const Icon(Icons.email, color: AppColor.white),
                    validator: Validator.emailValidator.call,
                  ),
                const SizedBox(height: 10.0),
                
                AppTextFieldPassword(
                    controller: passwordController,
                    textInputAction: TextInputAction.next,
                    hintText: 'Mật khẩu',
                    validator: Validator.passwordValidator.call,
                  ),
                
                const SizedBox(height: 10.0),

                AppTextFieldPassword(
                    controller: confirmPasswordController,
                    textInputAction: TextInputAction.done,
                    hintText: 'Nhập lại mật khẩu',
                    validator: (confirm) => Validator.confirmPasswordValidator(passwordController.text).call(confirm),
                  ),
                
                const SizedBox(height: 20.0),

                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                       Text('Bạn đã có tài khoản? ', style: TextStyle(color: Colors.black.withOpacity(0.3), fontSize: 16.0)),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                            return const LoginPage();
                          }));
                        },
                        child: const Text(
                          'Đăng nhập',
                          style: TextStyle(
                            color: AppColor.pink,
                            fontSize: 16.0
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),

                  Align(
                      alignment: Alignment.center,
                      child: AppElevatedButton(
                        onPressed: _register, /* () {
                          if (formkey.currentState!.validate()) {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                              (Route<dynamic> route) => false,
                            );
                          }
                          final user = UserModel()
                            ..username = userNameController.text.trim()
                            ..email = emailController.text.trim()
                            ..password = passwordController.text.trim();

                      prefs.saveUser(user);
                        }, */
                        text: 'Đăng kí',
                      ),
                    ),
              ],
            ),
          )
          ))),
    ));
  
  }
}