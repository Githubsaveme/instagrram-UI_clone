import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageView extends StatefulWidget {
  final String imageViewPhoto;

  const ImageView({Key? key, required this.imageViewPhoto}) : super(key: key);

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
              color: Colors.white,
              child: PhotoView(
                imageProvider: NetworkImage(widget.imageViewPhoto),
                filterQuality: FilterQuality.high,
              )),
          Positioned(
            top: 20,
            right: 10,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                icon: const Icon(
                  Icons.cancel,
                  size: 25,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
