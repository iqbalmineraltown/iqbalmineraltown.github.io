import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  List<Widget> _generateChildren() {
    var children = <Widget>[];
    for (var i = 0; i < 10; i++) {
      children.add(const SkillItemWidget());
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

class SkillItemWidget extends StatelessWidget {
  const SkillItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: width * 0.25,
      child: Card(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Icon(
                  Ionicons.airplane,
                  size: 48.0,
                ),
                Text(
                  'Yeyeye',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
