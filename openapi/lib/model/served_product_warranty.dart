            import 'package:openapi/model/product_warranty.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'served_product_warranty.g.dart';

abstract class ServedProductWarranty implements Built<ServedProductWarranty, ServedProductWarrantyBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'endDate')
    DateTime get endDate;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'internalWarrantyNumber')
    String get internalWarrantyNumber;
    
        @nullable
    @BuiltValueField(wireName: r'productWarranty')
    ProductWarranty get productWarranty;
    
        @nullable
    @BuiltValueField(wireName: r'remarks')
    String get remarks;
    
        @nullable
    @BuiltValueField(wireName: r'startDate')
    DateTime get startDate;

    // Boilerplate code needed to wire-up generated code
    ServedProductWarranty._();

    factory ServedProductWarranty([updates(ServedProductWarrantyBuilder b)]) = _$ServedProductWarranty;
    static Serializer<ServedProductWarranty> get serializer => _$servedProductWarrantySerializer;

}

