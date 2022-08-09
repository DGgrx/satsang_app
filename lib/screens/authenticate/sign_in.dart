import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  String? mobileNo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 150,
            ),
            const Text(
              "India's #1 Satsang Streaming App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35.0,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Insert Your mobile Number",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Expanded(
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Text(
                          "+91",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 28.0),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                            child: TextFormField(
                          validator: (value) =>
                              value!.isNotEmpty && value.length == 10
                                  ? null
                                  : "Please Enter a Mobile Number",
                          onChanged: (value) =>
                              setState(() => mobileNo = value),
                          style: const TextStyle(
                              fontSize: 25.0, letterSpacing: 1.0),
                          maxLength: 10,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          // validator: ,
                          decoration: const InputDecoration(
                              counterText: "",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 15.0),
                              hintText: "Mobile Number",
                              hintStyle: TextStyle(fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1.0))),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 35.0, 0, 0),
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              print(mobileNo.runtimeType);
                            }
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 8.0),
                            child: Text(
                              "Get OTP",
                              style: TextStyle(fontSize: 19.0),
                            ),
                          )),
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
