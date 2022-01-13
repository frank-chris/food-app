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
      // ctrl + .
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 36, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
              mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/zy6ymtixm4vtjuhakijm"
              ),
            ),
            SizedBox(height : 18),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center ,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Masala Dosa",
                  style: GoogleFonts.inter(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                TextButton(onPressed: (){}, child: Text("Add to cart", )),
              ],),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Icon(Icons.map, color: Colors.orange,),
                Icon(Icons.star, color: Colors.blue,),
                Icon(Icons.star_rounded, color: Colors.purple,),
                Icon(Icons.accessible_forward, color: Colors.cyan.withOpacity(.8),),
              ],),
              SizedBox(height : 12),
              Text("Description",  style: GoogleFonts.inter(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
              Text("Masala dosa is a variation of the popular South Indian dosa, which has its origins in Tuluva Udupi cuisine of Karnataka.[1] It is made from rice, lentils, potato, fenugreek, ghee and curry leaves, and served with chutneys and sambar. It is popular in South India,[2] it can be found in all other parts of the country[3][4] and overseas.[5][6] ")
          ],
          ),
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
