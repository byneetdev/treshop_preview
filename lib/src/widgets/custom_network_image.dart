import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

class CustomNetworkImage extends StatelessWidget {
  final String image;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;

  const CustomNetworkImage({
    Key? key,
    required this.image,
    this.width = 150.0,
    this.height = 150.0,
    this.fit = BoxFit.cover,
    this.borderRadius,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          (borderRadius == null) ? BorderRadius.circular(8.0) : borderRadius,
      child: OctoImage(
        width: width,
        height: height,
        image: CachedNetworkImageProvider(image),
        errorBuilder: OctoError.icon(color: Colors.red),
        fadeInCurve: Curves.bounceIn,
        fit: fit,
        placeholderBuilder: OctoPlaceholder.blurHash(
          'L1N1Jt?vMy?b_3s;xaWENbjsofoz',
        ),
      ),
    );
  }
}
