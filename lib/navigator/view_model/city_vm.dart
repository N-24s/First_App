import 'package:first_app/form/city.dart';

class CitiesVm {
 List<City> loadCities(){
  return[
    City(name: "Sanaa", value: "Sa"),
    City(name: "Hadramout", value: "Ha"),
    City(name: "Aden", value: "Ad"),
  ];
 }
}