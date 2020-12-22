            import 'package:openapi/model/rest_variable.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'process_instance_response.g.dart';

abstract class ProcessInstanceResponse implements Built<ProcessInstanceResponse, ProcessInstanceResponseBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'activityId')
    String get activityId;
    
        @nullable
    @BuiltValueField(wireName: r'businessKey')
    String get businessKey;
    
        @nullable
    @BuiltValueField(wireName: r'completed')
    bool get completed;
    
        @nullable
    @BuiltValueField(wireName: r'ended')
    bool get ended;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'processDefinitionId')
    String get processDefinitionId;
    
        @nullable
    @BuiltValueField(wireName: r'processDefinitionKey')
    String get processDefinitionKey;
    
        @nullable
    @BuiltValueField(wireName: r'processDefinitionUrl')
    String get processDefinitionUrl;
    
        @nullable
    @BuiltValueField(wireName: r'suspended')
    bool get suspended;
    
        @nullable
    @BuiltValueField(wireName: r'tenantId')
    String get tenantId;
    
        @nullable
    @BuiltValueField(wireName: r'url')
    String get url;
    
        @nullable
    @BuiltValueField(wireName: r'variables')
    BuiltList<RestVariable> get variables;

    // Boilerplate code needed to wire-up generated code
    ProcessInstanceResponse._();

    factory ProcessInstanceResponse([updates(ProcessInstanceResponseBuilder b)]) = _$ProcessInstanceResponse;
    static Serializer<ProcessInstanceResponse> get serializer => _$processInstanceResponseSerializer;

}

