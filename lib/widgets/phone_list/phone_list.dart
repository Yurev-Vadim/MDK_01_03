import 'package:flutter/material.dart';
import 'package:vadim/app/app_theme.dart';
import '../../shared/types/types.dart';
import '../../features/phones/phone_item/phone_item.dart';

class PhoneList extends StatelessWidget {
  final List<Phones> phones;
  const PhoneList({super.key, required this.phones});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 33,
            color: AppTheme.dividerColor,
          );
        },
        itemCount: phones.length,
        itemBuilder: (BuildContext context, int index) {
          if (phones.isEmpty) {
            return const Center(
              child: Text("Телефонов нет"),
            );
          } else {
            return PhoneItem(
              phoneName: phones[index].phoneName,
              phoneSrc: phones[index].imgSrc,
              phoneDesc: phones[index].desc,
              phonePrice: phones[index].price,
            );
          }
        });
  }
}