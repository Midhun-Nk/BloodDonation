import 'package:flutter/material.dart';
import 'package:blood_donation_app/common/appbar.dart';
import 'package:blood_donation_app/common/sortable.dart';
import 'package:blood_donation_app/screens/request_list_screen/widget/brandshowcase.dart';
import 'package:blood_donation_app/utils/constants/sizes.dart';

class BrandsProducts extends StatelessWidget {
  const BrandsProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text('Brands Product'),
        showbackarrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            TBrandCard(showBorder: true),
            SizedBox(height: TSizes.spaceBtwSections,),
            TSortableProducts(),
          ],
        ),),
      ),
    );
  }
}