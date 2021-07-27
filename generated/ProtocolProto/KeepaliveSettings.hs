{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ProtocolProto.KeepaliveSettings (KeepaliveSettings(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified DurationProto.Duration as DurationProto
import qualified PercentProto.Percent as PercentProto

data KeepaliveSettings = KeepaliveSettings{interval :: !(P'.Maybe DurationProto.Duration),
                                           timeout :: !(P'.Maybe DurationProto.Duration),
                                           interval_jitter :: !(P'.Maybe PercentProto.Percent),
                                           connection_idle_interval :: !(P'.Maybe DurationProto.Duration)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable KeepaliveSettings where
  mergeAppend (KeepaliveSettings x'1 x'2 x'3 x'4) (KeepaliveSettings y'1 y'2 y'3 y'4)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
      in KeepaliveSettings z'1 z'2 z'3 z'4

instance P'.Default KeepaliveSettings where
  defaultValue = KeepaliveSettings P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire KeepaliveSettings where
  wireSize ft' self'@(KeepaliveSettings x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 11 x'4)
  wirePutWithSize ft' self'@(KeepaliveSettings x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 18 11 x'2, P'.wirePutOptWithSize 26 11 x'3,
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{interval = P'.mergeAppend (interval old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{timeout = P'.mergeAppend (timeout old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{interval_jitter = P'.mergeAppend (interval_jitter old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{connection_idle_interval =
                                P'.mergeAppend (connection_idle_interval old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> KeepaliveSettings) KeepaliveSettings where
  getVal m' f' = f' m'

instance P'.GPB KeepaliveSettings

instance P'.ReflectDescriptor KeepaliveSettings where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.KeepaliveSettings\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\"], baseName = MName \"KeepaliveSettings\"}, descFilePath = [\"ProtocolProto\",\"KeepaliveSettings.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.KeepaliveSettings.interval\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"KeepaliveSettings\"], baseName' = FName \"interval\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.KeepaliveSettings.timeout\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"KeepaliveSettings\"], baseName' = FName \"timeout\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.KeepaliveSettings.interval_jitter\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"KeepaliveSettings\"], baseName' = FName \"interval_jitter\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.type.v3.Percent\", haskellPrefix = [], parentModule = [MName \"PercentProto\"], baseName = MName \"Percent\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.KeepaliveSettings.connection_idle_interval\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"KeepaliveSettings\"], baseName' = FName \"connection_idle_interval\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType KeepaliveSettings where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg KeepaliveSettings where
  textPut msg
   = do
       P'.tellT "interval" (interval msg)
       P'.tellT "timeout" (timeout msg)
       P'.tellT "interval_jitter" (interval_jitter msg)
       P'.tellT "connection_idle_interval" (connection_idle_interval msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'interval, parse'timeout, parse'interval_jitter, parse'connection_idle_interval])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'interval = Prelude'.fmap (\ v o -> o{interval = v}) (P'.try (P'.getT "interval"))
        parse'timeout = Prelude'.fmap (\ v o -> o{timeout = v}) (P'.try (P'.getT "timeout"))
        parse'interval_jitter = Prelude'.fmap (\ v o -> o{interval_jitter = v}) (P'.try (P'.getT "interval_jitter"))
        parse'connection_idle_interval
         = Prelude'.fmap (\ v o -> o{connection_idle_interval = v}) (P'.try (P'.getT "connection_idle_interval"))