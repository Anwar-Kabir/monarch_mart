class AppString {
  //static const String version = "Build Version munna";
  final String version = "Build Version";
  final String versionNAme = "v0.11.8";

  // Name check regular expression
  final RegExp rex =
      RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");

  // Email validation
  final RegExp exp = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$",
      caseSensitive: false);

  // IP validation
  final RegExp ipExp = RegExp(
      r"^(?!0)(?!.*\.$)((1?\d?\d|25[0-5]|2[0-4]\d)(\.|$)){4}$",
      caseSensitive: false,
      multiLine: false);

  // URL validation
  final RegExp urlExp = RegExp(
      r"(http|ftp|https)://[\w-]+(\.[\w-]+)+([\w.,@?^=%&amp;:/~+#-]*[\w@?^=%&amp;/~+#-])?");

  // Domain Validation
  final RegExp domainExp =
      RegExp(r"^[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,6}$");

  // phone number validation
  final RegExp phoneExp = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');

  //login page text
  final String login = "Login";
  final String enterYourMobileNumber = "Enter Your Mobilr Number";
  final String countryCode = "+88";
  final String loginWithOTP = "Login with OTP";
  final String or = "or";
  final String loginWithUserID = "Login with User ID";
  final String dontHaveAnAccount = "Don't have an account ?";
  final String creatAnAccount = "Creat an account";
  final String moreSettings = "More settings";

  ///sign up page
  final String createAnAccount = "Creat an Account";
  final String alreadyRegistered = "Already Registered";

  ///profile page text
  final String basicInformation = "Basic Information";
  final String name = "Name";
  final String password = "Password";
  final String passConform = "Confirm Password";
  final String updateProfile = "Update Profile";
  final String passwordhelper = "Password must be at least 6 character ";
  final String editprofiletitle = "Edit Profile";

  ///logout
  final String logout = "Log Out";
  final String logoutAlart = "Do you really want to logout?";

  ///shipping Adress
  final String noadress = "No address available";

  ///URL webview
  final String url = "https://pub.dev/packages/url_launcher/example";

  ///Add user address
  final String nameAdress = "Name *";
  final String dateOfBirth = "Date of Birth";
  final String gender = "Gender *";
  final String gendervalu = "Select Gender";
  final String address = "Address *";
  final String postal = "Postal *";
  final String city = "City *";
  final String phoneadress = "Phone *";

  ///Home page
  final String topSellers = "Top Sellers";
  final String topBrands = "Top Brands";
  final String bestSelling = "Best Selling";
  final String newArrival = "New Arrival";
  final String alloffers = "All offers";
  final String topCategories = "Top Categories";
  final String featuredProducts = "Featured Products";
  final String onSaleProducts = "On Sale Products";
  final String fashion = "Fashion";
  final String electronicsAppliance = "Electronics And Appliance";
  final String viewAll = "View All";

  /// add to card text
  final String totalAmount = "Total Amount";
  final String proceedToOrder = "Proceed To Order";

  ///navigation  drawer
  final String myAccount = "My Account";
  final String privacyPolicy = "Privacy Policy";
  final String returnPolicy = "Return Policy";
  final String terms = "Terms";
  final String drawerLogout = "Logout";
  final String hellosignIn = "Hello Sign in";

  ///update needed, date - October 2, 2022
  final String updateNeeded = "UPDATE NEEDED!";
  final String updatdContanted = "Please updated your Monarch Mart App";
  final String updateMonarchMart = "UPDATE";

  ///checkout
  final String checkOutwithbkash = "Checkout with Bkash";
  final String checkOutwithNagad = "Checkout with Nagad";
  final String checkOutwithUpay = "Checkout with Upay";
  final String cashonDelivery = "Cash on delivery";
}
