class AppLinks {
  static const String master = "http://192.168.1.9/first_app";

//Auth
  static const String Signup = "$master/Auth/Sign_in.php";
  static const String Login = "$master/Auth/Log_in.php";
  static const String Verify = "$master/Auth/Verify.php";

//ForggotPassword
  static const String CheckEmail = "$master/ForggotPassword/CheckEmail.php";
  static const String ResetPassword = "$master/ForggotPassword/ResetPassword.php";
  static const String VerifyCode = "$master/ForggotPassword/VerifyCode.php";

//Favorite
  static const String add_favorite = "$master/Favorite/add.php";
  static const String remove_favorite = "$master/Favorite/remove.php";
  static const String view_favorite = "$master/Favorite/view.php";
  static const String delete_favorite = "$master/Favorite/removemyfvorite.php";

//Categories
  static const String categories = "$master/Categories/view.php";

//home
  static const String homepage = "$master/homepage.php";

//Recipe

  static const String recipe_view = "$master/Recipe/view.php";
  static const String recipe_search = "$master/Recipe/search.php";

//Fridge

  static const String fridge_add = "$master/Fridge/add.php";
  static const String fridge_remove = "$master/Fridge/delete.php";
  static const String fridge_view = "$master/Fridge/view.php";
}
