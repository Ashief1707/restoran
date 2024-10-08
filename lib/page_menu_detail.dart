import 'package:flutter/material.dart';
import 'package:restoran/list_menu.dart';
import 'package:restoran/style.dart';

class DetailMenu extends StatelessWidget {

  final Listmenu menu;

  DetailMenu({super.key, required this.menu});
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white
          ),
          centerTitle: true,
          title: 
              const Text(
                "Nusantara Rasa",         
                style : TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white
                ),
              ),
          backgroundColor: Color.fromARGB(255, 82, 104, 86),
          elevation: 0,
        ),
        backgroundColor: bgutama,
        body: SingleChildScrollView(
          padding: EdgeInsets.all(17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children:[ 
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(menu.gambar, scale: 0.5),
                  ),
                  ],
              ),
              SizedBox(height: 15),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                      menu.nama,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        )
                      ),
                      ButtonFavorite(),
                   ],
                 ),
              
              Column(
                children: [
                  RateKategori(Icons.star, menu.rate),
                  RateKategori(Icons.restaurant, menu.kategori),
                  SizedBox(height: 4),
                  StyleHarga(Icons.monetization_on, menu.harga),
                ],
              ),
              SizedBox(height: 3),
              Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  textAlign: TextAlign.left,
                    menu.deskripsi,
                    style: TextStyle(
                      fontSize:15,
                    ),
                ),
              ),
              SizedBox(height:7),
              Container(
                alignment: Alignment.center,
                child: Text("Bahan Racikan", 
                style: TextStyle(
                  fontSize : 21,
                  fontWeight: FontWeight.bold,
                ))
              ),
              SizedBox(height:12),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: menu.bahan.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 90,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(right:10),
                      decoration: 
                        BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bglistmenu,
                          ),
                      child: Column(
                        children: [
                          Image.asset(menu.bahan[index].values.first, width: 52),
                          Text(menu.bahan[index].keys.first)
                          ],
                      ),
                    );
                  }
                ),
              )
            ],
          ),
          )
      ),
    );
  }

  Row RateKategori(IconData icon, String teks) {
    return Row(
                  children: [
                    Icon(icon, color: Colors.black, size:17),
                    SizedBox(width: 5),
                    Text(
                      teks,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                );
  }

    Row StyleHarga(IconData icon, String teks) {
    return Row(
                  children: [
                    Icon(icon, color: Colors.black, size:19),
                    SizedBox(width: 5),
                    Text(
                      teks,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                );
  }
  
}

class ButtonBack extends StatelessWidget {
  const ButtonBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon : const Icon(
          Icons.arrow_back_rounded,
           color: Colors.white)
      )
    );
  }
}

class ButtonFavorite extends StatefulWidget {
  const ButtonFavorite({
    super.key,
  });
  
  @override
  State<StatefulWidget> createState() => _ButtonFavorite();
}

class _ButtonFavorite extends State<ButtonFavorite>{

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: bgutama,
      child: IconButton(
        onPressed: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        icon : Icon(
          isSelected ? Icons.favorite : Icons.favorite_outline,
          color: const Color.fromARGB(255, 255, 0, 0),
          size: 26,
          )
      )
    );
  }

}