import 'package:flutter/material.dart';

import 'nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
            padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0
            ),
            itemCount: 20,
            itemBuilder: (ctx, i) {
              return Card(
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.purple[700],
                      borderRadius: BorderRadius.circular(7)
                    ),
                    child: Center(
                      child: Text('$i')
                    ),
                  ),
                  title: Text('Dummy Data'),
                  subtitle: Text('Dummy Data'),
                ),
              );
            }
        )
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}