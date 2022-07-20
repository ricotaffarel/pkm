import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:pkm2022/shared/shared.dart';
import 'package:pkm2022/ui/widget/widgets.dart';
import 'package:slide_countdown/slide_countdown.dart';

class DetailLelang extends StatefulWidget {
  DetailLelang({Key? key}) : super(key: key);

  @override
  State<DetailLelang> createState() => _DetailLelangState();
}

class _DetailLelangState extends State<DetailLelang> {
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      bottomNavigationBar: Container(
          width: double.infinity,
          child: Row(
            children: [
              const SizedBox(
                height: 50,
                width: 100,
                child: Center(
                  child: Icon(
                    Icons.message,
                    color: mainColor,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  color: mainColor,
                  // padding:EdgeInsets.symmetric(horizontal:)
                  child: Center(
                      child: TextButton(
                    onPressed: () {
                      Get.toEnd(() => showCupertinoModalPopup(
                          context: context, builder: (context) => getLelang()));
                    },
                    child: Text('Ambil Lelang', style: whiteTextFontTitleBold),
                  )),
                ),
              )
            ],
          )),
      body: ListView(
        children: [
          Stack(
            children: [
              // Container(
              //   color: Colors.blue,
              // ),
              GestureDetector(
                onTap: () {
                  Get.to(() => PhotoView(
                        imageProvider: NetworkImage(
                            "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/4/14/16954b5f-679e-4bc6-9b3f-c10e54f34fe6.jpg"),
                      ));
                },
                child: Hero(
                  tag: "tag",
                  child: Container(
                      width: double.infinity,
                      height: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/4/14/16954b5f-679e-4bc6-9b3f-c10e54f34fe6.jpg'),
                            fit: BoxFit.cover),
                      )),
                ),
              ),
              Container(
                height: 30,
                width: 30,
                margin: const EdgeInsets.only(left: 20, top: 30),
                padding: const EdgeInsets.only(bottom: 8),
                decoration: const BoxDecoration(color: Colors.white),
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // shrinkWrap: true,
                  // physics: AlwaysScrollableScrollPhysics(),
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              bottom: 10.0, right: defaultMargin),
                          child: SlideCountdown(
                            decoration: BoxDecoration(
                                color: redColor,
                                borderRadius: BorderRadius.circular(20)),
                            duration: const Duration(days: 2),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      margin: const EdgeInsets.only(bottom: 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Lelang Baju', style: blackfontStayle),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 20),
                                  decoration: BoxDecoration(
                                      color: accentColor1,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 11, right: 11, top: 5),
                                        child: Text('Harga Awal',
                                            style: blackTextFont),
                                      ),
                                      const SizedBox(height: 5),
                                      Text('Rp. 1.000.000',
                                          style: blueTextFontTitleBold),
                                      const SizedBox(height: 5),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(right: 20),
                                  decoration: BoxDecoration(
                                      color: redColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 11, right: 11, top: 5),
                                        child: Text('Harga Saat Ini',
                                            style: whiteTextFont),
                                      ),
                                      const SizedBox(height: 5),
                                      Text('Rp. 1.000.000',
                                          style: whiteTextFontTitleBold),
                                      const SizedBox(height: 5),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            thickness: 5,
                            color: greyColor2,
                          ),
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 3, bottom: 3),
                            padding: const EdgeInsets.only(left: 20),
                            child:
                                Text('Rincian Lelang', style: blackfontStayle2),
                          ),
                          const Divider(thickness: 2, color: greyColor2),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text('Lokasi Lelang',
                                    style: blackfontStayle3),
                              ),
                              const SizedBox(
                                width: 22,
                              ),
                              Text(': Celeng, Lohbener',
                                  style: blackfontStayle3),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text('Waktu Lelang',
                                    style: blackfontStayle3),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(': 1 Bulan', style: blackfontStayle3),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child:
                                    Text('Kategori', style: blackfontStayle3),
                              ),
                              const SizedBox(
                                width: 53,
                              ),
                              Text(': Jasa', style: blackfontStayle3),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Divider(
                            thickness: 5,
                            color: greyColor2,
                          ),
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 3, bottom: 3),
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('Deskripsi', style: blackfontStayle2),
                          ),
                          Divider(
                            thickness: 2,
                            color: greyColor2,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 10),
                            child: Text(
                                'Lelang baju 50 pcs\nBahan cotton combed 30s\nHarga silahkan tawarkan sajaLelang baju 50 pcs\nBahan cotton combed 30s\nHarga silahkan tawarkan sajaLelang baju 50 pcs\nBahan cotton combed 30s\nHarga silahkan tawarkan sajaLelang baju 50 pcs\nBahan cotton combed 30s\nHarga silahkan tawarkan sajaLelang baju 50 pcs\nBahan cotton combed 30s\nHarga silahkan tawarkan sajaLelang baju 50 pcs\nBahan cotton combed 30s\nHarga silahkan tawarkan sajaLelang baju 50 pcs\nBahan cotton combed 30s\nHarga silahkan tawarkan sajaLelang baju 50 pcs\nBahan cotton combed 30s\nHarga silahkan tawarkan saja'),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget getLelang() {
  TextEditingController? harga = TextEditingController();
  TextEditingController? deskripsi = TextEditingController();
  return Material(
      //backgroundColor: Colors.transparent,
      child: Container(
          height: Get.height / 2,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: accentColor1,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  Form(
                    autovalidateMode: AutovalidateMode.always,
                    onChanged: () {
                      Form.of(primaryFocus!.context!)?.save();
                    },
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          "Tawarkan Lelang",
                          style: blackTextFontTitle,
                        ),
                        const SizedBox(height: 30),
                        Container(
                          margin: const EdgeInsets.only(left: 30, right: 30),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: CupertinoTextFormFieldRow(
                            placeholder: 'Harga Yang Ditawarkan',
                            style: blackTextFont,
                            controller: harga,
                            maxLines: 1,
                            padding: const EdgeInsets.all(18),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Isi Kolom';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30, right: 30),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: mainColor.withAlpha(10),
                                    offset: Offset(10, 10),
                                    blurRadius: 10)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: CupertinoTextFormFieldRow(
                            inputFormatters: [
                              FilteringTextInputFormatter.deny(RegExp('[ a-z]'))
                            ],
                            placeholder: 'Deskripsi Tawarkan',
                            style: blackTextFont,
                            controller: deskripsi,
                            maxLines: 2,
                            padding: const EdgeInsets.all(18),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Isi Kolom';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CupertinoButton(
                          disabledColor: whiteColor,
                          child: Text("Ambil Lelang",
                              style: whiteTextFontTitleBold),
                          onPressed: () {},
                          color: mainColor,
                        )
                      ],
                    ),
                  )
                ]),
              )
            ],
          )));
}
