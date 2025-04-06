// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:forever_beautiful/common/product.dart';

class MyCard extends StatelessWidget {
  Product product;
  MyCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(product.imagePath),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 5.0, left: 5),
            child: Text(
              product.title,
              maxLines: 1,
              overflow: TextOverflow.clip,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Text(
              product.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
