import 'package:flutter/material.dart';
import 'package:layouts/Navigation_pages/page4.dart';
import 'package:layouts/Navigation_pages/page6.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return Page4();
                })
            );
          }, child: Text('Move To page 3')),
          SizedBox(height: 16,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text('Go back')),
          SizedBox(height: 16,),
          ElevatedButton(onPressed: (){
            ///pushReplacement
            ///1 pop
            ///2 push
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
              return Page6();
            }));
          }, child: Text('Push replacement Page 6')),
          SizedBox(height: 16,),
          ElevatedButton(onPressed: (){
            ///pushReplacement
            ///1 pop
            ///2 push
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) {
              return Page3();
            }), (route) => false);
          }, child: Text('push And Remove Until to page 3')),
        ],
      ),
    );
  }
}
