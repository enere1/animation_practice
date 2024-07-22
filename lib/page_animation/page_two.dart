import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Page two'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
