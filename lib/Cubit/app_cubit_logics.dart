import 'package:cart/Cubit/app_cubit_states.dart';
import 'package:cart/Cubit/app_cubits.dart';
import 'package:cart/Views/HomeScreenView/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state){
          if(state is WelcomeState){
            return HomePage();
          } else {
            return Container(child: Center(child: Text("Loading.."),),);
          }
        } )
      );
  }
}
