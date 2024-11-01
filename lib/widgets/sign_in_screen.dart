import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lab6/widgets/reset_password_screen.dart';
import 'package:lab6/widgets/signup_screen.dart';

// конструктор
// class SignInScreen extends StatefulWidget {
//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }
// class SignInScreen extends State<SignInScreen> {

class SignInScreen extends StatelessWidget{
  const SignInScreen({super.key});

   @override
   Widget build(BuildContext context){
     return Scaffold(
       appBar: AppBar(
         title: Text('Login'),
       ),
       body: Padding(
         padding: const EdgeInsets.all(16.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [

             Center(
             child: Image.network(
               "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/1024px-Google-flutter-logo.svg.png",
               width: 200,
             ),
           ),

             SizedBox(height: 20),

             TextField(
               decoration: InputDecoration(
                 labelText: 'Username',
                 border: OutlineInputBorder(),
               ),
             ),

             SizedBox(height: 20),

             TextField(
               obscureText: true,
               decoration: InputDecoration(
                 labelText: 'Password',
                 border: OutlineInputBorder(),
               ),
             ),

             SizedBox(height: 20),

             ElevatedButton(
               onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
               },
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.white,
                 foregroundColor: Colors.blue,
               ),
               child: Text('Sing up'),
             ),

             SizedBox(height: 10),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Expanded(
                   child: ElevatedButton(
                   onPressed: () {
                     showDialog(
                         context: context,
                         builder: (BuildContext context) {
                           return AlertDialog(
                             title: Text('Alert Dialod Title'),
                             content: Text('This is the content of the alert dialog'),
                             actions: [
                               TextButton(
                                   onPressed: () {
                                     Navigator.of(context).pop();
                                   },
                                   child: Text('Ok'),
                               ),
                             ],
                           );
                         },
                     );
                   },
                   child: Text('Login'),
                 ),
                 ),
                   SizedBox(width: 10),
                   Expanded(
                   child:ElevatedButton(
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPasswordScreen()));
                   },
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.white,
                       foregroundColor: Colors.blue,
                     ),
                   child: Text('Reset password'),
                 ),
                   ),

               ],
             )
           ],
         ),
       ),
     );
   }
}

