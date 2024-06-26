import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        children: [
          SizedBox(height: 10),
          Container(
            height: 20,
            width: double.infinity,
            color: Colors.grey[300],
          ),
          SizedBox(height: 10),
          ...List.generate(8, (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Container(
              height: 20,
              width: double.infinity,
              color: Colors.grey[300],
            ),
          )),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
