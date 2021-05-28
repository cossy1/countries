import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countries/country/SingleCountry.dart';
import 'package:flutter_countries/graphQl/countries_client.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final client = initClient("https://countries.trevorblades.com/");
  final countriesReq = GFetchCountriesReq();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'World Countries',
        theme: ThemeData(),
        home: Scaffold(
          appBar: AppBar(
            title: Text('World Countries'),
            centerTitle: true,
            backgroundColor: Colors.lightBlueAccent,
          ),
          body: Operation(
            client: client,
            operationRequest: countriesReq,
            builder: (BuildContext context,
                OperationResponse<GFetchCountriesData, GFetchCountriesVars>?
                    response,
                Object? error) {
              if (response!.loading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              final countries = response.data!.countries;
              return ListView.builder(
                  itemCount: countries.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => SingleCountry(
                        code: countries[index].code,
                        phone: countries[index].phone,
                        name: countries[index].name,
                      )));
                    },
                    child:  ListTile(
                      leading: Text('   ' + countries[index].emoji),
                      subtitle: Text(countries[index].code),
                      // trailing: Text(countries[index].code),
                      title: Text(countries[index].name),
                    ),
                  ));
            },
          ),
        ));
  }
}
