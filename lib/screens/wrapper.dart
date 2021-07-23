import 'package:book_teacher/screens/auth/otp_verification.dart';
import 'package:book_teacher/size_config.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  static String routeName = "/wrapper";
  const Wrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return OtpVerification();
  }
}
