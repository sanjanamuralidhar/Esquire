            import 'package:openapi/model/job_dto.dart';
            import 'package:openapi/model/job_history_dto.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_status_model.g.dart';

abstract class JobStatusModel implements Built<JobStatusModel, JobStatusModelBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'jobDTO')
    JobDTO get jobDTO;
    
        @nullable
    @BuiltValueField(wireName: r'jobHistoryDTO')
    JobHistoryDTO get jobHistoryDTO;

    // Boilerplate code needed to wire-up generated code
    JobStatusModel._();

    factory JobStatusModel([updates(JobStatusModelBuilder b)]) = _$JobStatusModel;
    static Serializer<JobStatusModel> get serializer => _$jobStatusModelSerializer;

}

