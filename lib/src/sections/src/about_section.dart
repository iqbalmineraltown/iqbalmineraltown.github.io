import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      color: Colors.orangeAccent,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 3.0 / 4.0,
              child: Image.network(
                  'https://w7.pngwing.com/pngs/344/463/png-transparent-rage-comic-comics-internet-meme-drawing-rage-white-face-comic-book-thumbnail.png'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                '''
                Nostrud aute labore eiusmod proident Lorem aute in enim sunt reprehenderit ullamco velit ex. Sit excepteur veniam minim ullamco non id nulla officia ex. Id esse commodo consectetur commodo in reprehenderit. Aute cillum ipsum amet pariatur.

                In esse adipisicing pariatur non occaecat aliqua sunt commodo veniam anim. Minim id laborum amet mollit. Tempor voluptate qui minim mollit ut cillum mollit reprehenderit amet ex eiusmod excepteur ullamco. Ullamco quis pariatur eiusmod commodo reprehenderit. Nostrud do nulla cillum culpa fugiat consectetur nisi et eu officia tempor.

                Sit nulla adipisicing et excepteur elit consequat cillum ullamco consequat laborum. Velit reprehenderit laborum tempor nostrud sint voluptate consequat minim deserunt proident cupidatat dolore in nulla. Ex ad do quis tempor excepteur qui ullamco eiusmod ea. Ex enim non laboris mollit consequat laboris nulla tempor. Est mollit veniam voluptate ipsum ea reprehenderit. Do reprehenderit ullamco amet Lorem voluptate cillum eiusmod aliqua. Sit elit qui officia minim ea consectetur reprehenderit magna in.
                ''',
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
