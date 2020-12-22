        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_history_dto.g.dart';

abstract class JobHistoryDTO implements Built<JobHistoryDTO, JobHistoryDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'jobId')
    int get jobId;
    
        @nullable
    @BuiltValueField(wireName: r'loggedBy')
    String get loggedBy;
    
        @nullable
    @BuiltValueField(wireName: r'loggedDate')
    DateTime get loggedDate;
    
        @nullable
    @BuiltValueField(wireName: r'status')
    String get status;
        //enum statusEnum {  OPEN,  INPROGRESS,  PENDING,  CANCELLED,  CLOSED,  REJECTED,  };
    
        @nullable
    @BuiltValueField(wireName: r'ticketLog')
    String get ticketLog;
    
        @nullable
    @BuiltValueField(wireName: r'verifiedStatus')
    String get verifiedStatus;
        //enum verifiedStatusEnum {  OPEN,  APPROVED,  VERIFIED,  TO_BE_VERIFIED,  NOT_APPROVED,  };

    // Boilerplate code needed to wire-up generated code
    JobHistoryDTO._();

    factory JobHistoryDTO([updates(JobHistoryDTOBuilder b)]) = _$JobHistoryDTO;
    static Serializer<JobHistoryDTO> get serializer => _$jobHistoryDTOSerializer;

}

