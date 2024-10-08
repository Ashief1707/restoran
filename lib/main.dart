import 'package:flutter/material.dart';
import 'package:restoran/page_menu.dart';
import 'package:restoran/profil_data.dart';
import 'package:restoran/style.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:restoran/list_menu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {

  MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {

    List<Listmenu> menu = Listmenu.dummyData;

    return MaterialApp(
      title: 'Aplikasi Profil',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Nusantara Rasa",         
            style : TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
            ),
          ),
          backgroundColor: Color.fromARGB(255, 82, 104, 86),
          elevation: 0,
        ),
        backgroundColor:bgutama,
        body: SingleChildScrollView(
          padding: EdgeInsets.all(17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // teksKotak(Color(0xFF697565), 'Nusantara Rasa'),
              // SizedBox(height: 7),
              ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Image(
                  image: AssetImage('assets/${profil["image"]}')
                ),
              ),
              SizedBox(height: 10), 
              Row(children: [
                btnContact(Icon(Icons.email), Color.fromARGB(255, 131, 9, 0), "mailto: ${profil['email']}"),
                btnContact(Icon(Icons.pin_drop), const Color.fromARGB(255, 0, 71, 129), "https:www.google.com/maps/search/?api=1&query=${profil['address']}"),
                btnContact(FaIcon(FontAwesomeIcons.whatsapp), const Color.fromARGB(255, 0, 163, 5), "https://wa.me/${profil['phone']}" )
              ],),
              SizedBox(height: 10),
              teksKotak(Icon(Icons.description), Color(0xFF88AB8E), 'Deskripsi'),
              SizedBox(height: 10),
              Text(
                profil['description'] ?? '',
                style: TextStyle(fontSize: 16),
                ),
              // Ubah bagian ini
              SizedBox(height: 10),
              teksKotak(Icon(Icons.list_alt),Color(0xFF88AB8E), 'List Menu'),
              SizedBox(height: 10),
              ListView.builder(
                itemCount: menu.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListItem(menu: menu[index]),
                      SizedBox(height: 6)
                    ],
                  );
                },
                shrinkWrap: true, // Tambahkan ini untuk membatasi tinggi ListView
                physics: NeverScrollableScrollPhysics(), // Menonaktifkan scroll pada ListView
              ),
              SizedBox(height: 8),
              teksKotak(Icon(Icons.map),Color(0xFF88AB8E), 'Alamat  '),
              SizedBox(height: 10),
              Text(
                profil['address'] ?? '',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              teksKotak(Icon(Icons.schedule),Color(0xFF88AB8E), 'Jam Buka  '),
              SizedBox(height: 10),
              Text(
                profil['openingHours'] ?? '',
                style : TextStyle(fontSize : 16),
              ),
            ]),
        ),
      ),
    );
  }

  Expanded btnContact(Widget icon, var color, String url) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5), // Atur padding 
        child: ElevatedButton(
          onPressed: () {
            launch(url);
          },
          child: icon,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.white,
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            shape : RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            ),
          ),
        ),
      ),
    );
  }


  void launch(String uri) async {
    if(!await launchUrl(Uri.parse(uri))) {
      throw Exception('Tidak dapat memanggil $uri');
    }
  } 


  Container teksKotak(Icon iconapp, bgColor, String teks) {
  return Container(
    padding: EdgeInsets.all(10),
    alignment: Alignment.center,
    width: double.infinity,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(7),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconapp.icon,
          color:  Colors.white,
        ),
        SizedBox(width: 5), // Memberikan jarak antara ikon dan teks
        Text(
          teks,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
  }


}

