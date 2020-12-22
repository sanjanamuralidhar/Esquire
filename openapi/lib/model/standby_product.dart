        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'standby_product.g.dart';

abstract class StandbyProduct implements Built<StandbyProduct, StandbyProductBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'brand')
    String get brand;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'model')
    String get model;
    
        @nullable
    @BuiltValueField(wireName: r'productId')
    String get productId;
    
        @nullable
    @BuiltValueField(wireName: r'serialNumber')
    String get serialNumber;

    // Boilerplate code needed to wire-up generated code
    StandbyProduct._();

    factory StandbyProduct([updates(StandbyProductBuilder b)]) = _$StandbyProduct;
    static Serializer<StandbyProduct> get serializer => _$standbyProductSerializer;

}

