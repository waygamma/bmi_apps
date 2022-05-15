import 'dart:io';
import 'package:bmi_app/pages/profile_page.dart';
import 'package:bmi_app/pages/result_page.dart';
import 'package:bmi_app/template/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var size, height, width;
  var Toast = '';

  TextEditingController txt_tinggi = new TextEditingController();
  TextEditingController txt_berat = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(nameApps,
            style: GoogleFonts.raleway(
              color: Colors.white,
              fontSize: 20,
            )),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            },
            icon: Icon(
              Icons.person,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () => exit(0),
            icon: Icon(
              Icons.exit_to_app,
              size: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          height: height,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Body Mass Index",
              style: GoogleFonts.saira(
                color: mainColor,
                fontSize: 20,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Text(
                "Body Mass Index (BMI) atau Indeks Massa Tubuh (IMT) adalah angka yang menjadi penilaian standar untuk menentukan apakah berat badan Anda tergolong normal, kurang, berlebih, atau obesitas.",
                style: GoogleFonts.saira(
                  color: mainColor,
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.network(
              "https://www.gendhismanis.id/cni-content/uploads/modules/bmi/20200408114538.png",
              width: 350,
              height: 100,
            ),
            SizedBox(
              height: 25,
            ),
            // Container(
            //   height: 2,
            //   margin: EdgeInsets.symmetric(
            //     horizontal: 10,
            //   ),
            //   decoration: BoxDecoration(
            //       border: Border.all(
            //     color: mainColor,
            //   )),
            // ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Calculator BMI",
              style: GoogleFonts.saira(
                color: mainColor,
                fontSize: 18,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: mainColor,
                          width: 2.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: TextFormField(
                      controller: txt_tinggi,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          fillColor: mainColor,
                          prefixIcon: Icon(
                            Icons.height,
                            size: 30,
                            color: mainColor,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Input Height in cm"),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: mainColor,
                          width: 2.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: TextFormField(
                      controller: txt_berat,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      cursorColor: mainColor,
                      decoration: InputDecoration(
                          fillColor: mainColor,
                          prefixIcon: Icon(
                            Icons.scale_sharp,
                            size: 25,
                            color: mainColor,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Input Weight in Kg"),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: mainButton,
                    onPressed: () {
                      var tinggi, berat, hasil;
                      if (txt_tinggi.text.isEmpty || txt_berat.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Isi data terlebih dahulu!'),
                          ),
                        );
                      } else {
                        tinggi = int.parse(txt_tinggi.text);
                        berat = int.parse(txt_berat.text);
                        hasil = (berat / (tinggi * tinggi)) * 10000;

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ResultPage(nilai_hasil: hasil.toString()),
                          ),
                        );
                      }

                      // if (hasil == null) {
                      // } else if (hasil < 18) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       content: Text('Anda kurang berat badan!'),
                      //     ),
                      //   );
                      // } else if (hasil < 23) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       content: Text('Berat badan anda Normal, Good Job!'),
                      //     ),
                      //   );
                      // } else if (hasil < 25) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       content: Text('Anda kelebihan berat badan!'),
                      //     ),
                      //   );
                      // } else if (hasil < 30) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       content: Text('Anda Obesitas tingkat 1'),
                      //     ),
                      //   );
                      // } else if (hasil >= 30) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       content: Text('Anda Obesitas tingkat 2'),
                      //     ),
                      //   );
                      // }
                    },
                    child: Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.calculate),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Calculate",
                            style: GoogleFonts.saira(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Click calculate untuk melihat hasil",
              style: GoogleFonts.saira(
                color: mainColor,
                fontSize: 18,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
