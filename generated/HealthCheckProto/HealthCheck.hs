{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HealthCheckProto.HealthCheck (HealthCheck(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified DurationProto.Duration as DurationProto
import qualified EventServiceConfigProto.EventServiceConfig as EventServiceConfigProto
import qualified HealthCheckProto.HealthCheck.Health_checker as HealthCheckProto.HealthCheck.Health_checker
       (Health_checker(..), get'http_health_check, get'tcp_health_check, get'grpc_health_check, get'custom_health_check)
import qualified HealthCheckProto.HealthCheck.TlsOptions as HealthCheckProto.HealthCheck
import qualified StructProto.Struct as StructProto
import qualified WrappersProto.BoolValue as WrappersProto
import qualified WrappersProto.UInt32Value as WrappersProto

data HealthCheck = HealthCheck{timeout :: !(P'.Maybe DurationProto.Duration), interval :: !(P'.Maybe DurationProto.Duration),
                               initial_jitter :: !(P'.Maybe DurationProto.Duration),
                               interval_jitter :: !(P'.Maybe DurationProto.Duration),
                               interval_jitter_percent :: !(P'.Maybe P'.Word32),
                               unhealthy_threshold :: !(P'.Maybe WrappersProto.UInt32Value),
                               healthy_threshold :: !(P'.Maybe WrappersProto.UInt32Value),
                               alt_port :: !(P'.Maybe WrappersProto.UInt32Value),
                               reuse_connection :: !(P'.Maybe WrappersProto.BoolValue),
                               no_traffic_interval :: !(P'.Maybe DurationProto.Duration),
                               no_traffic_healthy_interval :: !(P'.Maybe DurationProto.Duration),
                               unhealthy_interval :: !(P'.Maybe DurationProto.Duration),
                               unhealthy_edge_interval :: !(P'.Maybe DurationProto.Duration),
                               healthy_edge_interval :: !(P'.Maybe DurationProto.Duration), event_log_path :: !(P'.Maybe P'.Utf8),
                               event_service :: !(P'.Maybe EventServiceConfigProto.EventServiceConfig),
                               always_log_health_check_failures :: !(P'.Maybe P'.Bool),
                               tls_options :: !(P'.Maybe HealthCheckProto.HealthCheck.TlsOptions),
                               transport_socket_match_criteria :: !(P'.Maybe StructProto.Struct),
                               health_checker :: P'.Maybe (HealthCheckProto.HealthCheck.Health_checker.Health_checker)}
                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable HealthCheck where
  mergeAppend (HealthCheck x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20)
   (HealthCheck y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16 y'17 y'18 y'19 y'20)
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
      in HealthCheck z'1 z'2 z'3 z'4 z'5 z'6 z'7 z'8 z'9 z'10 z'11 z'12 z'13 z'14 z'15 z'16 z'17 z'18 z'19 z'20

instance P'.Default HealthCheck where
  defaultValue
   = HealthCheck P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
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

instance P'.Wire HealthCheck where
  wireSize ft' self'@(HealthCheck x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 2 11 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 2 13 x'5
             + P'.wireSizeOpt 1 11 x'6
             + P'.wireSizeOpt 1 11 x'7
             + P'.wireSizeOpt 1 11 x'8
             + P'.wireSizeOpt 1 11 x'9
             + P'.wireSizeOpt 1 11 x'10
             + P'.wireSizeOpt 2 11 x'11
             + P'.wireSizeOpt 1 11 x'12
             + P'.wireSizeOpt 1 11 x'13
             + P'.wireSizeOpt 2 11 x'14
             + P'.wireSizeOpt 2 9 x'15
             + P'.wireSizeOpt 2 11 x'16
             + P'.wireSizeOpt 2 8 x'17
             + P'.wireSizeOpt 2 11 x'18
             + P'.wireSizeOpt 2 11 x'19
             + P'.wireSizeOpt 1 11 (HealthCheckProto.HealthCheck.Health_checker.get'http_health_check Prelude'.=<< x'20)
             + P'.wireSizeOpt 1 11 (HealthCheckProto.HealthCheck.Health_checker.get'tcp_health_check Prelude'.=<< x'20)
             + P'.wireSizeOpt 1 11 (HealthCheckProto.HealthCheck.Health_checker.get'grpc_health_check Prelude'.=<< x'20)
             + P'.wireSizeOpt 1 11 (HealthCheckProto.HealthCheck.Health_checker.get'custom_health_check Prelude'.=<< x'20))
  wirePutWithSize ft' self'@(HealthCheck x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 18 11 x'2, P'.wirePutOptWithSize 26 11 x'4,
             P'.wirePutOptWithSize 34 11 x'6, P'.wirePutOptWithSize 42 11 x'7, P'.wirePutOptWithSize 50 11 x'8,
             P'.wirePutOptWithSize 58 11 x'9,
             P'.wirePutOptWithSize 66 11 (HealthCheckProto.HealthCheck.Health_checker.get'http_health_check Prelude'.=<< x'20),
             P'.wirePutOptWithSize 74 11 (HealthCheckProto.HealthCheck.Health_checker.get'tcp_health_check Prelude'.=<< x'20),
             P'.wirePutOptWithSize 90 11 (HealthCheckProto.HealthCheck.Health_checker.get'grpc_health_check Prelude'.=<< x'20),
             P'.wirePutOptWithSize 98 11 x'10,
             P'.wirePutOptWithSize 106 11 (HealthCheckProto.HealthCheck.Health_checker.get'custom_health_check Prelude'.=<< x'20),
             P'.wirePutOptWithSize 114 11 x'12, P'.wirePutOptWithSize 122 11 x'13, P'.wirePutOptWithSize 130 11 x'14,
             P'.wirePutOptWithSize 138 9 x'15, P'.wirePutOptWithSize 144 13 x'5, P'.wirePutOptWithSize 152 8 x'17,
             P'.wirePutOptWithSize 162 11 x'3, P'.wirePutOptWithSize 170 11 x'18, P'.wirePutOptWithSize 178 11 x'16,
             P'.wirePutOptWithSize 186 11 x'19, P'.wirePutOptWithSize 194 11 x'11]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{timeout = P'.mergeAppend (timeout old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{interval = P'.mergeAppend (interval old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             162 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{initial_jitter = P'.mergeAppend (initial_jitter old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{interval_jitter = P'.mergeAppend (interval_jitter old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             144 -> Prelude'.fmap (\ !new'Field -> old'Self{interval_jitter_percent = Prelude'.Just new'Field}) (P'.wireGet 13)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{unhealthy_threshold = P'.mergeAppend (unhealthy_threshold old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{healthy_threshold = P'.mergeAppend (healthy_threshold old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{alt_port = P'.mergeAppend (alt_port old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             58 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{reuse_connection = P'.mergeAppend (reuse_connection old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             98 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{no_traffic_interval = P'.mergeAppend (no_traffic_interval old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             194 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{no_traffic_healthy_interval =
                                 P'.mergeAppend (no_traffic_healthy_interval old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             114 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{unhealthy_interval = P'.mergeAppend (unhealthy_interval old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             122 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{unhealthy_edge_interval =
                                 P'.mergeAppend (unhealthy_edge_interval old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             130 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{healthy_edge_interval = P'.mergeAppend (healthy_edge_interval old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             138 -> Prelude'.fmap (\ !new'Field -> old'Self{event_log_path = Prelude'.Just new'Field}) (P'.wireGet 9)
             178 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{event_service = P'.mergeAppend (event_service old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             152 -> Prelude'.fmap (\ !new'Field -> old'Self{always_log_health_check_failures = Prelude'.Just new'Field})
                     (P'.wireGet 8)
             170 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{tls_options = P'.mergeAppend (tls_options old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             186 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{transport_socket_match_criteria =
                                 P'.mergeAppend (transport_socket_match_criteria old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             66 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{health_checker =
                                P'.mergeAppend (health_checker old'Self)
                                 (Prelude'.Just (HealthCheckProto.HealthCheck.Health_checker.Http_health_check new'Field))})
                    (P'.wireGet 11)
             74 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{health_checker =
                                P'.mergeAppend (health_checker old'Self)
                                 (Prelude'.Just (HealthCheckProto.HealthCheck.Health_checker.Tcp_health_check new'Field))})
                    (P'.wireGet 11)
             90 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{health_checker =
                                P'.mergeAppend (health_checker old'Self)
                                 (Prelude'.Just (HealthCheckProto.HealthCheck.Health_checker.Grpc_health_check new'Field))})
                    (P'.wireGet 11)
             106 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{health_checker =
                                 P'.mergeAppend (health_checker old'Self)
                                  (Prelude'.Just (HealthCheckProto.HealthCheck.Health_checker.Custom_health_check new'Field))})
                     (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> HealthCheck) HealthCheck where
  getVal m' f' = f' m'

instance P'.GPB HealthCheck

instance P'.ReflectDescriptor HealthCheck where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [])
      (P'.fromDistinctAscList [10, 18, 26, 34, 42, 50, 58, 98, 114, 122, 130, 138, 144, 152, 162, 170, 178, 186, 194])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\"], baseName = MName \"HealthCheck\"}, descFilePath = [\"HealthCheckProto\",\"HealthCheck.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.timeout\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"timeout\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.interval\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"interval\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.initial_jitter\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"initial_jitter\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 20}, wireTag = WireTag {getWireTag = 162}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.interval_jitter\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"interval_jitter\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.interval_jitter_percent\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"interval_jitter_percent\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 18}, wireTag = WireTag {getWireTag = 144}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.unhealthy_threshold\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"unhealthy_threshold\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.healthy_threshold\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"healthy_threshold\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.alt_port\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"alt_port\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.reuse_connection\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"reuse_connection\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.BoolValue\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"BoolValue\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.no_traffic_interval\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"no_traffic_interval\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 98}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.no_traffic_healthy_interval\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"no_traffic_healthy_interval\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 24}, wireTag = WireTag {getWireTag = 194}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.unhealthy_interval\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"unhealthy_interval\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 114}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.unhealthy_edge_interval\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"unhealthy_edge_interval\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 122}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.healthy_edge_interval\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"healthy_edge_interval\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 130}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.event_log_path\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"event_log_path\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 17}, wireTag = WireTag {getWireTag = 138}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.event_service\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"event_service\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 22}, wireTag = WireTag {getWireTag = 178}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.EventServiceConfig\", haskellPrefix = [], parentModule = [MName \"EventServiceConfigProto\"], baseName = MName \"EventServiceConfig\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.always_log_health_check_failures\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"always_log_health_check_failures\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 19}, wireTag = WireTag {getWireTag = 152}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.tls_options\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"tls_options\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 21}, wireTag = WireTag {getWireTag = 170}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.TlsOptions\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName = MName \"TlsOptions\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.transport_socket_match_criteria\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"transport_socket_match_criteria\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 23}, wireTag = WireTag {getWireTag = 186}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Struct\", haskellPrefix = [], parentModule = [MName \"StructProto\"], baseName = MName \"Struct\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.health_checker\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName = MName \"Health_checker\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.health_checker\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName' = FName \"health_checker\", baseNamePrefix' = \"\"}, oneofFilePath = [\"HealthCheckProto\",\"HealthCheck\",\"Health_checker.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.health_checker.http_health_check\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"Health_checker\"], baseName = MName \"Http_health_check\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.health_checker.http_health_check\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"Health_checker\"], baseName' = FName \"http_health_check\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.HttpHealthCheck\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName = MName \"HttpHealthCheck\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.health_checker.tcp_health_check\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"Health_checker\"], baseName = MName \"Tcp_health_check\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.health_checker.tcp_health_check\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"Health_checker\"], baseName' = FName \"tcp_health_check\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.TcpHealthCheck\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName = MName \"TcpHealthCheck\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.health_checker.grpc_health_check\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"Health_checker\"], baseName = MName \"Grpc_health_check\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.health_checker.grpc_health_check\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"Health_checker\"], baseName' = FName \"grpc_health_check\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.GrpcHealthCheck\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName = MName \"GrpcHealthCheck\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.health_checker.custom_health_check\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"Health_checker\"], baseName = MName \"Custom_health_check\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.health_checker.custom_health_check\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"Health_checker\"], baseName' = FName \"custom_health_check\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 106}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.CustomHealthCheck\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName = MName \"CustomHealthCheck\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType HealthCheck where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg HealthCheck where
  textPut msg
   = do
       P'.tellT "timeout" (timeout msg)
       P'.tellT "interval" (interval msg)
       P'.tellT "initial_jitter" (initial_jitter msg)
       P'.tellT "interval_jitter" (interval_jitter msg)
       P'.tellT "interval_jitter_percent" (interval_jitter_percent msg)
       P'.tellT "unhealthy_threshold" (unhealthy_threshold msg)
       P'.tellT "healthy_threshold" (healthy_threshold msg)
       P'.tellT "alt_port" (alt_port msg)
       P'.tellT "reuse_connection" (reuse_connection msg)
       P'.tellT "no_traffic_interval" (no_traffic_interval msg)
       P'.tellT "no_traffic_healthy_interval" (no_traffic_healthy_interval msg)
       P'.tellT "unhealthy_interval" (unhealthy_interval msg)
       P'.tellT "unhealthy_edge_interval" (unhealthy_edge_interval msg)
       P'.tellT "healthy_edge_interval" (healthy_edge_interval msg)
       P'.tellT "event_log_path" (event_log_path msg)
       P'.tellT "event_service" (event_service msg)
       P'.tellT "always_log_health_check_failures" (always_log_health_check_failures msg)
       P'.tellT "tls_options" (tls_options msg)
       P'.tellT "transport_socket_match_criteria" (transport_socket_match_criteria msg)
       case (health_checker msg) of
         Prelude'.Just (HealthCheckProto.HealthCheck.Health_checker.Http_health_check http_health_check) -> P'.tellT
                                                                                                             "http_health_check"
                                                                                                             http_health_check
         Prelude'.Just (HealthCheckProto.HealthCheck.Health_checker.Tcp_health_check tcp_health_check) -> P'.tellT
                                                                                                           "tcp_health_check"
                                                                                                           tcp_health_check
         Prelude'.Just (HealthCheckProto.HealthCheck.Health_checker.Grpc_health_check grpc_health_check) -> P'.tellT
                                                                                                             "grpc_health_check"
                                                                                                             grpc_health_check
         Prelude'.Just (HealthCheckProto.HealthCheck.Health_checker.Custom_health_check custom_health_check) -> P'.tellT
                                                                                                                 "custom_health_check"
                                                                                                                 custom_health_check
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'timeout, parse'interval, parse'initial_jitter, parse'interval_jitter, parse'interval_jitter_percent,
                   parse'unhealthy_threshold, parse'healthy_threshold, parse'alt_port, parse'reuse_connection,
                   parse'no_traffic_interval, parse'no_traffic_healthy_interval, parse'unhealthy_interval,
                   parse'unhealthy_edge_interval, parse'healthy_edge_interval, parse'event_log_path, parse'event_service,
                   parse'always_log_health_check_failures, parse'tls_options, parse'transport_socket_match_criteria,
                   parse'health_checker])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'timeout = Prelude'.fmap (\ v o -> o{timeout = v}) (P'.try (P'.getT "timeout"))
        parse'interval = Prelude'.fmap (\ v o -> o{interval = v}) (P'.try (P'.getT "interval"))
        parse'initial_jitter = Prelude'.fmap (\ v o -> o{initial_jitter = v}) (P'.try (P'.getT "initial_jitter"))
        parse'interval_jitter = Prelude'.fmap (\ v o -> o{interval_jitter = v}) (P'.try (P'.getT "interval_jitter"))
        parse'interval_jitter_percent
         = Prelude'.fmap (\ v o -> o{interval_jitter_percent = v}) (P'.try (P'.getT "interval_jitter_percent"))
        parse'unhealthy_threshold = Prelude'.fmap (\ v o -> o{unhealthy_threshold = v}) (P'.try (P'.getT "unhealthy_threshold"))
        parse'healthy_threshold = Prelude'.fmap (\ v o -> o{healthy_threshold = v}) (P'.try (P'.getT "healthy_threshold"))
        parse'alt_port = Prelude'.fmap (\ v o -> o{alt_port = v}) (P'.try (P'.getT "alt_port"))
        parse'reuse_connection = Prelude'.fmap (\ v o -> o{reuse_connection = v}) (P'.try (P'.getT "reuse_connection"))
        parse'no_traffic_interval = Prelude'.fmap (\ v o -> o{no_traffic_interval = v}) (P'.try (P'.getT "no_traffic_interval"))
        parse'no_traffic_healthy_interval
         = Prelude'.fmap (\ v o -> o{no_traffic_healthy_interval = v}) (P'.try (P'.getT "no_traffic_healthy_interval"))
        parse'unhealthy_interval = Prelude'.fmap (\ v o -> o{unhealthy_interval = v}) (P'.try (P'.getT "unhealthy_interval"))
        parse'unhealthy_edge_interval
         = Prelude'.fmap (\ v o -> o{unhealthy_edge_interval = v}) (P'.try (P'.getT "unhealthy_edge_interval"))
        parse'healthy_edge_interval
         = Prelude'.fmap (\ v o -> o{healthy_edge_interval = v}) (P'.try (P'.getT "healthy_edge_interval"))
        parse'event_log_path = Prelude'.fmap (\ v o -> o{event_log_path = v}) (P'.try (P'.getT "event_log_path"))
        parse'event_service = Prelude'.fmap (\ v o -> o{event_service = v}) (P'.try (P'.getT "event_service"))
        parse'always_log_health_check_failures
         = Prelude'.fmap (\ v o -> o{always_log_health_check_failures = v}) (P'.try (P'.getT "always_log_health_check_failures"))
        parse'tls_options = Prelude'.fmap (\ v o -> o{tls_options = v}) (P'.try (P'.getT "tls_options"))
        parse'transport_socket_match_criteria
         = Prelude'.fmap (\ v o -> o{transport_socket_match_criteria = v}) (P'.try (P'.getT "transport_socket_match_criteria"))
        parse'health_checker
         = P'.try (P'.choice [parse'http_health_check, parse'tcp_health_check, parse'grpc_health_check, parse'custom_health_check])
          where
              parse'http_health_check
               = P'.try
                  (do
                     v <- P'.getT "http_health_check"
                     Prelude'.return
                      (\ s -> s{health_checker = Prelude'.Just (HealthCheckProto.HealthCheck.Health_checker.Http_health_check v)}))
              parse'tcp_health_check
               = P'.try
                  (do
                     v <- P'.getT "tcp_health_check"
                     Prelude'.return
                      (\ s -> s{health_checker = Prelude'.Just (HealthCheckProto.HealthCheck.Health_checker.Tcp_health_check v)}))
              parse'grpc_health_check
               = P'.try
                  (do
                     v <- P'.getT "grpc_health_check"
                     Prelude'.return
                      (\ s -> s{health_checker = Prelude'.Just (HealthCheckProto.HealthCheck.Health_checker.Grpc_health_check v)}))
              parse'custom_health_check
               = P'.try
                  (do
                     v <- P'.getT "custom_health_check"
                     Prelude'.return
                      (\ s ->
                        s{health_checker = Prelude'.Just (HealthCheckProto.HealthCheck.Health_checker.Custom_health_check v)}))