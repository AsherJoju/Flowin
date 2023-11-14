import 'package:flutter/material.dart';

class SlideWidget extends StatelessWidget {
  final Color? color;
  final ImageProvider? image;
  final Widget? child;

  const SlideWidget({super.key, this.color, this.image, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        image: (image != null)
            ? DecorationImage(
                image: image as ImageProvider,
                fit: BoxFit.cover,
              )
            : null,
        borderRadius: BorderRadius.circular(10.0),
      ),
      constraints: const BoxConstraints(),
      child: Center(child: child),
    );
  }
}
