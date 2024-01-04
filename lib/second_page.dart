
import 'package:flutter/material.dart';
import 'package:test6/language/app_localizations.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Text(AppLocalizations.of(context)!.translate("message")),
      ),
    );
  }
}
