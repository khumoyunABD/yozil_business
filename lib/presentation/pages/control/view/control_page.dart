import 'package:flutter/material.dart';
import 'package:yozil_business/presentation/presentation.dart';

class ControlPage extends StatelessWidget {
  const ControlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      navBarItem: NavBarItem.control,
      childWidgetTitle: 'Control',
    );
  }
}
