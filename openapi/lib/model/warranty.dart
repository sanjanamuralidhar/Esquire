            import 'package:openapi/model/warranty_history.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'warranty.g.dart';

abstract class Warranty implements Built<Warranty, WarrantyBuilder> {

    
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
    
        @nullable
    @BuiltValueField(wireName: r'warrantyHistories')
    BuiltList<WarrantyHistory> get warrantyHistories;

    // Boilerplate code needed to wire-up generated code
    Warranty._();

    factory Warranty([updates(WarrantyBuilder b)]) = _$Warranty;
    static Serializer<Warranty> get serializer => _$warrantySerializer;

}

