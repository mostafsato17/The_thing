class FridgeModel {
  int? ingredientCount;
  int? fridgeId;
  int? fridgeUserid;
  int? fridgeIngredientsid;
  int? ingredientId;
  String? ingredientName;
  String? ingredientUnit;
  String? ingredientCreated;
  String? ingredientNameAr;
  String? ingredientUnitAr;
  String? ingredientPic;
  int? userId;

  FridgeModel(
      {this.ingredientCount,
      this.fridgeId,
      this.fridgeUserid,
      this.fridgeIngredientsid,
      this.ingredientId,
      this.ingredientName,
      this.ingredientUnit,
      this.ingredientCreated,
      this.ingredientNameAr,
      this.ingredientUnitAr,
      this.ingredientPic,
      this.userId});

  FridgeModel.fromJson(Map<String, dynamic> json) {
    ingredientCount = json['ingredientCount'];
    fridgeId = json['fridge_id'];
    fridgeUserid = json['fridge_userid'];
    fridgeIngredientsid = json['fridge_ingredientsid'];
    ingredientId = json['ingredient_id'];
    ingredientName = json['ingredient_name'];
    ingredientUnit = json['ingredient_unit'];
    ingredientCreated = json['ingredient_created'];
    ingredientNameAr = json['ingredient_name_ar'];
    ingredientUnitAr = json['ingredient_unit_ar'];
    ingredientPic = json['ingredient_pic'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ingredientCount'] = this.ingredientCount;
    data['fridge_id'] = this.fridgeId;
    data['fridge_userid'] = this.fridgeUserid;
    data['fridge_ingredientsid'] = this.fridgeIngredientsid;
    data['ingredient_id'] = this.ingredientId;
    data['ingredient_name'] = this.ingredientName;
    data['ingredient_unit'] = this.ingredientUnit;
    data['ingredient_created'] = this.ingredientCreated;
    data['ingredient_name_ar'] = this.ingredientNameAr;
    data['ingredient_unit_ar'] = this.ingredientUnitAr;
    data['ingredient_pic'] = this.ingredientPic;
    data['user_id'] = this.userId;
    return data;
  }
}