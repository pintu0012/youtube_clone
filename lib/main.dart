import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: GoogleFonts.roboto().fontFamily,
          appBarTheme: AppBarTheme(brightness: Brightness.dark)),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff212121),
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Color(0xff212121),
          title: Container(
            height: 40.0,
            child: Image.asset('assets/icons/logo.jpg'),
          ),
          actions: [
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.cast),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.notifications_none_outlined),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.search_outlined),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(),
                )
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 8.0,
          enableFeedback: false,
          showUnselectedLabels: true,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          backgroundColor: Color(0xff212121),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call_outlined), label: 'Shorts'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outlined), label: 'Upload'),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions_outlined),
                label: 'Subscriptions'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined), label: 'Library'),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(children: [
                Container(
                  margin: EdgeInsets.all(8.0),
                  height: 40.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.white),
                  child: Center(child: Text('All')),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  height: 40.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey),
                  child: Center(child: Text('Music')),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  height: 40.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey),
                  child: Center(child: Text('Live')),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  height: 40.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey),
                  child: Center(child: Text('Mixes')),
                ),
                Container(
                  height: 40.0,
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Trending'),
                  )),
                ),
              ]),
              Container(
                width: double.infinity,
                height: 200.0,
                child: Image.network(
                  'https://homepages.cae.wisc.edu/~ece533/images/airplane.png',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text(
                  'My Youtube Video Title',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text('myChannle name : 27K views : 1 day ago',
                    style: TextStyle(color: Colors.white)),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
              Divider(
                height: 10.0,
                color: Colors.grey,
              ),
              Container(
                width: double.infinity,
                height: 200.0,
                child: Image.network(
                  'https://homepages.cae.wisc.edu/~ece533/images/airplane.png',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text(
                  'My Youtube Video Title',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text('myChannle name : 27K views : 1 day ago',
                    style: TextStyle(color: Colors.white)),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
              Divider(
                height: 10.0,
                color: Colors.grey,
              ),
              Container(
                width: double.infinity,
                height: 200.0,
                child: Image.network(
                  'https://homepages.cae.wisc.edu/~ece533/images/airplane.png',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text(
                  'My Youtube Video Title',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text('myChannle name : 27K views : 1 day ago',
                    style: TextStyle(color: Colors.white)),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
              Divider(
                height: 10.0,
                color: Colors.grey,
              ),
            ],
          ),
        ));
  }
}
