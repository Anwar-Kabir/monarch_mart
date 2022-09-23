import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:monarch_mart/common/config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';

int _current = 0;
final CarouselController _controller = CarouselController();

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.network(item, fit: BoxFit.cover, width: 1000.0),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        'No. ${imgList.indexOf(item)} image',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ))
    .toList();

class AppWidget {
  /// This textFild widget use in login with user id and create an acoount page.
  Widget loginIDandCreateAccountTextField({required String hint}) {
    return TextField(
      textAlign: TextAlign.center,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          filled: true,
          fillColor: Colors.white,
          hintText: hint,
          hintTextDirection: TextDirection.ltr,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          )),
    );
  }

  /// unused textfield widget, we can use this TextField globaly but code of decoration property complecity we adovid it.
  Widget monarchMartTextField({
    String hint = "",
    String helpertext = "",
    bool obscureText = false,
    InputDecoration? decoration,
  }) {
    return TextField(
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: TextInputType.number,
        decoration: decoration);
  }

  /// This textfield widget use in edit profile. broder less text field.
  Widget editprofileTextField({
    String helpertext = "",
    bool obscureText = false,
  }) {
    return TextField(
      textAlign: TextAlign.start,
      autocorrect: true,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: TextInputType.number,
      obscureText: obscureText,
      decoration: InputDecoration(
        helperText: helpertext,
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: AppCon.color.primaryColor),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        filled: true,
        fillColor: Colors.white,
        hintTextDirection: TextDirection.ltr,
        hintStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  /// This Elevated button widget for log in page, this elevated button is full width.
  Widget elevatedButtonLogin({
    required String text,
    required void Function()? onPressed,
    double? width,
  }) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppCon.color.primaryColor,
          side: BorderSide(color: AppCon.color.primaryColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 16.sp),
        ),
      ),
    );
  }

  /// This Elevated button widget for Edit profile page, this elevated button width is fix() and aline in topRight.
  Widget elevatedButtonEditProfile({
    required String text,
    required void Function()? onPressed,
  }) {
    return Align(
      alignment: Alignment.topRight,
      child: SizedBox(
        width: 200.h,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppCon.color.primaryColor,
            side: BorderSide(color: AppCon.color.primaryColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 16.sp),
          ),
        ),
      ),
    );
  }

  /// This is stack button, for add new shipping address.
  Widget addshippingAdress({
    Function()? onTap,
  }) {
    return InkWell(
      splashColor: Colors.green,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppCon.color.primaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        width: double.infinity,
        height: 38.0.h,
        child: Stack(alignment: Alignment.center, children: const [
          Icon(
            Icons.add,
            color: Colors.white,
          )
        ]),
      ),
    );
  }

  ///getx default dialog confirmBtn,
  Widget confirmBtn() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppCon.color.primaryColor),
        onPressed: () {},
        child: const Text("YES"));
  }

  ///getx default dialog cancelBtn,
  Widget cancelBtn() {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            width: 1.0,
            color: AppCon.color.primaryColor,
            style: BorderStyle.solid,
          ),
        ),
        onPressed: () {
          Get.back();
        },
        child: const Text("NO"));
  }

  /// this custom widget for monarch mart logo on login & creat acoount page.
  Widget monarchMartlogoShow({double? width, double? height, Widget? child}) {
    return SizedBox(height: height, width: width, child: child);
  }

  /// In App Costom back Button.
  Widget inAppBackButton() {
    return Container(
      color: AppCon.color.primaryColor,
      height: 50.0.h,
      child: IconButton(
        alignment: Alignment.topLeft,
        onPressed: () {
          Get.back();
        },
        icon: const Icon(
          Icons.arrow_back,
        ),
        color: AppCon.color.scaffoldBGColor,
      ),
    );
  }

  /// custom grid view on categories page.
  Widget categoriesgridview() {
    return GridView.count(
      crossAxisCount: 4,
      children: List<Widget>.generate(20, (index) {
        return GridTile(
          child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              elevation: 2,
              color: Colors.blue.shade200,
              child: Center(
                child: Text('tile $index'),
              )),
        );
      }),
    );
  }

  static CacheManager cacheManager = CacheManager(
    Config(
      "cache_key",
      stalePeriod: const Duration(days: 7),
      maxNrOfCacheObjects: 20,
    ),
  );

  ///product in card  view
  Widget homeproductview() {
    return SizedBox(
      height: 220.h,
      width: 190.h,
      child: Card(
        color: AppCon.color.scaffoldBGColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(clipBehavior: Clip.none, children: [
                SizedBox(
                  height: 130.h,
                  width: 120.h,
                  child: CachedNetworkImage(
                    cacheManager: cacheManager,
                    key: UniqueKey(),
                    imageUrl: "https://placeimg.com/640/480/any",
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    placeholder: (context, url) =>
                        Image(image: AssetImage(AppCon.images.whiteLogo)),
                    fadeInCurve: Curves.bounceOut,
                    fadeInDuration: const Duration(seconds: 3),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error, color: Colors.red),
                  ),
                ),
                Positioned(
                  top: 40.h,
                  left: -15.h,
                  child: Container(
                    height: 22.h,
                    width: 38.h,
                    decoration: BoxDecoration(
                      color: AppCon.color.primaryColor,
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "20%",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AppCon.color.scaffoldBGColor),
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                width: 120.h,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "amar sonar bangla ami tomaivalobashi, chitodin tomar akash",
                    maxLines: 2,
                    softWrap: false,
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "\$1200",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    "\$1500",
                    style: TextStyle(color: AppCon.color.primaryColor),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  /// home page catgories in row
  Widget homeCategory() {
    return Row(
      children: [
        Column(
          children: [
            Container(
              color: Colors.orange[300],
              child: const Icon(Icons.home),
            ),
            const Text("Top Seller"),
          ],
        )
      ],
    );
  }

  /// CarouselWithIndicator

  /// home middel carousel_slider
  Widget homesecondCarouselSlider() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 120.0,
        aspectRatio: 16 / 9,
        viewportFraction: 0.6,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: const BoxDecoration(color: Colors.amber),
                child: Text(
                  'text $i',
                  style: const TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    );
  }

  /// home thried carousel_slider
  Widget homethirdCarouselSlider() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 120.0,
        aspectRatio: 16 / 6,
        viewportFraction: 0.9,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: const BoxDecoration(color: Colors.amber),
                child: Text(
                  'text $i',
                  style: const TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    );
  }

  ///Profile list Tile
  Widget profileListTile(
      {required Widget leading,
      required String title,
      String subtitle = "",
      required Widget trailing,
      void Function()? onTap,
      ShapeBorder? shape,
      Color? tileColor}) {
    return ListTile(
        onTap: onTap,
        textColor: Colors.black87,
        iconColor: const Color.fromARGB(115, 37, 22, 22),
        shape: shape,
        tileColor: tileColor,
        leading: CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 224, 161, 141),
          foregroundColor: AppCon.color.primaryColor,
          radius: 30,
          child: leading,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
          textScaleFactor: 1.5,
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
        ),
        trailing: trailing);
  }

  ///Profile listtile with  tile color, shape and text color white.
  Widget profileListTilecolor({
    required Widget leading,
    required String title,
    String subtitle = "",
    required Widget trailing,
  }) {
    return ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        tileColor: AppCon.color.primaryColor,
        textColor: Colors.white,
        iconColor: Colors.white,
        leading: CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 224, 161, 141),
          foregroundColor: AppCon.color.primaryColor,
          radius: 30,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
          textScaleFactor: 1.5,
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
        ),
        trailing: trailing);
  }
}

class CarouselWithIndicator extends StatefulWidget {
  const CarouselWithIndicator({super.key});

  @override
  State<CarouselWithIndicator> createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        child: Column(children: [
          Expanded(
            child: CarouselSlider(
              items: imageSliders,
              carouselController: _controller,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ]),
      ),
    );
  }
}
