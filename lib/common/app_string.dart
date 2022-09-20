class AppString {
  // final version = const Text("Build Version munna");

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
}
