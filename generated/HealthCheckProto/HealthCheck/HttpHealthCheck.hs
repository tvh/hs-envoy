{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HealthCheckProto.HealthCheck.HttpHealthCheck (HttpHealthCheck(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.HeaderValueOption as BaseProto
import qualified HealthCheckProto.HealthCheck.Payload as HealthCheckProto.HealthCheck
import qualified HttpProto.CodecClientType as HttpProto
import qualified RangeProto.Int64Range as RangeProto
import qualified StringProto.StringMatcher as StringProto

data HttpHealthCheck = HttpHealthCheck{host :: !(P'.Maybe P'.Utf8), path :: !(P'.Maybe P'.Utf8),
                                       send :: !(P'.Maybe HealthCheckProto.HealthCheck.Payload),
                                       receive :: !(P'.Maybe HealthCheckProto.HealthCheck.Payload),
                                       request_headers_to_add :: !(P'.Seq BaseProto.HeaderValueOption),
                                       request_headers_to_remove :: !(P'.Seq P'.Utf8),
                                       expected_statuses :: !(P'.Seq RangeProto.Int64Range),
                                       codec_client_type :: !(P'.Maybe HttpProto.CodecClientType),
                                       service_name_matcher :: !(P'.Maybe StringProto.StringMatcher)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable HttpHealthCheck where
  mergeAppend (HttpHealthCheck x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9) (HttpHealthCheck y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
         !z'6 = P'.mergeAppend x'6 y'6
         !z'7 = P'.mergeAppend x'7 y'7
         !z'8 = P'.mergeAppend x'8 y'8
         !z'9 = P'.mergeAppend x'9 y'9
      in HttpHealthCheck z'1 z'2 z'3 z'4 z'5 z'6 z'7 z'8 z'9

instance P'.Default HttpHealthCheck where
  defaultValue
   = HttpHealthCheck P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue

instance P'.Wire HttpHealthCheck where
  wireSize ft' self'@(HttpHealthCheck x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeRep 1 11 x'5
             + P'.wireSizeRep 1 9 x'6
             + P'.wireSizeRep 1 11 x'7
             + P'.wireSizeOpt 1 14 x'8
             + P'.wireSizeOpt 1 11 x'9)
  wirePutWithSize ft' self'@(HttpHealthCheck x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9 x'1, P'.wirePutOptWithSize 18 9 x'2, P'.wirePutOptWithSize 26 11 x'3,
             P'.wirePutOptWithSize 34 11 x'4, P'.wirePutRepWithSize 50 11 x'5, P'.wirePutRepWithSize 66 9 x'6,
             P'.wirePutRepWithSize 74 11 x'7, P'.wirePutOptWithSize 80 14 x'8, P'.wirePutOptWithSize 90 11 x'9]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{host = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{path = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{send = P'.mergeAppend (send old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{receive = P'.mergeAppend (receive old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{request_headers_to_add = P'.append (request_headers_to_add old'Self) new'Field})
                    (P'.wireGet 11)
             66 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{request_headers_to_remove = P'.append (request_headers_to_remove old'Self) new'Field})
                    (P'.wireGet 9)
             74 -> Prelude'.fmap (\ !new'Field -> old'Self{expected_statuses = P'.append (expected_statuses old'Self) new'Field})
                    (P'.wireGet 11)
             80 -> Prelude'.fmap (\ !new'Field -> old'Self{codec_client_type = Prelude'.Just new'Field}) (P'.wireGet 14)
             90 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{service_name_matcher = P'.mergeAppend (service_name_matcher old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> HttpHealthCheck) HttpHealthCheck where
  getVal m' f' = f' m'

instance P'.GPB HttpHealthCheck

instance P'.ReflectDescriptor HttpHealthCheck where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 50, 66, 74, 80, 90])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.HttpHealthCheck\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName = MName \"HttpHealthCheck\"}, descFilePath = [\"HealthCheckProto\",\"HealthCheck\",\"HttpHealthCheck.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.HttpHealthCheck.host\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"HttpHealthCheck\"], baseName' = FName \"host\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.HttpHealthCheck.path\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"HttpHealthCheck\"], baseName' = FName \"path\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.HttpHealthCheck.send\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"HttpHealthCheck\"], baseName' = FName \"send\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.Payload\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName = MName \"Payload\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.HttpHealthCheck.receive\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"HttpHealthCheck\"], baseName' = FName \"receive\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.Payload\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName = MName \"Payload\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.HttpHealthCheck.request_headers_to_add\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"HttpHealthCheck\"], baseName' = FName \"request_headers_to_add\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HeaderValueOption\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"HeaderValueOption\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.HttpHealthCheck.request_headers_to_remove\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"HttpHealthCheck\"], baseName' = FName \"request_headers_to_remove\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.HttpHealthCheck.expected_statuses\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"HttpHealthCheck\"], baseName' = FName \"expected_statuses\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.type.v3.Int64Range\", haskellPrefix = [], parentModule = [MName \"RangeProto\"], baseName = MName \"Int64Range\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.HttpHealthCheck.codec_client_type\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"HttpHealthCheck\"], baseName' = FName \"codec_client_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 80}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.type.v3.CodecClientType\", haskellPrefix = [], parentModule = [MName \"HttpProto\"], baseName = MName \"CodecClientType\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.HttpHealthCheck.service_name_matcher\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"HttpHealthCheck\"], baseName' = FName \"service_name_matcher\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.type.matcher.v3.StringMatcher\", haskellPrefix = [], parentModule = [MName \"StringProto\"], baseName = MName \"StringMatcher\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType HttpHealthCheck where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg HttpHealthCheck where
  textPut msg
   = do
       P'.tellT "host" (host msg)
       P'.tellT "path" (path msg)
       P'.tellT "send" (send msg)
       P'.tellT "receive" (receive msg)
       P'.tellT "request_headers_to_add" (request_headers_to_add msg)
       P'.tellT "request_headers_to_remove" (request_headers_to_remove msg)
       P'.tellT "expected_statuses" (expected_statuses msg)
       P'.tellT "codec_client_type" (codec_client_type msg)
       P'.tellT "service_name_matcher" (service_name_matcher msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'host, parse'path, parse'send, parse'receive, parse'request_headers_to_add, parse'request_headers_to_remove,
                   parse'expected_statuses, parse'codec_client_type, parse'service_name_matcher])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'host = Prelude'.fmap (\ v o -> o{host = v}) (P'.try (P'.getT "host"))
        parse'path = Prelude'.fmap (\ v o -> o{path = v}) (P'.try (P'.getT "path"))
        parse'send = Prelude'.fmap (\ v o -> o{send = v}) (P'.try (P'.getT "send"))
        parse'receive = Prelude'.fmap (\ v o -> o{receive = v}) (P'.try (P'.getT "receive"))
        parse'request_headers_to_add
         = Prelude'.fmap (\ v o -> o{request_headers_to_add = P'.append (request_headers_to_add o) v})
            (P'.try (P'.getT "request_headers_to_add"))
        parse'request_headers_to_remove
         = Prelude'.fmap (\ v o -> o{request_headers_to_remove = P'.append (request_headers_to_remove o) v})
            (P'.try (P'.getT "request_headers_to_remove"))
        parse'expected_statuses
         = Prelude'.fmap (\ v o -> o{expected_statuses = P'.append (expected_statuses o) v}) (P'.try (P'.getT "expected_statuses"))
        parse'codec_client_type = Prelude'.fmap (\ v o -> o{codec_client_type = v}) (P'.try (P'.getT "codec_client_type"))
        parse'service_name_matcher = Prelude'.fmap (\ v o -> o{service_name_matcher = v}) (P'.try (P'.getT "service_name_matcher"))