import 'package:book_teacher/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home_screen";
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Select Instructor",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: SizeConfig.screenWidth * 0.15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.filter_4_outlined),
                          Icon(Icons.rule_folder_outlined)
                        ],
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(10),
                    ),
                    Container(
                      height: getProportionateScreenHeight(40),
                      width: SizeConfig.screenWidth * 0.7,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SingleChip(
                            chipTitle: "Sort",
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(20),
                          ),
                          SingleChip(
                            chipTitle: "Mathematics",
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(20),
                          ),
                          SingleChip(
                            chipTitle: "\$10 -\$20",
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(20),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SingleChip extends StatefulWidget {
  final String chipTitle;
  const SingleChip({
    Key key,
    this.chipTitle,
  }) : super(key: key);

  @override
  _SingleChipState createState() => _SingleChipState();
}

class _SingleChipState extends State<SingleChip> {
  bool chipTouched = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          chipTouched = !chipTouched;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: chipTouched == true ? Colors.black : Colors.white,
            border: Border.all(color: Colors.grey, width: 0.9),
            borderRadius: BorderRadius.all(Radius.circular(24))),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
          child: Text(
            widget.chipTitle,
            style: TextStyle(
                color: chipTouched == true ? Colors.white : Colors.grey,
                fontSize: getProportionateScreenHeight(16)),
          ),
        ),
      ),
    );
  }
}
