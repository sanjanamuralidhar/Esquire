            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/rest_form_property.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'form_data_response.g.dart';

abstract class FormDataResponse implements Built<FormDataResponse, FormDataResponseBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'deploymentId')
    String get deploymentId;
    
        @nullable
    @BuiltValueField(wireName: r'formKey')
    String get formKey;
    
        @nullable
    @BuiltValueField(wireName: r'formProperties')
    BuiltList<RestFormProperty> get formProperties;
    
        @nullable
    @BuiltValueField(wireName: r'processDefinitionId')
    String get processDefinitionId;
    
        @nullable
    @BuiltValueField(wireName: r'processDefinitionUrl')
    String get processDefinitionUrl;
    
        @nullable
    @BuiltValueField(wireName: r'taskId')
    String get taskId;
    
        @nullable
    @BuiltValueField(wireName: r'taskUrl')
    String get taskUrl;

    // Boilerplate code needed to wire-up generated code
    FormDataResponse._();

    factory FormDataResponse([updates(FormDataResponseBuilder b)]) = _$FormDataResponse;
    static Serializer<FormDataResponse> get serializer => _$formDataResponseSerializer;

}

