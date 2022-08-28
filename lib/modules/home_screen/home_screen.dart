import 'dart:math';
import 'package:bmi/modules/bmi_cubit/bmi_cubit.dart';
import 'package:bmi/modules/bmi_cubit/bmi_states.dart';
import 'package:bmi/shared/components/styles/theme_of_app.dart';
import 'package:bmi/modules/results_screen/results_screen.dart';
import 'package:bmi/shared/components/components.dart';
import 'package:bmi/shared/network/local/cache_helper/cahche_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/network/local/cache_helper/cahche_helper.dart';
import '../../shared/network/local/cache_helper/cahche_helper.dart';



class BMIHomeScreen extends StatelessWidget {
    
    

    
    @override
    Widget build(BuildContext context) {
      
      return BlocConsumer<BMICubit,BMIStates>(
        builder:((context, state) {
          return Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                  onPressed: (){
                    BMICubit.get(context).changeModeOfTheApp(
                      CacheHelper.getDataFromSharedPrefrences(key: "isLight"),
                    );
                    
                  }, 
                  icon:BMICubit.get(context).isLight! ? Icon(
                    Icons.dark_mode_outlined,
                    size: 30,
                    ):
                  Icon(
                    Icons.dark_mode,
                    size: 30,
                    ),
                  ),
                  SizedBox(width: 10,),
                  
              ],
              centerTitle: true,
              title:Text(
                    'BMI calculator ',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                
              
            ),


            body:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                    children: [
                      
                      Expanded(
                        child:Row(
                          
                          children: [
                            Expanded(
                              child:GestureDetector(
                                onTap: (){
                                  
                                  BMICubit.get(context).changeGender();
                                  BMICubit.get(context).changeViewOfTheApp();
                                },
                                child:Container(//dh 2le ha3dl 3ndo
                                  
                                  decoration: BoxDecoration(
                                    color: BMICubit.get(context).isMale?Colors.deepOrange:Colors.grey[400],
                                    borderRadius: BorderRadius.circular(5), 
                                    ),
                                  child:  Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image(
                                          image: AssetImage("assets/images/male.png") ,
                                          height: 100,
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                          'MALE',
                                          style:BMICubit.get(context).isMale? Theme.of(context).textTheme.headline6 : Theme.of(context).textTheme.bodyText1,
                                        ),
                                      ],
                                    ),
                                ),
                            ),
                            ),
                            SizedBox(width: 20,),
                            Expanded(
                              child:GestureDetector(
                                onTap: (){
                                  BMICubit.get(context).changeGender();
                                  BMICubit.get(context).changeViewOfTheApp();
                                },
                                child:Container(//dh 2le ha3dl 3ndo
                                  decoration: BoxDecoration(
                                    color: !BMICubit.get(context).isMale?Colors.deepOrange:Colors.grey[400],
                                    borderRadius: BorderRadius.circular(5), 
                                    ),
                                  child:  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Image(
                                          image: AssetImage("assets/images/female.png") ,
                                          height: 100,
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                          'FEMALE',
                                          style:!BMICubit.get(context).isMale? Theme.of(context).textTheme.headline6 : Theme.of(context).textTheme.bodyText1,
                                        ),
                                      ],
                                    ),
                                ),
                            ),
                            ),
                          ],
                        ), 
                        ),
                      
                      SizedBox(height: 20,),
                      Expanded( 
                          child:Container(                      
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey[400],
                            ),
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'HEIGHT',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),              
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Text(
                                      '${BMICubit.get(context).heightOfUser.round()}',
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Text('Cm'),
                                  ],
                                ),
                                Slider(
                                  activeColor: Colors.deepOrange,
                                  thumbColor:Colors.white ,//DARK AND NIFGHTT
                                  inactiveColor: Colors.deepOrange[100],
                                  min: 80,
                                  max: 200,
                                  value:BMICubit.get(context).heightOfUser , 
                                  onChanged: (valueOfSlider){
                                    
                                    BMICubit.get(context).changeHeight(valueOfSlider);
                                    BMICubit.get(context).changeViewOfTheApp();
                                    
                                  },
                                                          
                                  ),
                              ],
                            ),
                          
                        ),

                      ),
                    SizedBox(height: 20,),
                      Expanded(
                        child:Container(
                          
                          
                          child:Row(
                            children: [
                              Expanded(
                                child:Container(
                                  
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey[400],
                                  ),
                                  child: Column(
                                    mainAxisAlignment:MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'AGE',
                                        style: Theme.of(context).textTheme.bodyText2,
                                      ),
                                      Text(
                                        '${BMICubit.get(context).ageOfUser}',
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Row(
                                        
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FloatingActionButton(
                                            heroTag: 'e',
                                            onPressed:(){
                                              BMICubit.get(context).DecreaseeAge();
                                              BMICubit.get(context).changeViewOfTheApp();
                                            },
                                            mini: true,
                                            child: Icon(
                                              Icons.remove,
                                            ),
                                          ),
                                          FloatingActionButton(
                                            heroTag: 'k',
                                            onPressed:(){
                                              
                                              BMICubit.get(context).increaseAge();
                                              BMICubit.get(context).changeViewOfTheApp();
                                            },
                                            mini: true,
                                            child: Icon(
                                              Icons.add,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ), 
                              ),
                              SizedBox(width:20 ,), 
                              Expanded(
                                  child:Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey[400],
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Weight',
                                        style: Theme.of(context).textTheme.bodyText2,
                                      ),
                                      Text(
                                        '${BMICubit.get(context).weightOfUser}',
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FloatingActionButton(
                                            heroTag:'d',
                                            onPressed:(){
                                              
                                              BMICubit.get(context).DecreaseeWeight();
                                              BMICubit.get(context).changeViewOfTheApp();
                                            },
                                            mini: true,
                                            child: Icon(
                                              Icons.remove,
                                            ),
                                          ),
                                          FloatingActionButton(
                                            heroTag: 'a',
                                            onPressed:(){
                                              BMICubit.get(context).increaseWeight();
                                              BMICubit.get(context).changeViewOfTheApp();
                                               
                                              
                                            },
                                            mini: true,
                                            child: Icon(
                                              Icons.add,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ), 
                              ), 
                            ],
                          ),
                        ),
                  ),
                  SizedBox(height: 20,),
              
                      Container(
                        width:double.infinity,
                        child:MaterialButton(
                          onPressed: (){
                            double resultOfUser= BMICubit.get(context).weightOfUser/pow(BMICubit.get(context).heightOfUser/100, 2);
                            
                            navigateTo(context, BMIResultsScreen(
                              age: BMICubit.get(context).ageOfUser,
                              height: BMICubit.get(context).heightOfUser.round(),
                              weight: BMICubit.get(context).weightOfUser,
                              result: resultOfUser.round(),
                            ));
                          },
                          color: Colors.deepOrange,
                          child: Text(
                            'CALCULATE',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ),

                    ],
                  ),
            ),
              
          
          );
        }) , 
        listener:(context,state){

        } 
        );
    }
  
}