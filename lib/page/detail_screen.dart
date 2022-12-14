import 'package:banjaloka/constants/currency_format.dart';
import 'package:banjaloka/model/model_item_segera.dart';
import 'package:banjaloka/theme/theme.dart';
import 'package:banjaloka/widget/widget_appbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:photo_view/photo_view.dart';

import '../bloc/business_bloc.dart';
import '../bloc/business_event.dart';
import '../bloc/business_state.dart';
import '../respository/bussines_repo.dart';

class DetailScreen extends StatelessWidget {
  // final BussinesSoon business ;
  // DetailScreen(this.business) ;
  static const routeName = '/detail-screen';

  // static const List<String> images = [
  //   'asset/store1.jpg',
  //   'asset/store2.jpg',
  //   'asset/store3.jpg',
  //   'asset/store4.jpg',
  //   'asset/store5.jpg',
  // ];

  static const List<String> tabs = [
    "Finansial",
    "Tentang Bisnis",
    "Kategori",
    "Lokasi",
    "Kalkulator Investasi"
  ];

  static const Map<String, dynamic> kategori = {
    'image': [
      'asset/category.png',
      'asset/card_travel.png',
      'asset/local_atm.png'
    ],
    'title': ['Kategori Bisnis', 'Pemilik Bisnis', 'Minimum Investasi'],
    'sub': ['Food & Beverages', 'PT. ABC Merdeka', 'Rp 50.000']
  };

  @override
  Widget build(BuildContext context) {
    final bussinesBloc = BusinessBloc(BusinessRepositories())..add(BusinessLoadingEvent()) ;

    return SafeArea(
      child: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: buildAppBar(context, 'Detail Bisnis'),
          body: BlocBuilder<BusinessBloc , BusinessState>(
            bloc: bussinesBloc,
            builder: ( context, state) {
              if (state is LoadingBusinessState){
                return Center(child: CircularProgressIndicator(),) ;
              } else if ( state is DetailStateLoaded) {
                BussinesSoon business = state.busines ;
                return Stack(
                  children: [
                    NestedScrollView(
                      headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
                        SliverAppBar(
                          pinned: false,
                          snap: false,
                          floating: false,
                          automaticallyImplyLeading: false,
                          backgroundColor: Colors.transparent,
                          expandedHeight: 200,
                          flexibleSpace: FlexibleSpaceBar(
                            background: CarouselSlider.builder(
                              options: CarouselOptions(
                                height: 200,
                                pageSnapping: true,
                                viewportFraction: 1,
                              ),
                              itemCount: business.image.length,
                              itemBuilder: (context, index, realIndex) =>
                                  CarouselImages(
                                    index: index,
                                    images: business.image,
                                  ),
                            ),
                          ),
                        ),
                        SliverPersistentHeader(
                          pinned: true,
                          delegate: MyHeader(tabs, business),
                        ),
                      ],
                      body:  TabBarView(
                        children: [
                          Finansial(business),
                          TentangBisnis(business),
                          Kategori(),
                          Lokasi(business),
                          KalkulatorInvetasi(),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 72,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey[50],
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0),
                              blurRadius: 3,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              // backgroundColor: primaryBlue6,
                              primary: primaryBlue6,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            child: const Text(
                              'Ajukan Agenda',
                              style: TextStyle(fontSize: 16),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    )
                  ],
                ) ;
              } else if (state is BusinessErrorState ) {
                return Text('eror') ;
              } else {
                return Container() ;
              }
            },
          ) ,
        ),
      ),
    );
  }

  Widget Finansial(BussinesSoon business){
    return ListView(
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 88),
      children: [
        Text(
          'Total investasi yang dibagikan',
          style: subtitle,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '${business.nilaiBisnis} %',
          style: subtitleBold,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Waktu balik modal',
          style: subtitle,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '12 - 24 bulan',
          style: subtitleBold,
        ),
      ],
    );
  }

  Widget TentangBisnis(BussinesSoon business){
    return ListView(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 88),
      children: [
        Text(
          business.tentangBisnis,
          textAlign: TextAlign.justify,
          style: subtitle,
        ),
      ],
    );
  }

  Widget KalkulatorInvetasi(){
    return const Text('asd');
  }

  Widget Lokasi(BussinesSoon business){
    return  Text(business.lokasi);
  }

  Widget Kategori(){
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 88),
      itemCount: 3,
      itemBuilder: ((context, index) => ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          width: 42,
          height: 42,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: primaryBlue1,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Image.asset(kategori['image'][index]),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Text(
            kategori['title'][index],
            style: subtitle,
          ),
        ),
        subtitle: Text(
          kategori['sub'][index],
          style: subtitleBold,
        ),
      )),
    );
  }
}

class MyHeader extends SliverPersistentHeaderDelegate {
  final List<String> tabs;
  final BussinesSoon business ;

  MyHeader(this.tabs , this.business);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.grey[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text(
                      business.judul,
                      style: titleList,
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                    ),
                  ),
                ),
                DottedBorder(
                  color: primaryBlue6,
                  radius: const Radius.circular(8),
                  strokeWidth: 2,
                  borderType: BorderType.RRect,
                  dashPattern: const [4, 3],
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: const BoxDecoration(border: Border()),
                    child: Text(
                      'Clothing',
                      style: detailBadge,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 4, 24, 0),
            child: Text(
              business.perusahaan,
              style: subtitle,
              maxLines: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 12, 24, 0),
            child: Text(
              business.lokasi,
              style: subtitle,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
            decoration: BoxDecoration(
              color: primaryBlue1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    CurrencyFormat.convertToIdn(business.hasilInvestasi).toString(),
                    style: bigTitle,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'dari target ' +   CurrencyFormat.convertToIdn(business.price).toString(),
                    style: subtitle,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: LinearPercentIndicator(
                    barRadius: const Radius.circular(20),
                    lineHeight: 8,
                    percent: 0.5,
                    progressColor: primaryBlue6,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    '${business.jumlahInvestor} investor',
                    style: subtitleBold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.grey[50],
              automaticallyImplyLeading: false,
              bottom: TabBar(
                unselectedLabelColor: neutralGrey3,
                labelColor: primaryBlue6,
                indicatorColor: primaryBlue6,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                labelStyle: selectedLabel,
                unselectedLabelStyle: unselectedLabel,
                isScrollable: true,
                tabs: [
                  for (final tab in tabs)
                    Tab(
                      text: tab,
                    )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 299;

  @override
  double get minExtent => 299;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

// aman
class CarouselImages extends StatelessWidget {
  final int index;
  final List<String> images;
  const CarouselImages({
    required this.index,
    required this.images,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Colors.grey),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return DetailImage(images[index]);
              }));
            },
            child: Hero(
              tag: 'image',
              child: Image.asset(
                images[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Wrap(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: neutralGrey4.withAlpha(220),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: Text(
                  '${index + 1}/${images.length}',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class DetailImage extends StatelessWidget {
  final String image;
  const DetailImage(this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    AppBar myAppBar() {
      return AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      );
    }

    return Scaffold(
      appBar: myAppBar(),
      body: Container(
        padding: EdgeInsets.only(bottom: myAppBar().preferredSize.height),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Hero(
          tag: 'image',
          child: PhotoView(
            imageProvider: AssetImage(image),
            backgroundDecoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
