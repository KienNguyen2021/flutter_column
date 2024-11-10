import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
   home: kienCard() ,

  debugShowCheckedModeBanner: false,
));

class kienCard extends StatelessWidget {
  //const ({super.key});


  @override
  Widget build(BuildContext context) {


    return  Scaffold(

      backgroundColor: Colors.blueGrey ,


       appBar: AppBar(

          title: Text('I am Flutter',style: TextStyle(fontSize: 30.0, color: Colors.white)),
         centerTitle: true,
          elevation: 0.0,    // to drop shadow to 0
          backgroundColor: Colors.blue,

               ),
      

        body : Padding(padding: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 10.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,    // move column to left side
               mainAxisAlignment: MainAxisAlignment.start,  // column in center

            children: <Widget>[
              //avatar 'CircleAvarta :

              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/girl1.jpg'),
                  radius: 40.0,
                      ),
              ),

//Divider is to create a gap between picture and text 'my profile :

               Divider(

                   height: 40.0,
                   color: Colors.white70,
                ),

                     Center(child: Text('My profile', style: TextStyle(fontSize: 30.0,color: Colors.yellow),)),

                     SizedBox(height: 10.0,),  // create a gap between
                     Image(image: AssetImage('images/zibra.jpg'),),

                      SizedBox(height: 10.0,),  // create a gap between column

                     Text("Full Name :", style: TextStyle(fontSize: 30.0, color: Colors.red, letterSpacing: 2.0),),
                     Text("Password :", style: TextStyle(fontSize: 30.0, color: Colors.red, letterSpacing: 2.0),),

                     Row(
                      
                      children:<Widget> [
                        
                        Text('Enter your email : ', style: TextStyle(fontSize: 30, color: Colors.red),),

                        SizedBox(width: 40.0,),  // create a gap between Row

                        Icon(Icons.email_outlined, size: 30,)

                      ],
                     ),

                 Row(


                   children:<Widget> [

                     Text('Enter phone No : ', style: TextStyle(fontSize: 30, color: Colors.red),),

                     SizedBox(width: 40.0,),  // create a gap between Row

                     Icon(Icons.phone, size: 30,)

                   ],
                 ),
                      


               ],

                 ),
       )
    );
  }
}

