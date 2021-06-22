import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prishma_dating_app/screen/screens.dart';
import 'package:prishma_dating_app/widgets/widgets.dart';

class SignUpDetails extends StatefulWidget {
  @override
  _SignUpDetailsState createState() => _SignUpDetailsState();
}

class _SignUpDetailsState extends State<SignUpDetails> {
  String day = 'Day';
  String month = 'Month';
  String year = 'Year';
  String location = '';
  String gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeede4),
      body: Form(
        child: Column(
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
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 20, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: DropdownButton<String>(
                      value: day,
                      onChanged: (String newValue) {
                        setState(() {
                          day = newValue;
                        });
                      },
                      items: <String>[
                        'Day',
                        '1',
                        '2',
                        '3',
                        '4',
                        '5',
                        '6',
                        '7',
                        '8',
                        '9',
                        '10',
                        '11',
                        '12',
                        '13',
                        '14',
                        '15',
                        '16',
                        '17',
                        '18',
                        '19',
                        '20',
                        '21',
                        '22',
                        '23',
                        '24',
                        '25',
                        '26',
                        '27',
                        '28',
                        '29',
                        '30',
                        '31'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: DropdownButton<String>(
                      value: month,
                      onChanged: (String newValue) {
                        setState(() {
                          month = newValue;
                        });
                      },
                      items: <String>[
                        'Month',
                        '1',
                        '2',
                        '3',
                        '4',
                        '5',
                        '6',
                        '7',
                        '8',
                        '9',
                        '10',
                        '11',
                        '12',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: DropdownButton<String>(
                      value: year,
                      onChanged: (String newValue) {
                        setState(() {
                          year = newValue;
                        });
                      },
                      items: <String>[
                        'Year',
                        '1',
                        '2',
                        '3',
                        '4',
                        '5',
                        '6',
                        '7',
                        '8',
                        '9',
                        '10',
                        '11',
                        '12',
                        '13',
                        '14',
                        '15',
                        '16',
                        '17',
                        '18',
                        '19',
                        '20',
                        '21',
                        '22',
                        '23',
                        '24',
                        '25',
                        '26',
                        '27',
                        '28',
                        '29',
                        '30',
                        '31'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.locationArrow,
                  size: 20,
                  color: Color(0xffbd00a1),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Location',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            TextFormField(
              onChanged: (value) => location = value,
              validator: (value) =>
                  value.length < 2 ? 'Invalid Location' : null,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Location',
                icon: Icon(
                  Icons.face,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.marsDouble,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Gender',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  NeumorphicRadio(
                    style: NeumorphicRadioStyle(
                      boxShape: NeumorphicBoxShape.circle(),
                    ),
                    groupValue: gender,
                    value: "A",
                    onChanged: (value) {
                      setState(() {
                        gender = value;
                      });
                    },
                    padding: EdgeInsets.all(18.0),
                    child: Text('Male'),
                  ),
                  SizedBox(width: 12),
                  NeumorphicRadio(
                    value: "B",
                    style: NeumorphicRadioStyle(
                      boxShape: NeumorphicBoxShape.circle(),
                    ),
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value;
                      });
                    },
                    padding: EdgeInsets.all(18.0),
                    child: Text("Female"),
                  ),
                  SizedBox(width: 12),
                  NeumorphicRadio(
                    style: NeumorphicRadioStyle(
                      boxShape: NeumorphicBoxShape.circle(),
                    ),
                    groupValue: gender,
                    value: "C",
                    onChanged: (value) {
                      setState(() {
                        gender = value;
                      });
                    },
                    padding: EdgeInsets.all(18.0),
                    child: Text("Other"),
                  ),
                ],
              ),
            ),
            GradientButton(Text('Sign Up'), FeedScreen()),
          ],
        ),
      ),
    );
  }
}
