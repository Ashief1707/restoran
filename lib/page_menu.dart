import 'package:flutter/material.dart';
import 'package:restoran/list_menu.dart';
import 'package:restoran/page_menu_detail.dart';
import 'package:restoran/style.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.menu,
  });

  final Listmenu menu;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailMenu(menu: menu,)));
      },
      child: Container(
        margin: EdgeInsets.all(3),
        height: 80,
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        
        decoration: const BoxDecoration(
          color: bglistmenu,
          borderRadius:BorderRadius.all(Radius.circular(10)),
          // boxShadow: [BoxShadow(
          //   color:  Colors.red,
          //   offset: Offset(1, 2),
          //   blurRadius: 6
          //   ),
          // ]
          ),
        child: Row(
          children: [
            gambarMenu(),
            SizedBox(width:13),
            deskripsiMenu(),
            Icon(
              Icons.food_bank,
              color: iconColor,
              size: 29,
            )
          ],
        ),
      ),
    );
  }

  ClipRRect gambarMenu() {
    return ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            menu.gambar,
            height: 65,
            width: 75,
            fit : BoxFit.cover
            ),
        );
  }

  Expanded deskripsiMenu() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              Container(
                margin: EdgeInsets.only(left: 1.4),
                child:  Text(
                menu.nama,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 17
                    ),
                  SizedBox(width: 3),
                  Text(
                    menu.rate,
                    style: TextStyle(
                      fontSize: 15
                    ),
                    ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.monetization_on,
                    size: 17
                    ),
                   SizedBox(width: 3),
                  Text(
                    menu.harga,
                    style: TextStyle(
                      fontSize: 15
                    ),
                    ),
                ],
              ),
        ],
      ),
    );
  }
}