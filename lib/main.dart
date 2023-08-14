import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) :  super(key:key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Roll: 2010876149'),
        ),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              color: Color.fromRGBO(200,122,9, 100),
              height: 472,
              width: 412,
              child: SingleChildScrollView(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder()
                      ),

                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: InkWell(
                            onTap: (){
                              print('+');
                            },
                            child: Container(
                              width: 200,
                              height: 200,
                              color: Colors.amber,
                              child: Center(child: Text('+', style: TextStyle(fontSize: 100,color: Colors.white, fontWeight: FontWeight.w700),)),

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: InkWell(
                            onTap: (){
                              print('-');
                            },
                            child: Container(
                              width: 200,
                              height: 200,
                              color: Colors.amber,
                              child: Center(child: Text('-', style: TextStyle(fontSize: 100,color: Colors.white, fontWeight: FontWeight.w700),)),


                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: InkWell(
                            onTap: (){
                              print('*');
                            },
                            child: Container(
                              width: 200,
                              height: 200,
                              color: Colors.amber,
                              child: Center(child: Text('x', style: TextStyle(fontSize: 100,color: Colors.white, fontWeight: FontWeight.w700),)),

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: InkWell(
                            onTap: (){
                              print('=');
                            },
                            child: Container(
                              width: 200,
                              height: 200,
                              color: Color.fromRGBO(228,228,228, 100),
                              child: Center(child: Text('=', style: TextStyle(fontSize: 100,color: Color.fromRGBO(120,120,120, 100), fontWeight: FontWeight.w700),)),

                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        )

    ); // This trailing comma makes auto-formatting nicer for build methods.

  }
}
