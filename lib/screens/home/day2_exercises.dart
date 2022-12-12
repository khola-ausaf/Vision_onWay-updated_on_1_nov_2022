//import 'dart:async';
//import 'dart:ffi';
// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'package:sign_in/screens/home/congratulation.dart';
//import 'package:sign_in/screens/home/fday1.dart';
// import 'package:get/get_state_manager/src/simple/list_notifier.dart';
// import 'package:sign_in/controllerBindings.dart';
//import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: camel_case_types
class Day2_Exercises extends StatefulWidget {
  const Day2_Exercises({Key? key}) : super(key: key);
  

  @override
  State<Day2_Exercises> createState() => _Day2_ExercisesState();
}

// ignore: camel_case_types
class _Day2_ExercisesState extends State<Day2_Exercises> {
  late YoutubePlayerController controller;
  late final dref = FirebaseDatabase.instance.ref();
  late DatabaseReference databaseReference;
  setData() {
    dref.child("progress1").set({
      'title':"congralution you are successfully done your day2 you are burn 230 calories in 10 mints"
    });
  }

  showData() {
    dref.once().then((snapshot) {
      print(snapshot);
    });
  }

  @override
  // ignore: must_call_super
  void initState() {
    super.initState();
    databaseReference = dref;

    const url = 'https://youtu.be/qcVlGnq5B4Y';

    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: true,
      ),
    );
  }

  @override
  void deactivate() {
    controller.pause();

    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (Context, Player) => Scaffold(
          appBar: AppBar(
            title: Text(
              'Day 2',
              style: TextStyle(
                  fontSize: 21, color: Color.fromARGB(255, 255, 255, 255)),
            ),
            elevation: 1.0,
            backgroundColor: Color.fromARGB(255, 177, 96, 191),
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Color.fromARGB(255, 255, 255, 255),
              icon: Icon(Icons.arrow_back),
            ),
          ),
          body: ListView(
            children: [
              Player,
              Spacer(),
              Text('FULL BODY WORKOUT',
                  style: TextStyle(
                    height: 1.9,
                    fontSize: 25.0,
                    color: Color.fromARGB(255, 149, 76, 161),
                  )),
              Text(
                  'The benefits of a full body workout are huge It is a great way to ensure you are training all muscles group one workout, no muscles left behind.Full body workouts tend to incorporate compound strength exercises, which are a super efficient way of training for functional strength as well as cardiovascular health',
                  style: TextStyle(
                    height: 1,
                    fontSize: 17,
                    color: Color.fromARGB(255, 178, 99, 192),
                  )),
              SizedBox(
                height: 40,
              ),
           ElevatedButton(
  onPressed:setData,
                child: const Text(
                  'Done!!',
                  style: TextStyle(
                    fontSize: 34,
                  ),
                ),
              )
            ],
          ),
        ),
      );

}
