import 'package:cart/Cubit/app_cubits.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'Cubit/app_cubit_logics.dart';
import 'Views/HomeScreenView/home_screen.dart';

void main() {
  runApp(GetMaterialApp(debugShowCheckedModeBanner: false,home: MyApp(),));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: BlocProvider<AppCubits>(
          create: (context)=>AppCubits(),
      child: AppCubitLogics(),)
    );
  }
}
