import 'package:banjaloka/theme/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:photo_view/photo_view.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);
  static const routeName = '/detail-screen';

  static const List<String> images = [
    'asset/store1.jpg',
    'asset/store2.jpg',
    'asset/store3.jpg',
    'asset/store4.jpg',
    'asset/store5.jpg',
  ];

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
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[50],
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          elevation: 0,
          title: const Text(
            'Detail Bisnis',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          titleSpacing: 0,
        ),
        body: Stack(
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
                      itemCount: images.length,
                      itemBuilder: (context, index, realIndex) =>
                          CarouselImages(
                        index: index,
                        images: images,
                      ),
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: MyHeader(tabs),
                ),
              ],
              body: TabBarView(
                children: [
                  ListView(
                    primary: false,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.fromLTRB(24, 16, 24, 88),
                    children: const [
                      Text('Total investasi yang dibagikan'),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '40%',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text('Waktu balik modal'),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '12 - 24 bulan',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  ListView(
                    padding: const EdgeInsets.fromLTRB(24, 16, 24, 88),
                    children: [
                      Text(
                        lorem(),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                  ListView.builder(
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
                              style: const TextStyle(
                                  color: Colors.black54, fontSize: 14),
                            ),
                          ),
                          subtitle: Text(
                            kategori['sub'][index],
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                  ),
                  const Text('asd'),
                  const Text('asd'),
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
                      primary : primaryBlue6,
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
        ),
      ),
    );
  }
}

class MyHeader extends SliverPersistentHeaderDelegate {
  final List<String> tabs;

  MyHeader(this.tabs);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      color: Colors.grey[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(24, 16, 24, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Text(
                      'Polo Clothes',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
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
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: primaryBlue6,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 4, 24, 0),
            child: Text(
              'PT Polo Indonesia     ',
              style: TextStyle(fontSize: 14),
              maxLines: 1,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 12, 24, 0),
            child: Text(
              'Jakarta',
              style: TextStyle(fontSize: 14),
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Rp 12.500.000',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'dari target Rp 25.000.000',
                    style: TextStyle(
                      fontSize: 14,
                    ),
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    '6 investor',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
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
  double get maxExtent => 293;

  @override
  double get minExtent => 293;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

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
