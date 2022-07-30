import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop/constans.dart';
import 'package:shop/repositories/models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;
  const ProductTitleWithImage({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: Hero(
                tag: "${product.id}",
                //Слайдер фотографий
                child: CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 0.6,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 700),
                    autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                  //Создание массива карусели
                  items: product.imageList
                      .map(
                        (item) => Center(
                          child: Image.asset(
                            item,
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                      .toList(),
                ),
              )),
            ],
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "${product.price}\$\n",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "${product.title}",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: Colors.black),
                ),
              ])),
            ],
          )
        ],
      ),
    );
  }
}
