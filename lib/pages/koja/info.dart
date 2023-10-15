import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 100, 174, 234),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: Text(
                    "Кожные заболевания",
                    style: GoogleFonts.dmSerifDisplay(
                        color: Colors.black,
                        fontSize: 30,
                        height: 30 / 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    "Аллергический дерматит - Аллергический дерматит может вызвать что угодно – от стирального порошка до цветочной пыльцы или съеденной дольки апельсина. Спросим у врача, как быстро избавиться от зуда и раздражения, и какие эффективные методы профилактики существуют",
                    style: TextStyle(fontSize: 18, height: 2,color: Colors.black),
                  ),
                ),
                const SizedBox(height: 10,),
                 const Divider(thickness: 1,color: Colors.grey,),
                const Padding(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    "Церкариоз - Часто летом мы спасаемся от жары, купаясь в мелководных водоемах. Вот только есть опасность, что после купания вы покроетесь красными волдырями и начнете чесаться. Это может быть церкариоз",
                    style: TextStyle(fontSize: 18, height: 2,color: Colors.black),
                  ),
                ),
                const SizedBox(height: 10,),
                 const Divider(thickness: 1,color: Colors.grey,),
                const Padding(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    "Фурункул у взрослых - Почти все наше тело покрыто волосами, иногда волосяные фолликулы воспаляются, и на коже появляется болезненный гнойничок — фурункул",
                    style: TextStyle(fontSize: 18, height: 2,color: Colors.black),
                  ),
                ),
                const SizedBox(height: 10,),
                 const Divider(thickness: 1,color: Colors.grey,),
                const Padding(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    "Лишай у человека - Многие люди при упоминании слова «лишай» считают, что любые виды этой болезни опасны и заразны. Но существует много разных форм этих кожных патологий, и заразными из них являются единицы",
                    style: TextStyle(fontSize: 18, height: 2,color: Colors.black),
                  ),
                ),
                const SizedBox(height: 10,),
                 const Divider(thickness: 1,color: Colors.grey,),
                const Padding(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    "Стержневая мозоль - Механизм образования стержневой мозоли прост: из-за продолжительного трения или давления на коже образуется плотный участок омертвевшего эпидермиса, и он постепенно вдавливается в мягкие ткани, причиняя человеку дискомфорт",
                    style: TextStyle(fontSize: 18, height: 2,color: Colors.black),
                  ),
                ),
                 const SizedBox(height: 10,),
                 const Divider(thickness: 1,color: Colors.grey,),
                const Padding(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    "Бородавки на руках - Многие люди хотя бы раз в жизни сталкивались с бородавками. Это узловатые наросты, которые в основном поражают зоны подмышек, стопы ног, пальцы и кисти рук",
                    style: TextStyle(fontSize: 18, height: 2,color: Colors.black),
                  ),
                ),
                 const SizedBox(height: 10,),
                  const Divider(thickness: 1,color: Colors.grey,),
                const Padding(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    "Ангиома у взрослых - Наверное, каждый человек хоть в раз в жизни сталкивался с появлением странного красного пятнышка на теле. Это ангиома — доброкачественное образование, которое не причиняет дискомфорта",
                    style: TextStyle(fontSize: 18, height: 2,color: Colors.black),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}