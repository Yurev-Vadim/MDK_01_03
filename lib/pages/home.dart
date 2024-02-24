import 'package:flutter/material.dart';
import 'package:vadim/app/app_theme.dart';
import '../pages/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: <Widget>[
              InkWell(
                child: Text(
                  "Back",
                  style: TextStyles.headlineSmall
                      .copyWith(color: AppTheme.mainColor),
                ),
              ),
              Spacer(),
              Text(
                "Sing Up",
                style: TextStyles.displayLarge,
              ),
              Spacer(),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    )),
                child: Text(
                  "Login",
                  style: TextStyles.headlineSmall
                      .copyWith(color: AppTheme.mainColor),
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: Container(
            padding: AppTheme.containerPadding,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 12, top: 36),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Name",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(8)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppTheme.gray),
                          borderRadius: BorderRadius.circular(8)),
                      fillColor: AppTheme.sceletonBackground,
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(8)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppTheme.gray),
                          borderRadius: BorderRadius.circular(8)),
                      fillColor: AppTheme.sceletonBackground,
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  child: TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      hintText: "Password",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(8)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppTheme.gray),
                          borderRadius: BorderRadius.circular(8)),
                      fillColor: AppTheme.sceletonBackground,
                      filled: true,
                    ),
                  ),
                )
              ],
            )
        )
    );
  }
}