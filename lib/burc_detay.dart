import 'package:burc_rehberi/burc_liste.dart';
import 'package:burc_rehberi/models/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  int gelenIndex;

  BurcDetay(this.gelenIndex);

  @override
  _BurcDetayState createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Burc secilenBurc;

  Color baskinRenk;
  PaletteGenerator paletteGenerator;

  @override
  void initState() {
    super.initState();
    secilenBurc = BurcListesi.tumBurclar[widget.gelenIndex];
    baskinRengiBul();
  }

  void baskinRengiBul() {
    Future<PaletteGenerator> fPaletGenerator =
        PaletteGenerator.fromImageProvider(
            AssetImage("images/" + secilenBurc.burcBuyukResim));
    fPaletGenerator.then((value) {
      paletteGenerator = value;
      setState(() {
        baskinRenk = paletteGenerator.dominantColor.color;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            //backgroundColor: Colors.pink,
            backgroundColor: baskinRenk != null ? baskinRenk : Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAdi + " Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset(
                "images/" + secilenBurc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.pink.shade50,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: SingleChildScrollView(
                child: Text(
                  secilenBurc.burcDetayi,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
