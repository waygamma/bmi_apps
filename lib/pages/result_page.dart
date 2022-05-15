import 'dart:ui';

import 'package:bmi_app/template/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatelessWidget {
  //constructor
  ResultPage({required this.nilai_hasil});

  //properti
  String nilai_hasil;

  Widget result_bmi(image, title, detail) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        children: [
          Text(
            'Hasil BMI anda :',
            style: GoogleFonts.raleway(
              color: mainColor,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/$image',
            width: 200,
          ),
          Text(
            title,
            style: GoogleFonts.raleway(
              color: mainColor,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '"$detail"',
            textAlign: TextAlign.center,
            style: GoogleFonts.raleway(
              color: mainColor,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          nameApps,
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
            //menampilkan title yang dikirm
            double.parse(nilai_hasil) < 18.5
                ? result_bmi('underweight.png', 'Anda kekurangan berat badan!',
                    'Anda harus lebih banyak mengkonsumsi makanan ber karbohidrat.')
                : double.parse(nilai_hasil) < 24.9
                    ? result_bmi(
                        'normal.png',
                        'Berat badan anda Normal, Good Job!',
                        'Olahraga yang cukup dan makan buah buahan agar menjaga kesehatan dan kebugaran anda.')
                    : double.parse(nilai_hasil) < 29.9
                        ? result_bmi(
                            'overweight.png',
                            'Anda kelebihan berat badan!',
                            'Kurangi makanan ber karbohidrat lebih.')
                        : double.parse(nilai_hasil) < 34.9
                            ? result_bmi(
                                'obese1.png',
                                'Anda Obesitas tingkat 1',
                                'Kurangi makanan ber karbohidrat tinggi dan lakukan diet untuk menjaga keseimbangan masa tubuh anda.')
                            : double.parse(nilai_hasil) > 35
                                ? result_bmi(
                                    'obese2.png',
                                    'Anda Obesitas tingkat 2',
                                    'Kurangi makanan ber karbohidrat tinggi dan lakukan diet secara rutin untuk menjaga keseimbangan masa tubuh anda.')
                                : Container(),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: mainColor,
                  ),
                  Text(
                    'Back',
                    style: GoogleFonts.raleway(
                      color: mainColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
