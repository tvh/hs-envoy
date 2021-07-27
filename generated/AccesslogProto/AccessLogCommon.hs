{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AccesslogProto.AccessLogCommon (AccessLogCommon(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AccesslogProto.AccessLogCommon.FilterStateObjectsEntry as AccesslogProto.AccessLogCommon
import qualified AccesslogProto.ResponseFlags as AccesslogProto
import qualified AccesslogProto.TLSProperties as AccesslogProto
import qualified AddressProto.Address as AddressProto
import qualified AnyProto.Any as AnyProto
import qualified BaseProto.Metadata as BaseProto
import qualified DurationProto.Duration as DurationProto
import qualified TimestampProto.Timestamp as TimestampProto

data AccessLogCommon = AccessLogCommon{sample_rate :: !(P'.Maybe P'.Double),
                                       downstream_remote_address :: !(P'.Maybe AddressProto.Address),
                                       downstream_local_address :: !(P'.Maybe AddressProto.Address),
                                       tls_properties :: !(P'.Maybe AccesslogProto.TLSProperties),
                                       start_time :: !(P'.Maybe TimestampProto.Timestamp),
                                       time_to_last_rx_byte :: !(P'.Maybe DurationProto.Duration),
                                       time_to_first_upstream_tx_byte :: !(P'.Maybe DurationProto.Duration),
                                       time_to_last_upstream_tx_byte :: !(P'.Maybe DurationProto.Duration),
                                       time_to_first_upstream_rx_byte :: !(P'.Maybe DurationProto.Duration),
                                       time_to_last_upstream_rx_byte :: !(P'.Maybe DurationProto.Duration),
                                       time_to_first_downstream_tx_byte :: !(P'.Maybe DurationProto.Duration),
                                       time_to_last_downstream_tx_byte :: !(P'.Maybe DurationProto.Duration),
                                       upstream_remote_address :: !(P'.Maybe AddressProto.Address),
                                       upstream_local_address :: !(P'.Maybe AddressProto.Address),
                                       upstream_cluster :: !(P'.Maybe P'.Utf8),
                                       response_flags :: !(P'.Maybe AccesslogProto.ResponseFlags),
                                       metadata :: !(P'.Maybe BaseProto.Metadata),
                                       upstream_transport_failure_reason :: !(P'.Maybe P'.Utf8), route_name :: !(P'.Maybe P'.Utf8),
                                       downstream_direct_remote_address :: !(P'.Maybe AddressProto.Address),
                                       filter_state_objects :: P'.Map (P'.Utf8) (AnyProto.Any)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable AccessLogCommon where
  mergeAppend (AccessLogCommon x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21)
   (AccessLogCommon y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16 y'17 y'18 y'19 y'20 y'21)
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
      in AccessLogCommon z'1 z'2 z'3 z'4 z'5 z'6 z'7 z'8 z'9 z'10 z'11 z'12 z'13 z'14 z'15 z'16 z'17 z'18 z'19 z'20 z'21

instance P'.Default AccessLogCommon where
  defaultValue
   = AccessLogCommon P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
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

instance P'.Wire AccessLogCommon where
  wireSize ft'
   self'@(AccessLogCommon x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 1 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 11 x'5
             + P'.wireSizeOpt 1 11 x'6
             + P'.wireSizeOpt 1 11 x'7
             + P'.wireSizeOpt 1 11 x'8
             + P'.wireSizeOpt 1 11 x'9
             + P'.wireSizeOpt 1 11 x'10
             + P'.wireSizeOpt 1 11 x'11
             + P'.wireSizeOpt 1 11 x'12
             + P'.wireSizeOpt 1 11 x'13
             + P'.wireSizeOpt 1 11 x'14
             + P'.wireSizeOpt 1 9 x'15
             + P'.wireSizeOpt 2 11 x'16
             + P'.wireSizeOpt 2 11 x'17
             + P'.wireSizeOpt 2 9 x'18
             + P'.wireSizeOpt 2 9 x'19
             + P'.wireSizeOpt 2 11 x'20
             + P'.wireSizeRep 2 11 (AccesslogProto.AccessLogCommon.filterStateObjectsEntryToSeq x'21))
  wirePutWithSize ft'
   self'@(AccessLogCommon x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 9 1 x'1, P'.wirePutOptWithSize 18 11 x'2, P'.wirePutOptWithSize 26 11 x'3,
             P'.wirePutOptWithSize 34 11 x'4, P'.wirePutOptWithSize 42 11 x'5, P'.wirePutOptWithSize 50 11 x'6,
             P'.wirePutOptWithSize 58 11 x'7, P'.wirePutOptWithSize 66 11 x'8, P'.wirePutOptWithSize 74 11 x'9,
             P'.wirePutOptWithSize 82 11 x'10, P'.wirePutOptWithSize 90 11 x'11, P'.wirePutOptWithSize 98 11 x'12,
             P'.wirePutOptWithSize 106 11 x'13, P'.wirePutOptWithSize 114 11 x'14, P'.wirePutOptWithSize 122 9 x'15,
             P'.wirePutOptWithSize 130 11 x'16, P'.wirePutOptWithSize 138 11 x'17, P'.wirePutOptWithSize 146 9 x'18,
             P'.wirePutOptWithSize 154 9 x'19, P'.wirePutOptWithSize 162 11 x'20,
             P'.wirePutRepWithSize 170 11 (AccesslogProto.AccessLogCommon.filterStateObjectsEntryToSeq x'21)]
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
             9 -> Prelude'.fmap (\ !new'Field -> old'Self{sample_rate = Prelude'.Just new'Field}) (P'.wireGet 1)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{downstream_remote_address =
                                P'.mergeAppend (downstream_remote_address old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{downstream_local_address =
                                P'.mergeAppend (downstream_local_address old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{tls_properties = P'.mergeAppend (tls_properties old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{start_time = P'.mergeAppend (start_time old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{time_to_last_rx_byte = P'.mergeAppend (time_to_last_rx_byte old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             58 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{time_to_first_upstream_tx_byte =
                                P'.mergeAppend (time_to_first_upstream_tx_byte old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             66 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{time_to_last_upstream_tx_byte =
                                P'.mergeAppend (time_to_last_upstream_tx_byte old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             74 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{time_to_first_upstream_rx_byte =
                                P'.mergeAppend (time_to_first_upstream_rx_byte old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             82 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{time_to_last_upstream_rx_byte =
                                P'.mergeAppend (time_to_last_upstream_rx_byte old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             90 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{time_to_first_downstream_tx_byte =
                                P'.mergeAppend (time_to_first_downstream_tx_byte old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             98 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{time_to_last_downstream_tx_byte =
                                P'.mergeAppend (time_to_last_downstream_tx_byte old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             106 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{upstream_remote_address =
                                 P'.mergeAppend (upstream_remote_address old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             114 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{upstream_local_address =
                                 P'.mergeAppend (upstream_local_address old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             122 -> Prelude'.fmap (\ !new'Field -> old'Self{upstream_cluster = Prelude'.Just new'Field}) (P'.wireGet 9)
             130 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{response_flags = P'.mergeAppend (response_flags old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             138 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{metadata = P'.mergeAppend (metadata old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             146 -> Prelude'.fmap (\ !new'Field -> old'Self{upstream_transport_failure_reason = Prelude'.Just new'Field})
                     (P'.wireGet 9)
             154 -> Prelude'.fmap (\ !new'Field -> old'Self{route_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             162 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{downstream_direct_remote_address =
                                 P'.mergeAppend (downstream_direct_remote_address old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             170 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{filter_state_objects =
                                 P'.appendMap (filter_state_objects old'Self)
                                  (AccesslogProto.AccessLogCommon.filterStateObjectsEntryToPair new'Field)})
                     (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> AccessLogCommon) AccessLogCommon where
  getVal m' f' = f' m'

instance P'.GPB AccessLogCommon

instance P'.ReflectDescriptor AccessLogCommon where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [])
      (P'.fromDistinctAscList [9, 18, 26, 34, 42, 50, 58, 66, 74, 82, 90, 98, 106, 114, 122, 130, 138, 146, 154, 162, 170])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.AccessLogCommon\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\"], baseName = MName \"AccessLogCommon\"}, descFilePath = [\"AccesslogProto\",\"AccessLogCommon.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.sample_rate\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"sample_rate\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 9}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 1}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.downstream_remote_address\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"downstream_remote_address\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Address\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"Address\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.downstream_local_address\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"downstream_local_address\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Address\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"Address\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.tls_properties\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"tls_properties\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.TLSProperties\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\"], baseName = MName \"TLSProperties\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.start_time\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"start_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Timestamp\", haskellPrefix = [], parentModule = [MName \"TimestampProto\"], baseName = MName \"Timestamp\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.time_to_last_rx_byte\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"time_to_last_rx_byte\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.time_to_first_upstream_tx_byte\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"time_to_first_upstream_tx_byte\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.time_to_last_upstream_tx_byte\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"time_to_last_upstream_tx_byte\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.time_to_first_upstream_rx_byte\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"time_to_first_upstream_rx_byte\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.time_to_last_upstream_rx_byte\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"time_to_last_upstream_rx_byte\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.time_to_first_downstream_tx_byte\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"time_to_first_downstream_tx_byte\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.time_to_last_downstream_tx_byte\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"time_to_last_downstream_tx_byte\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 98}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.upstream_remote_address\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"upstream_remote_address\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 106}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Address\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"Address\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.upstream_local_address\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"upstream_local_address\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 114}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Address\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"Address\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.upstream_cluster\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"upstream_cluster\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 122}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.response_flags\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"response_flags\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 130}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.ResponseFlags\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\"], baseName = MName \"ResponseFlags\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.metadata\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"metadata\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 17}, wireTag = WireTag {getWireTag = 138}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Metadata\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"Metadata\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.upstream_transport_failure_reason\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"upstream_transport_failure_reason\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 18}, wireTag = WireTag {getWireTag = 146}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.route_name\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"route_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 19}, wireTag = WireTag {getWireTag = 154}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.downstream_direct_remote_address\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"downstream_direct_remote_address\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 20}, wireTag = WireTag {getWireTag = 162}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Address\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"Address\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.AccessLogCommon.filter_state_objects\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName' = FName \"filter_state_objects\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 21}, wireTag = WireTag {getWireTag = 170}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.AccessLogCommon.FilterStateObjectsEntry\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\",MName \"AccessLogCommon\"], baseName = MName \"FilterStateObjectsEntry\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = True, mapKeyVal = Just ((FieldType {getFieldType = 9},Nothing),(FieldType {getFieldType = 11},Just (ProtoName {protobufName = FIName \".google.protobuf.Any\", haskellPrefix = [], parentModule = [MName \"AnyProto\"], baseName = MName \"Any\"})))}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType AccessLogCommon where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg AccessLogCommon where
  textPut msg
   = do
       P'.tellT "sample_rate" (sample_rate msg)
       P'.tellT "downstream_remote_address" (downstream_remote_address msg)
       P'.tellT "downstream_local_address" (downstream_local_address msg)
       P'.tellT "tls_properties" (tls_properties msg)
       P'.tellT "start_time" (start_time msg)
       P'.tellT "time_to_last_rx_byte" (time_to_last_rx_byte msg)
       P'.tellT "time_to_first_upstream_tx_byte" (time_to_first_upstream_tx_byte msg)
       P'.tellT "time_to_last_upstream_tx_byte" (time_to_last_upstream_tx_byte msg)
       P'.tellT "time_to_first_upstream_rx_byte" (time_to_first_upstream_rx_byte msg)
       P'.tellT "time_to_last_upstream_rx_byte" (time_to_last_upstream_rx_byte msg)
       P'.tellT "time_to_first_downstream_tx_byte" (time_to_first_downstream_tx_byte msg)
       P'.tellT "time_to_last_downstream_tx_byte" (time_to_last_downstream_tx_byte msg)
       P'.tellT "upstream_remote_address" (upstream_remote_address msg)
       P'.tellT "upstream_local_address" (upstream_local_address msg)
       P'.tellT "upstream_cluster" (upstream_cluster msg)
       P'.tellT "response_flags" (response_flags msg)
       P'.tellT "metadata" (metadata msg)
       P'.tellT "upstream_transport_failure_reason" (upstream_transport_failure_reason msg)
       P'.tellT "route_name" (route_name msg)
       P'.tellT "downstream_direct_remote_address" (downstream_direct_remote_address msg)
       P'.tellT "filter_state_objects" (AccesslogProto.AccessLogCommon.filterStateObjectsEntryToSeq (filter_state_objects msg))
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'sample_rate, parse'downstream_remote_address, parse'downstream_local_address, parse'tls_properties,
                   parse'start_time, parse'time_to_last_rx_byte, parse'time_to_first_upstream_tx_byte,
                   parse'time_to_last_upstream_tx_byte, parse'time_to_first_upstream_rx_byte, parse'time_to_last_upstream_rx_byte,
                   parse'time_to_first_downstream_tx_byte, parse'time_to_last_downstream_tx_byte, parse'upstream_remote_address,
                   parse'upstream_local_address, parse'upstream_cluster, parse'response_flags, parse'metadata,
                   parse'upstream_transport_failure_reason, parse'route_name, parse'downstream_direct_remote_address,
                   parse'filter_state_objects])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'sample_rate = Prelude'.fmap (\ v o -> o{sample_rate = v}) (P'.try (P'.getT "sample_rate"))
        parse'downstream_remote_address
         = Prelude'.fmap (\ v o -> o{downstream_remote_address = v}) (P'.try (P'.getT "downstream_remote_address"))
        parse'downstream_local_address
         = Prelude'.fmap (\ v o -> o{downstream_local_address = v}) (P'.try (P'.getT "downstream_local_address"))
        parse'tls_properties = Prelude'.fmap (\ v o -> o{tls_properties = v}) (P'.try (P'.getT "tls_properties"))
        parse'start_time = Prelude'.fmap (\ v o -> o{start_time = v}) (P'.try (P'.getT "start_time"))
        parse'time_to_last_rx_byte = Prelude'.fmap (\ v o -> o{time_to_last_rx_byte = v}) (P'.try (P'.getT "time_to_last_rx_byte"))
        parse'time_to_first_upstream_tx_byte
         = Prelude'.fmap (\ v o -> o{time_to_first_upstream_tx_byte = v}) (P'.try (P'.getT "time_to_first_upstream_tx_byte"))
        parse'time_to_last_upstream_tx_byte
         = Prelude'.fmap (\ v o -> o{time_to_last_upstream_tx_byte = v}) (P'.try (P'.getT "time_to_last_upstream_tx_byte"))
        parse'time_to_first_upstream_rx_byte
         = Prelude'.fmap (\ v o -> o{time_to_first_upstream_rx_byte = v}) (P'.try (P'.getT "time_to_first_upstream_rx_byte"))
        parse'time_to_last_upstream_rx_byte
         = Prelude'.fmap (\ v o -> o{time_to_last_upstream_rx_byte = v}) (P'.try (P'.getT "time_to_last_upstream_rx_byte"))
        parse'time_to_first_downstream_tx_byte
         = Prelude'.fmap (\ v o -> o{time_to_first_downstream_tx_byte = v}) (P'.try (P'.getT "time_to_first_downstream_tx_byte"))
        parse'time_to_last_downstream_tx_byte
         = Prelude'.fmap (\ v o -> o{time_to_last_downstream_tx_byte = v}) (P'.try (P'.getT "time_to_last_downstream_tx_byte"))
        parse'upstream_remote_address
         = Prelude'.fmap (\ v o -> o{upstream_remote_address = v}) (P'.try (P'.getT "upstream_remote_address"))
        parse'upstream_local_address
         = Prelude'.fmap (\ v o -> o{upstream_local_address = v}) (P'.try (P'.getT "upstream_local_address"))
        parse'upstream_cluster = Prelude'.fmap (\ v o -> o{upstream_cluster = v}) (P'.try (P'.getT "upstream_cluster"))
        parse'response_flags = Prelude'.fmap (\ v o -> o{response_flags = v}) (P'.try (P'.getT "response_flags"))
        parse'metadata = Prelude'.fmap (\ v o -> o{metadata = v}) (P'.try (P'.getT "metadata"))
        parse'upstream_transport_failure_reason
         = Prelude'.fmap (\ v o -> o{upstream_transport_failure_reason = v}) (P'.try (P'.getT "upstream_transport_failure_reason"))
        parse'route_name = Prelude'.fmap (\ v o -> o{route_name = v}) (P'.try (P'.getT "route_name"))
        parse'downstream_direct_remote_address
         = Prelude'.fmap (\ v o -> o{downstream_direct_remote_address = v}) (P'.try (P'.getT "downstream_direct_remote_address"))
        parse'filter_state_objects
         = Prelude'.fmap
            (\ v o ->
              o{filter_state_objects =
                 P'.appendMap (filter_state_objects o) (AccesslogProto.AccessLogCommon.filterStateObjectsEntryToPair v)})
            (P'.try (P'.getT "filter_state_objects"))