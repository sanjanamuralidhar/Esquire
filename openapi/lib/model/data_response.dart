            import 'package:built_value/json_object.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'data_response.g.dart';

abstract class DataResponse implements Built<DataResponse, DataResponseBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'data')
    JsonObject get data;
    
        @nullable
    @BuiltValueField(wireName: r'order')
    String get order;
    
        @nullable
    @BuiltValueField(wireName: r'size')
    int get size;
    
        @nullable
    @BuiltValueField(wireName: r'sort')
    String get sort;
    
        @nullable
    @BuiltValueField(wireName: r'start')
    int get start;
    
        @nullable
    @BuiltValueField(wireName: r'total')
    int get total;

    // Boilerplate code needed to wire-up generated code
    DataResponse._();

    factory DataResponse([updates(DataResponseBuilder b)]) = _$DataResponse;
    static Serializer<DataResponse> get serializer => _$dataResponseSerializer;

}

