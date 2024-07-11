import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'project03',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffFFCD93),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(38.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 320,
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color(0xff79F5FD),
                    borderRadius: BorderRadiusDirectional.circular(75.0),
                    boxShadow:const [
                      BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0),
                        blurRadius: 8.0,
                        offset: Offset(0.0, 0.0),
                      )
                    ]
                  ),
                  child: Center(child:Text('ManufacturerInfo',style: GoogleFonts.poppins(fontSize: 31, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color:const Color(0xff710000))),), 
                ),
               
                const SizedBox(
                  height: 20.0,
                ),

                Container(
                  width: 320,
                  height: 215,
                  decoration: BoxDecoration(
                    color: const Color(0xff79F5FD),
                    borderRadius: BorderRadiusDirectional.circular(75.0),
                    boxShadow:const [
                      BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0),
                        blurRadius: 8.0,
                        offset: Offset(0.0, 0.0),
                      )
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Center(child:Text('This app helps you to find the country of  the manufacturer of a vehicle.',style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),),
                  ), 
                ),

                const SizedBox(
                  height: 20.0,
                ),
                
                 Container(
                  width: 320,
                  height: 329,
                  decoration: BoxDecoration(
                    color: const Color(0xff79F5FD),
                    borderRadius: BorderRadiusDirectional.circular(75.0),
                    boxShadow:const [
                      BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0),
                        blurRadius: 8.0,
                        offset: Offset(0.0, 0.0),
                      )
                    ]
                  ),

                  child: Padding(    
                    padding:const  EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        const SizedBox(
                           height: 32.0,
                        ),
                        Container(
                          color:const Color(0xFFFFF8E1),
                          child:const TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Vehicle Name', hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
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

