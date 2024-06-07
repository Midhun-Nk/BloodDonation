import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:blood_donation_app/common/productcartvertical.dart';
import 'package:blood_donation_app/common/shapes/TGrid_Layout.dart';
import 'package:blood_donation_app/common/style/product_price.dart';
import 'package:blood_donation_app/utils/constants/colors.dart';
import 'package:blood_donation_app/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:blood_donation_app/common/productcardvertical_controller.dart';
import 'package:blood_donation_app/common/shadow.dart';
import 'package:blood_donation_app/common/shapes/t_circular_icon.dart';
import 'package:blood_donation_app/common/shimmer_effect.dart';
import 'package:blood_donation_app/common/style/product_title_text.dart';
import 'package:blood_donation_app/screens/homescreens/widget/addtocart.dart';
import 'package:blood_donation_app/screens/homescreens/widget/homewidget.dart';
import 'package:blood_donation_app/utils/constants/enums.dart';
import 'package:blood_donation_app/utils/helpers/helper_functions.dart';

class TcategoryTab extends StatelessWidget {
  const TcategoryTab({super.key, required this.category});
  final String category;
@override
Widget build(BuildContext context) {
  final dark = THelperFunctions.isDarkMode(context);
  final controller = Get.put(ProductcardverticalController());

  // Filter the product list to include only items with the category "Plants"
  final List<Map<String, dynamic>> plantsList = controller.productDataList.where((product) => product['productCategory'] == category).toList();

  return Scaffold(
    body: ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Obx(
                () {
                  if (controller.isLoading.value) {
                    // Return a loading indicator if data is still loading
                    return const Center(
                      child: TshimmerEffect(
                        height: 180,
                        width: 180,
                      ),
                    );
                  } else {
                    return TGridLayout(
                      itemCount: plantsList.length, // Use the filtered list here
                      itemBuilder: (_, index) => GestureDetector(
                        onTap: () => Get.to(() => Addtocart(
                          productId: plantsList[index]['productId'],
                          discount: plantsList[index]['discount'],
                          image: plantsList[index]['productImage'],
                          productPrice: plantsList[index]['productPrice'],
                          productName: plantsList[index]['productName'],
                          sellerName: plantsList[index]['UserName'],
                          productCategory: plantsList[index]['productCategory'],
                          productDescription: plantsList[index]['productDescription'],
                          productQuantity: plantsList[index]['productQuantity'],
                        )),
                        child: Obx(() {
                          if (controller.isLoading.value) {
                            // Return a loading indicator if data is still loading
                            return const TshimmerEffect(
                              height: 180,
                              width: 180,
                            );
                          } else if (plantsList.isEmpty || plantsList.length <= index) {
                            // Handle cases where product data is not available or index is out of range
                            return const TshimmerEffect(
                              height: 180,
                              width: 180,
                            ); // Return an empty container or a placeholder widget
                          } else {
                            // Return the actual product data
                            return Container(
                              width: 180,
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                boxShadow: [TshadowStyle.verticalProductShadow],
                                borderRadius: BorderRadius.circular(TSizes.productImageRadius),
                                color: dark ? TColors.darkerGrey : TColors.white,
                              ),
                              child: Column(
                                children: [
                                  TRoundedContainer(
                                    height: 180,
                                    padding: const EdgeInsets.all(TSizes.sm),
                                    backgroundColor: dark ? TColors.dark : TColors.light,
                                    child: Stack(
                                      children: [
                                        TRoundedImage(
                                          isNetworkImage: true,
                                          imageUrl: plantsList[index]['productImage'],
                                          applyImageRadius: true,
                                          fit: BoxFit.cover,
                                        ),
                                        Positioned(
                                          top: 12,
                                          child: TRoundedContainer(
                                            radius: TSizes.md,
                                            backgroundColor: const Color.fromARGB(255, 255, 213, 0).withOpacity(0.8),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: TSizes.sm,
                                              vertical: TSizes.xs,
                                            ),
                                            child: Text(
                                              '${plantsList[index]['discount']}%',
                                              style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          top: 0,
                                          right: 0,
                                          child: TCircularIcon(
                                            icon: Iconsax.heart5,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: TSizes.spaceBtwItems / 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: TSizes.sm),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        TProductTitleText(
                                          title: plantsList[index]['productName'],
                                          smallSize: true,
                                        ),
                                        const SizedBox(
                                          height: TSizes.spaceBtwItems / 2,
                                        ),
                                        Column(
                                          children: [
                                            TBRandTitleWithVerificationICon(
                                              title: plantsList[index]['UserName'],
                                              brandTextSize: TextSizes.small,
                                              maxLines: 1,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: TSizes.sm),
                                        child: TProductPRice(
                                          price: plantsList[index]['productPrice'],
                                          lineThrough: true,
                                        ),
                                      ),
                                      Padding(
                            padding: const EdgeInsets.only(left: TSizes.sm),
                            child: TProductPRice(
                              price:   controller.productDataList[index]['productPrice'] - (controller.productDataList[index]['productPrice'] * controller.productDataList[index]['discount'] /
                                      100)
                                  .toInt(),
                            ),
                          ),
                                      Container(
                                        decoration: const BoxDecoration(
                                          color: TColors.black,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                                            bottomRight: Radius.circular(TSizes.productImageRadius),
                                          ),
                                        ),
                                        child: const SizedBox(
                                          height: TSizes.iconLg * 1.2,
                                          width: TSizes.iconLg * 1.2,
                                          child: Center(
                                            child: Icon(
                                              Iconsax.add,
                                              color: TColors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }
                        }),
                      ),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ],
    ),
  );
}

}
