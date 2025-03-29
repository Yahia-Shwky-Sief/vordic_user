import 'package:flutter/material.dart';
import 'package:vordic_user/core/theme/app_palette.dart';

product() => SizedBox(
      width: 150,
      height: 200,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppPalette.greyColor,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                'https://picsum.photos/150',
                fit: BoxFit.cover,
                width: 150,
                height: 150,
              ),
            ),
            Text(
              'Item',
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );