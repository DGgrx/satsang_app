import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatefulWidget {
  OtpScreen({required this.mobileNo,Key? key}) : super(key: key);
  String? mobileNo;
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 210,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0),
                child: Text(
                    "Please Insert the OTP received in your Mobile Number +91-${widget.mobileNo}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
              ),
              SizedBox(height: 50.0,),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 20.0
                ),
                child: OTPTextField(
                  length: 6,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 50,

                  otpFieldStyle: OtpFieldStyle(
                  ),
                  style: TextStyle(
                      fontSize: 17
                  ),
                  textFieldAlignment: MainAxisAlignment.spaceEvenly,
                  keyboardType: TextInputType.number,
                  fieldStyle: FieldStyle.box,
                  outlineBorderRadius: 0.0,
                  onChanged: (pin){
                    print("Changed: " + pin);
                  },
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),
              ),
              SizedBox(height: 30.0,),
              ElevatedButton(
                  onPressed: (){},
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 8.0),
                    child: Text("Verify",
                        style: TextStyle(fontSize: 19.0)),
                  )
              )
            ],
          )
      ),
    );
  }
}
