import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text("LOG IN"),
              ),
              Tab(
                child: Text("SIGN UP"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            LogInScreen(),
            SignUpScreen(),
          ],
        ),
      ),
    );
  }
}

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Showcase App',
                  style: TextStyle(color: Colors.purpleAccent, fontSize: 38.0)),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Username'),
                  hintText: 'ex:Aswani',
                  icon: Icon(Icons.person),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('password'),
                  icon: Icon(Icons.lock),
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,bottom: 20),
              child: SizedBox(
                width: 150,
                height: 50,
                child:OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.purpleAccent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),

                  ),
                  child: const Text(
                    'LOG IN',
                    style: TextStyle(color: Colors.white),
                  ),
                ) ,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30,bottom: 10),
              child: Divider(
              thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.grey,
          ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Or connect with:',
                  style: TextStyle(color: Colors.black, fontSize: 18.0)),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:40),
                  child: SizedBox(
                    width: 150,
                    height: 50,
                    child:OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueAccent),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),

                      ),
                      child: const Text(
                        'FACEBOOK',
                        style: TextStyle(color: Colors.white),
                      ),
                    ) ,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 150,
                    height: 50,
                    child:OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),

                      ),
                      child: const Text(
                        'GOOGLE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ) ,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Showcase App',
                  style: TextStyle(color: Colors.purpleAccent, fontSize: 38.0)),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Username'),
                  hintText: 'ex:Aswani',
                  icon: Icon(Icons.person),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Email'),
                  hintText: 'ex:Aswani@gmail.com',
                  icon: Icon(Icons.mail),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('password'),
                  icon: Icon(Icons.lock),
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,bottom: 20),
              child: SizedBox(
                width: 150,
                height: 50,
                child:OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.purpleAccent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),

                  ),
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(color: Colors.white),
                  ),
                ) ,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30,bottom: 10),
              child: Divider(
                thickness: 2,
                indent: 10,
                endIndent: 10,
                color: Colors.grey,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Or connect with:',
                  style: TextStyle(color: Colors.black, fontSize: 18.0)),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:40),
                  child: SizedBox(
                    width: 150,
                    height: 50,
                    child:OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueAccent),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),

                      ),
                      child: const Text(
                        'FACEBOOK',
                        style: TextStyle(color: Colors.white),
                      ),
                    ) ,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 150,
                    height: 50,
                    child:OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),

                      ),
                      child: const Text(
                        'GOOGLE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ) ,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
