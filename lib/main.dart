/*
    *** BE SURE TO PULL FROM ORIGIN MASTER BEFORE EDITING ***
    learningdart is shared between both laptop and Desktop.
    *** BE SURE TO PULL FROM ORIGIN MASTER BEFORE EDITING ***
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// tutorial code begins ***

//****** CHP 6 - Dart Enumerations, Classes & Objects ******/

// Enumerations: a named list of related items
// You can categorize related items under an enumeration
/*enum PersonalProperties { firstName, lastName, age }

void test() {
  print(PersonalProperties.firstName);
}*/

//********* CHP 5 - Null Safety *********/

// Conditional Invocation of a method/property using ?. syntax
/*void test(List<String>? names) {
  // if names length is null, set the length variable to zero
  final length = names?.length ?? 0;
  names?.add('Daniel');

  // the old way of checking without the ?. syntax
  /*final int length;
  if (names != null) {
    length = names.length;
  } else {
    length = 0;
  }*/
}*/

// Null-aware assignment operator ??=
/*void test(String? firstName, String? middleName, String? lastName) {
  String? name = firstName;
  name ??= middleName;
  name ??= lastName;
  print(name);
}*/

// Using the ?? operator
/*void test(String? firstName, String? middleName, String? lastName) {
  /*
  const String? firstName = null;
  const String? middleName = 'Naseeb';
  const String? lastName = 'Culpepper';
  */

  // using ?? as logical "OR", but with relation to nullability
  final firstNonNullValue = firstName ?? middleName ?? lastName;

  // repetitive, verbose, bad code
  // See above line for better code
  if (firstName != null) {
    print("first name is the first non-null value");
  } else if (middleName != null) {
    print("middle name is the first non-null value");
  } else if (lastName != null) {
    print("last name is the first non-null value");
  }
}*/

// "Optional" or "Nullable" Lists and values
/* void test() {
  /* Having the ? at the end of List<String>? means that
     the list itself can be null in its entirety.
     Having the ? after <String?> means that any of the 
     contents are optional or nullable.*/
  List<String?>? names = ['Daniel', 'Culpepper', null];
  names = null;
  print(names);

  // Having the ? after <int?> means that any of the
  // values can be null
  List<int?> age = [22, 33, null];
  print(age);
  /* 
  String? name = null;
  print(name);
  name = 'Daniel';
  print(name);
  int? age = null;
  age = 33;
  print("$name is $age years old."); 
  */
} */

// Maps
/*void test() {
  // in Dart this is referred to as a map. 
  // It appears to be very similar to an object in JavaScript
  var person = {'age': 33, 'name': 'Daniel'};

  print(person);
  person['lastName'] = 'Culpepper';
  print(person);
}*/

// List
/*void test() {
  // the following is a list
  final namesList = ['Daniel', 'Naseeb', 'Culpepper'];
  final firstName = namesList[0];
  final middleName = namesList[1];
  final lastName = namesList[2];
  final fullName = "$firstName $middleName $lastName";

  final namesLength = namesList.length;
  print("$fullName made an array with $namesLength indeces.");

  // the following is a set. A set cannot contain 2 equivalent elements!
  final namesSet = {'Daniel', 'Naseeb', 'Culpepper', 2, 5};
  print(namesSet);
}*/

// Variables and Math
/*void test() {
  var age = 33;
  print(age);
  var halfOfAge = age / 2;
  var doubleAge = age * 2;
  var ageMinusOne = --age;
  print(halfOfAge);
  print(doubleAge);
  print(ageMinusOne);
}*/

// if/else and "" ''
/*void test() {
  const name = 'Daniel';
  if (name == 'Daniel') {
    print('Yes, this is Daniel');
  } else if (name != 'Daniel') {
    print("No, this isn't Daniel"); // can use double quotes
  } else if (name == 'Darnell') {
    print('"This is Darnell"');
  } else if (name == 'Bar Bell') {
    print("\"This is Bar Bell\"");
  } else {
    print('I don\'t know what this is.'); // must use \' if single quotes
  }
} */

// tutorial code ends ***

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // tutorial code below ***
    test();
    // tutorial code ends ***
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
