// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blue.shade100,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Text(
                    "Глазные заболевания",
                    style: GoogleFonts.dmSerifDisplay(
                        color: Colors.black,
                        fontSize: 30,
                        height: 30 / 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    "Глаукома – болезнь, имеющая хронический характер. Из-за повышения давления внутри глаз происходит дисфункция зрительного нерва. Вследствие падает зрение, которое в дальнейшем может пропасть. Болезнь протекает очень быстро, поэтому больной рискует полностью потерять зрение, если будет оттягивать поход к врачу. Признаки: нарушение бокового зрения, чёрные пятна, «туманность» изображения, невозможность различить предметы в темноте, при ярком свете появляются цветные кольца.",
                    style: TextStyle(fontSize: 18, height: 2,color: Colors.black),
                  ),
                ),
                SizedBox(height: 10,),
                 Divider(thickness: 1,color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    "Ишемическая нейропатия оптического нерва – нарушение кровообращения во внутриглазном или внутриглазничном отделе. Симптомы: понижение остроты зрения, появление в некоторых областях «слепых» пятен. Уменьшение угла обзора.",
                    style: TextStyle(fontSize: 18, height: 2,color: Colors.black),
                  ),
                ),
                SizedBox(height: 10,),
                 Divider(thickness: 1,color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    "Неврит – инфекционное заболевание. Характерен воспалительный процесс в зрительном нерве. Признаки: потеря чувствительности в области вокруг глаза, боль, ослабление работы мышц, связанных со зрительным нервом.",
                    style: TextStyle(fontSize: 18, height: 2,color: Colors.black),
                  ),
                ),
                SizedBox(height: 10,),
                 Divider(thickness: 1,color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    "Атрофия нерва – болезнь, для которой характерна дисфункция проведения возбуждения. Нарушается цветовосприятие, угол обзора. Зрение падает, и человек может полностью ослепнуть.",
                    style: TextStyle(fontSize: 18, height: 2,color: Colors.black),
                  ),
                ),
                SizedBox(height: 10,),
                 Divider(thickness: 1,color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    "Блефарит – воспаление, возникающее по краям век. Симптомы: отек ткани, сопровождающийся жжением и покраснением. Больному кажется, что в глаз попала соринка. Присутствует зуд, характерные выделения. Яркий свет тяжёл для восприятия, слезоточивость, боль. Может появиться сухость глаз и шелушение краёв век. После сна на ресницах образуются гнойные струпья.",
                    style: TextStyle(fontSize: 18, height: 2,color: Colors.black),
                  ),
                ),
                 SizedBox(height: 10,),
                 Divider(thickness: 1,color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    "Криптофтальм – нераспространенная болезнь, при которой происходит сращивание краешков век. Это становится причиной сужения глазной щели или даже её исчезновения.",
                    style: TextStyle(fontSize: 18, height: 2,color: Colors.black),
                  ),
                ),
                 SizedBox(height: 10,),
                  Divider(thickness: 1,color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    "Лагофтальм – патология, характеризующаяся нарушением смыкания верхнего и нижнего века. В результате некоторые участки остаются открытыми постоянно, включая время сна.",
                    style: TextStyle(fontSize: 18, height: 2,color: Colors.black),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
