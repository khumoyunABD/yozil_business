import 'package:flutter/material.dart';
import 'package:yozil_business/presentation/presentation.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
        navBarItem: NavBarItem.schedule,
        childWidgetTitle: 'Schedule',
        childWidget: Center(
          child: Text('Schedule Page'),
        ));
  }
}
