import 'package:flutter/material.dart';

import 'no_image_icon.dart';

class ChatImageWidget extends StatelessWidget {
  final List<String?> images;
  final List<Widget> widgets;

  ChatImageWidget({super.key, required this.images})
      : widgets = images
            .map((image) => image != null
                ? Image.network(image, fit: BoxFit.cover)
                : const NoImageIcon())
            .toList(growable: false);

  Widget _buildChild() {
    switch (widgets.length) {
      case 1:
        return ClipRRect(
          borderRadius: BorderRadius.circular(22.0),
          child: widgets[0],
        );
      case 2:
        return _buildStackFor2();
      case 3:
        return _buildStackFor3();
      default: // >= 4
        return _buildStackFor4AndMore();
    }
  }

  Widget _buildStackFor2() {
    return Stack(
      children: [
        Positioned(
          top: 0.0,
          left: 0.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13.5),
            child: SizedBox(
              width: 38.0,
              child: AspectRatio(aspectRatio: 1.0, child: widgets[1]),
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13.5),
            child: SizedBox(
              width: 38.0,
              child: AspectRatio(aspectRatio: 1.0, child: widgets[0]),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildStackFor3() {
    return Stack(
      children: [
        Positioned(
          bottom: 0.0,
          left: 0.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: SizedBox(
              width: 34.0,
              child: AspectRatio(aspectRatio: 1.0, child: widgets[1]),
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: SizedBox(
              width: 34.0,
              child: AspectRatio(aspectRatio: 1.0, child: widgets[2]),
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          left: 14.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: SizedBox(
              width: 34.0,
              child: AspectRatio(aspectRatio: 1.0, child: widgets[0]),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildStackFor4AndMore() {
    return Stack(
      children: [
        Positioned(
          top: 0.0,
          left: 0.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.6),
            child: SizedBox(
              width: 30.0,
              child: AspectRatio(aspectRatio: 1.0, child: widgets[0]),
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          right: 0.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.6),
            child: SizedBox(
              width: 30.0,
              child: AspectRatio(aspectRatio: 1.0, child: widgets[1]),
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.6),
            child: SizedBox(
              width: 30.0,
              child: AspectRatio(aspectRatio: 1.0, child: widgets[2]),
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.6),
            child: SizedBox(
              width: 30.0,
              child: AspectRatio(aspectRatio: 1.0, child: widgets[3]),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1.0, child: _buildChild());
  }
}
