import 'package:flutter/material.dart';
import 'package:vordic_user/core/widgets/logo.dart';
import 'package:vordic_user/core/widgets/text_form_field.dart';
import 'package:vordic_user/features/home/ui/widgets/ads_banner.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            title: Hero(
              tag: 'logo',
              child: Material(
                child: logo(fontSize: 28),
              ),
            ),
          ),
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
         Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  'Best Sellers',
                  style: TextStyle(
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
                    )),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 150,
                  height: 200,
                  child: Card(
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Item $index',
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
