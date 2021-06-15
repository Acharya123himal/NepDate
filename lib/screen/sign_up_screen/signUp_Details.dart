import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:location/location.dart';
import 'package:prishma_dating_app/screen/screens.dart';
import 'package:prishma_dating_app/widgets/widgets.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class SignUpDetails extends StatefulWidget {
  @override
  _SignUpDetailsState createState() => _SignUpDetailsState();
}

class _SignUpDetailsState extends State<SignUpDetails> {
  final Location location = Location();
  bool _dateChanger = false;
  bool _dateDisplay = true;
  String _selectedDate = '';

  void _dateSelection(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeede4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
            child: Text(
              'Personal Details',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xffbd00a1),
                  child: Icon(
                    FontAwesomeIcons.calendar,
                    size: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    'DOB',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Column(
            children: <Widget>[
              Visibility(
                visible: _dateDisplay,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _dateChanger = true;
                      _dateDisplay = false;
                    });
                  },
                  child: Container(
                    child: Text(
                      "Date: " + _selectedDate,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: _dateChanger,
                child: GestureDetector(
                  onTap: () {
                    _dateChanger = false;
                    _dateDisplay = true;
                  },
                  child: SfDateRangePicker(
                    onSelectionChanged: _dateSelection,
                    selectionMode: DateRangePickerSelectionMode.single,
                  ),
                ),
              ),
              
            ],
          ),
          GradientButton(Text('Sign Up'), Feed()),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text("Already Have Account? Log In"),
          )
        ],
      ),
    );
  }
}
