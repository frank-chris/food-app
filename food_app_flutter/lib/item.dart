import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyItemPage extends StatefulWidget {
  const MyItemPage({Key? key}) : super(key: key);

  @override
  State<MyItemPage> createState() => _MyItemPageState();
}

class _MyItemPageState extends State<MyItemPage> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 36, 8, 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/zy6ymtixm4vtjuhakijm"
              ),
            ),
          ),
          Row(
            children: [
              Text(
                "Masala Dosa",
                style: GoogleFonts.inter(
                  fontSize: 25,
                  color: Colors.orange,
                ),
              ),
            ],)
        ],
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const myItemPage()),
          // );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
