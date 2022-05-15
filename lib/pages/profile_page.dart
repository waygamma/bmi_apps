import 'package:bmi_app/template/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  var _imageUrl =
      'https://scontent.fcgk8-2.fna.fbcdn.net/v/t1.6435-9/129658219_1861134047370254_1721803677996583524_n.jpg?_nc_cat=107&ccb=1-6&_nc_sid=174925&_nc_eui2=AeHE5IiHEfsftAwqnpvr--mnL8MZfv0g32cvwxl-_SDfZ-jZ3kcjbQeZ15-tD1c22e4cei9EcyZJT9Yhd286gKg6&_nc_ohc=jDTOo7jgd7YAX-WyZwC&_nc_ht=scontent.fcgk8-2.fna&oh=00_AT9LdZE7UTjakgdIz09NWK6MLe_rr5SNQE894RaaIi0PDw&oe=62A6495D';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          'BMI Apps Developer',
          style: GoogleFonts.raleway(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.network(
                _imageUrl,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Wahyu Gamma Gene',
              style: GoogleFonts.raleway(
                color: mainColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Flutter Developer',
              style: GoogleFonts.raleway(
                color: mainColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
