        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_section_dto.g.dart';

abstract class ServiceSectionDTO implements Built<ServiceSectionDTO, ServiceSectionDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'branchId')
    int get branchId;
    
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

    // Boilerplate code needed to wire-up generated code
    ServiceSectionDTO._();

    factory ServiceSectionDTO([updates(ServiceSectionDTOBuilder b)]) = _$ServiceSectionDTO;
    static Serializer<ServiceSectionDTO> get serializer => _$serviceSectionDTOSerializer;

}

