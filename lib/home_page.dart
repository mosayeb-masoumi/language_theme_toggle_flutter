
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test6/second_page.dart';
import 'package:test6/theme/app_colors.dart';
import 'package:test6/theme/theme_provider.dart';
import 'language/app_language.dart';
import 'language/app_localizations.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {

    // var appLanguage = Provider.of<AppLanguage>(context);
    // var ss = AppLocalizations.of(context)!.locale;  to get the local language

    return Scaffold(
      backgroundColor: AppColors.primaryColor(context),

      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.translate('title')),
        backgroundColor: AppColors.primaryColor(context),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(AppLocalizations.of(context)!.translate('message')),

          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(onPressed: (){
                // appLanguage.changeLanguage(const Locale("fa"));
                context.read<AppLanguage>().changeLanguage(const Locale("fa"));

              }, child: const Text("Persian")),
              const SizedBox(width: 10,),
              ElevatedButton(onPressed: (){
                // appLanguage.changeLanguage(const Locale("en"));
                context.read<AppLanguage>().changeLanguage(const Locale("en"));
              }, child: const Text("English")),

            ],
          ),


          ElevatedButton(onPressed: (){
            context.read<ThemeProvider>().toggleTheme();
          }, child: const Text("Toggle Theme")),


          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );
          }, child: const Text("goto second page"))
        ],
      ),
    );
  }
}