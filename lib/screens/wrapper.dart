import 'package:flutter/material.dart';
import 'package:satsang_app/screens/authenticate/sign_in.dart';
import 'package:satsang_app/screens/authenticate/otp.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OtpScreen(mobileNo: "9660728966");
  }
}
