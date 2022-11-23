import 'dart:ui';

import 'package:flutter/material.dart';

class BlurredBlock extends StatelessWidget {
  const BlurredBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          width: 800,
          height: 800,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(500),
          ),
          child: const Center(
            child: Text('Blurred block 1'),
          ),
        ),
      ),
    );
  }
}
