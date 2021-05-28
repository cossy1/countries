// import 'package:flutter_countries/graphQl/countries.req.gql.dart';
// import 'package:flutter_countries/graphQl/countries_client.dart';
//
// void main(List<String> arguments) {
//   final countriesReg = GFetchCountriesReq((c) => c..vars.filter.code.eq = "ES");
//   final client = initClient('https://countries.trevorblades.com/');
//
//   client.request(countriesReg).listen((response) {
//     final res = response.data!.countries;
//     if (res.isNotEmpty) {
//       res.forEach((country) {
//         print('''
//
//        ${country.name} - ${country.code}
//        ''');
//       });
//     }
//   });
// }
