import 'package:flutter/material.dart';
import 'package:yozil_business/presentation/presentation.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      navBarItem: NavBarItem.settings,
      childWidgetTitle: 'Business Settings',
    );
  }
}
