import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ChairData extends StatelessWidget {
  const ChairData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        color: Colors.amber,
        height: 40.h,
        width: double.infinity,
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext, index) {
              return Card(
                elevation: 10,
                child: Text("Chair Data"),
              );
            }),
      ),
    );
  }
}
