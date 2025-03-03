class FavoriteModel {
  int? favoriteId;
  int? favoriteUserid;
  int? favoriteRecipeid;
  int? recipeId;
  String? recipeName;
  String? recipeNameAr;
  String? recipeDesc;
  String? recipeDescAr;
  String? recipePic;
  int? recipeTime;
  String? recipeCreated;
  int? userId;

  FavoriteModel(
      {this.favoriteId,
      this.favoriteUserid,
      this.favoriteRecipeid,
      this.recipeId,
      this.recipeName,
      this.recipeNameAr,
      this.recipeDesc,
      this.recipeDescAr,
      this.recipePic,
      this.recipeTime,
      this.recipeCreated,
      this.userId});

  FavoriteModel.fromJson(Map<String, dynamic> json) {
    favoriteId = json['favorite_id'];
    favoriteUserid = json['favorite_userid'];
    favoriteRecipeid = json['favorite_recipeid'];
    recipeId = json['recipe_id'];
    recipeName = json['recipe_name'];
    recipeNameAr = json['recipe_name_ar'];
    recipeDesc = json['recipe_desc'];
    recipeDescAr = json['recipe_desc_ar'];
    recipePic = json['recipe_pic'];
    recipeTime = json['recipe_time'];
    recipeCreated = json['recipe_created'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['favorite_id'] = this.favoriteId;
    data['favorite_userid'] = this.favoriteUserid;
    data['favorite_recipeid'] = this.favoriteRecipeid;
    data['recipe_id'] = this.recipeId;
    data['recipe_name'] = this.recipeName;
    data['recipe_name_ar'] = this.recipeNameAr;
    data['recipe_desc'] = this.recipeDesc;
    data['recipe_desc_ar'] = this.recipeDescAr;
    data['recipe_pic'] = this.recipePic;
    data['recipe_time'] = this.recipeTime;
    data['recipe_created'] = this.recipeCreated;
    data['user_id'] = this.userId;
    return data;
  }
}