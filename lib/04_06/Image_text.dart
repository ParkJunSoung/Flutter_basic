import 'package:flutter/material.dart';
class ImageText extends StatelessWidget {
  final String url;
  final String text;

  ImageText(this.url, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [

    Image.network(url,
    width: 80,
    height: 80,
    fit: BoxFit.cover,
    ),
    Text(text),
    ],
    );
  }
}
