import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

cachedNetworkImage(String image, context, double height, {double width}) {
  return CachedNetworkImage(
    imageUrl: image ?? 'assets/images/welcome.png',
    fit: BoxFit.cover,
    height: height,
    width: width != null ? width : MediaQuery.of(context).size.width,
    placeholder: (context, url) => Padding(
      child: Center(child: CircularProgressIndicator()),
      padding: EdgeInsets.all(20.0),
    ),
    errorWidget: (context, url, error) => Icon(Icons.error),
  );
}
