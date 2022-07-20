// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pkm2022/shared/shared.dart';
import 'package:pkm2022/ui/detailLelang.dart';
import 'package:pkm2022/ui/widget/widgets.dart';
import 'package:slide_countdown/slide_countdown.dart';

class Lelang extends StatefulWidget {
  Lelang({Key? key}) : super(key: key);

  @override
  State<Lelang> createState() => _LelangState();
}

class _LelangState extends State<Lelang> with SingleTickerProviderStateMixin {
  TextEditingController search = TextEditingController();
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bodyColor,
        appBar: AppBar(
          backgroundColor: mainColor,
          title: Center(
            child: SearchCustomWidget(
              controller: search,
              isShadow: false,
              height: 40,
            ),
          ),
          bottom: TabBar(
            controller: _tabController,
            // indicator: BoxDecoration(
            //   borderRadius: BorderRadius.circular(30), // Creates border
            //   color: mainColor,
            // ),
            labelStyle: whiteTextFontTitleBold,
            unselectedLabelStyle: greyTextFontTitleBold,
            unselectedLabelColor: greyColor,
            tabs: const [
              Tab(
                text: "Produk",
              ),
              Tab(
                text: "Lapak",
              ),
            ],
          ),
        ),
        body: TabBarView(controller: _tabController, children: [
          LelangPage1(),
          LelangPage2(),
        ]));
  }
}

class LelangPage1 extends StatelessWidget {
  const LelangPage1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        Column(
          children: List.generate(
            4,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin)
                  .copyWith(bottom: 15),
              child: cardLelang(),
            ),
          ),
        ),
        const Gap(
          20,
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     Text('Lelang Produk', style: bluefontStayle),
        //     InkWell(
        //       onTap: () {},
        //       child: Text('Lelang Produk >', style: greyFonstStayle2),
        //     )
        //   ],
        // ),
        // const Gap(
        //   20,
        // ),
        // SizedBox(
        //   height: 310,
        //   child: ListView.builder(
        //       //physics: ClampingScrollPhysics(),
        //       scrollDirection: Axis.horizontal,
        //       itemCount: 5,
        //       itemBuilder: (BuildContext context, int index) => Padding(
        //             padding: const EdgeInsets.only(left: 10.0),
        //             child: cardLelang(),
        //           )),
        // ),
        // const Gap(
        //   20,
        // ),
      ],
    );
  }
}

class LelangPage2 extends StatelessWidget {
  const LelangPage2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //const Gap(5),
          // Container(
          //   margin:
          //       const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          //   color: Colors.white,
          //   width: Get.width - 20,
          //   height: 60,
          //   child: Row(
          //     children: [
          //       const SizedBox(
          //         width: 10,
          //       ),
          //       Icon(
          //         Icons.search,
          //         color: greyColor,
          //       ),
          //       const SizedBox(
          //         width: 30,
          //       ),
          //       Text('Cari Lelang', style: greyFonstStayle)
          //     ],
          //   ),
          // ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Lelang Jasa', style: bluefontStayle),
              InkWell(
                onTap: () {},
                child: Text('Lelang Jasa >', style: greyFonstStayle2),
              )
            ],
          ),
          const Gap(
            20,
          ),
          SizedBox(
            height: 310,
            child: ListView.builder(
                //physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: cardLelang(),
                    )),
          ),
          const Gap(
            20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Lelang Produk', style: bluefontStayle),
              InkWell(
                onTap: () {},
                child: Text('Lelang Produk >', style: greyFonstStayle2),
              )
            ],
          ),
          const Gap(
            20,
          ),
          SizedBox(
            height: 310,
            child: ListView.builder(
                //physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: cardLelang(),
                    )),
          ),
          const Gap(
            20,
          ),
        ],
      ),
    );
  }
}

Widget cardLelang() {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  Duration _duration = Duration(seconds: 1000000);

  return InkWell(
    key: _scaffoldKey,
    hoverColor: Colors.blue.shade100,
    onTap: () {
      Get.to(DetailLelang());
    },
    child: Stack(
      children: [
        Card(
          elevation: 5,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white)),
          child: SizedBox(
            width: Get.width - 65,
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: "tag",
                  child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/4/14/16954b5f-679e-4bc6-9b3f-c10e54f34fe6.jpg',
                          ),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Lelang Baju', style: blackfontStayle),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.black45),
                      const SizedBox(width: 20),
                      Text('Lokasi Celeng, Lohbener', style: greyFonstStayle2),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.calendar_month, color: Colors.black45),
                      const SizedBox(width: 20),
                      Text('30/06/2022  ', style: greyFonstStayle2),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      const SizedBox(width: 45),
                      Text('Rp. 1.000.000', style: greyFonstStayle2),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10.0, right: 30),
          alignment: Alignment.topRight,
          child: SlideCountdown(
            decoration: BoxDecoration(
                color: redColor, borderRadius: BorderRadius.circular(20)),
            duration: const Duration(days: 2),
          ),
        )
      ],
    ),
  );
}
