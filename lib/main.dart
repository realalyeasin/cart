import 'package:cart/Cubit/app_cubits.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'Cubit/app_cubit_logics.dart';
import 'dart:developer' as devtools show log;

extension Log on Object{
  void log() => devtools.log(toString());
}
void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: BlocProvider<AppCubits>(
          create: (context) => AppCubits(),
          child: AppCubitLogics(),
        ));
  }
}
