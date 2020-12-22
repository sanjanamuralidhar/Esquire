        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'brand.g.dart';

abstract class Brand implements Built<Brand, BrandBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'logo')
    String get logo;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    // Boilerplate code needed to wire-up generated code
    Brand._();

    factory Brand([updates(BrandBuilder b)]) = _$Brand;
    static Serializer<Brand> get serializer => _$brandSerializer;

}

