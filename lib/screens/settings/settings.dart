import 'package:blood_donation_app/screens/nearby/nearby_screen.dart';
import 'package:blood_donation_app/screens/receiver_screen/sender_view_accept.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:blood_donation_app/common/appbar.dart';
import 'package:blood_donation_app/common/horizontal_product_card.dart';
import 'package:blood_donation_app/common/messger_user.dart';
import 'package:blood_donation_app/data/repositories/authentication/authentication_repository.dart';
import 'package:blood_donation_app/screens/homescreens/widget/homewidget.dart';
import 'package:blood_donation_app/screens/profilescreen/profilescreen.dart';
import 'package:blood_donation_app/screens/settings/widgets/settings_menu_tile.dart';
import 'package:blood_donation_app/screens/settings/widgets/settingswidgets.dart';
import 'package:blood_donation_app/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TPrimaryHeaderContainer(
              child: Column(
            children: [
              TAppBar(
                title: Text(
                  'Account',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .apply(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
               TUserProfileTile ( onPressed: () => Get.to(()=> const  ProfileScreen(),)),
              
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const SizedBox(
                height: TSizes.md,
              ),
            ],
          )),
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
               const  TSectionHeading(
                  title: 'Account Settings',
                  showActionButton: false,
                  
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                
                TSettingsMenuTile(
                    icon: Iconsax.user,
                    title: "My Profile",
                    subtitle: 'Update your profile information',
                    onTap: () => Get.to(() => const ProfileScreen())),
                TSettingsMenuTile(
                    icon: Iconsax.user_add,
                    title: "Donors Near Me",
                    subtitle: 'Find Donors Near You',
                    onTap: () {
                      Get.to(() => const NearbyScreen());

                    }),
                TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "Recent Donations",
                    subtitle: 'View your recent donations',
                    onTap: () => Get.to(() => const SenderViewAccept())),
                TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: "Experties",
                    subtitle: 'Chat with Experts',
                   onTap: () => Get.to(() =>  const IndoxmainpagePage()),),
              
       
                const SizedBox(height: TSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Confirm Logout"),
                            content: const Text("Are you sure you want to logout?"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context); // Close the dialog
                                },
                                child: const Text("Cancel"),
                              ),
                              TextButton(
                                onPressed: () {
                                  AuthenticationRepository.instance.logOut();
                                  Navigator.pop(context); // Close the dialog
                                },
                                child: const Text("Logout"),
                              ),
                            ],
                          );
                        },
                      );
                    }, 
                    child: const Text("Logout")
                  )
              
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
