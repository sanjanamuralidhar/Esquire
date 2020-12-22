        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_dto.g.dart';

abstract class JobDTO implements Built<JobDTO, JobDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'jobDescription')
    String get jobDescription;
    
        @nullable
    @BuiltValueField(wireName: r'jobNumber')
    String get jobNumber;
    
        @nullable
    @BuiltValueField(wireName: r'jobTitle')
    String get jobTitle;
    
        @nullable
    @BuiltValueField(wireName: r'jobTypeId')
    int get jobTypeId;
    
        @nullable
    @BuiltValueField(wireName: r'scheduledDate')
    DateTime get scheduledDate;
    
        @nullable
    @BuiltValueField(wireName: r'scheduledEndTime')
    DateTime get scheduledEndTime;
    
        @nullable
    @BuiltValueField(wireName: r'scheduledStartTime')
    DateTime get scheduledStartTime;
    
        @nullable
    @BuiltValueField(wireName: r'serviceExecutiveId')
    int get serviceExecutiveId;
    
        @nullable
    @BuiltValueField(wireName: r'serviceLocation')
    String get serviceLocation;
        //enum serviceLocationEnum {  ONSITE,  INHOUSE,  };
    
        @nullable
    @BuiltValueField(wireName: r'ticketId')
    int get ticketId;

    // Boilerplate code needed to wire-up generated code
    JobDTO._();

    factory JobDTO([updates(JobDTOBuilder b)]) = _$JobDTO;
    static Serializer<JobDTO> get serializer => _$jobDTOSerializer;

}

