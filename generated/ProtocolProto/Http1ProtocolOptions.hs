{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ProtocolProto.Http1ProtocolOptions (Http1ProtocolOptions(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat as ProtocolProto.Http1ProtocolOptions
import qualified WrappersProto.BoolValue as WrappersProto

data Http1ProtocolOptions = Http1ProtocolOptions{allow_absolute_url :: !(P'.Maybe WrappersProto.BoolValue),
                                                 accept_http_10 :: !(P'.Maybe P'.Bool),
                                                 default_host_for_http_10 :: !(P'.Maybe P'.Utf8),
                                                 header_key_format ::
                                                 !(P'.Maybe ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat),
                                                 enable_trailers :: !(P'.Maybe P'.Bool),
                                                 allow_chunked_length :: !(P'.Maybe P'.Bool),
                                                 override_stream_error_on_invalid_http_message ::
                                                 !(P'.Maybe WrappersProto.BoolValue)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Http1ProtocolOptions where
  mergeAppend (Http1ProtocolOptions x'1 x'2 x'3 x'4 x'5 x'6 x'7) (Http1ProtocolOptions y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
         !z'6 = P'.mergeAppend x'6 y'6
         !z'7 = P'.mergeAppend x'7 y'7
      in Http1ProtocolOptions z'1 z'2 z'3 z'4 z'5 z'6 z'7

instance P'.Default Http1ProtocolOptions where
  defaultValue
   = Http1ProtocolOptions P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue

instance P'.Wire Http1ProtocolOptions where
  wireSize ft' self'@(Http1ProtocolOptions x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 8 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 8 x'5
             + P'.wireSizeOpt 1 8 x'6
             + P'.wireSizeOpt 1 11 x'7)
  wirePutWithSize ft' self'@(Http1ProtocolOptions x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 16 8 x'2, P'.wirePutOptWithSize 26 9 x'3,
             P'.wirePutOptWithSize 34 11 x'4, P'.wirePutOptWithSize 40 8 x'5, P'.wirePutOptWithSize 48 8 x'6,
             P'.wirePutOptWithSize 58 11 x'7]
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
                      old'Self{allow_absolute_url = P'.mergeAppend (allow_absolute_url old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{accept_http_10 = Prelude'.Just new'Field}) (P'.wireGet 8)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{default_host_for_http_10 = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{header_key_format = P'.mergeAppend (header_key_format old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{enable_trailers = Prelude'.Just new'Field}) (P'.wireGet 8)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{allow_chunked_length = Prelude'.Just new'Field}) (P'.wireGet 8)
             58 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{override_stream_error_on_invalid_http_message =
                                P'.mergeAppend (override_stream_error_on_invalid_http_message old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Http1ProtocolOptions) Http1ProtocolOptions where
  getVal m' f' = f' m'

instance P'.GPB Http1ProtocolOptions

instance P'.ReflectDescriptor Http1ProtocolOptions where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16, 26, 34, 40, 48, 58])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.Http1ProtocolOptions\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\"], baseName = MName \"Http1ProtocolOptions\"}, descFilePath = [\"ProtocolProto\",\"Http1ProtocolOptions.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http1ProtocolOptions.allow_absolute_url\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http1ProtocolOptions\"], baseName' = FName \"allow_absolute_url\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.BoolValue\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"BoolValue\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http1ProtocolOptions.accept_http_10\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http1ProtocolOptions\"], baseName' = FName \"accept_http_10\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http1ProtocolOptions.default_host_for_http_10\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http1ProtocolOptions\"], baseName' = FName \"default_host_for_http_10\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http1ProtocolOptions.header_key_format\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http1ProtocolOptions\"], baseName' = FName \"header_key_format\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\",MName \"Http1ProtocolOptions\"], baseName = MName \"HeaderKeyFormat\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http1ProtocolOptions.enable_trailers\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http1ProtocolOptions\"], baseName' = FName \"enable_trailers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http1ProtocolOptions.allow_chunked_length\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http1ProtocolOptions\"], baseName' = FName \"allow_chunked_length\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http1ProtocolOptions.override_stream_error_on_invalid_http_message\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http1ProtocolOptions\"], baseName' = FName \"override_stream_error_on_invalid_http_message\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.BoolValue\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"BoolValue\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType Http1ProtocolOptions where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Http1ProtocolOptions where
  textPut msg
   = do
       P'.tellT "allow_absolute_url" (allow_absolute_url msg)
       P'.tellT "accept_http_10" (accept_http_10 msg)
       P'.tellT "default_host_for_http_10" (default_host_for_http_10 msg)
       P'.tellT "header_key_format" (header_key_format msg)
       P'.tellT "enable_trailers" (enable_trailers msg)
       P'.tellT "allow_chunked_length" (allow_chunked_length msg)
       P'.tellT "override_stream_error_on_invalid_http_message" (override_stream_error_on_invalid_http_message msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'allow_absolute_url, parse'accept_http_10, parse'default_host_for_http_10, parse'header_key_format,
                   parse'enable_trailers, parse'allow_chunked_length, parse'override_stream_error_on_invalid_http_message])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'allow_absolute_url = Prelude'.fmap (\ v o -> o{allow_absolute_url = v}) (P'.try (P'.getT "allow_absolute_url"))
        parse'accept_http_10 = Prelude'.fmap (\ v o -> o{accept_http_10 = v}) (P'.try (P'.getT "accept_http_10"))
        parse'default_host_for_http_10
         = Prelude'.fmap (\ v o -> o{default_host_for_http_10 = v}) (P'.try (P'.getT "default_host_for_http_10"))
        parse'header_key_format = Prelude'.fmap (\ v o -> o{header_key_format = v}) (P'.try (P'.getT "header_key_format"))
        parse'enable_trailers = Prelude'.fmap (\ v o -> o{enable_trailers = v}) (P'.try (P'.getT "enable_trailers"))
        parse'allow_chunked_length = Prelude'.fmap (\ v o -> o{allow_chunked_length = v}) (P'.try (P'.getT "allow_chunked_length"))
        parse'override_stream_error_on_invalid_http_message
         = Prelude'.fmap (\ v o -> o{override_stream_error_on_invalid_http_message = v})
            (P'.try (P'.getT "override_stream_error_on_invalid_http_message"))