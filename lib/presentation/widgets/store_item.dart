import 'package:GCPrice/data/model/store.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StoreWidget extends StatelessWidget {
  const StoreWidget(this.store, {Key key}) : super(key: key);
  final Store store;

  @override
  Widget build(BuildContext context) {
    String _imgUrl = "https://www.cheapshark.com";
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300],
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3)),
                ],
              ),
              height: 100.0,
              width: 200.0,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(store.storeName,
                  style: GoogleFonts.arvo(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 80.0,
              width: 80.0,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "$_imgUrl${store.images.logo}",
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300],
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 5)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
