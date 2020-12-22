            import 'package:openapi/model/user.dart';
            import 'package:openapi/model/rating.dart';
            import 'package:openapi/model/ticket.dart';
            import 'package:openapi/model/address.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/customer_account.dart';
            import 'package:openapi/model/overall_rating.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer.g.dart';

abstract class Customer implements Built<Customer, CustomerBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'addresses')
    BuiltList<Address> get addresses;
    
        @nullable
    @BuiltValueField(wireName: r'customerRank')
    String get customerRank;
    
        @nullable
    @BuiltValueField(wireName: r'customerSince')
    DateTime get customerSince;
    
        @nullable
    @BuiltValueField(wireName: r'email')
    String get email;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'internalId')
    String get internalId;
    
        @nullable
    @BuiltValueField(wireName: r'linkedAccount')
    CustomerAccount get linkedAccount;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'overallRating')
    OverallRating get overallRating;
    
        @nullable
    @BuiltValueField(wireName: r'phone')
    String get phone;
    
        @nullable
    @BuiltValueField(wireName: r'phoneVerified')
    bool get phoneVerified;
    
        @nullable
    @BuiltValueField(wireName: r'ratings')
    BuiltList<Rating> get ratings;
    
        @nullable
    @BuiltValueField(wireName: r'systemId')
    String get systemId;
    
        @nullable
    @BuiltValueField(wireName: r'tickets')
    BuiltList<Ticket> get tickets;
    
        @nullable
    @BuiltValueField(wireName: r'user')
    User get user;

    // Boilerplate code needed to wire-up generated code
    Customer._();

    factory Customer([updates(CustomerBuilder b)]) = _$Customer;
    static Serializer<Customer> get serializer => _$customerSerializer;

}

