            import 'package:openapi/model/sort.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/served_product_aggregate.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'page_of_served_product_aggregate.g.dart';

abstract class PageOfServedProductAggregate implements Built<PageOfServedProductAggregate, PageOfServedProductAggregateBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'content')
    BuiltList<ServedProductAggregate> get content;
    
        @nullable
    @BuiltValueField(wireName: r'empty')
    bool get empty;
    
        @nullable
    @BuiltValueField(wireName: r'first')
    bool get first;
    
        @nullable
    @BuiltValueField(wireName: r'last')
    bool get last;
    
        @nullable
    @BuiltValueField(wireName: r'number')
    int get number;
    
        @nullable
    @BuiltValueField(wireName: r'numberOfElements')
    int get numberOfElements;
    
        @nullable
    @BuiltValueField(wireName: r'size')
    int get size;
    
        @nullable
    @BuiltValueField(wireName: r'sort')
    Sort get sort;
    
        @nullable
    @BuiltValueField(wireName: r'totalElements')
    int get totalElements;
    
        @nullable
    @BuiltValueField(wireName: r'totalPages')
    int get totalPages;

    // Boilerplate code needed to wire-up generated code
    PageOfServedProductAggregate._();

    factory PageOfServedProductAggregate([updates(PageOfServedProductAggregateBuilder b)]) = _$PageOfServedProductAggregate;
    static Serializer<PageOfServedProductAggregate> get serializer => _$pageOfServedProductAggregateSerializer;

}

