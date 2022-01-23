class AddressModel {
  int? id;
  String? street;
  String? suit;
  String? city;
  String? zipcode;
  AddressModel({ 
    this.id, 
    this.city, 
    this.street, 
    this.suit, 
    this.zipcode});
  AddressModel.fromJon(Map<String, dynamic> json){
    this.id = json['id'];
    this.city = json['city'];
    this.street = json['street'];
    this.suit = json['suit'];
    this.zipcode = json['zipcode'];
  } 

}