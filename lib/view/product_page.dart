import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  bool _drawerOpen = false;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              icon: Icon(
                CupertinoIcons.line_horizontal_3_decrease,
                color: Colors.black,
              ),
            );
          },
        ),
        // DRAWER ENDS HERE
        backgroundColor: Colors.white,
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
    );
  }
}
