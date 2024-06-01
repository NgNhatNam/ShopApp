

import 'package:cuoi_ki_flutter/components/button/app_elevated_button.dart';
import 'package:cuoi_ki_flutter/components/text_field/app_text_field_pass.dart';
import 'package:cuoi_ki_flutter/models/models.dart';
import 'package:cuoi_ki_flutter/pages/auth/login_page.dart';
import 'package:cuoi_ki_flutter/pages/nav_bar_screen.dart';
import 'package:cuoi_ki_flutter/resources/app_color.dart';
import 'package:cuoi_ki_flutter/services/local/share_prefs.dart';
import 'package:cuoi_ki_flutter/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController newpasswordController = TextEditingController();

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
      setState(() {});
    });
  }

  void _changePass() {
    if (formKey.currentState!.validate()) {
      if (newpasswordController.text == user.password) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Mật khẩu mới không được trùng lại')),
        );
        
      } else {
        user.keylogin = '0';  
        user.password = newpasswordController.text;
        prefs.saveUser(user);

        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const LoginPage()),
          (Route<dynamic> route) => false,
        );
      }
    }
  }


  Widget build(BuildContext context) {
     return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),

      child: Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.kcontentColor,
        title: const Text("Tài khoản",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const BottomNavBar()),
          (Route<dynamic> route) => false,
        );
            ;
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
              child: Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Form(
                key: formKey,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Đổi mật khẩu',
                  style: TextStyle(color: AppColor.grey, 
                  fontSize: 15.0,),
                  textAlign: TextAlign.center,
                ),
                Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 200.0,
                    ),
                  ), 

                const SizedBox(height: 50.0),
                AppTextFieldPassword(
                    controller: passwordController,
                    textInputAction: TextInputAction.next,
                    hintText: 'Mật khẩu cũ',
                    validator: Validator.passwordValidator.call,
                  ),
                
                const SizedBox(height: 10.0),

                AppTextFieldPassword(
                    controller: newpasswordController,
                    textInputAction: TextInputAction.next,
                    hintText: 'Mật khẩu',
                    validator: Validator.passwordValidator.call,
                  ),
                
                const SizedBox(height: 10.0),

                AppTextFieldPassword(
                    controller: confirmPasswordController,
                    textInputAction: TextInputAction.done,
                    hintText: 'Nhập lại mật khẩu',
                    validator: (confirm) => Validator.confirmPasswordValidator(newpasswordController.text).call(confirm),
                  ),
                
            
                  const SizedBox(height: 30.0),

                  Align(
                      alignment: Alignment.center,
                      child: AppElevatedButton(
                        onPressed: _changePass ,
                        text: 'Đổi mật khẩu',
                      ),
                    ),
],
            ),
          )
          ))),
    ));

  }
}