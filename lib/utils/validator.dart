import 'form_validator.dart';

class Validator {
  static final requiredValidator = MultiValidator([
    RequiredValidator(errorText: 'Không được bỏ trống ô này'),
  ]);

  static final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'Không được bỏ trống ô này'),
    MinLengthValidator(6, errorText: 'Mật khẩu phải hơn 6 ký tự'),
  ]);

  static final emailValidator = MultiValidator([
    RequiredValidator(errorText: 'Không được bỏ trống ô này'),
    EmailValidator(errorText: 'Nhập địa chỉ email hợp lệ'),
  ]);

  static MultiValidator confirmPasswordValidator(String? password) =>
      MultiValidator([
        RequiredValidator(errorText: 'Không được bỏ trống ô này'),
        MatchValidator(password, errorText: 'Mật khẩu không khớp'),
      ]);


}

//Thông báo lỗi
