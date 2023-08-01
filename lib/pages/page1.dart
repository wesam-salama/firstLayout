import 'package:flutter/material.dart';
import 'package:layouts/pages/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return Page2();
                })
            );
          }, child: Text('Move To page 2')),
          SizedBox(height: 16,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text('Go back')),

          ElevatedButton(onPressed: (){
            if(Navigator.of(context).canPop()){
              Navigator.of(context).pop();
            }else{
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text("Can't pop man"),
                    action: SnackBarAction(
                      label: 'Ok',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  ));
            }

          }, child: Text('can back')),
        ],
      ),
    );
  }
}
