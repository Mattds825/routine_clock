import 'package:flutter/material.dart';
import 'package:routine_clock/components/routine_widget.dart';
import 'package:routine_clock/constants.dart';
import 'package:routine_clock/screens/alarm_page.dart';
import 'package:routine_clock/screens/routine_maker_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Routines',
                    style: kTitleText,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder : (BuildContext context) => RoutineMakerScreen()));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return (index < 4)
                        ? RoutineWidget()
                        : Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: Center(
                              child: GestureDetector(
                                child: Text('See Alarm Page'),
                                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => AlarmPage())),
                              ),
                            ),
                          );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
