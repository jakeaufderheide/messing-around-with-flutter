import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _assetPath;
  final double _size;

  ImageBanner(this._assetPath, this._size);
  @override
  Widget build(BuildContext context) {
    return Container(
            constraints: BoxConstraints.expand(
              height: _size,
            ),
            decoration: BoxDecoration(color: Colors.grey),
            child: Image.asset(
              _assetPath,
              fit: BoxFit.cover,
            ),
          );
  }
}