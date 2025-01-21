import 'package:flutter/material.dart';
import 'package:yozil_business/presentation/presentation.dart';

class AppointmentsPage extends StatelessWidget {
  const AppointmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      navBarItem: NavBarItem.appointments,
      childWidgetTitle: 'Appointments',
    );
  }
}
