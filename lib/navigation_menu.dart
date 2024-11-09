import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: GNav(
        tabs: [
          GButton(
            icon: Iconsax.home,
            text: 'Home',
          ),
          GButton(
            icon: Iconsax.shop,
            text: 'Shop',
          ),
          GButton(
            icon: Iconsax.heart,
            text: 'Wishlist',
          ),
          GButton(
            icon: Iconsax.user,
            text: 'Home',
          ),
        ],
      ),
    );
  }
}
