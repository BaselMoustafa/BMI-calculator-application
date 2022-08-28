
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/network/local/cache_helper/cahche_helper.dart';
import 'bmi_states.dart';


class BMICubit extends Cubit<BMIStates>{
  BMICubit():super(BMIIntialState());
  
  static BMICubit get(context)=>BlocProvider.of(context) ;
  bool? isLight;
  bool isMale=true;
  int ageOfUser=15;
  int weightOfUser=75;
  double heightOfUser=175;

  changeGender(){
    isMale=!isMale;    
  }
  increaseAge(){
    ageOfUser++;
  }
  increaseWeight(){
    weightOfUser++;
  }
  DecreaseeAge(){
    if(ageOfUser>=2)
    ageOfUser--;
  }
  DecreaseeWeight(){
    if(weightOfUser>=6)
    weightOfUser--;
  }
  changeHeight(value){
    heightOfUser=value;
  }



  changeModeOfTheApp(condFromShared)//Ha5od l kemya 2le mt5zna fl shared preferece w abd2 a4t8l 3leha
  {  
    if(isLight==null)
    {
      if(CacheHelper.getDataFromSharedPrefrences(key: 'isLight')==null)
      {
        isLight=true;
        CacheHelper.setDataAtSharedPrefrence(Key: "isLight", value: true);
      }
      else{
        isLight=CacheHelper.getDataFromSharedPrefrences(key: 'isLight');
      }
    }
    else
    {
      isLight=!isLight!;
      CacheHelper.setDataAtSharedPrefrence(Key: "isLight", value: isLight!);
    }
    emit(ChangeModeState());  
  }
  changeViewOfTheApp(){
    emit(ChangeAppView());
  }
  intializeAppMode(){
    
    if(CacheHelper.getDataFromSharedPrefrences(key: 'isLight')==null)
    {
      isLight=true;
      CacheHelper.setDataAtSharedPrefrence(Key: "isLight", value: true);
    }
    else{
      isLight=CacheHelper.getDataFromSharedPrefrences(key: 'isLight');
    }
    emit(ChangeAppView());
  }

}