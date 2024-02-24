import 'package:flutter/material.dart';
import '../app/app_theme.dart';

class PhoneDetailScreen extends StatelessWidget {
  final String phoneName;
  final String phoneSrc;
  final String phoneDesc;
  final double phonePrice;
  const PhoneDetailScreen(
      {super.key,
        required this.phoneDesc,
        required this.phoneName,
        required this.phonePrice,
        required this.phoneSrc});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: <Widget>[
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Text(
                "Back",
                style: TextStyles.headlineSmall
                    .copyWith(color: AppTheme.mainColor),
              ),
            ),
            Spacer(),
            Text(
              "Phones",
              style: TextStyles.headlineMedium,
            ),
            Spacer(),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
          padding: AppTheme.containerPadding,
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                    color: AppTheme.sceletonBackground,
                    image: DecorationImage(
                      image: NetworkImage(phoneSrc),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: Column(children: [
                  Row(children: <Widget>[
                    Text(phoneName, style: TextStyles.headlineMedium),
                    Spacer(),
                    Text("$phonePrice\$", style: TextStyles.subtitle),
                  ]),
                  Row(
                    children: [Text(phoneDesc)],
                  )
                ]),
              )
            ],
          )),
    );
  }
}