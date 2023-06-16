import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_izi/common/widget/text_field/main_textfield.dart';
import 'package:test_izi/theme/app_colors.dart';
import 'package:test_izi/theme/theme_constants.dart';
import 'package:test_izi/utils/app_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  widgetTitle(),
                  widgetSearchBar(),
                  widgetSlideBar(),
                  widgetCategory(),
                  widgetTitleHot(),
                  widgetListPromo(),
                  widgetListTopHot(),
                ],
              ),
            ),
      ),
    );
  }

  Widget widgetTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: SizedBox(
        width: 0.9.sw,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.location_on,
                      color: Colors.yellow,
                    ),
                    Text('123 Châu Vĩnh Tế'),
                    Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.black, size: 15),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.notifications_active_rounded,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.menu,
                      color: Colors.grey,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget widgetSearchBar() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      width: 0.8.sw,
      height: 50.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          SizedBox(
              width: 0.6.sw,
              child: MainTextField(
                hint: 'Tìm kiếm nhà hàng, món ăn',
                controller: _controller,
              ))
        ],
      ),
    );
  }

  Widget widgetSlideBar() {
    return Padding(
      padding: EdgeInsets.only(top:10.h),
      child: SizedBox(
        height: 220.h,
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.white
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Image.asset(AssetPNG.banner,height: 150.h,fit: BoxFit.cover,)),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.white
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Image.asset(AssetPNG.banner,height: 150.h,fit: BoxFit.cover,)),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.white
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Image.asset(AssetPNG.banner,height: 150.h,fit: BoxFit.cover,)),
            ),
          ],
        ),
      ),
    );
  }

  Widget widgetCategory() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child:
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(padding:EdgeInsets.only(bottom: 10.h) ,
            child: Text('Danh mục',style: StylesText.header1,)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: 45.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    color: AppColors.primary1
                  ),
                    child: Image.asset(
                  AssetPNG.rice,
                )),
                const Text("Cơm"),
              ],
            ),
            Column(
              children: [
                Container(
                    width: 45.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primary1
                    ),
                    child: Image.asset(
                      AssetPNG.rice,
                    )),
                const Text("Bún/Phở"),
              ],
            ),
            Column(
              children: [
                Container(
                    width: 45.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primary1
                    ),
                    child: Image.asset(
                      AssetPNG.rice,
                    )),
                const Text("Đồ Uống"),
              ],
            ),
            Column(
              children: [
                Container(
                    width: 45.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primary1
                    ),
                    child: Image.asset(
                      AssetPNG.rice,
                    )),
                const Text("Đồ ăn "),
              ],
            ),
            Column(
              children: [
                Container(
                    width: 45.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primary1
                    ),
                    child: Image.asset(
                      AssetPNG.rice,
                    )),
                const Text("Đặc sản"),
              ],
            )
          ],
        ),
        const SizedBox(height: 20 ,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                    width: 45.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primary1
                    ),
                    child: Image.asset(
                      AssetPNG.rice,
                    )),
                const Text("Đặc sản"),
              ],
            ),
            const SizedBox(width: 30 ,),
            Column(
              children: [
                Container(
                    width: 45.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primary1
                    ),
                    child: Image.asset(
                      AssetPNG.rice,
                    )),
                const Text("Trà sửa"),
              ],
            ),
          ],
        )
      ],
    ),
    );
  }

  Widget widgetTitleHot(){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 20.w),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Đến với D&P Food chỉ có mê',style: StylesText.header1,),
          Text('Xem thêm >>',style: StylesText.body3,),
        ],
      ),
    );
  }

  Widget widgetListPromo(){
    return Container(
      margin:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
      height: 140,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 100,
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(AssetJPG.banhmi,fit: BoxFit.cover,)),
                  ),
                  Container(
                      width: 100,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(height: 5),
                            Text("Shushi hai nam ...", overflow: TextOverflow.ellipsis,),
                            SizedBox(height: 5),
                            Text("4.3 (20+)",),

                          ]
                      )
                  )
                  ,
                ]
            ),
          ),
          Container(
            width: 100,
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(AssetJPG.banhmi,fit: BoxFit.cover,)),
                  ),
                  Container(
                      width: 100,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(height: 5),
                            Text("Shushi hai nam ...", overflow: TextOverflow.ellipsis,),
                            SizedBox(height: 5),
                            Text("4.3 (20+)",),

                          ]
                      )
                  )
                  ,
                ]
            ),
          ),
          Container(
            width: 100,
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(AssetJPG.banhmi,fit: BoxFit.cover,)),
                  ),
                  Container(
                      width: 100,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(height: 5),
                            Text("Shushi hai nam ...", overflow: TextOverflow.ellipsis,),
                            SizedBox(height: 5),
                            Text("4.3 (20+)",),

                          ]
                      )
                  )
                  ,
                ]
            ),
          ),
          Container(
            width: 100,
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(AssetJPG.banhmi,fit: BoxFit.cover,)),
                  ),
                  Container(
                      width: 100,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(height: 5),
                            Text("Shushi hai nam ...", overflow: TextOverflow.ellipsis,),
                            SizedBox(height: 5),
                            Text("4.3 (20+)",),

                          ]
                      )
                  )
                  ,
                ]
            ),
          ),
          Container(
            width: 100,
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(AssetJPG.banhmi,fit: BoxFit.cover,)),
                  ),
                  Container(
                      width: 100,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(height: 5),
                            Text("Shushi hai nam ...", overflow: TextOverflow.ellipsis,),
                            SizedBox(height: 5),
                            Text("4.3 (20+)",),
                          ]
                      ),
                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }

  Widget widgetListTopHot() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Quanh đây có gì ngon?',style: StylesText.header1,),
                Text('Xem thêm >>',style: StylesText.body3,),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(AssetJPG.banhmi,width: 110.w,height: 80.h,fit: BoxFit.cover,))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sushi HaiNam - Trần Nhân Tông',style: StylesText.header2),
                          Text('123 Tôn Đức Thắng, Phường Hòa Khánh Nam, quận...',style: StylesText.caption2,overflow: TextOverflow.ellipsis,),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              Text('4.3',style: StylesText.caption1,),
                              Text('(20+)',style: StylesText.caption3,),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(AssetJPG.banhmi,width: 110.w,height: 80.h,fit: BoxFit.cover,))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sushi HaiNam - Trần Nhân Tông',style: StylesText.header2),
                          Text('123 Tôn Đức Thắng, Phường Hòa Khánh Nam, quận...',style: StylesText.caption2,overflow: TextOverflow.ellipsis,),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              Text('4.3',style: StylesText.caption1,),
                              Text('(20+)',style: StylesText.caption3,),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(AssetJPG.banhmi,width: 110.w,height: 80.h,fit: BoxFit.cover,))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sushi HaiNam - Trần Nhân Tông',style: StylesText.header2),
                          Text('123 Tôn Đức Thắng, Phường Hòa Khánh Nam, quận...',style: StylesText.caption2,overflow: TextOverflow.ellipsis,),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              Text('4.3',style: StylesText.caption1,),
                              Text('(20+)',style: StylesText.caption3,),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
