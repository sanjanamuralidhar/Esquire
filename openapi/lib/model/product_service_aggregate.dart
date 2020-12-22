            import 'package:openapi/model/address.dart';
            import 'package:openapi/model/address_aggregate.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/product_dto.dart';
            import 'package:openapi/model/branch_dto.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_service_aggregate.g.dart';

abstract class ProductServiceAggregate implements Built<ProductServiceAggregate, ProductServiceAggregateBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'addressList')
    BuiltList<AddressAggregate> get addressList;
    
        @nullable
    @BuiltValueField(wireName: r'amcExpires')
    bool get amcExpires;
    
        @nullable
    @BuiltValueField(wireName: r'asc')
    DateTime get asc;
    
        @nullable
    @BuiltValueField(wireName: r'branches')
    BuiltList<BranchDTO> get branches;
    
        @nullable
    @BuiltValueField(wireName: r'brand')
    String get brand;
    
        @nullable
    @BuiltValueField(wireName: r'category')
    String get category;
    
        @nullable
    @BuiltValueField(wireName: r'customerAddress')
    Address get customerAddress;
    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'issues')
    String get issues;
    
        @nullable
    @BuiltValueField(wireName: r'productDTO')
    ProductDTO get productDTO;
    
        @nullable
    @BuiltValueField(wireName: r'productId')
    int get productId;
    
        @nullable
    @BuiltValueField(wireName: r'recordedAudio')
    String get recordedAudio;
    
        @nullable
    @BuiltValueField(wireName: r'serialNo')
    String get serialNo;
    
        @nullable
    @BuiltValueField(wireName: r'timeSlots')
    BuiltList<String> get timeSlots;
        //enum timeSlotsEnum {  MORNING,  AFTERNOON,  EVENING,  };
    
        @nullable
    @BuiltValueField(wireName: r'warranty')
    DateTime get warranty;
    
        @nullable
    @BuiltValueField(wireName: r'warrantyExpires')
    bool get warrantyExpires;

    // Boilerplate code needed to wire-up generated code
    ProductServiceAggregate._();

    factory ProductServiceAggregate([updates(ProductServiceAggregateBuilder b)]) = _$ProductServiceAggregate;
    static Serializer<ProductServiceAggregate> get serializer => _$productServiceAggregateSerializer;

}

