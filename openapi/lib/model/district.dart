        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'district.g.dart';

abstract class District implements Built<District, DistrictBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'district')
    String get district;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    // Boilerplate code needed to wire-up generated code
    District._();

    factory District([updates(DistrictBuilder b)]) = _$District;
    static Serializer<District> get serializer => _$districtSerializer;

}

