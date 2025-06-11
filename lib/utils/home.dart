import 'package:flutter/material.dart';
import 'package:flutter_ui_convert/consts/all_colors.dart';
import 'package:flutter_ui_convert/consts/all_sizes.dart';
import 'package:flutter_ui_convert/consts/all_styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selected = 37;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back)),
      body: Column(
        children: [
          Container(
            height: 210.0,
            width: MediaQuery.of(context).size.width,
            color: AllColors.whiteColor.withOpacity(0.2),
            child: Image.asset(
              'assets/images/watch.png',
              //fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Center(child: Text('Image failed to load'));
              },
            ),
          ),
          SizedBox(height: 35.0),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 180.0),
              child: Text("Apple Watch Series 6", style: AllStyles.heading),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            margin: EdgeInsets.only(left: 5.0),
            child: Row(
              children: [
                Icon(Icons.star, color: AllColors.starColor),
                Icon(Icons.star, color: AllColors.starColor),
                Icon(Icons.star, color: AllColors.starColor),
                Icon(Icons.star, color: AllColors.starColor),
                Icon(Icons.star, color: AllColors.starColor),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    SizedBox(width: 5.0),
                    Image.asset(
                      'assets/images/Group4.png',
                      //fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Center(child: Text('Image failed to load'));
                      },
                    ),
                    SizedBox(width: 6.0),
                    Text(
                      '45,000',
                      style: AllStyles.titleText.copyWith(color: Colors.black),
                    ),
                    // SizedBox(width: 0.50),

                    Padding(
                      padding: const EdgeInsets.only(right: 0.50),
                      child: Image.asset(
                        'assets/images/Group3.png',
                         fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Center(child: Text('Image failed to load'));
                        },
                      ),
                    ),
                     SizedBox(width: 2.50),
                    Text(
                      '55,000',
                      style: TextStyle(
                        color: Color(0xffAFAFAF),
                        fontSize: 14,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 110.0),
              Expanded(
                child: Text('Available in stock', 
                style: AllStyles.heading.copyWith(
                  color: Color(0xff000000),
                  fontSize: AllSizes.contentSize,
                  fontWeight: FontWeight.w600,
                )),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 320.0),
              child: Text('About', style: AllStyles.aboutText),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            //margin: EdgeInsets.only(left: 1.0),
            padding: EdgeInsets.only(right:10.0),
            child: Text(textAlign:TextAlign.left,
              "The upgraded S6 SiP runs up to 20 percent faster,\n allowing apps to also launch 20 percent faster,\n while maintaining the same all-day 18-hour battery\n life.",
              style: AllStyles.titleText,
            ),
          ),

          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
              children: [
                selected == 35 ? selectedNumber("35") : unselectedNumber("35"),
                selected == 36 ? selectedNumber("36") : unselectedNumber("36"),
                selected == 37 ? selectedNumber("37") : unselectedNumber("37"),
                selected == 38 ? selectedNumber("38") : unselectedNumber("38"),
                selected == 39 ? selectedNumber("38") : unselectedNumber("38"),
                selected == 40 ? selectedNumber("40") : unselectedNumber("40"),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(right: 25.0,left: 25.0),
            child: Container(
              height: 40.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AllColors.primaryColor,
                borderRadius: BorderRadius.circular(50.0),
              ),
            
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Add to cart",
                  textAlign: TextAlign.center,
                  style: AllStyles.heading.copyWith(color: AllColors.whiteColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget unselectedNumber(String number) {
  return Container(
    height: 50.0,
    width: 50.0,

    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(5),
    ),
    alignment: Alignment.center,
    child: Text(number, style: AllStyles.quantitytext),
  );
}

Widget selectedNumber(String number) {
  return Container(
    height: 50.0,
    width: 50.0,

    decoration: BoxDecoration(
      color: AllColors.primaryColor,
      borderRadius: BorderRadius.circular(5),
    ),
    alignment: Alignment.center,
    child: Text(number, style: AllStyles.quantitytext),
  );
}
