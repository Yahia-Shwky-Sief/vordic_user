import 'dart:math';
import 'package:flutter/material.dart';
import 'package:vordic_user/core/models/product.dart';
import 'package:vordic_user/core/widgets/products/product.dart';

class BrowseCategory extends StatelessWidget {
  const BrowseCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Browse Category'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                //Todo: dummy data, remove this when we get the data from the API
                int id = Random().nextInt(1000000);
                return product(
                    product: Product(
                      id: id.toString(),
                      name: 'name',
                      description: 'description',
                      price: 100,
                      imageUrl: 'https://picsum.photos/1000',
                    ),
                    context: context);
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
