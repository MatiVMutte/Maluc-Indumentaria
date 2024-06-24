import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
// import 'package:fluent_ui/fluent_ui.dart';

class FullScreenImage extends StatelessWidget {
  final String imagePath;

  FullScreenImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fondo negro para resaltar la imagen
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context); // Cerrar imagen al tocar cualquier parte
            },
            child: Center(
              child: PhotoView(
                imageProvider: AssetImage(imagePath),
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.covered * 2,
                backgroundDecoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            top: 40.0,
            right: 20.0,
            child: IconButton(
              icon: Icon(Icons.close, color: Colors.white, size: 30),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
