import 'package:flutter/material.dart';

class CustomCarouselItem extends StatelessWidget {
  final String imageUrl;
  final bool isMain;

  CustomCarouselItem({required this.imageUrl, this.isMain = false});

  @override
  Widget build(BuildContext context) {
    final double itemHeight = isMain ? 200.0 : 100.0;
    final double itemWidth = isMain ? 300.0 : 200.0;
    final double borderRadius = isMain ? 16.0 : 8.0;
    final double padding = isMain ? 0.0 : 16.0;

    return Container(
      width: itemWidth,
      height: itemHeight,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Previous image behind the main image
            Positioned(
              left: -itemWidth * 0.2,
              child: Opacity(
                opacity: isMain ? 1.0 : 0.5,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Main image
            Center(
              child: GestureDetector(
                onTap: () {
                  // Handle tap on the carousel item.
                },
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Next image behind the main image
            Positioned(
              right: -itemWidth * 0.2,
              child: Opacity(
                opacity: isMain ? 1.0 : 0.5,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Inner content
            Padding(
              padding: EdgeInsets.all(padding),
              child: Center(
                child: Text(
                  'Inner Content',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
