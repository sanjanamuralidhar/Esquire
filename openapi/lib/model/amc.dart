import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/amc_history.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'amc.g.dart';

abstract class AMC implements Built<AMC, AMCBuilder> {
  @nullable
  @BuiltValueField(wireName: r'amcHistories')
  BuiltList<AMCHistory> get amcHistories;

  @nullable
  @BuiltValueField(wireName: r'description')
  String get description;

  @nullable
  @BuiltValueField(wireName: r'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: r'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: r'periodInMonths')
  int get periodInMonths;

  @nullable
  @BuiltValueField(wireName: r'periodInYear')
  int get periodInYear;

  // Boilerplate code needed to wire-up generated code
  AMC._();

  factory AMC([updates(AMCBuilder b)]) = _$AMC;
  static Serializer<AMC> get serializer => _$aMCSerializer;
}
