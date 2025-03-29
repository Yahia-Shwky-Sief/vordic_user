import 'dart:math';
import 'package:flutter/material.dart';
import 'package:vordic_user/core/models/product.dart';
import 'package:vordic_user/core/widgets/products/product.dart';

productsListView({required context, required title}) => Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Expanded(child: SizedBox()),
              MaterialButton(
                onPressed: () {},
                child: const Row(
                  children: [
                    Text('More'),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 200,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 20,
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
            separatorBuilder: (context, index) => const SizedBox(width: 10),
          ),
        ),
      ],
    );
