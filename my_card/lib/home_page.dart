import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment
                    .start, //Esta wea la cambias y se reordena / varia center y spaceevenly
                children: <Widget>[
                  const SizedBox(
                    height: 150,
                  ),
                  const CircleAvatar(
                    radius: 130,
                    backgroundImage:
                        AssetImage("assets/images/yatorabitepencilcut.jpg"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "-Waldo Cenit T.-",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Playfair Display",
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Flutter Developer",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Playfair Display"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 2,
                    width: 230,
                    color: Colors.amber,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    height: 50,
                    width: 320,
                    color: Colors.amber,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.phone,
                          size: 30,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "646-160-69-69",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Playfair Display"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    height: 50,
                    width: 320,
                    color: Colors.amber,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.mail_sharp,
                          size: 30,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "oswaldo.zx20@gmail.com",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Playfair Display"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
