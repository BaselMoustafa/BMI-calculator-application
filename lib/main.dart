import 'package:bloc/bloc.dart';
import 'package:bmi/modules/bmi_cubit/bmi_cubit.dart';
import 'package:bmi/modules/bmi_cubit/bmi_states.dart';
import 'package:bmi/modules/home_screen/home_screen.dart';
import 'package:bmi/shared/components/styles/theme_of_app.dart';
import 'package:bmi/shared/network/local/cache_helper/cahche_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  
  await CacheHelper.init();
  

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => BMICubit()..intializeAppMode(),
      child: BlocConsumer<BMICubit,BMIStates>(
        builder:(context,state){
          return  MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeOfLightMode,
            darkTheme: themeOfDarkMode,
            themeMode: BMICubit.get(context).isLight! ? ThemeMode.light:ThemeMode.dark,
            home: BMIHomeScreen(),
          );
        } , 
        listener: (context,state){},
      ),
    );
  }
}
