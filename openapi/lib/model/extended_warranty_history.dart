            import 'package:openapi/model/served_product.dart';
            import 'package:openapi/model/extended_warranty.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extended_warranty_history.g.dart';

abstract class ExtendedWarrantyHistory implements Built<ExtendedWarrantyHistory, ExtendedWarrantyHistoryBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'expiresIn')
    DateTime get expiresIn;
    
        @nullable
    @BuiltValueField(wireName: r'extendedWarranty')
    ExtendedWarranty get extendedWarranty;
    
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
    ExtendedWarrantyHistory._();

    factory ExtendedWarrantyHistory([updates(ExtendedWarrantyHistoryBuilder b)]) = _$ExtendedWarrantyHistory;
    static Serializer<ExtendedWarrantyHistory> get serializer => _$extendedWarrantyHistorySerializer;

}

