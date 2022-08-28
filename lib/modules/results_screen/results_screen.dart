import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BMIResultsScreen extends StatelessWidget {
  
  int?height;
  int?weight;
  int?age;
  int?result;
  BMIResultsScreen({
    this.height,
    this.weight,
    this.age,
    this.result,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Results",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border:Border.all(
                  color: Colors.deepOrange,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Height :",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      " ${height}",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border:Border.all(
                  color: Colors.deepOrange,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Weight :",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      " ${weight}",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border:Border.all(
                  color: Colors.deepOrange,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Age :",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      " ${age}",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border:Border.all(
                  color: Colors.deepOrange,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Result :",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      " ${result}",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}