import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:routine_clock/components/days_chooser_widget.dart';
import 'package:routine_clock/components/finish_button.dart';
import 'package:routine_clock/components/popup_card.dart';
import 'package:routine_clock/components/rounded_container.dart';
import 'package:routine_clock/components/tasks_chooser_widget.dart';
import 'package:routine_clock/components/tiltle_and_description_widget.dart';
import 'package:routine_clock/components/time_picker_widget.dart';
import 'package:routine_clock/components/tune_picker_widget.dart';
import 'package:routine_clock/constants.dart';

class RoutineMakerScreen extends StatefulWidget {
  RoutineMakerScreen({Key key}) : super(key: key);

  @override
  _RoutineMakerScreen createState() => _RoutineMakerScreen();
}

class _RoutineMakerScreen extends State<RoutineMakerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kColor2,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: GestureDetector(
                onLongPress: () {
                  Vibrate.feedback(FeedbackType.selection);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PopUpCard(
                        cardWidget: TitleDescriptionWidget(),
                      ),
                    ),
                  );
                },
                child: RoundContainer(
                  child: TitleDescriptionWidget(),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: GestureDetector(
                      onLongPress: () {
                        Vibrate.feedback(FeedbackType.selection);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return PopUpCard(
                                cardWidget: TimePickerWidget(),
                              );
                            },
                          ),
                        );
                      },
                      child: RoundContainer(
                        child: TimePickerWidget(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onLongPress: () {
                        Vibrate.feedback(FeedbackType.selection);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return PopUpCard(
                                cardWidget: TunePickerWidget(),
                              );
                            },
                          ),
                        );
                      },
                      child: RoundContainer(
                        child: TunePickerWidget(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onLongPress: () {
                        Vibrate.feedback(FeedbackType.selection);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return PopUpCard(
                                cardWidget: DaysChooserWdiget()..setPopUp(),
                              );
                            },
                          ),
                        );
                      },
                      child: RoundContainer(
                        child: DaysChooserWdiget(),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: GestureDetector(
                      onLongPress: () {
                        Vibrate.feedback(FeedbackType.selection);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return PopUpCard(
                                cardWidget: TasksChooserWidget(),
                              );
                            },
                          ),
                        );
                      },
                      child: RoundContainer(
                        child: TasksChooserWidget(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: RoundContainer(
                child: FinishButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
