import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    //Simulating networ request for a username

    String username = await Future.delayed(Duration(seconds: 3), (() {
      return 'Mahesh';
    }));
    //simulates network to get bio of the username
    String bio = await Future.delayed(Duration(seconds: 2), (() {
      return ('Coder fellow nerd');
    }));

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('Hello');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('Counter is $counter'),
      ),
    );
  }
}
