import 'package:GCPrice/data/model/store.dart';
import 'package:GCPrice/domain/getStoresUC.dart';
import 'package:GCPrice/presentation/widgets/store_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StoresPage extends StatelessWidget {
  const StoresPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetStoresUseCase getStoresUseCase = GetStoresUseCase();

    return Container(
      height: MediaQuery.of(context).size.height,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Videogames Stores',
                  textAlign: TextAlign.center, style: GoogleFonts.arvo()),
              background: Image.asset(
                'assets/headergif.gif',
              ),
            ),
          ),
          SliverFillRemaining(
            child: Container(
              child: FutureBuilder(
                  future: getStoresUseCase.getStores(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<Store>> snapshot) {
                    if (snapshot.hasData) {
                      return GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return StoreWidget(snapshot.data[index]);
                          // ? ListTile(
                          //     title: Text(snapshot.data[index].storeName),
                          //     leading: CircleAvatar(
                          //       backgroundImage: NetworkImage(
                          //           "$_imgUrl${snapshot.data[index].images.logo}"),
                          //     ),
                          //   )
                        },
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }),
            ),
          )
        ],
      ),
    );
  }
}
