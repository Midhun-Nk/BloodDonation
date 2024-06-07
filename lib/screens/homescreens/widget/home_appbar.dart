import 'package:blood_donation_app/screens/receiver_screen/sender_view_accept.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:blood_donation_app/common/appbar.dart';
import 'package:blood_donation_app/common/shimmer_effect.dart';
import 'package:blood_donation_app/features/personalization/controllers/user_controller.dart';
import 'package:blood_donation_app/utils/constants/colors.dart';
import 'package:blood_donation_app/utils/constants/text_strings.dart';
import 'package:blood_donation_app/utils/helpers/helper_functions.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return TAppBar(
      actions: [
        TCardCounterWidget(
          onPressed: () {},
          iconColor: TColors.white,
        )
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Obx(
            (){
              if(controller.profileLoading.value){
                return const TshimmerEffect( height: 80, width: 15,);
              }
               return Text(
              controller.user.value.fullName,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: TColors.white),
            );},
          )
        ],
      ),
    );
  }
}

class TCardCounterWidget extends StatelessWidget {
  const TCardCounterWidget({
    super.key,
    required this.onPressed,
     this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: () => Get.to(()=> const SenderViewAccept()),
            icon: Icon(
              Iconsax.message_text,
              color: dark?TColors.white: const Color.fromARGB(255, 255, 253, 253),
              size: 20,
            )),
       
      ],
    );
  }
}
