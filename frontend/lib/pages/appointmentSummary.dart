// importing the required packages and pages
import 'package:flutter/material.dart';
import 'bookingConfirmation.dart';
import 'calender.dart';
import 'newAppointment.dart';

// this page is to display the summary of the appointment to the patient to check and confirm their booking
void main() => runApp(const appointmentSummary());

class appointmentSummary extends StatelessWidget {
  const appointmentSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // adding the app bar with back icon to go back to the previous page
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => calender()),
              );
            },
            child: const Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),

        // adding scrollbar to the page
        body: const Scrollbar(child: MyappointmentSummary()),
      ),
    );
  }
}

class MyappointmentSummary extends StatefulWidget {
  const MyappointmentSummary({Key? key}) : super(key: key);

  @override
  State<MyappointmentSummary> createState() => _MyappointmentSummary();
}

class _MyappointmentSummary extends State<MyappointmentSummary> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            // the appointment summary would display the day, date, time, doctor's name
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 70),
                child: const Text(
                  'Please confirm your booking details',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(80, 10, 50, 5),
              child: const Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    WidgetSpan(
                        child: Icon(
                      Icons.calendar_month_outlined,
                      size: 25,
                    )),
                    TextSpan(
                        text: ' Day, Date, 2022',
                        style: TextStyle(fontSize: 22)),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(80, 10, 50, 5),
              child: const Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    WidgetSpan(
                        child: Icon(
                      Icons.access_time_outlined,
                      size: 25,
                    )),
                    TextSpan(text: ' Time', style: TextStyle(fontSize: 22)),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(80, 10, 50, 5),
              child: const Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    WidgetSpan(
                        child: Icon(
                      Icons.medical_services_outlined,
                      size: 25,
                    )),
                    TextSpan(
                      text: ' Dr Dummy Name',
                      style: TextStyle(
                        fontSize: 22,
                        //fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(80, 10, 50, 70),
              child: const Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    WidgetSpan(
                        child: Icon(
                      Icons.message_outlined,
                      size: 25,
                    )),
                    TextSpan(text: ' via Chat', style: TextStyle(fontSize: 22)),
                  ],
                ),
              ),
            ),

            // options to either confirm or cancel the booking
            Wrap(
              children: <Widget>[
                Container(
                    width: 180,
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(30, 20, 20, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const newAppointment()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        primary: Colors.deepPurple[300],
                      ),
                      child: const Text('Cancel',
                          style: TextStyle(
                            fontSize: 19,
                          )),
                    )),
                Container(
                    width: 180,
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(30, 20, 20, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const bookingConfirmation()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        primary: Colors.deepPurple[300],
                      ),
                      child: const Text('Confirm',
                          style: TextStyle(
                            fontSize: 19,
                          )),
                    ))
              ],
            )
          ],
        ));
  }
}
