import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'BITS COLLEGE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});
  @override
  State<MyAppBar> createState() => _MyAppBar();
}

class _MyAppBar extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.lightGreen,
      elevation: 0,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.person_rounded,
            color: Colors.lightGreen,
          ),
          onPressed: () {
            // do something
          },
        )
      ],
    );
  }
}

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});
  @override
  State<MyDrawer> createState() => _MyDrawer();
}

class _MyDrawer extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.lightGreen,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  'BITS PORTAL',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 33,
                          fontWeight: FontWeight.w800)),
                ),
              )),
          ListTile(
            title: Text(
              "HOME",
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(fontSize: 18)),
            ),
            trailing: const Icon(Icons.home_filled),
            iconColor: Colors.lightGreen,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const MyHomePage(title: 'HomePage');
              }));
            },
          ),
          ListTile(
            title: Text(
              "ABOUT",
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(fontSize: 18)),
            ),
            trailing: const Icon(Icons.info),
            iconColor: Colors.lightGreen,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const AboutPage(title: 'AboutPage');
              }));
            },
          ),
          ListTile(
            title: Text(
              "CONTACTS",
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(fontSize: 18)),
            ),
            trailing: const Icon(Icons.person),
            iconColor: Colors.lightGreen,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              "SERVICES",
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(fontSize: 18)),
            ),
            trailing: const Icon(Icons.settings),
            iconColor: Colors.lightGreen,
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100), child: MyAppBar()),
      drawer: const MyDrawer(),
      body: Container(
        padding: const EdgeInsets.only(left: 18, right: 25),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "BITS COLLEGE",
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 35),
                    color: Colors.lightGreen),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(fontSize: 16),
                      color: Colors.black54),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(12))),
                  child: Text(
                    "OUR SERVICES",
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white)),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100), child: MyAppBar()),
      drawer: const MyDrawer(),
      body: Container(
        padding: const EdgeInsets.only(left: 18, right: 25),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ABOUT BITS COLLEGE",
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 35),
                    color: Colors.lightGreen),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(fontSize: 16),
                      color: Colors.black54),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(12))),
                  child: Text(
                    "OUR SERVICES",
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white)),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
