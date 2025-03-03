class RecipeModel {
  int? recipeId;
  String? recipeName;
  String? recipeNameAr;
  Null? recipeDesc;
  Null? recipeDescAr;
  String? recipePic;
  int? recipeTime;
  String? recipeCreated;

  RecipeModel(
      {this.recipeId,
      this.recipeName,
      this.recipeNameAr,
      this.recipeDesc,
      this.recipeDescAr,
      this.recipePic,
      this.recipeTime,
      this.recipeCreated});

  RecipeModel.fromJson(Map<String, dynamic> json) {
    recipeId = json['recipe_id'];
    recipeName = json['recipe_name'];
    recipeNameAr = json['recipe_name_ar'];
    recipeDesc = json['recipe_desc'];
    recipeDescAr = json['recipe_desc_ar'];
    recipePic = json['recipe_pic'];
    recipeTime = json['recipe_time'];
    recipeCreated = json['recipe_created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['recipe_id'] = this.recipeId;
    data['recipe_name'] = this.recipeName;
    data['recipe_name_ar'] = this.recipeNameAr;
    data['recipe_desc'] = this.recipeDesc;
    data['recipe_desc_ar'] = this.recipeDescAr;
    data['recipe_pic'] = this.recipePic;
    data['recipe_time'] = this.recipeTime;
    data['recipe_created'] = this.recipeCreated;
    return data;
  }
}