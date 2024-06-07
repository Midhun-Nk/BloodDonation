import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:blood_donation_app/common/appbar.dart';
import 'package:blood_donation_app/common/shapes/TGrid_Layout.dart';
import 'package:blood_donation_app/screens/test2/brands/brands_product.dart';
import 'package:blood_donation_app/screens/homescreens/widget/homewidget.dart';
import 'package:blood_donation_app/screens/request_list_screen/widget/brandshowcase.dart';
import 'package:blood_donation_app/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(
        title: Text('All Brands'),
        showbackarrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: 
       const EdgeInsets.all(TSizes.defaultSpace)
       , child: Column(
          children: [
const TSectionHeading(title: 'Brands',showActionButton: false,),
const SizedBox( height: TSizes.spaceBtwItems,),

 TGridLayout(
  mainAxisExtent: 80,
  itemCount: 10, itemBuilder: ( _,index)=> TBrandCard(showBorder: true,onTap: () =>  Get.to(()=> const BrandsProducts())))
          ],
        ),),
      ),
    );
  }
}