import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> names = ["bhoomika", "tulsi", "mansi", "ridhi"];
  List<String> alp = ["A", "B", "C"];
  List<int> numbers = List.generate(10, (index) => index);
  @override
  void initState() {
    // names.addAll(alp);
    for (String item in alp) {
      names.add(item);
    }
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 140,
            child: ListView.builder(
              itemCount: numbers.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    margin: const EdgeInsets.only(left: 8.0),
                    child: Card(
                      elevation: 6,
                      child: Column(children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.amber, shape: BoxShape.circle),
                          height: 70,
                          width: 70,
                        ),
                        Expanded(child: Text(numbers[index].toString()))
                      ]),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
