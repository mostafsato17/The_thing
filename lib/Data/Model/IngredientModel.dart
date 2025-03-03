class IngredientModel {
  int? ingredientId;
  String? ingredientName;
  String? ingredientUnit;
  String? ingredientCreated;
  String? ingredientNameAr;
  String? ingredientUnitAr;
  String? ingredientPic;

  IngredientModel(
      {this.ingredientId,
      this.ingredientName,
      this.ingredientUnit,
      this.ingredientCreated,
      this.ingredientNameAr,
      this.ingredientUnitAr,
      this.ingredientPic});

  IngredientModel.fromJson(Map<String, dynamic> json) {
    ingredientId = json['ingredient_id'];
    ingredientName = json['ingredient_name'];
    ingredientUnit = json['ingredient_unit'];
    ingredientCreated = json['ingredient_created'];
    ingredientNameAr = json['ingredient_name_ar'];
    ingredientUnitAr = json['ingredient_unit_ar'];
    ingredientPic = json['ingredient_pic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ingredient_id'] = this.ingredientId;
    data['ingredient_name'] = this.ingredientName;
    data['ingredient_unit'] = this.ingredientUnit;
    data['ingredient_created'] = this.ingredientCreated;
    data['ingredient_name_ar'] = this.ingredientNameAr;
    data['ingredient_unit_ar'] = this.ingredientUnitAr;
    data['ingredient_pic'] = this.ingredientPic;
    return data;
  }
}