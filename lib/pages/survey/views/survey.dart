import 'package:asf_checklist/services/ApiService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_radio_button/group_radio_button.dart';

class Survey extends StatelessWidget {
  const Survey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Survey"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
                'Lorem ipsum cet dolor, consecutor adlipiscing eilit, sed do euisud tempor incidient ut lobre et dolore magna.'),
          ),
          Questionaire()
        ],
      ),
    );
  }
}

class Questionaire extends StatefulWidget {
  const Questionaire({Key? key}) : super(key: key);

  @override
  _QuestionaireState createState() => _QuestionaireState();
}

class _QuestionaireState extends State<Questionaire> {
  @override
  final _questionaire = Get.put(ApiService());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '1. How much exercise do you do per week?',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Choices(),
          Text(
            '2. How well do you sleep, on average?',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Choices(),
          Text(
            '3. Do you have any illnesses or conditions?',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Choices(),
          Text(
            '4. How do you identify?',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Choices(),
        ],
      ),
    );
  }
}

class Choices extends StatefulWidget {
  const Choices({Key? key}) : super(key: key);

  @override
  _ChoicesState createState() => _ChoicesState();
}

class _ChoicesState extends State<Choices> {
  String _verticalGroupValue = "Yes";
  List<String> _status = ["Yes", "No"];
  @override
  Widget build(BuildContext context) {
    return RadioGroup<String>.builder(
      direction: Axis.horizontal,
      groupValue: _verticalGroupValue,
      onChanged: (value) => setState(() {
        _verticalGroupValue = value!;
      }),
      items: _status,
      itemBuilder: (item) => RadioButtonBuilder(
        item,
      ),
    );
  }
}
