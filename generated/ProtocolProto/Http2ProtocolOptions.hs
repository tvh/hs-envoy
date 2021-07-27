{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ProtocolProto.Http2ProtocolOptions (Http2ProtocolOptions(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ProtocolProto.Http2ProtocolOptions.SettingsParameter as ProtocolProto.Http2ProtocolOptions
import qualified ProtocolProto.KeepaliveSettings as ProtocolProto
import qualified WrappersProto.BoolValue as WrappersProto
import qualified WrappersProto.UInt32Value as WrappersProto

data Http2ProtocolOptions = Http2ProtocolOptions{hpack_table_size :: !(P'.Maybe WrappersProto.UInt32Value),
                                                 max_concurrent_streams :: !(P'.Maybe WrappersProto.UInt32Value),
                                                 initial_stream_window_size :: !(P'.Maybe WrappersProto.UInt32Value),
                                                 initial_connection_window_size :: !(P'.Maybe WrappersProto.UInt32Value),
                                                 allow_connect :: !(P'.Maybe P'.Bool), allow_metadata :: !(P'.Maybe P'.Bool),
                                                 max_outbound_frames :: !(P'.Maybe WrappersProto.UInt32Value),
                                                 max_outbound_control_frames :: !(P'.Maybe WrappersProto.UInt32Value),
                                                 max_consecutive_inbound_frames_with_empty_payload ::
                                                 !(P'.Maybe WrappersProto.UInt32Value),
                                                 max_inbound_priority_frames_per_stream :: !(P'.Maybe WrappersProto.UInt32Value),
                                                 max_inbound_window_update_frames_per_data_frame_sent ::
                                                 !(P'.Maybe WrappersProto.UInt32Value),
                                                 stream_error_on_invalid_http_messaging :: !(P'.Maybe P'.Bool),
                                                 override_stream_error_on_invalid_http_message ::
                                                 !(P'.Maybe WrappersProto.BoolValue),
                                                 custom_settings_parameters ::
                                                 !(P'.Seq ProtocolProto.Http2ProtocolOptions.SettingsParameter),
                                                 connection_keepalive :: !(P'.Maybe ProtocolProto.KeepaliveSettings)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Http2ProtocolOptions where
  mergeAppend (Http2ProtocolOptions x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15)
   (Http2ProtocolOptions y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15)
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
      in Http2ProtocolOptions z'1 z'2 z'3 z'4 z'5 z'6 z'7 z'8 z'9 z'10 z'11 z'12 z'13 z'14 z'15

instance P'.Default Http2ProtocolOptions where
  defaultValue
   = Http2ProtocolOptions P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue

instance P'.Wire Http2ProtocolOptions where
  wireSize ft' self'@(Http2ProtocolOptions x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 8 x'5
             + P'.wireSizeOpt 1 8 x'6
             + P'.wireSizeOpt 1 11 x'7
             + P'.wireSizeOpt 1 11 x'8
             + P'.wireSizeOpt 1 11 x'9
             + P'.wireSizeOpt 1 11 x'10
             + P'.wireSizeOpt 1 11 x'11
             + P'.wireSizeOpt 1 8 x'12
             + P'.wireSizeOpt 1 11 x'13
             + P'.wireSizeRep 1 11 x'14
             + P'.wireSizeOpt 1 11 x'15)
  wirePutWithSize ft' self'@(Http2ProtocolOptions x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 18 11 x'2, P'.wirePutOptWithSize 26 11 x'3,
             P'.wirePutOptWithSize 34 11 x'4, P'.wirePutOptWithSize 40 8 x'5, P'.wirePutOptWithSize 48 8 x'6,
             P'.wirePutOptWithSize 58 11 x'7, P'.wirePutOptWithSize 66 11 x'8, P'.wirePutOptWithSize 74 11 x'9,
             P'.wirePutOptWithSize 82 11 x'10, P'.wirePutOptWithSize 90 11 x'11, P'.wirePutOptWithSize 96 8 x'12,
             P'.wirePutRepWithSize 106 11 x'14, P'.wirePutOptWithSize 114 11 x'13, P'.wirePutOptWithSize 122 11 x'15]
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
             10 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{hpack_table_size = P'.mergeAppend (hpack_table_size old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{max_concurrent_streams = P'.mergeAppend (max_concurrent_streams old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{initial_stream_window_size =
                                P'.mergeAppend (initial_stream_window_size old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{initial_connection_window_size =
                                P'.mergeAppend (initial_connection_window_size old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{allow_connect = Prelude'.Just new'Field}) (P'.wireGet 8)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{allow_metadata = Prelude'.Just new'Field}) (P'.wireGet 8)
             58 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{max_outbound_frames = P'.mergeAppend (max_outbound_frames old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             66 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{max_outbound_control_frames =
                                P'.mergeAppend (max_outbound_control_frames old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             74 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{max_consecutive_inbound_frames_with_empty_payload =
                                P'.mergeAppend (max_consecutive_inbound_frames_with_empty_payload old'Self)
                                 (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             82 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{max_inbound_priority_frames_per_stream =
                                P'.mergeAppend (max_inbound_priority_frames_per_stream old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             90 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{max_inbound_window_update_frames_per_data_frame_sent =
                                P'.mergeAppend (max_inbound_window_update_frames_per_data_frame_sent old'Self)
                                 (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             96 -> Prelude'.fmap (\ !new'Field -> old'Self{stream_error_on_invalid_http_messaging = Prelude'.Just new'Field})
                    (P'.wireGet 8)
             114 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{override_stream_error_on_invalid_http_message =
                                 P'.mergeAppend (override_stream_error_on_invalid_http_message old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             106 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{custom_settings_parameters = P'.append (custom_settings_parameters old'Self) new'Field})
                     (P'.wireGet 11)
             122 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{connection_keepalive = P'.mergeAppend (connection_keepalive old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Http2ProtocolOptions) Http2ProtocolOptions where
  getVal m' f' = f' m'

instance P'.GPB Http2ProtocolOptions

instance P'.ReflectDescriptor Http2ProtocolOptions where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [])
      (P'.fromDistinctAscList [10, 18, 26, 34, 40, 48, 58, 66, 74, 82, 90, 96, 106, 114, 122])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.Http2ProtocolOptions\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\"], baseName = MName \"Http2ProtocolOptions\"}, descFilePath = [\"ProtocolProto\",\"Http2ProtocolOptions.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http2ProtocolOptions.hpack_table_size\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http2ProtocolOptions\"], baseName' = FName \"hpack_table_size\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http2ProtocolOptions.max_concurrent_streams\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http2ProtocolOptions\"], baseName' = FName \"max_concurrent_streams\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http2ProtocolOptions.initial_stream_window_size\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http2ProtocolOptions\"], baseName' = FName \"initial_stream_window_size\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http2ProtocolOptions.initial_connection_window_size\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http2ProtocolOptions\"], baseName' = FName \"initial_connection_window_size\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http2ProtocolOptions.allow_connect\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http2ProtocolOptions\"], baseName' = FName \"allow_connect\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http2ProtocolOptions.allow_metadata\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http2ProtocolOptions\"], baseName' = FName \"allow_metadata\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http2ProtocolOptions.max_outbound_frames\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http2ProtocolOptions\"], baseName' = FName \"max_outbound_frames\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http2ProtocolOptions.max_outbound_control_frames\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http2ProtocolOptions\"], baseName' = FName \"max_outbound_control_frames\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http2ProtocolOptions.max_consecutive_inbound_frames_with_empty_payload\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http2ProtocolOptions\"], baseName' = FName \"max_consecutive_inbound_frames_with_empty_payload\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http2ProtocolOptions.max_inbound_priority_frames_per_stream\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http2ProtocolOptions\"], baseName' = FName \"max_inbound_priority_frames_per_stream\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http2ProtocolOptions.max_inbound_window_update_frames_per_data_frame_sent\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http2ProtocolOptions\"], baseName' = FName \"max_inbound_window_update_frames_per_data_frame_sent\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http2ProtocolOptions.stream_error_on_invalid_http_messaging\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http2ProtocolOptions\"], baseName' = FName \"stream_error_on_invalid_http_messaging\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 96}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http2ProtocolOptions.override_stream_error_on_invalid_http_message\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http2ProtocolOptions\"], baseName' = FName \"override_stream_error_on_invalid_http_message\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 114}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.BoolValue\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"BoolValue\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http2ProtocolOptions.custom_settings_parameters\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http2ProtocolOptions\"], baseName' = FName \"custom_settings_parameters\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 106}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Http2ProtocolOptions.SettingsParameter\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\",MName \"Http2ProtocolOptions\"], baseName = MName \"SettingsParameter\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http2ProtocolOptions.connection_keepalive\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http2ProtocolOptions\"], baseName' = FName \"connection_keepalive\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 122}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.KeepaliveSettings\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\"], baseName = MName \"KeepaliveSettings\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType Http2ProtocolOptions where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Http2ProtocolOptions where
  textPut msg
   = do
       P'.tellT "hpack_table_size" (hpack_table_size msg)
       P'.tellT "max_concurrent_streams" (max_concurrent_streams msg)
       P'.tellT "initial_stream_window_size" (initial_stream_window_size msg)
       P'.tellT "initial_connection_window_size" (initial_connection_window_size msg)
       P'.tellT "allow_connect" (allow_connect msg)
       P'.tellT "allow_metadata" (allow_metadata msg)
       P'.tellT "max_outbound_frames" (max_outbound_frames msg)
       P'.tellT "max_outbound_control_frames" (max_outbound_control_frames msg)
       P'.tellT "max_consecutive_inbound_frames_with_empty_payload" (max_consecutive_inbound_frames_with_empty_payload msg)
       P'.tellT "max_inbound_priority_frames_per_stream" (max_inbound_priority_frames_per_stream msg)
       P'.tellT "max_inbound_window_update_frames_per_data_frame_sent" (max_inbound_window_update_frames_per_data_frame_sent msg)
       P'.tellT "stream_error_on_invalid_http_messaging" (stream_error_on_invalid_http_messaging msg)
       P'.tellT "override_stream_error_on_invalid_http_message" (override_stream_error_on_invalid_http_message msg)
       P'.tellT "custom_settings_parameters" (custom_settings_parameters msg)
       P'.tellT "connection_keepalive" (connection_keepalive msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'hpack_table_size, parse'max_concurrent_streams, parse'initial_stream_window_size,
                   parse'initial_connection_window_size, parse'allow_connect, parse'allow_metadata, parse'max_outbound_frames,
                   parse'max_outbound_control_frames, parse'max_consecutive_inbound_frames_with_empty_payload,
                   parse'max_inbound_priority_frames_per_stream, parse'max_inbound_window_update_frames_per_data_frame_sent,
                   parse'stream_error_on_invalid_http_messaging, parse'override_stream_error_on_invalid_http_message,
                   parse'custom_settings_parameters, parse'connection_keepalive])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'hpack_table_size = Prelude'.fmap (\ v o -> o{hpack_table_size = v}) (P'.try (P'.getT "hpack_table_size"))
        parse'max_concurrent_streams
         = Prelude'.fmap (\ v o -> o{max_concurrent_streams = v}) (P'.try (P'.getT "max_concurrent_streams"))
        parse'initial_stream_window_size
         = Prelude'.fmap (\ v o -> o{initial_stream_window_size = v}) (P'.try (P'.getT "initial_stream_window_size"))
        parse'initial_connection_window_size
         = Prelude'.fmap (\ v o -> o{initial_connection_window_size = v}) (P'.try (P'.getT "initial_connection_window_size"))
        parse'allow_connect = Prelude'.fmap (\ v o -> o{allow_connect = v}) (P'.try (P'.getT "allow_connect"))
        parse'allow_metadata = Prelude'.fmap (\ v o -> o{allow_metadata = v}) (P'.try (P'.getT "allow_metadata"))
        parse'max_outbound_frames = Prelude'.fmap (\ v o -> o{max_outbound_frames = v}) (P'.try (P'.getT "max_outbound_frames"))
        parse'max_outbound_control_frames
         = Prelude'.fmap (\ v o -> o{max_outbound_control_frames = v}) (P'.try (P'.getT "max_outbound_control_frames"))
        parse'max_consecutive_inbound_frames_with_empty_payload
         = Prelude'.fmap (\ v o -> o{max_consecutive_inbound_frames_with_empty_payload = v})
            (P'.try (P'.getT "max_consecutive_inbound_frames_with_empty_payload"))
        parse'max_inbound_priority_frames_per_stream
         = Prelude'.fmap (\ v o -> o{max_inbound_priority_frames_per_stream = v})
            (P'.try (P'.getT "max_inbound_priority_frames_per_stream"))
        parse'max_inbound_window_update_frames_per_data_frame_sent
         = Prelude'.fmap (\ v o -> o{max_inbound_window_update_frames_per_data_frame_sent = v})
            (P'.try (P'.getT "max_inbound_window_update_frames_per_data_frame_sent"))
        parse'stream_error_on_invalid_http_messaging
         = Prelude'.fmap (\ v o -> o{stream_error_on_invalid_http_messaging = v})
            (P'.try (P'.getT "stream_error_on_invalid_http_messaging"))
        parse'override_stream_error_on_invalid_http_message
         = Prelude'.fmap (\ v o -> o{override_stream_error_on_invalid_http_message = v})
            (P'.try (P'.getT "override_stream_error_on_invalid_http_message"))
        parse'custom_settings_parameters
         = Prelude'.fmap (\ v o -> o{custom_settings_parameters = P'.append (custom_settings_parameters o) v})
            (P'.try (P'.getT "custom_settings_parameters"))
        parse'connection_keepalive = Prelude'.fmap (\ v o -> o{connection_keepalive = v}) (P'.try (P'.getT "connection_keepalive"))