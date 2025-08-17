import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/custom_drawer_tile.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';

import '../pages/settings.dart';

class MyDrawer extends StatelessWidget{

  void logOut() {
    final authService = AuthService();
    authService.signOut();
  }
  @override
  Widget build(BuildContext context) {
   return Drawer(
     backgroundColor: Theme.of(context).colorScheme.surface,
     child: Column(
       children: [
         Padding(
           padding: const EdgeInsets.only(top: 100.0),
           child: Icon(Icons.lock_open_rounded,
             size: 80,
             color: Theme.of(context).colorScheme.inversePrimary,
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(25.0),
           child: Divider(
             color: Theme.of(context).colorScheme.secondary,
           ),
         ),
         MyDrawerTile(
             onTap: () => Navigator.pop(context),
             text: 'H O M E',
             icon: Icons.home
         ),
         MyDrawerTile(
             onTap: () {
               Navigator.pop(context);
               Navigator.push(
                   context,
                   MaterialPageRoute(
                       builder: (context) => const SettingsPage()
                   )
               );
             },
             text: 'S E T T I N G S',
             icon: Icons.settings
         ),
         const Spacer(),
         MyDrawerTile(
             onTap: logOut,
             text: 'L O G O U T',
             icon: Icons.logout
         ),
         const SizedBox(height: 25)
       ],
     ),
   );
  }

}