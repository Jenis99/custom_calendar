import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.0,),
              Row(
                children: [
                   Container(
                      margin: EdgeInsets.only(left: 15.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border:Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50.0),
                        ),
                      child: Image.asset("img/leftarrow.png",width: 12.0,)),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("Date Confirm",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0
                      ),),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              CalendarTimeline(
                initialDate: DateTime.now(),
                firstDate: DateTime(2019, 1, 15),
                lastDate: DateTime(2030, 11, 20),
                onDateSelected: (date) => print(date),
                leftMargin: 20,
                monthColor: Colors.red[400],
                dayColor: Colors.grey,
                // dayNameColor: Colors.grey,
                activeDayColor: Colors.white,                
                activeBackgroundDayColor: Colors.red[400],  
                dotsColor: Colors.transparent,
                locale: 'en_ISO',
                
                
              ),
            SizedBox(height: 20.0,),
            Image.asset("img/Home.png",width: 400.0,),
            SizedBox(height: 20.0,),
            Text("Skipped",style: TextStyle(
              color: Colors.red[400],
              fontWeight: FontWeight.bold,
              fontSize: 20.0
            ),),
            SizedBox(height: 20.0,),
            GestureDetector(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.all(15.0),
                width: MediaQuery.of(context).size.width, 
                height: 60.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color:Colors.grey[850],
                  borderRadius: BorderRadius.circular(15.0)
                ),
                child:Text("Unskip",style:TextStyle(
                  fontSize: 20.0,
                  color: Colors.white
                ),) ,
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                 margin: EdgeInsets.all(15.0),
                width: MediaQuery.of(context).size.width, 
                height: 60.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red.shade400),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child:Text("Pause Indefinitely",style:TextStyle(
                  fontSize: 20.0,
                  color: Colors.red[400],
                ),) ,
              ),
            ),
          //  ElevatedButton(onPressed: (){

          //  },style: ElevatedButton.styleFrom(
          //   shape: RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.circular(10.0)),
          //  ), child: Text("Unskip"))
            ],
          ),
        )),
    );
  }
}