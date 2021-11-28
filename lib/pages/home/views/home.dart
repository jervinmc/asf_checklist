import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        children: [
          CardMenu(
              icon: Icon(Icons.checklist_outlined,color: Colors.white,size: 25.0,),
              title: 'Survey',
              subtitle:'Nemo enim ipsam voluptatem quia',
              color:Color(0xffFCA626),
              func: (){
                Get.toNamed('/survey');
              },),
          CardMenu(
              icon: Icon(Icons.format_list_numbered,color: Colors.white,size: 25.0,),
              title: 'Swine Headcount',
              subtitle:'Nemo enim ipsam voluptatem quia',
              color:Color(0xff4D0685),
              func: (){
                Get.toNamed('/headcount');
              },),
          CardMenu(
              icon: Icon(Icons.analytics,color: Colors.white,size: 25.0,),
              title: 'Analytics & Reports',
              subtitle:'Nemo enim ipsam voluptatem quia',
              color:Color(0xff181074),
              func: (){
                Get.toNamed('/analytics');
              },),
          CardMenu(
              icon: Icon(Icons.manage_accounts,color: Colors.white,size: 25.0,),
              title: 'Manage Survey',
              subtitle:'Nemo enim ipsam voluptatem quia',
              color:Color(0xff06611F),
              func: (){
                Get.toNamed('/managesurvey');
              },),
        ],
      ),
    );
  }
}

class CardMenu extends StatelessWidget {
  const CardMenu({Key? key, required this.icon, required this.title,required this.color,required this.subtitle,required this.func})
      : super(key: key);
  final Icon icon;
  final String title;
  final Color color;
  final String subtitle;
  final Callback func;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(20.0),
      child: InkWell(
        onTap: func,
        child: Container(
          padding: EdgeInsets.all(25.0),
          child: Row(
            children: [
              icon,
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        title,
                        style: TextStyle(color: Colors.white,fontSize: 20.0,overflow: TextOverflow.ellipsis),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(color: Colors.white),
                      ),
                  ],
                )
              ),
            ],
          )),
      )
    );
  }
}
