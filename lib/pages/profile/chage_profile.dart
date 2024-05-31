

import 'package:cuoi_ki_flutter/components/button/app_elevated_button.dart';
import 'package:cuoi_ki_flutter/components/text_field/app_text_field.dart';
import 'package:cuoi_ki_flutter/models/models.dart';
import 'package:cuoi_ki_flutter/pages/nav_bar_screen.dart';
import 'package:cuoi_ki_flutter/resources/app_color.dart';
import 'package:cuoi_ki_flutter/services/local/share_prefs.dart';
import 'package:cuoi_ki_flutter/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChangeProfile extends StatefulWidget {
  const ChangeProfile({super.key});

  @override
  State<ChangeProfile> createState() => _ChangeProfileState();
}

class _ChangeProfileState extends State<ChangeProfile> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController newuserNameController = TextEditingController();

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
      userNameController.text = user.username ?? '';
      setState(() {});
    });
  }

  void _changePass() {
    if (formKey.currentState!.validate()) {
      if (newuserNameController.text == user.username) {
                ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Tên người dùng cũ không được lặp lại ')),
        );
      } else {


        user.username = newuserNameController.text;
        prefs.saveUser(user);

        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const BottomNavBar()),
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
              padding: const EdgeInsets.only(top: 30.0),
              child: Form(
                key: formKey,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Đổi tên người dùng',
                  style: TextStyle(color: AppColor.grey, 
                  fontSize: 15.0,),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 70.0),

                AppTextField(
                    controller: userNameController,
                    textInputAction: TextInputAction.next,
                    hintText: 'Tên người dùng',
                    prefixIcon: const Icon(Icons.person, color: AppColor.white),
                    validator: Validator.requiredValidator.call,
                  ),
                
                const SizedBox(height: 10.0),

                AppTextField(
                    controller: newuserNameController,
                    textInputAction: TextInputAction.done,
                    hintText: 'Tên mới ',
                    prefixIcon: const Icon(Icons.person_2, color: AppColor.white),
                    validator: Validator.requiredValidator.call,
                  ),
                
            
                  const SizedBox(height: 30.0),

                  Align(
                      alignment: Alignment.center,
                      child: AppElevatedButton(
                        onPressed: _changePass ,
                        text: 'Hoàn tất',
                      ),
                    ),
],
            ),
          )
          ))),
    ));

  }
}