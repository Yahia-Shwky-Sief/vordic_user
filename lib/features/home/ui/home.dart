import 'package:flutter/material.dart';
import 'package:vordic_user/core/widgets/text_form_field.dart';
import 'package:vordic_user/features/home/ui/widgets/ads_banner.dart';
import 'package:vordic_user/features/home/ui/widgets/products_list_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textFormField(
                  hintText: 'search',
                  controller: controller,
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email is required';
                    }
                    return null;
                  }),
            ),
            const SizedBox(height: 20),
            const AdsBanner(),
            const SizedBox(height: 20),
            productsListView(context: context, title: 'Best offers'),
            const SizedBox(height: 20),
            productsListView(context: context, title: 'Best Selling'),
          ],
        ),
      ),
    );
  }
}
