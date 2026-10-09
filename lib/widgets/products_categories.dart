
import 'package:flutter/material.dart';


class ProductCard extends StatelessWidget {
  final String name;
  final String image;
  final String price;
  const ProductCard({
    super.key,
    required this.name,
    required this.image,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 4, right: 4),
          width: size.width/1.5,
          height: size.height/4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            bottom: 15,
            left: 20,
            child: Text(name, style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
          )
        ),
        Positioned(
          bottom: 15,
          left: 20,
          child: Text(price, style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          )
        )


      ],
    );

  }
}