import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imagesList = [
  'img/products/1.png',
  'img/products/2.png',
  'img/products/3.png',
  'img/products/4.png',
  'img/products/5.png',
];
final List<String> titles = [
  ' Some Product ',
  ' Another Product ',
  ' More Products ',
  ' Something more ',
  ' And one more ',
];

class ProductCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.3,
        autoPlayAnimationDuration: const Duration(milliseconds: 100),
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: imagesList
          .map(
            (item) => Center(
              child: Image(
                image: AssetImage(item),
                fit: BoxFit.cover,
              ),
            ),
          )
          .toList(),
    );
  }
}
