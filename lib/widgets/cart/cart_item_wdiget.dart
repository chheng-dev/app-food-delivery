import 'package:flutter/material.dart';
import 'package:food_delivery/core/app_constants.dart';

class CartItemWdiget extends StatefulWidget {
  const CartItemWdiget({super.key});

  @override
  State<CartItemWdiget> createState() => _CartItemWdigetState();
}

class _CartItemWdigetState extends State<CartItemWdiget> {
  int _quantity = 1;

  void _increment() {
    setState(() {
      _quantity++;
    });
    return;
  }

  void _decrement() {
    setState(() {
      if (_quantity <= 1) {
        _quantity = 1;
      } else {
        _quantity--;
      }
    });
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppConstants.margin2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(AppConstants.smallRaduis),
            child: Image.network(
              "https://i.pinimg.com/474x/58/ee/7e/58ee7e7ae3f622b7d8a52addc746b63a.jpg",
              fit: BoxFit.cover,
              width: 90,
            ),
          ),
          SizedBox(width: 14.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _builtTitleBrand(),
              _buildSectionPrice(),
              Row(
                children: [
                  Text(
                    "MRP incl.all taxes",
                    style: TextStyle(fontSize: AppConstants.heading4),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          _buildSectionQty(_decrement, _increment, _quantity),
        ],
      ),
    );
  }

  Container _buildSectionQty(
    VoidCallback _decrement,
    VoidCallback _increment,
    int _quantity,
  ) {
    return Container(
      height: 90,
      alignment: Alignment.bottomRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _buildButtonQty(
            icon: Icons.remove,
            isLeft: true,
            onPressed: _decrement,
          ),
          SizedBox(width: 8.0),
          Text(_quantity.toString(), style: TextStyle(fontSize: 18)),
          SizedBox(width: 8.0),
          _buildButtonQty(
            icon: Icons.add,
            isLeft: false,
            onPressed: _increment,
          ),
        ],
      ),
    );
  }

    Widget _buildButtonQty({
    required IconData icon,
    required bool isLeft,
    required VoidCallback onPressed,
  }) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: AppConstants.greyColor.withOpacity(0.4),
        borderRadius:
            isLeft == true
                ? BorderRadius.only(
                  topLeft: AppConstants.smallRaduis,
                  bottomLeft: AppConstants.smallRaduis,
                )
                : BorderRadius.only(
                  topRight: AppConstants.smallRaduis,
                  bottomRight: AppConstants.smallRaduis,
                ),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        iconSize: 15,
        splashRadius: 15,
      ),
    );
  }

  Row _buildSectionPrice() {
    return Row(
      children: [
        Text(
          "\$122.00",
          style: TextStyle(
            fontSize: AppConstants.heading1,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 8.0),
        Text(
          "\$222.00",
          style: TextStyle(
            color: AppConstants.greyColor,
            decoration: TextDecoration.lineThrough,
            decorationColor: AppConstants.greyColor,
          ),
        ),
      ],
    );
  }

  Column _builtTitleBrand() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Pink winter jacket", style: AppConstants.title2Style),
        Text("Bright pink | 9M - 12M", style: AppConstants.descriptionStyle),
      ],
    );
  }
} 