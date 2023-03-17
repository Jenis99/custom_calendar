import 'package:custom_calendar/screens/FirstScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {


  CalendarFormat _calendarFormat=CalendarFormat.week;

  DateTime _focusedDay=DateTime.now();
  DateTime? _selectedDay;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _selectedDay=_focusedDay;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Container(
                      margin: EdgeInsets.only(left: 15.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border:Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50.0),
                        ),
                      child: Image.asset("img/leftarrow.png",width: 12.0,)),
                    Container(
                      alignment: Alignment.center,
                      child: Text("Schedual Date",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0
                      ),),
                    ),
                    IconButton(onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>FirstScreen())
                      );
                    }, icon: Icon(Icons.settings))
                  ],
                ),
                SizedBox(height: 20.0,),
                Text("Step-1",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                      ),),
                SizedBox(height: 20.0,),
                Text("Your Match",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                      ),  ),
                SizedBox(height: 20.0,),
                Container(
                  height: 120.0,
                  decoration: BoxDecoration(
                     shape: BoxShape.circle,
                      image: DecorationImage(
                      image: AssetImage("img/profile.jpg",),
                      // fit: BoxFit.fill
                    ),),
                  ),
                SizedBox(height: 20.0,),
                Text("I'm available on the",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                      ),),
                Container(
                  margin: EdgeInsets.only(left: 5.0,right: 5.0),
                  child: TableCalendar(
                    
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                  
                      
                  onDaySelected: ((selectedDay, focusedDay) {
                    if (!isSameDay(_selectedDay, selectedDay)) {
                      setState(() {
                        _focusedDay = focusedDay;
                        _selectedDay = selectedDay;
                        
                      });
                    }
                  }
                  ),
                  calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(
                  color: Colors.red[400],
                  shape: BoxShape.circle,
                              ),
                              // highlighted color for selected day
                              selectedDecoration: BoxDecoration(
                  color: Colors.red[400],
                  shape: BoxShape.circle,
                              ),
                  ),
                  calendarFormat: _calendarFormat,
                  onFormatChanged: (format) {
                    setState(() {
                      _calendarFormat = format;
                    });
                    },
                  
                  selectedDayPredicate: (day){
                    return isSameDay(_selectedDay, day);
                  },
                  ),
                ),
                SizedBox(height: 20.0,),
                Text("I would like to ",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                      ),),
                SizedBox(height: 20.0,),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.red.shade400,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text("Bar Drinks",style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0
                          ),),
                        ),
                      ),
                      Container(
                         width: 100.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.red.shade400,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text("Pub Drinks",style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.red.shade400,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text("Walk",style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text("Coffee",style: TextStyle(
                            color: Colors.grey
                          ),),
                        ),
                      ),
                      Container(
                         width: 100.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.red.shade400,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text("Fun Activity",style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                      ),
                      Container(
                         width: 100.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text("Dinner",style: TextStyle(
                            color: Colors.grey
                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0,),
                 GestureDetector(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  width: MediaQuery.of(context).size.width, 
                  height: 60.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color:Colors.red[400],
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  child:Text("Submit",style:TextStyle(
                    fontSize: 20.0,
                    color: Colors.white
                  ),) ,
                ),
              ),
          ],
        ),
        ),
      ),
    );
  }
}