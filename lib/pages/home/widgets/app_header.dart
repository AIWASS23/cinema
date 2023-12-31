import 'package:flutter/material.dart';
import 'package:cinema/widgets/glass_icon_button.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GlassIconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
            ),
            GlassIconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
