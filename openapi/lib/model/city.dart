        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'city.g.dart';

abstract class City implements Built<City, CityBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'city')
    String get city;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    // Boilerplate code needed to wire-up generated code
    City._();

    factory City([updates(CityBuilder b)]) = _$City;
    static Serializer<City> get serializer => _$citySerializer;

}

