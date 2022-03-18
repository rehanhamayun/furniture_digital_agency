import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_digital_agency/view/chair_data.dart';
import 'package:furniture_digital_agency/widgets.dart';
import 'package:sizer/sizer.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool _drawerOpen = false;
  bool _tabColor = false;
  bool _secondController = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        // CUSTOM DRAWER (COLOR)
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                setState(() {
                  _drawerOpen = true;
                  Scaffold.of(context).openDrawer();
                });
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              icon: const Icon(
                CupertinoIcons.line_horizontal_3_decrease,
                color: Colors.black,
              ),
            );
          },
        ),
        // DRAWER ENDS HERE
        backgroundColor: Colors.grey.shade300,
        elevation: 0.0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80"),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Choose your Best \n Furniture",
              style: textFurniture,
            ),
            SizedBox(
              height: 2.h,
            ),
            // Categories

            Container(
              height: 15.h,
              width: double.infinity,
              // color: Colors.grey.withOpacity(0.5),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  // itemExtent: 70,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _tabColor = true;
                        });
                      },
                      child: Container(
                        height: 6.h,
                        width: 23.w,
                        decoration: BoxDecoration(
                          color: _tabColor == true ? touchColor : tabColor,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Center(
                          child: Text("Chair"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    //
                    InkWell(
                      onTap: () {
                        setState(() {
                          _secondController = true;
                        });
                      },
                      child: Container(
                        height: 6.h,
                        width: 23.w,
                        decoration: BoxDecoration(
                          color:
                              _secondController == true ? touchColor : tabColor,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Center(
                          child: Text("Chair"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    //
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 6.h,
                        width: 23.w,
                        decoration: BoxDecoration(
                          color: tabColor,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Center(
                          child: Text("Chair"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    //
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 6.h,
                        width: 23.w,
                        decoration: BoxDecoration(
                          color: tabColor,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Center(
                          child: Text("Chair"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    //
                  ],
                ),
              ),
            ),

            //END CATEGORIES
            Container(
              child: _tabColor == true ? ChairData() : null,
            ),
            Container(
              child: _secondController == true ? ChairData() : null,
            ),
          ],
        ),
      ),
    );
  }
}
