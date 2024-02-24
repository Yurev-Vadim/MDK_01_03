import 'package:flutter/material.dart';
import 'package:vadim/app/app_theme.dart';
import '../shared/types/types.dart';
import '../widgets/phone_list/phone_list.dart';

class PhonePage extends StatelessWidget {
  PhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: AppTheme.backgroundColor,
          padding: AppTheme.containerPadding,
          child: PhoneList(
            phones: phones,
          ),
        ));
  }
}