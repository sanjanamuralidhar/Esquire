            import 'package:openapi/model/ticket.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/job_history.dart';
            import 'package:openapi/model/service_executive.dart';
            import 'package:openapi/model/job_type.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job.g.dart';

abstract class Job implements Built<Job, JobBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'jobDescription')
    String get jobDescription;
    
        @nullable
    @BuiltValueField(wireName: r'jobHistories')
    BuiltList<JobHistory> get jobHistories;
    
        @nullable
    @BuiltValueField(wireName: r'jobNumber')
    String get jobNumber;
    
        @nullable
    @BuiltValueField(wireName: r'jobTitle')
    String get jobTitle;
    
        @nullable
    @BuiltValueField(wireName: r'jobType')
    JobType get jobType;
    
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
    @BuiltValueField(wireName: r'serviceExecutive')
    ServiceExecutive get serviceExecutive;
    
        @nullable
    @BuiltValueField(wireName: r'serviceLocation')
    String get serviceLocation;
        //enum serviceLocationEnum {  ONSITE,  INHOUSE,  };
    
        @nullable
    @BuiltValueField(wireName: r'ticket')
    Ticket get ticket;

    // Boilerplate code needed to wire-up generated code
    Job._();

    factory Job([updates(JobBuilder b)]) = _$Job;
    static Serializer<Job> get serializer => _$jobSerializer;

}

