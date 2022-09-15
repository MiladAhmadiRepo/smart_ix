import 'package:flutter/material.dart';

import 'list_tile.dart';

class MenuList extends StatelessWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //MenuListItem is custom tile in list_tile file
        MenuListItems(
          iconPath: 'assets/icons/menu_icons/stats.svg',
          itemName: 'Stats',
          function: ()  {}
        ),
        const Spacer(),
        MenuListItems(
          iconPath: 'assets/icons/menu_icons/devices.json.josn.svg',
          itemName: 'Devices',
          function: () {},
        ),
        const Spacer(),
        MenuListItems(
          iconPath: 'assets/icons/menu_icons/savings.svg',
          itemName: 'Savings',
          function: () {},
        ),
        const Spacer(),
        MenuListItems(
          iconPath: 'assets/icons/menu_icons/settings.svg',
          itemName: 'Settings',
          function: () {},
        ),
        const Spacer(),
        MenuListItems(
          iconPath: 'assets/icons/menu_icons/notifications.svg',
          itemName: 'Notification',
          function: () {},
        ),
        const Spacer(),
        MenuListItems(
          iconPath: 'assets/icons/menu_icons/faq.svg',
          itemName: 'FAQ',
          function: () {},
        ),
      ],
    );
  }
}
