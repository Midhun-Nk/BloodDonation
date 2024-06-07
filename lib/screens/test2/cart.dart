import 'package:flutter/material.dart';
import 'package:blood_donation_app/common/appbar.dart';
import 'package:blood_donation_app/screens/test2/widgets/tcard_items.dart';
import 'package:blood_donation_app/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: TAppBar(
        showbackarrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body:const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TCardItems( ),
      ),

     
    );
  }
}
