import 'package:app/services/services.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getUser(),
        builder: (context,AsyncSnapshot snapshot) {
          return ListView.builder(
            itemCount: snapshot.data.data!.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(snapshot.data[index].name),
              );
            },
          );
        }
      ),
    );
  }
}
