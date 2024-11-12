import 'package:flutter/material.dart';
import 'package:segarku/common/styles/spacing_style.dart';

import '../../../../utils/constants/text_strings.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(STexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: SSize.sm),
                  Text(STexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium)
                ],
              )
            ],
          ),
          ),
        ),
      );
  }
}