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
        backgroundColor: Color(0xff34a0a4),
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
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(_questionaire.questionaire().length, (index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text((index+1).toString()+'. '+_questionaire.questionaire()[index].toString()),
                  Choices()
                ],
              );
            })
          ),
          Container(
                    padding: EdgeInsets.only(top: 15),
                    width: 250,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff34a0a4)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      child: Text('Finish'),
                      onPressed: () {
                      
                      },
                    ),
                  ),
        ],
      )
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
