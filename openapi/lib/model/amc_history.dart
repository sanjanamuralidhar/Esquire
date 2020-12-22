            import 'package:openapi/model/amc.dart';
            import 'package:openapi/model/served_product.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'amc_history.g.dart';

abstract class AMCHistory implements Built<AMCHistory, AMCHistoryBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'amc')
    AMC get amc;
    
        @nullable
    @BuiltValueField(wireName: r'expiresIn')
    DateTime get expiresIn;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'loggedDate')
    DateTime get loggedDate;
    
        @nullable
    @BuiltValueField(wireName: r'product')
    ServedProduct get product;
    
        @nullable
    @BuiltValueField(wireName: r'warrantyLog')
    String get warrantyLog;

    // Boilerplate code needed to wire-up generated code
    AMCHistory._();

    factory AMCHistory([updates(AMCHistoryBuilder b)]) = _$AMCHistory;
    static Serializer<AMCHistory> get serializer => _$aMCHistorySerializer;

}

