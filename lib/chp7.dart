import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// tutorial code begins ***

//****** CHP 7 - Advanced Dart ******/

// Future - data to be returned in the future

// Extensions - Can be used to add functionality to an existing class
/*class Mammal {
  final String species;
  final String name;
  Mammal(this.species, this.name);
  /*void breathe() {
    print('$species $name breathing from class');
  }*/
}

// Use an extension when you want to add
// functionality that may not belong in the
// class but you want it in the src file you're working in.
extension Breathe on Mammal {
  void breathe() {
    print('$species $name is breathing');
    // the use of $species and $name are examples of interpolation
  }
}

class Person {
  final String firstName;
  final String middleName;
  final String lastName;
  Person(this.firstName, this.middleName, this.lastName);
}

extension FullName on Person {
  String get fullName => '$firstName $middleName $lastName';
}

void test() {
  final dog1 = Mammal('Dog', 'Jack Shepard');
  final ferret1 = Mammal('Ferret', 'Mr. Squeaks');
  print(dog1.species + ' ' + dog1.name);
  dog1.breathe();
  ferret1.breathe();

  final me = Person('Daniel', 'Naseeb', 'Culpepper');
  print(me.fullName);
}*/

// tutorial code ends ***

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // tutorial code below ***
    test();
    // tutorial code ends ***

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Chapter 7 - Advanced Dart!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'How many donuts have you eaten today?',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
