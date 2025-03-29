import 'package:flutter/material.dart';
import 'package:vordic_user/features/categories/ui/widgets/category_widget.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return category(
                  imageUrl: 'https://picsum.photos/1000',
                  categoryName: 'Name',
                  context: context,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
