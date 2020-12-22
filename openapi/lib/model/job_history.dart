            import 'package:openapi/model/job.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_history.g.dart';

abstract class JobHistory implements Built<JobHistory, JobHistoryBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'job')
    Job get job;
    
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
    JobHistory._();

    factory JobHistory([updates(JobHistoryBuilder b)]) = _$JobHistory;
    static Serializer<JobHistory> get serializer => _$jobHistorySerializer;

}

