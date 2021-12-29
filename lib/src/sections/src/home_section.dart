import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: Theme.of(context).colorScheme.background,
      height: height,
      width: width,
      child: Stack(
        children: [
          Center(
            child: Text(
              'John Thor',
              style: Theme.of(context).textTheme.headline1?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
          ),
          Center(
            child: Text(
              'John Thor',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
        ],
      ),
    );
  }
}
