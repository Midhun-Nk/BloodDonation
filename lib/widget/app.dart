import 'package:blood_donation_app/screens/homescreens/homescreen.dart';
import 'package:blood_donation_app/screens/request_list_screen/request_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:blood_donation_app/bindings/general_bindings.dart';
import 'package:blood_donation_app/utils/constants/colors.dart';
import 'package:blood_donation_app/utils/constants/text_strings.dart';
import 'package:blood_donation_app/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        navigatorKey: navigatorKey,
        title: TTexts.appName,
        themeMode: ThemeMode.system,
        initialBinding: GeneralBindings(),
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        // initialBinding: GeneralBindings(),
        routes: {
          'handle_notification': (context) => const StoreScreen(),
        },
        home: const Scaffold(
          backgroundColor: TColors.primary,
          body: Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        ));
  }
}
