import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

int sebhaCounter = 0;
int count = 0;
String tasbeh = "";

class _TasbehTabState extends State<TasbehTab> {
  //double anGle = 5;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 330,
              width: 260,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Image.asset('assets/images/head_sebha_logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 79),
              child: InkWell(
                highlightColor: Color(0x5CB7935F),
                borderRadius: const BorderRadius.all(
                  Radius.circular(500)
                ),
                onTap: () {
                  setState(() {
                    if (sebhaCounter < 33) {
                      sebhaCounter++;
                      if (count == 0) {
                        tasbeh = "سبحان الله";
                      }
                    } else if (sebhaCounter == 33) {
                      count++;
                      sebhaCounter = 1;
                      if (count == 1) {
                        tasbeh = "الحمد لله";
                      } else if (count == 2) {
                        tasbeh = "الله أكبر";
                      } else if (count == 3) {
                        count = 0;
                        tasbeh = "سبحان الله";
                      }
                    }
                  });
                },
                  child: Image.asset('assets/images/body_sebha_logo.png')
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "عدد التسبيحات",
          style: TextStyle(fontSize: 24, fontFamily: "El Messiri"),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0x8BB7935F),
            borderRadius: BorderRadius.circular(25.0),
          ),
          alignment: Alignment.center,
          width: 69,
          height: 81,
          padding: EdgeInsets.all(10),
          child: Text(
            "$sebhaCounter",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFB7935F),
            borderRadius: BorderRadius.circular(25.0),
          ),
          width: 137,
          height: 51,
          alignment: Alignment.center,
          child: Text(
            "$tasbeh",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontFamily: "El Messiri"),
          ),
        ),
        Container(
          width: double.infinity,
        ),
      ],
    );
  }
}
