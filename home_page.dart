import 'package:alarm_app/set_alarm.dart';
import 'package:alarm_app/view_alarm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.elliptical(180,120),bottomLeft: Radius.elliptical(180,120)),
              child: Container(
                color: Colors.blue,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset('assets/logo_alarm.png',height: 300,width: 400),
                        Text('MeraAlarm',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 48)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60,top: 20),
              child: Text('Hello....',style:TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
            ),

            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Center(
                child: Column(
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('Set Alarm',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),style: ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(315,60)),shape:MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)))),),
                    SizedBox(height: 20,),
                    ElevatedButton(onPressed: () {}, child: Text('View Alarm',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),style: ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(315,60)),shape:MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)))),)
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
