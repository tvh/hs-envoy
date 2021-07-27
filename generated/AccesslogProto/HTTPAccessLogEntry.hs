{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AccesslogProto.HTTPAccessLogEntry (HTTPAccessLogEntry(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AccesslogProto.AccessLogCommon as AccesslogProto
import qualified AccesslogProto.HTTPAccessLogEntry.HTTPVersion as AccesslogProto.HTTPAccessLogEntry
import qualified AccesslogProto.HTTPRequestProperties as AccesslogProto
import qualified AccesslogProto.HTTPResponseProperties as AccesslogProto

data HTTPAccessLogEntry = HTTPAccessLogEntry{common_properties :: !(P'.Maybe AccesslogProto.AccessLogCommon),
                                             protocol_version :: !(P'.Maybe AccesslogProto.HTTPAccessLogEntry.HTTPVersion),
                                             request :: !(P'.Maybe AccesslogProto.HTTPRequestProperties),
                                             response :: !(P'.Maybe AccesslogProto.HTTPResponseProperties)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable HTTPAccessLogEntry where
  mergeAppend (HTTPAccessLogEntry x'1 x'2 x'3 x'4) (HTTPAccessLogEntry y'1 y'2 y'3 y'4)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
      in HTTPAccessLogEntry z'1 z'2 z'3 z'4

instance P'.Default HTTPAccessLogEntry where
  defaultValue = HTTPAccessLogEntry P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire HTTPAccessLogEntry where
  wireSize ft' self'@(HTTPAccessLogEntry x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 14 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 11 x'4)
  wirePutWithSize ft' self'@(HTTPAccessLogEntry x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 16 14 x'2, P'.wirePutOptWithSize 26 11 x'3,
             P'.wirePutOptWithSize 34 11 x'4]
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
                      old'Self{common_properties = P'.mergeAppend (common_properties old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{protocol_version = Prelude'.Just new'Field}) (P'.wireGet 14)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{request = P'.mergeAppend (request old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{response = P'.mergeAppend (response old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> HTTPAccessLogEntry) HTTPAccessLogEntry where
  getVal m' f' = f' m'

instance P'.GPB HTTPAccessLogEntry

instance P'.ReflectDescriptor HTTPAccessLogEntry where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16, 26, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.HTTPAccessLogEntry\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\"], baseName = MName \"HTTPAccessLogEntry\"}, descFilePath = [\"AccesslogProto\",\"HTTPAccessLogEntry.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPAccessLogEntry.common_properties\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPAccessLogEntry\"], baseName' = FName \"common_properties\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.AccessLogCommon\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\"], baseName = MName \"AccessLogCommon\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPAccessLogEntry.protocol_version\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPAccessLogEntry\"], baseName' = FName \"protocol_version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.HTTPAccessLogEntry.HTTPVersion\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\",MName \"HTTPAccessLogEntry\"], baseName = MName \"HTTPVersion\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPAccessLogEntry.request\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPAccessLogEntry\"], baseName' = FName \"request\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.HTTPRequestProperties\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\"], baseName = MName \"HTTPRequestProperties\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPAccessLogEntry.response\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPAccessLogEntry\"], baseName' = FName \"response\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.HTTPResponseProperties\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\"], baseName = MName \"HTTPResponseProperties\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType HTTPAccessLogEntry where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg HTTPAccessLogEntry where
  textPut msg
   = do
       P'.tellT "common_properties" (common_properties msg)
       P'.tellT "protocol_version" (protocol_version msg)
       P'.tellT "request" (request msg)
       P'.tellT "response" (response msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'common_properties, parse'protocol_version, parse'request, parse'response]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'common_properties = Prelude'.fmap (\ v o -> o{common_properties = v}) (P'.try (P'.getT "common_properties"))
        parse'protocol_version = Prelude'.fmap (\ v o -> o{protocol_version = v}) (P'.try (P'.getT "protocol_version"))
        parse'request = Prelude'.fmap (\ v o -> o{request = v}) (P'.try (P'.getT "request"))
        parse'response = Prelude'.fmap (\ v o -> o{response = v}) (P'.try (P'.getT "response"))