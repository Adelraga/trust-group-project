import 'package:flutter/cupertino.dart';

class ImageGridViewItem extends StatelessWidget {
  final String imagesUrl;
  const ImageGridViewItem({super.key, required this.imagesUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image:
              DecorationImage(image: AssetImage(imagesUrl), fit: BoxFit.fill)),
    );
  }
}
