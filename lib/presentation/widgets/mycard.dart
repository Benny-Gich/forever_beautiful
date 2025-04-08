// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:forever_beautiful/common/product.dart';

class MyCard extends StatelessWidget {
  Product product;
  MyCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 250,
      //width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(product.imagePath, fit: BoxFit.cover),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton.filledTonal(
                    onPressed: () {},
                    icon: Icon(Icons.help_outline),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 8,
              children: [
                Text(
                  product.title,
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text(
                  product.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
