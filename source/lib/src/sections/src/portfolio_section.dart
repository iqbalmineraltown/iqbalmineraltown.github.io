import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({Key? key}) : super(key: key);

  List<Widget> _generateChildren() {
    var children = <Widget>[];
    for (var i = 0; i < 5; i++) {
      children.add(const PortfolioItemWidget());
    }
    return children;
  }

  @override
  Widget build(BuildContext context) {
    var skillWidgets = _generateChildren();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height,
      width: width,
      child: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: skillWidgets,
        ),
      ),
    );
  }
}

class PortfolioItemWidget extends StatelessWidget {
  const PortfolioItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: width * 0.3,
          child: Card(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Icon(
                      Ionicons.airplane,
                      size: 96.0,
                    ),
                    Text(
                      'Yeyeye',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
