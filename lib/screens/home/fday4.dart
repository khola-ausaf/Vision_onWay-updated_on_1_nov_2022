import 'package:flutter/material.dart';
import 'day4_exercises.dart';

class Fday4 extends StatefulWidget {
  @override
  State<Fday4> createState() => _WorkoutState();
}

class _WorkoutState extends State<Fday4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Day 4',
            style: TextStyle(
                fontSize: 21, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          elevation: 6.0,
          backgroundColor: Color.fromARGB(255, 177, 96, 191),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Color.fromARGB(255, 255, 255, 255),
            icon: Icon(Icons.arrow_back),
          ),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '6 Mins, 7 Exercises',
                    style: TextStyle(
                        height: 2.7,
                        fontSize: 18,
                        color: Color.fromARGB(255, 135, 135, 135)),
                  ),
                  SizedBox(
                    height: 1,
                    width: 100.0,
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Heel Touch',
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\n\nDuration 00:40 \n\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text:
                                              'Lie on the ground with your legs bent and your arms by your sides . slightly lift your upper body off the floor and make your hands alternately reach your heels.'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_back),
                                        ),
                                        Text("1 / 7"),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_forward),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("CLOSE"),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('SQUATS',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[700],
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Adductor stretching in standing',
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\n\nDuration 00:40 \n\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text:
                                              'Stand with your feet wide distance apart And your hands rested on your hips. Then bend your left leg and lean your body to the left side hold the position for a few seconds then return and repeat with the other side.'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_back),
                                        ),
                                        Text("1 / 7"),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_forward),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("CLOSE"),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('Adductor stretching in standing',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text('40 s',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[700],
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Wall Push-ups',
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\n\nDuration 00:40 \n\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text:
                                              'Stand in front of a wall one big step away from it. Then put your hands out straight towards  the wall and lean against it. Lift your heels. Slowly bend your elbows and press  your  upper body towards the wall. Push back and repeat the exercise .remember to keep your body straight.'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_back),
                                        ),
                                        Text("1 / 7"),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_forward),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("CLOSE"),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('Side-lying leg lift left',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text('40 s',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[700],
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Butt bridge',
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\n\nDuration 00:40 \n\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text:
                                              'Lie down on your side with your head rested on your  left  arm. lift your upper leg  up and return to the start position. Make sure your right  leg  goes straight up and down during the exercise.It’s  a great exercise for the gluteus '),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_back),
                                        ),
                                        Text("1 / 7"),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_forward),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("CLOSE"),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('Butt bridge',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text('40 s',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[700],
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Claps over head',
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\n\nDuration 00:40 \n\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text:
                                              'Lie on your back with knees bent and feet flat on the floor .put your arms flat at your sides  then lift your butt up and down.'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_back),
                                        ),
                                        Text("1 / 7"),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_forward),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("CLOSE"),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('Claps over head',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text('40 s',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[700],
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Planks',
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\n\nDuration 00:40 \n\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text:
                                              'Lies on the floor with your toes and forearms on the ground .keep your body straight and hold this position as long as you can. This exercise strengthens the abdomen, back, and shoulders.'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_back),
                                        ),
                                        Text("1 / 7"),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_forward),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("CLOSE"),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(255, 249, 238, 253),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Colors.purple[500],
                        ),
                        title: Text('Planks',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple[300],
                            )),
                        subtitle: Text('40 s',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[700],
                            )),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 234, 222, 222),
                      onPrimary: Colors.purple[300],
                      // foregroundColor: Colors.purple[300],
                      // backgroundColor: Color.fromARGB(255, 234, 222, 222),
                      side: BorderSide(
                          color: Color.fromARGB(255, 133, 17, 154), width: 2),
                    ),
                    child: const Text(
                      'Start',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Day4_Exercises()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
