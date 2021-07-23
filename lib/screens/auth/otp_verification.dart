import 'package:book_teacher/screens/auth/landing_screen.dart';
import 'package:book_teacher/size_config.dart';
import 'package:flutter/material.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key key}) : super(key: key);

  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Verify Phone',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Center(
                    child: Container(
                      width: getProportionateScreenWidth(100),
                      height: getProportionateScreenHeight(100),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200, shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: getProportionateScreenWidth(80),
                          height: getProportionateScreenHeight(80),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.redAccent.shade100.withOpacity(0.4),
                              shape: BoxShape.circle),
                          child: SizedBox(
                            child: Container(
                              width: getProportionateScreenWidth(40),
                              height: getProportionateScreenHeight(40),
                              decoration: BoxDecoration(
                                  color: Colors.red.shade400,
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Center(
                    child: Text(
                      "Verify your Number",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: getProportionateScreenHeight(24)),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(25),
                  ),
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text:
                            "We've send a Verification Code to verify your number on ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "+1(313)-112-2233 ",
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextSpan(
                              text: "Change",
                              style: TextStyle(color: Colors.redAccent)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Center(
                    child: Text(
                      "Enter the Code below to complete registration",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenHeight(16)),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: getProportionateScreenWidth(40),
                          height: getProportionateScreenHeight(40),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "3",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: getProportionateScreenHeight(18)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(15),
                        ),
                        Container(
                          width: getProportionateScreenWidth(40),
                          height: getProportionateScreenHeight(40),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "6",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: getProportionateScreenHeight(18)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(15),
                        ),
                        Container(
                          width: getProportionateScreenWidth(40),
                          height: getProportionateScreenHeight(40),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "-",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: getProportionateScreenHeight(18)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(15),
                        ),
                        Container(
                          width: getProportionateScreenWidth(40),
                          height: getProportionateScreenHeight(40),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "-",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: getProportionateScreenHeight(18)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(100),
                  ),
                  Center(
                    child: Text(
                      "Didn't receive Code? Resend in 7",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: getProportionateScreenHeight(16)),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(180),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => LandingScreen()),
                            (route) => false);
                      },
                      child: Container(
                        width: SizeConfig.screenWidth * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Proceed",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: getProportionateScreenHeight(22)),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
