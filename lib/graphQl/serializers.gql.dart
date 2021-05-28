import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:flutter_countries/graphQl/countries.data.gql.dart'
    show
        GFetchCountriesData,
        GFetchCountriesData_countries,
        GFetchCountriesData_countries_continent,
        GFetchCountriesData_countries_states;
import 'package:flutter_countries/graphQl/countries.req.gql.dart'
    show GFetchCountriesReq;
import 'package:flutter_countries/graphQl/countries.var.gql.dart'
    show GFetchCountriesVars;
import 'package:flutter_countries/graphQl/schema.schema.gql.dart'
    show
        GCacheControlScope,
        GContinentFilterInput,
        GCountryFilterInput,
        GLanguageFilterInput,
        GStringQueryOperatorInput,
        GUpload;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCacheControlScope,
  GContinentFilterInput,
  GCountryFilterInput,
  GFetchCountriesData,
  GFetchCountriesData_countries,
  GFetchCountriesData_countries_continent,
  GFetchCountriesData_countries_states,
  GFetchCountriesReq,
  GFetchCountriesVars,
  GLanguageFilterInput,
  GStringQueryOperatorInput,
  GUpload
])
final Serializers serializers = _serializersBuilder.build();
