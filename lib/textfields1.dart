import 'package:flutter/material.dart';

class textfield extends StatefulWidget {
  @override
  _textfieldState createState() => _textfieldState();
}
class _textfieldState extends State<textfield> {
  final emailControler =TextEditingController();
  bool ispasswordvisable=false;
  String password ="";
  String number="";

  @override
  void initState() {
    super.initState();
    emailControler.addListener(() => setState(() {}));
  }
  @override
  Widget build(BuildContext context)=>Center(
    child: ListView(
      padding: EdgeInsets.symmetric(vertical: 60,horizontal: 20),
      children: [
        buildemail(),
        const SizedBox(height: 25),
        buildpassword(),
        const SizedBox(height: 25),
        buildnumber(),
        const SizedBox(height: 25),
        ElevatedButton(
            onPressed: (){
              print("Email :${emailControler.text}");
              print("Password:${password}");
              print("Number:${number}");
            },
            child:Text("Submit"))
      ],
    ),
  );

  Widget buildemail() => TextField(
    controller: emailControler,
    decoration: InputDecoration(
      labelText: 'Email',
      hintText: 'name@example.com',
      prefixIcon: Icon(Icons.mail,color: Colors.redAccent,),
      // icon: Icon(Icons.mail),
        suffixIcon: emailControler.text.isEmpty
        ? Container(width: 0)
            :IconButton(
                icon: Icon(Icons.close),
                onPressed: ()=>emailControler.clear(),

        ),
      border: OutlineInputBorder()
    ),
    keyboardType:TextInputType.emailAddress,
    textInputAction: TextInputAction.done,


  );

  Widget buildpassword() => TextField(
    onChanged: (value)=>setState(() =>this.password =value),
    onSubmitted: (value)=>setState(() =>this.password =value),
    decoration: InputDecoration(
      hintText: 'password',
      labelText: 'password',
      errorText: "Enter Correct Password",
      suffixIcon: IconButton(
        icon: ispasswordvisable
            ? Icon(Icons.visibility_off)
            : Icon(Icons.visibility),
        onPressed: () =>
            setState(() => ispasswordvisable=!ispasswordvisable),
      ),
      border: OutlineInputBorder()
    ),
    obscureText: ispasswordvisable,

  );

  Widget buildnumber() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Number",style: TextStyle(fontWeight: FontWeight.bold),),
      SizedBox(height: 5),
      TextField(
        onChanged: (value)=>setState(() =>this.number =value),
        onSubmitted: (value)=>setState(() =>this.number =value),
        decoration: InputDecoration(
          hintText: "Enter  Number",
          filled: true,
          hintStyle: TextStyle(color: Colors.white),
          fillColor: Colors.blue,
          border: OutlineInputBorder()
        ),
        style: TextStyle(color: Colors.white),
        keyboardType: TextInputType.number,


      ),
    ],
  );
}
