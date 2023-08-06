import 'dart:developer';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController textFieldController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    textFieldController = TextEditingController();
  }

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: (){
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          body: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TextField(),
                  TextFormField(
                    controller: textFieldController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(50)
                      ),
                    ),

                    onChanged: (value){
                      log(value);
                    },
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'This field is requierd';
                      }else{
                        return null;
                      }
                    },
                  )
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {

            if(_formKey.currentState!.validate()){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Done')));
            }
            // textFieldController.clear();
            // log('${textFieldController.text}');
          },),
        ),
      ),
    );
  }
}
