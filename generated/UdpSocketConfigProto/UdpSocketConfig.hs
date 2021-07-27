{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module UdpSocketConfigProto.UdpSocketConfig (UdpSocketConfig(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified WrappersProto.BoolValue as WrappersProto
import qualified WrappersProto.UInt64Value as WrappersProto

data UdpSocketConfig = UdpSocketConfig{max_rx_datagram_size :: !(P'.Maybe WrappersProto.UInt64Value),
                                       prefer_gro :: !(P'.Maybe WrappersProto.BoolValue)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable UdpSocketConfig where
  mergeAppend (UdpSocketConfig x'1 x'2) (UdpSocketConfig y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in UdpSocketConfig z'1 z'2

instance P'.Default UdpSocketConfig where
  defaultValue = UdpSocketConfig P'.defaultValue P'.defaultValue

instance P'.Wire UdpSocketConfig where
  wireSize ft' self'@(UdpSocketConfig x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePutWithSize ft' self'@(UdpSocketConfig x'1 x'2)
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
                      old'Self{max_rx_datagram_size = P'.mergeAppend (max_rx_datagram_size old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{prefer_gro = P'.mergeAppend (prefer_gro old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> UdpSocketConfig) UdpSocketConfig where
  getVal m' f' = f' m'

instance P'.GPB UdpSocketConfig

instance P'.ReflectDescriptor UdpSocketConfig where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.UdpSocketConfig\", haskellPrefix = [], parentModule = [MName \"UdpSocketConfigProto\"], baseName = MName \"UdpSocketConfig\"}, descFilePath = [\"UdpSocketConfigProto\",\"UdpSocketConfig.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.UdpSocketConfig.max_rx_datagram_size\", haskellPrefix' = [], parentModule' = [MName \"UdpSocketConfigProto\",MName \"UdpSocketConfig\"], baseName' = FName \"max_rx_datagram_size\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt64Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt64Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.UdpSocketConfig.prefer_gro\", haskellPrefix' = [], parentModule' = [MName \"UdpSocketConfigProto\",MName \"UdpSocketConfig\"], baseName' = FName \"prefer_gro\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.BoolValue\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"BoolValue\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType UdpSocketConfig where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg UdpSocketConfig where
  textPut msg
   = do
       P'.tellT "max_rx_datagram_size" (max_rx_datagram_size msg)
       P'.tellT "prefer_gro" (prefer_gro msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'max_rx_datagram_size, parse'prefer_gro]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'max_rx_datagram_size = Prelude'.fmap (\ v o -> o{max_rx_datagram_size = v}) (P'.try (P'.getT "max_rx_datagram_size"))
        parse'prefer_gro = Prelude'.fmap (\ v o -> o{prefer_gro = v}) (P'.try (P'.getT "prefer_gro"))