import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      child: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            'John Thor',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
