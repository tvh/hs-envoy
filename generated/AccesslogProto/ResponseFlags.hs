{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AccesslogProto.ResponseFlags (ResponseFlags(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AccesslogProto.ResponseFlags.Unauthorized as AccesslogProto.ResponseFlags

data ResponseFlags = ResponseFlags{failed_local_healthcheck :: !(P'.Maybe P'.Bool), no_healthy_upstream :: !(P'.Maybe P'.Bool),
                                   upstream_request_timeout :: !(P'.Maybe P'.Bool), local_reset :: !(P'.Maybe P'.Bool),
                                   upstream_remote_reset :: !(P'.Maybe P'.Bool), upstream_connection_failure :: !(P'.Maybe P'.Bool),
                                   upstream_connection_termination :: !(P'.Maybe P'.Bool), upstream_overflow :: !(P'.Maybe P'.Bool),
                                   no_route_found :: !(P'.Maybe P'.Bool), delay_injected :: !(P'.Maybe P'.Bool),
                                   fault_injected :: !(P'.Maybe P'.Bool), rate_limited :: !(P'.Maybe P'.Bool),
                                   unauthorized_details :: !(P'.Maybe AccesslogProto.ResponseFlags.Unauthorized),
                                   rate_limit_service_error :: !(P'.Maybe P'.Bool),
                                   downstream_connection_termination :: !(P'.Maybe P'.Bool),
                                   upstream_retry_limit_exceeded :: !(P'.Maybe P'.Bool), stream_idle_timeout :: !(P'.Maybe P'.Bool),
                                   invalid_envoy_request_headers :: !(P'.Maybe P'.Bool),
                                   downstream_protocol_error :: !(P'.Maybe P'.Bool),
                                   upstream_max_stream_duration_reached :: !(P'.Maybe P'.Bool),
                                   response_from_cache_filter :: !(P'.Maybe P'.Bool), no_filter_config_found :: !(P'.Maybe P'.Bool),
                                   duration_timeout :: !(P'.Maybe P'.Bool), upstream_protocol_error :: !(P'.Maybe P'.Bool),
                                   no_cluster_found :: !(P'.Maybe P'.Bool), overload_manager :: !(P'.Maybe P'.Bool)}
                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable ResponseFlags where
  mergeAppend
   (ResponseFlags x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24
     x'25 x'26)
   (ResponseFlags y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16 y'17 y'18 y'19 y'20 y'21 y'22 y'23 y'24
     y'25 y'26)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
         !z'6 = P'.mergeAppend x'6 y'6
         !z'7 = P'.mergeAppend x'7 y'7
         !z'8 = P'.mergeAppend x'8 y'8
         !z'9 = P'.mergeAppend x'9 y'9
         !z'10 = P'.mergeAppend x'10 y'10
         !z'11 = P'.mergeAppend x'11 y'11
         !z'12 = P'.mergeAppend x'12 y'12
         !z'13 = P'.mergeAppend x'13 y'13
         !z'14 = P'.mergeAppend x'14 y'14
         !z'15 = P'.mergeAppend x'15 y'15
         !z'16 = P'.mergeAppend x'16 y'16
         !z'17 = P'.mergeAppend x'17 y'17
         !z'18 = P'.mergeAppend x'18 y'18
         !z'19 = P'.mergeAppend x'19 y'19
         !z'20 = P'.mergeAppend x'20 y'20
         !z'21 = P'.mergeAppend x'21 y'21
         !z'22 = P'.mergeAppend x'22 y'22
         !z'23 = P'.mergeAppend x'23 y'23
         !z'24 = P'.mergeAppend x'24 y'24
         !z'25 = P'.mergeAppend x'25 y'25
         !z'26 = P'.mergeAppend x'26 y'26
      in
      ResponseFlags z'1 z'2 z'3 z'4 z'5 z'6 z'7 z'8 z'9 z'10 z'11 z'12 z'13 z'14 z'15 z'16 z'17 z'18 z'19 z'20 z'21 z'22 z'23 z'24
       z'25
       z'26

instance P'.Default ResponseFlags where
  defaultValue
   = ResponseFlags P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue

instance P'.Wire ResponseFlags where
  wireSize ft'
   self'@(ResponseFlags x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23
           x'24 x'25 x'26)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 8 x'1 + P'.wireSizeOpt 1 8 x'2 + P'.wireSizeOpt 1 8 x'3 + P'.wireSizeOpt 1 8 x'4 +
             P'.wireSizeOpt 1 8 x'5
             + P'.wireSizeOpt 1 8 x'6
             + P'.wireSizeOpt 1 8 x'7
             + P'.wireSizeOpt 1 8 x'8
             + P'.wireSizeOpt 1 8 x'9
             + P'.wireSizeOpt 1 8 x'10
             + P'.wireSizeOpt 1 8 x'11
             + P'.wireSizeOpt 1 8 x'12
             + P'.wireSizeOpt 1 11 x'13
             + P'.wireSizeOpt 1 8 x'14
             + P'.wireSizeOpt 1 8 x'15
             + P'.wireSizeOpt 2 8 x'16
             + P'.wireSizeOpt 2 8 x'17
             + P'.wireSizeOpt 2 8 x'18
             + P'.wireSizeOpt 2 8 x'19
             + P'.wireSizeOpt 2 8 x'20
             + P'.wireSizeOpt 2 8 x'21
             + P'.wireSizeOpt 2 8 x'22
             + P'.wireSizeOpt 2 8 x'23
             + P'.wireSizeOpt 2 8 x'24
             + P'.wireSizeOpt 2 8 x'25
             + P'.wireSizeOpt 2 8 x'26)
  wirePutWithSize ft'
   self'@(ResponseFlags x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23
           x'24 x'25 x'26)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 8 8 x'1, P'.wirePutOptWithSize 16 8 x'2, P'.wirePutOptWithSize 24 8 x'3,
             P'.wirePutOptWithSize 32 8 x'4, P'.wirePutOptWithSize 40 8 x'5, P'.wirePutOptWithSize 48 8 x'6,
             P'.wirePutOptWithSize 56 8 x'7, P'.wirePutOptWithSize 64 8 x'8, P'.wirePutOptWithSize 72 8 x'9,
             P'.wirePutOptWithSize 80 8 x'10, P'.wirePutOptWithSize 88 8 x'11, P'.wirePutOptWithSize 96 8 x'12,
             P'.wirePutOptWithSize 106 11 x'13, P'.wirePutOptWithSize 112 8 x'14, P'.wirePutOptWithSize 120 8 x'15,
             P'.wirePutOptWithSize 128 8 x'16, P'.wirePutOptWithSize 136 8 x'17, P'.wirePutOptWithSize 144 8 x'18,
             P'.wirePutOptWithSize 152 8 x'19, P'.wirePutOptWithSize 160 8 x'20, P'.wirePutOptWithSize 168 8 x'21,
             P'.wirePutOptWithSize 176 8 x'22, P'.wirePutOptWithSize 184 8 x'23, P'.wirePutOptWithSize 192 8 x'24,
             P'.wirePutOptWithSize 200 8 x'25, P'.wirePutOptWithSize 208 8 x'26]
        put'FieldsSized
         = let size' = Prelude'.fst (P'.runPutM put'Fields)
               put'Size
                = do
                    P'.putSize size'
                    Prelude'.return (P'.size'WireSize size')
            in P'.sequencePutWithSize [put'Size, put'Fields]
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown' P'.discardUnknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown' P'.discardUnknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{failed_local_healthcheck = Prelude'.Just new'Field}) (P'.wireGet 8)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{no_healthy_upstream = Prelude'.Just new'Field}) (P'.wireGet 8)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{upstream_request_timeout = Prelude'.Just new'Field}) (P'.wireGet 8)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{local_reset = Prelude'.Just new'Field}) (P'.wireGet 8)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{upstream_remote_reset = Prelude'.Just new'Field}) (P'.wireGet 8)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{upstream_connection_failure = Prelude'.Just new'Field}) (P'.wireGet 8)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{upstream_connection_termination = Prelude'.Just new'Field})
                    (P'.wireGet 8)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{upstream_overflow = Prelude'.Just new'Field}) (P'.wireGet 8)
             72 -> Prelude'.fmap (\ !new'Field -> old'Self{no_route_found = Prelude'.Just new'Field}) (P'.wireGet 8)
             80 -> Prelude'.fmap (\ !new'Field -> old'Self{delay_injected = Prelude'.Just new'Field}) (P'.wireGet 8)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{fault_injected = Prelude'.Just new'Field}) (P'.wireGet 8)
             96 -> Prelude'.fmap (\ !new'Field -> old'Self{rate_limited = Prelude'.Just new'Field}) (P'.wireGet 8)
             106 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{unauthorized_details = P'.mergeAppend (unauthorized_details old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             112 -> Prelude'.fmap (\ !new'Field -> old'Self{rate_limit_service_error = Prelude'.Just new'Field}) (P'.wireGet 8)
             120 -> Prelude'.fmap (\ !new'Field -> old'Self{downstream_connection_termination = Prelude'.Just new'Field})
                     (P'.wireGet 8)
             128 -> Prelude'.fmap (\ !new'Field -> old'Self{upstream_retry_limit_exceeded = Prelude'.Just new'Field}) (P'.wireGet 8)
             136 -> Prelude'.fmap (\ !new'Field -> old'Self{stream_idle_timeout = Prelude'.Just new'Field}) (P'.wireGet 8)
             144 -> Prelude'.fmap (\ !new'Field -> old'Self{invalid_envoy_request_headers = Prelude'.Just new'Field}) (P'.wireGet 8)
             152 -> Prelude'.fmap (\ !new'Field -> old'Self{downstream_protocol_error = Prelude'.Just new'Field}) (P'.wireGet 8)
             160 -> Prelude'.fmap (\ !new'Field -> old'Self{upstream_max_stream_duration_reached = Prelude'.Just new'Field})
                     (P'.wireGet 8)
             168 -> Prelude'.fmap (\ !new'Field -> old'Self{response_from_cache_filter = Prelude'.Just new'Field}) (P'.wireGet 8)
             176 -> Prelude'.fmap (\ !new'Field -> old'Self{no_filter_config_found = Prelude'.Just new'Field}) (P'.wireGet 8)
             184 -> Prelude'.fmap (\ !new'Field -> old'Self{duration_timeout = Prelude'.Just new'Field}) (P'.wireGet 8)
             192 -> Prelude'.fmap (\ !new'Field -> old'Self{upstream_protocol_error = Prelude'.Just new'Field}) (P'.wireGet 8)
             200 -> Prelude'.fmap (\ !new'Field -> old'Self{no_cluster_found = Prelude'.Just new'Field}) (P'.wireGet 8)
             208 -> Prelude'.fmap (\ !new'Field -> old'Self{overload_manager = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ResponseFlags) ResponseFlags where
  getVal m' f' = f' m'

instance P'.GPB ResponseFlags

instance P'.ReflectDescriptor ResponseFlags where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [])
      (P'.fromDistinctAscList
        [8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 106, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.ResponseFlags\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\"], baseName = MName \"ResponseFlags\"}, descFilePath = [\"AccesslogProto\",\"ResponseFlags.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.failed_local_healthcheck\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"failed_local_healthcheck\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.no_healthy_upstream\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"no_healthy_upstream\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.upstream_request_timeout\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"upstream_request_timeout\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.local_reset\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"local_reset\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.upstream_remote_reset\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"upstream_remote_reset\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.upstream_connection_failure\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"upstream_connection_failure\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.upstream_connection_termination\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"upstream_connection_termination\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.upstream_overflow\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"upstream_overflow\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.no_route_found\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"no_route_found\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 72}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.delay_injected\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"delay_injected\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 80}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.fault_injected\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"fault_injected\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.rate_limited\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"rate_limited\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 96}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.unauthorized_details\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"unauthorized_details\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 106}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.ResponseFlags.Unauthorized\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName = MName \"Unauthorized\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.rate_limit_service_error\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"rate_limit_service_error\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 112}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.downstream_connection_termination\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"downstream_connection_termination\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 120}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.upstream_retry_limit_exceeded\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"upstream_retry_limit_exceeded\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 128}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.stream_idle_timeout\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"stream_idle_timeout\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 17}, wireTag = WireTag {getWireTag = 136}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.invalid_envoy_request_headers\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"invalid_envoy_request_headers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 18}, wireTag = WireTag {getWireTag = 144}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.downstream_protocol_error\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"downstream_protocol_error\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 19}, wireTag = WireTag {getWireTag = 152}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.upstream_max_stream_duration_reached\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"upstream_max_stream_duration_reached\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 20}, wireTag = WireTag {getWireTag = 160}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.response_from_cache_filter\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"response_from_cache_filter\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 21}, wireTag = WireTag {getWireTag = 168}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.no_filter_config_found\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"no_filter_config_found\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 22}, wireTag = WireTag {getWireTag = 176}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.duration_timeout\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"duration_timeout\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 23}, wireTag = WireTag {getWireTag = 184}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.upstream_protocol_error\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"upstream_protocol_error\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 24}, wireTag = WireTag {getWireTag = 192}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.no_cluster_found\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"no_cluster_found\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 25}, wireTag = WireTag {getWireTag = 200}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.overload_manager\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName' = FName \"overload_manager\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 26}, wireTag = WireTag {getWireTag = 208}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType ResponseFlags where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ResponseFlags where
  textPut msg
   = do
       P'.tellT "failed_local_healthcheck" (failed_local_healthcheck msg)
       P'.tellT "no_healthy_upstream" (no_healthy_upstream msg)
       P'.tellT "upstream_request_timeout" (upstream_request_timeout msg)
       P'.tellT "local_reset" (local_reset msg)
       P'.tellT "upstream_remote_reset" (upstream_remote_reset msg)
       P'.tellT "upstream_connection_failure" (upstream_connection_failure msg)
       P'.tellT "upstream_connection_termination" (upstream_connection_termination msg)
       P'.tellT "upstream_overflow" (upstream_overflow msg)
       P'.tellT "no_route_found" (no_route_found msg)
       P'.tellT "delay_injected" (delay_injected msg)
       P'.tellT "fault_injected" (fault_injected msg)
       P'.tellT "rate_limited" (rate_limited msg)
       P'.tellT "unauthorized_details" (unauthorized_details msg)
       P'.tellT "rate_limit_service_error" (rate_limit_service_error msg)
       P'.tellT "downstream_connection_termination" (downstream_connection_termination msg)
       P'.tellT "upstream_retry_limit_exceeded" (upstream_retry_limit_exceeded msg)
       P'.tellT "stream_idle_timeout" (stream_idle_timeout msg)
       P'.tellT "invalid_envoy_request_headers" (invalid_envoy_request_headers msg)
       P'.tellT "downstream_protocol_error" (downstream_protocol_error msg)
       P'.tellT "upstream_max_stream_duration_reached" (upstream_max_stream_duration_reached msg)
       P'.tellT "response_from_cache_filter" (response_from_cache_filter msg)
       P'.tellT "no_filter_config_found" (no_filter_config_found msg)
       P'.tellT "duration_timeout" (duration_timeout msg)
       P'.tellT "upstream_protocol_error" (upstream_protocol_error msg)
       P'.tellT "no_cluster_found" (no_cluster_found msg)
       P'.tellT "overload_manager" (overload_manager msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'failed_local_healthcheck, parse'no_healthy_upstream, parse'upstream_request_timeout, parse'local_reset,
                   parse'upstream_remote_reset, parse'upstream_connection_failure, parse'upstream_connection_termination,
                   parse'upstream_overflow, parse'no_route_found, parse'delay_injected, parse'fault_injected, parse'rate_limited,
                   parse'unauthorized_details, parse'rate_limit_service_error, parse'downstream_connection_termination,
                   parse'upstream_retry_limit_exceeded, parse'stream_idle_timeout, parse'invalid_envoy_request_headers,
                   parse'downstream_protocol_error, parse'upstream_max_stream_duration_reached, parse'response_from_cache_filter,
                   parse'no_filter_config_found, parse'duration_timeout, parse'upstream_protocol_error, parse'no_cluster_found,
                   parse'overload_manager])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'failed_local_healthcheck
         = Prelude'.fmap (\ v o -> o{failed_local_healthcheck = v}) (P'.try (P'.getT "failed_local_healthcheck"))
        parse'no_healthy_upstream = Prelude'.fmap (\ v o -> o{no_healthy_upstream = v}) (P'.try (P'.getT "no_healthy_upstream"))
        parse'upstream_request_timeout
         = Prelude'.fmap (\ v o -> o{upstream_request_timeout = v}) (P'.try (P'.getT "upstream_request_timeout"))
        parse'local_reset = Prelude'.fmap (\ v o -> o{local_reset = v}) (P'.try (P'.getT "local_reset"))
        parse'upstream_remote_reset
         = Prelude'.fmap (\ v o -> o{upstream_remote_reset = v}) (P'.try (P'.getT "upstream_remote_reset"))
        parse'upstream_connection_failure
         = Prelude'.fmap (\ v o -> o{upstream_connection_failure = v}) (P'.try (P'.getT "upstream_connection_failure"))
        parse'upstream_connection_termination
         = Prelude'.fmap (\ v o -> o{upstream_connection_termination = v}) (P'.try (P'.getT "upstream_connection_termination"))
        parse'upstream_overflow = Prelude'.fmap (\ v o -> o{upstream_overflow = v}) (P'.try (P'.getT "upstream_overflow"))
        parse'no_route_found = Prelude'.fmap (\ v o -> o{no_route_found = v}) (P'.try (P'.getT "no_route_found"))
        parse'delay_injected = Prelude'.fmap (\ v o -> o{delay_injected = v}) (P'.try (P'.getT "delay_injected"))
        parse'fault_injected = Prelude'.fmap (\ v o -> o{fault_injected = v}) (P'.try (P'.getT "fault_injected"))
        parse'rate_limited = Prelude'.fmap (\ v o -> o{rate_limited = v}) (P'.try (P'.getT "rate_limited"))
        parse'unauthorized_details = Prelude'.fmap (\ v o -> o{unauthorized_details = v}) (P'.try (P'.getT "unauthorized_details"))
        parse'rate_limit_service_error
         = Prelude'.fmap (\ v o -> o{rate_limit_service_error = v}) (P'.try (P'.getT "rate_limit_service_error"))
        parse'downstream_connection_termination
         = Prelude'.fmap (\ v o -> o{downstream_connection_termination = v}) (P'.try (P'.getT "downstream_connection_termination"))
        parse'upstream_retry_limit_exceeded
         = Prelude'.fmap (\ v o -> o{upstream_retry_limit_exceeded = v}) (P'.try (P'.getT "upstream_retry_limit_exceeded"))
        parse'stream_idle_timeout = Prelude'.fmap (\ v o -> o{stream_idle_timeout = v}) (P'.try (P'.getT "stream_idle_timeout"))
        parse'invalid_envoy_request_headers
         = Prelude'.fmap (\ v o -> o{invalid_envoy_request_headers = v}) (P'.try (P'.getT "invalid_envoy_request_headers"))
        parse'downstream_protocol_error
         = Prelude'.fmap (\ v o -> o{downstream_protocol_error = v}) (P'.try (P'.getT "downstream_protocol_error"))
        parse'upstream_max_stream_duration_reached
         = Prelude'.fmap (\ v o -> o{upstream_max_stream_duration_reached = v})
            (P'.try (P'.getT "upstream_max_stream_duration_reached"))
        parse'response_from_cache_filter
         = Prelude'.fmap (\ v o -> o{response_from_cache_filter = v}) (P'.try (P'.getT "response_from_cache_filter"))
        parse'no_filter_config_found
         = Prelude'.fmap (\ v o -> o{no_filter_config_found = v}) (P'.try (P'.getT "no_filter_config_found"))
        parse'duration_timeout = Prelude'.fmap (\ v o -> o{duration_timeout = v}) (P'.try (P'.getT "duration_timeout"))
        parse'upstream_protocol_error
         = Prelude'.fmap (\ v o -> o{upstream_protocol_error = v}) (P'.try (P'.getT "upstream_protocol_error"))
        parse'no_cluster_found = Prelude'.fmap (\ v o -> o{no_cluster_found = v}) (P'.try (P'.getT "no_cluster_found"))
        parse'overload_manager = Prelude'.fmap (\ v o -> o{overload_manager = v}) (P'.try (P'.getT "overload_manager"))