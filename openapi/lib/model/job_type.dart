        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_type.g.dart';

abstract class JobType implements Built<JobType, JobTypeBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'searchKey')
    String get searchKey;

    // Boilerplate code needed to wire-up generated code
    JobType._();

    factory JobType([updates(JobTypeBuilder b)]) = _$JobType;
    static Serializer<JobType> get serializer => _$jobTypeSerializer;

}

