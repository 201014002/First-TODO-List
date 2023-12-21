import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO',
      home: Scaffold(
        backgroundColor: Colors.pink[200],
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.pink[800],
          actions: [
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                )),
          ],
          title: Text(
            'TODO List',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          ),
          leading: Icon(Icons.menu,color: Colors.white,),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 30.0),
              child: Text(
                'Pending Tasks',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            //Container
            //for multiple containers
            for(int i=0;i<20;i++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(
                    8.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Do Assignment at 3.30 P.M. and upload it on Google Classroom',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.edit,
                              color: Colors.blue,
                            ),
                            Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
