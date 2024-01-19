// ignore: camel_case_types
class user{
  int? price;
  String? name;
  
  userMAp(){
    var mapping=<String,dynamic>{};
    mapping['name']=name!;
    mapping['price']=price!;
    return mapping;
  }
}