import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar/appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CAppBar(
        showBackArrow: true,
        title: Text("Profile"),
      ),

      /// -- Body
      body: SingleChildScrollView(),
    );
  }
}
