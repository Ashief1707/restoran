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
                        fontSize: 21,
                        )
                      ),
                      ButtonFavorite(),
                   ],
                 ),
              
              Column(
                children: [
                  RateKategori(Icons.star, menu.rate, Colors.orange),
                  RateKategori(Icons.category, menu.kategori, Colors.black),
                  SizedBox(height: 4),
                  StyleHarga(Icons.monetization_on, menu.harga),
                ],
              ),
              SizedBox(height: 1),
              Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  textAlign: TextAlign.left,
                    menu.deskripsi,
                    style: TextStyle(
                      fontSize:16,
                    ),
                ),
              ),
              SizedBox(height:7),
              Container(
                child: Text("Apa kata orang-orang", 
                style: TextStyle(
                  fontSize : 20,
                  fontWeight: FontWeight.bold,
                ))
              ),
              SizedBox(height:12),
              SizedBox(
                height: 105,
                child: ListView.builder(
                  itemCount: menu.ulasan.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 310,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(right:10),
                      decoration: 
                        BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bglistmenu,
                          ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            menu.ulasan[index].values.last,
                            style: TextStyle(fontSize: 15),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.bottomLeft,
                              child: Row(
                                children: [
                                  RateUlasan(Icons.star, menu.rate, Colors.orange),
                                  SizedBox(width: 3),
                                  Text(
                                    "•",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 3),
                                  Text(menu.ulasan[index].values.first)
                                ],
                              ),
                            ),
                          ),
                          ],
                      ),
                    );
                  }
                ),
              ),
              SizedBox(height: 16),
              Container(
                child: Text("........", 
                style: TextStyle(
                  fontSize : 21,
                  fontWeight: FontWeight.bold,
                ))
              ),
            ],
          ),
          )
      ),
    );
  }

  Row RateKategori(IconData icon, String teks, color) {
    return Row(
                  children: [
                    Icon(icon, color: color, size:18),
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

    Row RateUlasan(IconData icon, String teks, color) {
    return Row(
                  children: [
                    Icon(icon, color: color, size:16),
                    SizedBox(width: 1),
                    Text(
                      teks,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                );
  }

    Row StyleHarga(IconData icon, String teks) {
    return Row(
                  children: [
                    Icon(icon, color: Colors.green, size:20),
                    SizedBox(width: 3),
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