import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VendorPage extends StatelessWidget {
  const VendorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Image.asset('images/facebook.png', fit: BoxFit.cover, width: double.infinity,),
            DraggableScrollableSheet(
                builder: (BuildContext context, ScrollController scrollController) {
                  return Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: ListView.builder(
                        itemCount: 20,
                        controller: scrollController,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('images/google.png'),
                            ),
                            title: Text('Test Title'),
                            trailing: Icon(Icons.add),
                          );
                        }
                      ),
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                    )
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}