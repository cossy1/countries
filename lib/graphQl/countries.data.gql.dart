// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_countries/graphQl/serializers.gql.dart' as _i1;

part 'countries.data.gql.g.dart';

abstract class GFetchCountriesData
    implements Built<GFetchCountriesData, GFetchCountriesDataBuilder> {
  GFetchCountriesData._();

  factory GFetchCountriesData(
      [Function(GFetchCountriesDataBuilder b) updates]) = _$GFetchCountriesData;

  static void _initializeBuilder(GFetchCountriesDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GFetchCountriesData_countries> get countries;
  static Serializer<GFetchCountriesData> get serializer =>
      _$gFetchCountriesDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFetchCountriesData.serializer, this)
          as Map<String, dynamic>);
  static GFetchCountriesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFetchCountriesData.serializer, json);
}

abstract class GFetchCountriesData_countries
    implements
        Built<GFetchCountriesData_countries,
            GFetchCountriesData_countriesBuilder> {
  GFetchCountriesData_countries._();

  factory GFetchCountriesData_countries(
          [Function(GFetchCountriesData_countriesBuilder b) updates]) =
      _$GFetchCountriesData_countries;

  static void _initializeBuilder(GFetchCountriesData_countriesBuilder b) =>
      b..G__typename = 'Country';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get code;
  String get emoji;
  String get phone;
  GFetchCountriesData_countries_continent get continent;
  String? get capital;
  String? get currency;
  BuiltList<GFetchCountriesData_countries_states> get states;
  static Serializer<GFetchCountriesData_countries> get serializer =>
      _$gFetchCountriesDataCountriesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFetchCountriesData_countries.serializer, this) as Map<String, dynamic>);
  static GFetchCountriesData_countries? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFetchCountriesData_countries.serializer, json);
}

abstract class GFetchCountriesData_countries_continent
    implements
        Built<GFetchCountriesData_countries_continent,
            GFetchCountriesData_countries_continentBuilder> {
  GFetchCountriesData_countries_continent._();

  factory GFetchCountriesData_countries_continent(
      [Function(GFetchCountriesData_countries_continentBuilder b)
          updates]) = _$GFetchCountriesData_countries_continent;

  static void _initializeBuilder(
          GFetchCountriesData_countries_continentBuilder b) =>
      b..G__typename = 'Continent';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  static Serializer<GFetchCountriesData_countries_continent> get serializer =>
      _$gFetchCountriesDataCountriesContinentSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFetchCountriesData_countries_continent.serializer, this)
      as Map<String, dynamic>);
  static GFetchCountriesData_countries_continent? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchCountriesData_countries_continent.serializer, json);
}

abstract class GFetchCountriesData_countries_states
    implements
        Built<GFetchCountriesData_countries_states,
            GFetchCountriesData_countries_statesBuilder> {
  GFetchCountriesData_countries_states._();

  factory GFetchCountriesData_countries_states(
          [Function(GFetchCountriesData_countries_statesBuilder b) updates]) =
      _$GFetchCountriesData_countries_states;

  static void _initializeBuilder(
          GFetchCountriesData_countries_statesBuilder b) =>
      b..G__typename = 'State';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  static Serializer<GFetchCountriesData_countries_states> get serializer =>
      _$gFetchCountriesDataCountriesStatesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFetchCountriesData_countries_states.serializer, this)
      as Map<String, dynamic>);
  static GFetchCountriesData_countries_states? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFetchCountriesData_countries_states.serializer, json);
}
