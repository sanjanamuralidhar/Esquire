            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/service_executive.dart';
            import 'package:openapi/model/branch.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_section.g.dart';

abstract class ServiceSection implements Built<ServiceSection, ServiceSectionBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'branch')
    Branch get branch;
    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'inhouseSection')
    bool get inhouseSection;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'serviceExecutives')
    BuiltList<ServiceExecutive> get serviceExecutives;

    // Boilerplate code needed to wire-up generated code
    ServiceSection._();

    factory ServiceSection([updates(ServiceSectionBuilder b)]) = _$ServiceSection;
    static Serializer<ServiceSection> get serializer => _$serviceSectionSerializer;

}

