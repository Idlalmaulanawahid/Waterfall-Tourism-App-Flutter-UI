import 'package:flutter/material.dart';

class CustomDestinationExplore extends StatelessWidget {
  const CustomDestinationExplore({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 118,
      height: 118,
      margin: const EdgeInsets.only(
        top: 5,
        left: 5,
        bottom: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(imageUrl),
        ),
      ),
    );
  }
}
