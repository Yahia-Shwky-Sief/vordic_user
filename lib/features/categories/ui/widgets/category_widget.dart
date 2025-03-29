import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vordic_user/features/categories/ui/browse_category.dart';

category(
        {required String imageUrl,
        required String categoryName,
        required BuildContext context}) =>
    MaterialButton(
      onPressed: () {
        context.pushTransition(
            type: PageTransitionType.fade, child: const BrowseCategory());
      },
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Text(
                  categoryName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
