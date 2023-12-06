import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  ImageScreen(this.file, {super.key});
  XFile file;
  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    File picture = File(widget.file.path);
    return Scaffold(
      appBar: AppBar(title: Text("Galerie")),
      body: Center(child: Image.file(picture)),
    );
  }
}
