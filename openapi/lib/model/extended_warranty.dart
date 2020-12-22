            import 'package:openapi/model/extended_warranty_history.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extended_warranty.g.dart';

abstract class ExtendedWarranty implements Built<ExtendedWarranty, ExtendedWarrantyBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'extendedWarrantyHistories')
    BuiltList<ExtendedWarrantyHistory> get extendedWarrantyHistories;
    
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
    ExtendedWarranty._();

    factory ExtendedWarranty([updates(ExtendedWarrantyBuilder b)]) = _$ExtendedWarranty;
    static Serializer<ExtendedWarranty> get serializer => _$extendedWarrantySerializer;

}

