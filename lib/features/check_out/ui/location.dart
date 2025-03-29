import 'package:flutter/material.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vordic_user/core/widgets/products/product.dart';
import 'package:vordic_user/features/check_out/ui/check_out.dart';

class Location extends StatelessWidget {
  const Location({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Location'),
      ),
      body: FlutterLocationPicker(
        trackMyPosition: true,
        onError: (e) => print(e),
        onPicked: (pickedData) {
          context.pushTransition(
              type: PageTransitionType.fade, child: const CheckOut());
        },
      ),
    );
  }
}
