import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
      ),
      child: CachedNetworkImage(
        imageUrl: imagesUrl,
        fit: BoxFit.fill,
        errorWidget: (context, url, error) => const Icon(
          Icons.error,
          color: Color.fromARGB(255, 124, 20, 20),
        ),
      ),
    );
  }
}
