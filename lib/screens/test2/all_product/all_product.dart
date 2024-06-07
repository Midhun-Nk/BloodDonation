import 'package:flutter/material.dart';
import 'package:blood_donation_app/common/appbar.dart';
import 'package:blood_donation_app/common/sortable.dart';
import 'package:blood_donation_app/utils/constants/sizes.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: TAppBar(
        showbackarrow: true,
        title: Text(
          'Popular Product',
        ),
      ),
      body: SingleChildScrollView(

        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TSortableProducts(),),
      ),
    );
  }
}
