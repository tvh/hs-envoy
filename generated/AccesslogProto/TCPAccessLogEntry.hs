{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AccesslogProto.TCPAccessLogEntry (TCPAccessLogEntry(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AccesslogProto.AccessLogCommon as AccesslogProto
import qualified AccesslogProto.ConnectionProperties as AccesslogProto

data TCPAccessLogEntry = TCPAccessLogEntry{common_properties :: !(P'.Maybe AccesslogProto.AccessLogCommon),
                                           connection_properties :: !(P'.Maybe AccesslogProto.ConnectionProperties)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable TCPAccessLogEntry where
  mergeAppend (TCPAccessLogEntry x'1 x'2) (TCPAccessLogEntry y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in TCPAccessLogEntry z'1 z'2

instance P'.Default TCPAccessLogEntry where
  defaultValue = TCPAccessLogEntry P'.defaultValue P'.defaultValue

instance P'.Wire TCPAccessLogEntry where
  wireSize ft' self'@(TCPAccessLogEntry x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePutWithSize ft' self'@(TCPAccessLogEntry x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 18 11 x'2]
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
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{connection_properties = P'.mergeAppend (connection_properties old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> TCPAccessLogEntry) TCPAccessLogEntry where
  getVal m' f' = f' m'

instance P'.GPB TCPAccessLogEntry

instance P'.ReflectDescriptor TCPAccessLogEntry where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.TCPAccessLogEntry\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\"], baseName = MName \"TCPAccessLogEntry\"}, descFilePath = [\"AccesslogProto\",\"TCPAccessLogEntry.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.TCPAccessLogEntry.common_properties\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"TCPAccessLogEntry\"], baseName' = FName \"common_properties\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.AccessLogCommon\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\"], baseName = MName \"AccessLogCommon\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.TCPAccessLogEntry.connection_properties\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"TCPAccessLogEntry\"], baseName' = FName \"connection_properties\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.ConnectionProperties\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\"], baseName = MName \"ConnectionProperties\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType TCPAccessLogEntry where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg TCPAccessLogEntry where
  textPut msg
   = do
       P'.tellT "common_properties" (common_properties msg)
       P'.tellT "connection_properties" (connection_properties msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'common_properties, parse'connection_properties]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'common_properties = Prelude'.fmap (\ v o -> o{common_properties = v}) (P'.try (P'.getT "common_properties"))
        parse'connection_properties
         = Prelude'.fmap (\ v o -> o{connection_properties = v}) (P'.try (P'.getT "connection_properties"))