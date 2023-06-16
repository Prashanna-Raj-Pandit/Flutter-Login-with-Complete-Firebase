import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/authentication/authentication_repository.dart';

import '../../constants/colors.dart';
import '../../constants/text_strings.dart';
class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget{
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: Text(kAppName),
      centerTitle: true,
      elevation: 10,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: EdgeInsets.only(top: 7, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: kCardBackgroundColor,
          ),
          child: IconButton(
            onPressed: () {
              AuthenticationRepository.instance.logout();
            },
            icon: Icon(Icons.person),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>Size.fromHeight(55);
}