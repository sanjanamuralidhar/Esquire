            import 'package:openapi/model/warranty.dart';
            import 'package:openapi/model/served_product.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'warranty_history.g.dart';

abstract class WarrantyHistory implements Built<WarrantyHistory, WarrantyHistoryBuilder> {

    
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
    @BuiltValueField(wireName: r'warranty')
    Warranty get warranty;
    
        @nullable
    @BuiltValueField(wireName: r'warrantyLog')
    String get warrantyLog;

    // Boilerplate code needed to wire-up generated code
    WarrantyHistory._();

    factory WarrantyHistory([updates(WarrantyHistoryBuilder b)]) = _$WarrantyHistory;
    static Serializer<WarrantyHistory> get serializer => _$warrantyHistorySerializer;

}

