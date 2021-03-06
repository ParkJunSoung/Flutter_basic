import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '폼 검증 데모',

      home: Scaffold(
        appBar: AppBar(
          title: Text('폼 검증 데모')
        ),
        body: MyCustomForm(),
      ),
    );
  }
}
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() => MyCustomFormState();
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Form(
     key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value){
              if (value.isEmpty){
                return '글자를입력하세요';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: (){
                if(_formKey.currentState.validate()){
                  ScaffoldMessenger(context)
                      .showSnackBar(SnackBar(content: Text('검증완료')));                }
              },
              child: Text('검증'),
            ),
          )
        ],
      ),

    );
  }
}