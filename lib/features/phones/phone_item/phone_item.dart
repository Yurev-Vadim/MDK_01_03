import 'package:flutter/material.dart';
import '../../../app/app_theme.dart';
import '../../../pages/phone_detail.dart';

class PhoneItem extends StatelessWidget {
  final String phoneSrc;
  final String phoneName;
  final double phonePrice;
  final String phoneDesc;
  const PhoneItem(
      {super.key,
        required this.phoneName,
        required this.phoneSrc,
        required this.phoneDesc,
        required this.phonePrice});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PhoneDetailScreen(
              phoneName: phoneName,
              phoneSrc: phoneSrc,
              phoneDesc: phoneDesc,
              phonePrice: phonePrice,
            ),
          ),
        );
      },
      child: Align(
          alignment: Alignment.center,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: CustomCardTheme.cardDecoration,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRect(
                    child: Container(
                      margin: const EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                          color: AppTheme.sceletonBackground,
                          borderRadius: BorderRadius.circular(8)),
                      height: 65,
                      width: 65,
                      child: Image.network(phoneSrc),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "$phoneName",
                                style: TextStyles.headlineSmall,
                              ),
                              Spacer(),
                              Text(
                                "$phonePrice\$",
                                style: TextStyles.subtitle,
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "$phoneDesc",
                            style: TextStyles.body,
                          ),
                        )
                      ],
                    ),
                  )
                ]),
          )),
    );
  }
}