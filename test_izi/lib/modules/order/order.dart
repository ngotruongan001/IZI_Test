import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/styles_text.dart';
import '../../utils/app_images.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var listDataDrink = [
    {
      "name": "Nước Chanh tươi",
      "price": "25.000",
      "image": AssetJPG.nuocchanh,
    },
    {
      "name": "Nước Chanh tươi",
      "price": "25.000",
      "image": AssetJPG.nuocchanh,

    },
    {
      "name": "Nước Chanh tươi",
      "price": "25.000",
      "image": AssetJPG.nuocchanh,

    },
  ];
  var listDataFood = [
    {
      "name": "Bánh mì phô mai đặt biệt",
      "price": "25.000",
      "image": AssetJPG.banhmi,
    },
    {
      "name": "Bánh mì phô mai đặt biệt",
      "price": "25.000",
      "image": AssetJPG.banhmi,
    },
    {
      "name": "Bánh mì phô mai đặt biệt",
      "price": "25.000",
      "image": AssetJPG.banhmi,
    },
    {
      "name": "Bánh mì phô mai đặt biệt",
      "price": "25.000",
      "image": AssetJPG.banhmi,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: 1.sw,
          height: 1.sh,
          child: Column(
            children: [
              _widgetTop(),
              _widgetBody(),
              _widgetBottom(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _widgetTop() {
    return SizedBox(
      width: 1.sw,
      height: 330,
      child: Column(
        children: [
          SizedBox(
            height: 250.h,
            width: 1.sw,
            child: Stack(
              children: [
                SizedBox(
                  width: 1.sw,
                  height: 250.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200.h,
                        width: 1.sw,
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage(AssetJPG.banhmi),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.r, bottom: 10.r),
                        child: const Text("Đang mở cửa"),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30.r,
                  width: 1.sw,
                  padding: EdgeInsets.only(
                    top: 10.r,
                    left: 8.r,
                    right: 8.r,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        size: 30.r,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.search,
                        size: 30.r,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 150.h,
                    width: 0.7.sw,
                    padding: EdgeInsets.only(
                        top: 10.r, left: 30.r, right: 30.r, bottom: 20.r),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14.r),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 12,
                              offset: Offset(1, 3),
                              spreadRadius: 2)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "ĐỐI TÁC CỦA DPFOOD",
                          style: StylesText.body2.copyWith(color: Colors.teal),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "BÁNH MỲ TÂY HẢI-12 CHÂU THỊ VĨNH TẾ",
                          style:
                          StylesText.header2.copyWith(color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "(1.2km) *Số 12 Châu Thị Vĩnh Tế - "
                              "Quận Ngũ Hành Sơn - Đà Nẵng",
                          style:
                          StylesText.caption1.copyWith(color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          _widgetMenu(),
        ],
      ),
    );
  }

  Widget _widgetMenu() {
    return Container(
      width: 1.sw,
      height: 80.h,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 1.r),
          bottom: BorderSide(color: Colors.grey, width: 1.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 5.r,),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Text("4.3 (20+)", style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black54
                  ),
                  ),
                  Container(
                    width: 1.sw,
                    padding: EdgeInsets.all(6.r),
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10.r)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ngon xỉu",
                          style: TextStyle(
                              fontSize: 14.sp
                          ),
                        ),
                        Text(
                          " (10+)",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.sp
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),

          SizedBox(width: 5.r,),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                children: [
                  Text("230 sp đã bán", style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black54

                  ),
                  ),
                  Container(
                    width: 1.sw,
                    padding: EdgeInsets.all(6.r),
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10.r)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ngon xỉu",
                          style: TextStyle(
                              fontSize: 14.sp
                          ),
                        ),
                        Text(
                          " (10+)",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.sp
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),

          SizedBox(width: 5.r,),

          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Text("Xem đánh giá", style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.red,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  Container(
                    width: 1.sw,
                    padding: EdgeInsets.all(6.r),
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10.r)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ngon xỉu",
                          style: TextStyle(
                              fontSize: 14.sp
                          ),
                        ),
                        Text(
                          " (10+)",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.sp
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          SizedBox(width: 5.r,),

        ],
      ),
    );
  }

  Widget _widgetBody() {
    return Expanded(child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 20.r, right: 20.r),
        child:  Column(
          children: [
            _widgetListDrink(),
            _widgetListFood(),
          ],
        ),
      ),
    ));
  }

  Widget _widgetBottom() {
    return Container(
      height: 80.h,
      width: 1.sw,
      padding: EdgeInsets.all(10.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60.r,
            width: 60.r,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(color: Colors.red, width: 2.r)
            ),
            child: Center(
              child: Icon(Icons.add_shopping_cart, size: 50.r,color: Colors.red,),
            ),
          ),
          InkWell(
            onTap: (){},
            child: Container(
              height: 50.r,
              width: 0.7.sw,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10.r)
              ),
              child: Center(
                child: Text("Trang thanh toán", style: StylesText.body4.copyWith(color: Colors.white),),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _widgetListDrink(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Nước uống", style: StylesText.body2.copyWith(color: Colors.black), ),
        _widgetListItem(listDataDrink),
      ],
    );
  }

  Widget _widgetListFood(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Món Ăn", style: StylesText.body2.copyWith(color: Colors.black), ),
        _widgetListItem(listDataFood),
      ],
    );
  }

  Widget _widgetListItem(List data){
    return Column(
      children: [
        for(var i in data) _widgetItem(image: i['image'],name: i['name'],price: i['price']),
        SizedBox(height: 10.r,)
      ],
    );
  }

  Widget _widgetItem({String? name, String? price, String? image}){
    return Container(
      width: 1.sw,
      padding: EdgeInsets.only(bottom: 20.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name ?? "Nước Chanh tươi", style: StylesText.body3.copyWith(color: Colors.black54,),),
              SizedBox(height: 20.r,),
              Text(price ?? "Nước Chanh tươi", style: StylesText.caption1.copyWith(color: Colors.grey,),),
            ],
          )),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20.r,
                width: 20.r,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 1.r)
                ),
                child: const Center(
                  child: Icon(Icons.add, color: Colors.red, size: 18,),
                ),
              ),
              SizedBox(width: 10.r,),
              Container(
                height: 80.r,
                width: 80.r,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    image: DecorationImage(
                        image: AssetImage(image ?? AssetJPG.nuocchanh),
                        fit: BoxFit.cover
                    )
                ),

              ),
            ],
          )),
        ],
      ),
    );
  }


}
