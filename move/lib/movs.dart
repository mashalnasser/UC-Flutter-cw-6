import 'package:flutter/material.dart';
import 'package:move/main.dart';
import 'package:move/moves.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var movies = [
    Movies(
        name: "ابراج الكويت",
        image:
            "https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg",
        rate: "10/10",
        relaseDate: "2004"),
    Movies(
        name: "برج التحرير",
        image:
            "https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg",
        rate: "9/10",
        relaseDate: "2001"),
    Movies(
        name: "مسجد الاقصى",
        image:
            "https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg",
        rate: "100/100",
        relaseDate: "2020"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: ListView.builder(
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(movies[index].image),
                    title: Text(movies[index].name),
                    subtitle: Text(movies[index].relaseDate),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsPage(ali: movies[index])));
                        },
                        icon: Icon(Icons.arrow_forward_ios_outlined)),
                  );
                })),
      ),
    );
  }
}
