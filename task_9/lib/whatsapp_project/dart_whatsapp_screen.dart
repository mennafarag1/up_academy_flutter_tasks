

import 'package:flutter/material.dart';

import 'dart__class massage.dart';

class WhatsappScreen extends StatelessWidget {
 WhatsappScreen({Key? key}) : super(key: key);
List<Massage>massage = [
  Massage(massage:"voice" , colorUser:Colors.orange, userName: "Mohamed Hosny" , numberOfMassage: "3", time:"1:30 pm",
  date:"" ),
  Massage(massage:"voice" , colorUser:Colors.grey ,userName: "mohamed mosa" ,
    numberOfMassage: "", time:"" , date: "friday"),
    Massage(massage : "ازيك ياهندسه عامل ايه", colorUser: Colors.yellow, userName: "mohamed samir" ,
    numberOfMassage: "", time:"" , date: "11:45 am"),
    
    Massage(massage:"متنساش الفلاشة وانت جاي" , colorUser:Color.fromARGB(255, 114, 179, 117), userName: "Ahmed Lotfy" ,
    numberOfMassage: "1", time:"1:12 am" , date: ""),
  Massage(massage:"you are a great man" , colorUser:Colors.black, 
  userName: "Emad Gamal" , numberOfMassage: "1", time:"11:45 am" , date:""),
  Massage(massage:"smile" , colorUser:Colors.lightBlue, userName: "Farah" ,
   numberOfMassage: "2", time:"11:45 am", date: "" ),
   Massage(massage:"" , colorUser:Color.fromARGB(255, 46, 84, 149), userName: "shrouk" , numberOfMassage: "", time:"",
   date:"sunday" ),
   
 
  
];

@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar( backgroundColor: const Color.fromARGB(255, 71, 164, 74),
      title: const Text('WhatsApp Chat'),
      leading: const Icon(Icons.menu ), 
      
      actions: const [
         Icon(Icons.search),
         SizedBox(
          width: 20,
         ),
          Icon(Icons.text_snippet ),
          SizedBox(
          width: 20,
         ),
     ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      }, child: Icon(Icons.photo_camera), backgroundColor: Colors.black,),
	body: ListView.builder(
		itemCount:massage.length ,
		itemBuilder: (BuildContext context, int index) {
			return   ListTile(
              leading: CircleAvatar(
                backgroundColor: massage[index].colorUser,
              ),
              trailing:massage[index].date == ""? Column (children: [ 
               
                Text("${massage[index].time}", 
              style: TextStyle(fontSize: 15 , color: Colors.green ),),
              
             CircleAvatar(
                  child: Text("${massage[index].numberOfMassage}"),
                   radius:10,
              backgroundColor: Colors.green,
                ),
               
              ],):Text("${massage[index].date}"),
            
               title: Text("${massage[index].userName}",
              style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20 ,),
              ),
              
              subtitle:massage[index].massage == "voice"? Row(children: [
                Icon(Icons.mic, color: Colors.grey,),
               Text('0:07',
               style: TextStyle(color: Colors.grey ),
               
               ), 
              ],): Text("${massage[index].massage}")
              
              
      );
		}),
	);
}
}
