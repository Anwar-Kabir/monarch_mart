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
  ///Widget virtical sizebox

  Widget verticalSpace({
    double? height,
  }) {
    return SizedBox(
      height: height,
    );
  }

  ///Type - Widget Diolog, for - checking app update available or not, date - October 2, 2022

  Widget isUpdateAvailable({context}) {
    return AlertDialog(
      title: Text(
        AppCon.string.updateNeeded,
        style: TextStyle(color: AppCon.color.primaryColor),
      ),
      actions: [
        AppCon.widget.elevatedButtonEditProfile(
            text: AppCon.string.updateMonarchMart, onPressed: () {})
      ],
      content: Text(AppCon.string.updatdContanted),
    );
  }

  /// This textFild widget use in login with user id and create an acoount page.
  Widget loginIDandCreateAccountTextField({
    required String hint,
    Widget? prefixIcon,
    required TextAlign textAlign,
    TextAlignVertical? textAlignVertical,
    TextInputType? keyboardType,
    int? maxLength,
  }) {
    return TextField(
      maxLength: maxLength,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.grey),
          ),
          isDense: true,
          contentPadding: const EdgeInsets.all(8),
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

  /// this is text field with country flag. login page.
  Widget flagTextFiedLogin() {
    return IntrinsicHeight(
      child: SizedBox(
        width: 91.0.h,
        child: Row(
          children: [
            SizedBox(width: 7.0.h),
            SizedBox(
              height: 25.0.h,
              width: 25.0.h,
              child: Image.asset(AppCon.images.bdlogo),
            ),
            SizedBox(width: 5.0.h),
            const Text("+88"),
            SizedBox(width: 10.0.h),
            const VerticalDivider(
              color: Colors.black,
              thickness: 1,
            ),
          ],
        ),
      ),
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
        isDense: true,
        helperText: helpertext,
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: AppCon.color.primaryColor),
        ),
        contentPadding: const EdgeInsets.all(8),
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

  ///widget ElevatedButton.icon for navigation drawer bar
  Widget drawerElevatedButtonIcon({
    required Widget icon,
    required Widget label,
    double? width,
    double? height,
  }) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: icon,
        label: label,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppCon.color.primaryColor,
          side: BorderSide(color: AppCon.color.primaryColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
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
  Widget customContainerButtonIconAndBackgroudColor({
    Function()? onTap,
    required Widget icon,
    double? width,
    double? height,
    Color? color,
    required Color colorBorder,
  }) {
    return InkWell(
      //splashColor: Colors.green,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(
            color: colorBorder, //                   <--- border color
            width: 1.0,
          ),
        ),
        width: width,
        height: height,
        child: Stack(alignment: Alignment.center, children: [icon]),
      ),
    );
  }

  var items = [
    'Male',
    'Female',
    'Others',
  ];

  ///this is DropdownButton widget for select gender.
  Widget dropdownbutton(
    void Function(String?) onChanged,
  ) {
    return DropdownButton(
      value: AppCon.string.gendervalu,
      icon: const Icon(Icons.arrow_drop_down),
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }

  /// gender drop down
  Widget genderDropDown(
      {required int value, required Function(dynamic) onChangedd}) {
    return DropdownButton(
        hint: const Text("hello"),
        value: value,
        items: const [
          DropdownMenuItem(
            value: 1,
            child: Text("Male"),
          ),
          DropdownMenuItem(
            value: 2,
            child: Text("Female"),
          ),
          DropdownMenuItem(value: 3, child: Text("Others")),
        ],
        onChanged: onChangedd);
  }

  ///getx default dialog confirmBtn,
  Widget confirmBtn(
      {required Color backgroundColor, required String actionName}) {
    return SizedBox(
      width: 100.0.h,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
          onPressed: () {},
          child: Text(actionName)),
    );
  }

  ///getx default dialog cancelBtn,
  Widget cancelBtnOutlinedButton({
    required Color color,
    required String actionName,
    double? width,
    double? height,
  }) {
    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              width: 1.0,
              color: color,
              style: BorderStyle.solid,
            ),
          ),
          onPressed: () {
            Get.back();
          },
          child: Text(actionName)),
    );
  }

  Widget customContainerButton({
    double? width,
    double? height,
    Color? colorBG,
    required Color colorBorder,
    Widget? child,
    Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: colorBG,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(
            color: colorBorder,
            width: 1.0,
          ),
        ),
        child: child,
      ),
    );
  }

  /// this custom widget for monarch mart logo on login & creat acoount page.
  Widget monarchMartlogotransparent(
      {double? width, double? height, Widget? child}) {
    return SizedBox(height: height, width: width, child: child);
  }

  ///This is backbutton with back button with stact text as page title.
  Widget inAppBackButton({String text = ""}) {
    return Stack(
      children: [
        //AppCon.widget.inAppBackButton(),
        Container(
          color: AppCon.color.scaffoldBGColor,
          height: 35.0.h,
          width: double.infinity,
          child: IconButton(
            alignment: Alignment.topLeft,
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
            color: AppCon.color.backButtontColorBlack,
          ),
        ),

        Positioned(top: 9.0.h, right: 160.0.h, child: Text(text))
      ],
    );
  }

  /// this is back button. login page.
  Widget backbuttonPrimaryColor({Color? coloricon}) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        color: Colors.transparent,
        height: 50.0.h,
        width: 50.0.w,
        child: IconButton(
          alignment: Alignment.topLeft,
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
          color: coloricon,
        ),
      ),
    );
  }

  /// home top dawer and search container.
  Widget homeTopDawarAndSearch(
      {required void Function()? onPressed,
      required void Function()? onPressedsearch}) {
    return Stack(
      children: [
        Container(
          height: 45.h,
          width: double.infinity.w,
          decoration: const BoxDecoration(
            color: Color.fromARGB(179, 202, 186, 186),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
        Positioned(
          top: 2,
          left: 10,
          bottom: 2,
          child: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.menu,
            ),
          ),
        ),
        Positioned(
          top: 2,
          right: 10,
          bottom: 2,
          child: IconButton(
            onPressed: onPressedsearch,
            icon: const Icon(Icons.search),
          ),
        ),
      ],
    );
  }

  /// home screeen navigation drawer.
  Widget homeDrawer() {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: const EdgeInsets.all(10.0),
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppCon.widget.drawerElevatedButtonIcon(
                height: 38.0.h,
                width: 160.0.w,
                icon: Icon(Icons.account_circle,
                    color: AppCon.color.scaffoldBGColor),
                label: Text(AppCon.string.hellosignIn),
              ),
              AppCon.widget.customContainerButtonIconAndBackgroudColor(
                  colorBorder: AppCon.color.primaryColor,
                  icon: Icon(
                    Icons.close,
                    color: AppCon.color.primaryColor,
                  ),
                  height: 38.0.h,
                  width: 38.0.w,
                  color: AppCon.color.scaffoldBGColor,
                  onTap: () {})
            ],
          ),
          ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: 0),
            leading: Text(AppCon.string.myAccount),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: 0),
            leading: Text(AppCon.string.privacyPolicy),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: 0),
            leading: Text(AppCon.string.returnPolicy),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: 0),
            leading: Text(AppCon.string.terms),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: 0),
            leading: Text(AppCon.string.drawerLogout),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ],
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
      height: 230.h,
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

  /// home page catgories in top, container, icon, bg color and text.
  Widget homeTopCategory() {
    return SizedBox(
      height: 65.0.h,
      width: double.infinity,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 40.0.h,
                width: 55.0.h,
                color: AppCon.color.homeTopCategorycontainerBG,
                child: Icon(
                  Icons.home,
                  color: AppCon.color.primaryColor,
                ),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Text(
                "Top Seller",
                style: TextStyle(fontSize: 12.0.sp),
              ),
            ],
          )
        ],
      ),
    );
  }

  /// home scrollviw 2nd catagories, image and text.
  Widget homeSecondCategories() {
    return Container(
      height: 128.0.h,
      width: double.infinity,
      color: AppCon.color.primaryColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  AppCon.string.topCategories,
                  style: TextStyle(
                    color: AppCon.color.scaffoldBGColor,
                  ),
                ),
                const Spacer(),
                Container(
                  height: 25.0.h,
                  width: 35.0.h,
                  decoration: BoxDecoration(
                    color: AppCon.color.scaffoldBGColor,
                    border: Border.all(color: AppCon.color.scaffoldBGColor),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0.h),
                    ),
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 14.0.h,
                    color: AppCon.color.primaryColor,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 40.0.h,
                      width: 52.0.h,
                      decoration: BoxDecoration(
                        color: AppCon.color.scaffoldBGColor,
                        border: Border.all(color: AppCon.color.scaffoldBGColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0.h),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 14.0.h,
                        color: AppCon.color.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 5.0.h,
                    ),
                    Container(
                      color: Colors.blue,
                      height: 30.0.h,
                      width: 50.0.h,
                      child: Text(
                        "Media, Mousic & Books",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            color: AppCon.color.scaffoldBGColor,
                            fontSize: 9.0.sp),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// home page view all
  Widget homeFeaturedAndViewAllInRow() {
    return Row(
      children: [
        Text(
          AppCon.string.featuredProducts,
          style: TextStyle(color: AppCon.color.primaryColor),
        ),
        const Spacer(),
        Container(
          height: 25.0.h,
          width: 65.0.h,
          decoration: BoxDecoration(
            color: AppCon.color.primaryColor,
            border: Border.all(color: AppCon.color.scaffoldBGColor),
            borderRadius: BorderRadius.all(
              Radius.circular(5.0.h),
            ),
          ),
          child: Center(
            child: Text(
              AppCon.string.viewAll,
              style: TextStyle(
                  color: AppCon.color.scaffoldBGColor, fontSize: 12.0.sp),
            ),
          ),
        )
      ],
    );
  }

  /// product added to card, title,image,price,delete,++,--
  Widget cardInProduct() {
    return Card(
      child: Row(children: [
        Expanded(
          flex: 4,
          child: Container(
            height: 100.0.h,
            color: const Color.fromARGB(255, 209, 194, 194),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("hellojfgd djfbdjkb dkfjn dkgjfnjj"),
                Text(
                  "৳ 180",
                  style: TextStyle(
                    color: AppCon.color.primaryColor,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 147, 153, 158),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0.h),
                        ),
                      ),
                      height: 30.0.h,
                      width: 30.0.h,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                    ),
                    Text(
                      "2",
                      style: TextStyle(
                        color: AppCon.color.primaryColor,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 147, 153, 158),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0.h),
                        ),
                      ),
                      height: 30.0.h,
                      width: 30.0.h,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 147, 153, 158),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0.h),
                        ),
                      ),
                      height: 30.0.h,
                      width: 30.0.h,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          color: AppCon.color.primaryColor,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 100.0.h,
            color: Colors.yellow,
            child: Image.asset(AppCon.images.bdlogo),
          ),
        ),
      ]),
    );
  }

  /// card page, view added product in card view list, in bottom total amount and placeed order.
  Widget addToCardProductListView() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Container(
                  height: 110.0.h,
                  width: double.infinity,
                  color: Colors.red,
                  child: cardInProduct(),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 30.0.h,
                      color: AppCon.color.primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Text(
                              AppCon.string.totalAmount,
                              style: TextStyle(
                                  color: AppCon.color.scaffoldBGColor),
                            ),
                            const Spacer(),
                            Text(
                              "- - -",
                              style: TextStyle(
                                  color: AppCon.color.scaffoldBGColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: AppCon.widget.elevatedButtonLogin(
                        width: double.infinity,
                        text: AppCon.string.proceedToOrder,
                        onPressed: () {}),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// CarouselWithIndicator

  /// home middel carousel_slider
  Widget homeSecondCarouselSlider({required double viewportFraction}) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 120.0,
        aspectRatio: 16 / 9,
        viewportFraction: viewportFraction,
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

  ///Profile pagee, list Tile with tile color, shape, icon color, text color and on tap funtion.
  Widget profileListTile({
    required Widget leading,
    required String title,
    String subtitle = "",
    required Widget trailing,
    void Function()? onTap,
    ShapeBorder? shape,
    Color? tileColor,
    Color? textColor,
    Color? iconColor,
    Color? focusColor,
  }) {
    return ListTile(
        onTap: onTap,
        textColor: textColor,
        iconColor: iconColor,
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
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11.0),
          textScaleFactor: 1.5,
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 12.0, color: focusColor),
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
        height: 200.0.h,
        width: double.infinity,
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
