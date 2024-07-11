// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  int age = 0;
  bool isLoading = false;
  final TextEditingController name = TextEditingController();

  void getData() async {
  var url = Uri.parse('https://api.agify.io/?name=${name.text}');
  Response rs = await get(url);
  Map urs = jsonDecode(rs.body);

  setState(() {
    isLoading = false;
    age = urs['age'];
  });   
}

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFCD93),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 320,
                  height: 80,
                  decoration: BoxDecoration(
                      color: const Color(0xff79F5FD),
                      borderRadius: BorderRadiusDirectional.circular(75.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0),
                          blurRadius: 8.0,
                          offset: Offset(0.0, 0.0),
                        )
                      ]),
                  child: Center(
                    child: Text('RandomAge',
                        style: GoogleFonts.poppins(
                            fontSize: 31,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: const Color(0xff710000))),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Container(
                  width: 320,
                  height: 210,
                  decoration: BoxDecoration(
                      color: const Color(0xff79F5FD),
                      borderRadius: BorderRadiusDirectional.circular(75.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0),
                          blurRadius: 8.0,
                          offset: Offset(0.0, 0.0),
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Center(
                      child: Center(
                        child: Text(
                            "You can guess your friend's age from his name.",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Container(
                  width: 320,
                  height: 315,
                  decoration: BoxDecoration(
                      color: const Color(0xff79F5FD),
                      borderRadius: BorderRadiusDirectional.circular(75.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0),
                          blurRadius: 8.0,
                          offset: Offset(0.0, 0.0),
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 32.0,
                        ),
                        Container(
                          color: const Color(0xFFFFF8E1),
                          child: TextField(
                            controller: name,
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Name',
                              hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        MaterialButton(onPressed: () {
                          setState(() {
                            isLoading = true;
                          });
                          getData();
                        },
                        color: const Color(0xff7554FB),
                        
                        child: Center(
                          child:Text("Find", style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold))
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Column(
                          children: [
                            if(isLoading)
                            Text("Loading..", style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold))
                            else
                            Text("Age: $age", style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
