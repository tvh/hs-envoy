{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AddressProto.TcpKeepalive (TcpKeepalive(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified WrappersProto.UInt32Value as WrappersProto

data TcpKeepalive = TcpKeepalive{keepalive_probes :: !(P'.Maybe WrappersProto.UInt32Value),
                                 keepalive_time :: !(P'.Maybe WrappersProto.UInt32Value),
                                 keepalive_interval :: !(P'.Maybe WrappersProto.UInt32Value)}
                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable TcpKeepalive where
  mergeAppend (TcpKeepalive x'1 x'2 x'3) (TcpKeepalive y'1 y'2 y'3)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
      in TcpKeepalive z'1 z'2 z'3

instance P'.Default TcpKeepalive where
  defaultValue = TcpKeepalive P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire TcpKeepalive where
  wireSize ft' self'@(TcpKeepalive x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 11 x'3)
  wirePutWithSize ft' self'@(TcpKeepalive x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 18 11 x'2, P'.wirePutOptWithSize 26 11 x'3]
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
                      old'Self{keepalive_probes = P'.mergeAppend (keepalive_probes old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{keepalive_time = P'.mergeAppend (keepalive_time old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{keepalive_interval = P'.mergeAppend (keepalive_interval old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> TcpKeepalive) TcpKeepalive where
  getVal m' f' = f' m'

instance P'.GPB TcpKeepalive

instance P'.ReflectDescriptor TcpKeepalive where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.TcpKeepalive\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"TcpKeepalive\"}, descFilePath = [\"AddressProto\",\"TcpKeepalive.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.TcpKeepalive.keepalive_probes\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"TcpKeepalive\"], baseName' = FName \"keepalive_probes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.TcpKeepalive.keepalive_time\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"TcpKeepalive\"], baseName' = FName \"keepalive_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.TcpKeepalive.keepalive_interval\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"TcpKeepalive\"], baseName' = FName \"keepalive_interval\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType TcpKeepalive where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg TcpKeepalive where
  textPut msg
   = do
       P'.tellT "keepalive_probes" (keepalive_probes msg)
       P'.tellT "keepalive_time" (keepalive_time msg)
       P'.tellT "keepalive_interval" (keepalive_interval msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'keepalive_probes, parse'keepalive_time, parse'keepalive_interval]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'keepalive_probes = Prelude'.fmap (\ v o -> o{keepalive_probes = v}) (P'.try (P'.getT "keepalive_probes"))
        parse'keepalive_time = Prelude'.fmap (\ v o -> o{keepalive_time = v}) (P'.try (P'.getT "keepalive_time"))
        parse'keepalive_interval = Prelude'.fmap (\ v o -> o{keepalive_interval = v}) (P'.try (P'.getT "keepalive_interval"))