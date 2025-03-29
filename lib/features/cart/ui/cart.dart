import 'dart:math';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vordic_user/core/models/product.dart';
import 'package:vordic_user/features/cart/ui/widget/cart_item.dart';
import 'package:vordic_user/features/check_out/ui/check_out.dart';
import 'package:vordic_user/features/check_out/ui/location.dart';
import 'package:vordic_user/features/onboarding/onboarding.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              //Todo: dummy data, remove this when we get the data from the API
              int id = Random().nextInt(1000000);
              return cartItem(
                product: Product(
                  id: id.toString(),
                  name: 'name',
                  description: 'description',
                  price: 100,
                  imageUrl: 'https://picsum.photos/1000',
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$100',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.pushTransition(
                type: PageTransitionType.fade,
                child: const Location(),
              );
            },
            child: const Text('Checkout'),
          ),
          const SizedBox(height: 20),
        ],
      ),
    ));
  }
}
