import 'package:book_teacher/screens/home_screen/home_screen.dart';
import 'package:book_teacher/size_config.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Center(
                  child: Container(
                    width: SizeConfig.screenWidth * 0.45,
                    child: Text(
                      "Teachers from all over the world",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenHeight(26),
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Center(
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                AvatarRow(),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: AvatarRow(),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                AvatarRow(),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(80),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(24),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                            child: Text(
                              "Signup",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: getProportionateScreenHeight(16)),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(24),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: getProportionateScreenHeight(16)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(50),
                ),
                Center(
                  child: Text(
                    "Tutor Signup/Login",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenHeight(14),
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AvatarRow extends StatelessWidget {
  const AvatarRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight * 0.13,
      width: SizeConfig.screenWidth,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SingleAvatar(),
          SizedBox(
            width: getProportionateScreenWidth(10),
          ),
          SingleAvatar(),
          SizedBox(
            width: getProportionateScreenWidth(10),
          ),
          SingleAvatar(),
          SizedBox(
            width: getProportionateScreenWidth(10),
          ),
          SingleAvatar(),
          SizedBox(
            width: getProportionateScreenWidth(10),
          ),
          SingleAvatar(),
          SizedBox(
            width: getProportionateScreenWidth(10),
          ),
        ],
      ),
    );
  }
}

class SingleAvatar extends StatelessWidget {
  const SingleAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenHeight(100),
      height: getProportionateScreenHeight(100),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200"))),
    );
  }
}
