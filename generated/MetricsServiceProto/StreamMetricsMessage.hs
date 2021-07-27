{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module MetricsServiceProto.StreamMetricsMessage (StreamMetricsMessage(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Io.Prometheus.Client.MetricFamily as Io.Prometheus.Client
import qualified MetricsServiceProto.StreamMetricsMessage.Identifier as MetricsServiceProto.StreamMetricsMessage

data StreamMetricsMessage = StreamMetricsMessage{identifier :: !(P'.Maybe MetricsServiceProto.StreamMetricsMessage.Identifier),
                                                 envoy_metrics :: !(P'.Seq Io.Prometheus.Client.MetricFamily)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable StreamMetricsMessage where
  mergeAppend (StreamMetricsMessage x'1 x'2) (StreamMetricsMessage y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in StreamMetricsMessage z'1 z'2

instance P'.Default StreamMetricsMessage where
  defaultValue = StreamMetricsMessage P'.defaultValue P'.defaultValue

instance P'.Wire StreamMetricsMessage where
  wireSize ft' self'@(StreamMetricsMessage x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePutWithSize ft' self'@(StreamMetricsMessage x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutRepWithSize 18 11 x'2]
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
                    (\ !new'Field -> old'Self{identifier = P'.mergeAppend (identifier old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{envoy_metrics = P'.append (envoy_metrics old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> StreamMetricsMessage) StreamMetricsMessage where
  getVal m' f' = f' m'

instance P'.GPB StreamMetricsMessage

instance P'.ReflectDescriptor StreamMetricsMessage where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.metrics.v3.StreamMetricsMessage\", haskellPrefix = [], parentModule = [MName \"MetricsServiceProto\"], baseName = MName \"StreamMetricsMessage\"}, descFilePath = [\"MetricsServiceProto\",\"StreamMetricsMessage.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.metrics.v3.StreamMetricsMessage.identifier\", haskellPrefix' = [], parentModule' = [MName \"MetricsServiceProto\",MName \"StreamMetricsMessage\"], baseName' = FName \"identifier\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.metrics.v3.StreamMetricsMessage.Identifier\", haskellPrefix = [], parentModule = [MName \"MetricsServiceProto\",MName \"StreamMetricsMessage\"], baseName = MName \"Identifier\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.metrics.v3.StreamMetricsMessage.envoy_metrics\", haskellPrefix' = [], parentModule' = [MName \"MetricsServiceProto\",MName \"StreamMetricsMessage\"], baseName' = FName \"envoy_metrics\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".io.prometheus.client.MetricFamily\", haskellPrefix = [], parentModule = [MName \"Io\",MName \"Prometheus\",MName \"Client\"], baseName = MName \"MetricFamily\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType StreamMetricsMessage where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg StreamMetricsMessage where
  textPut msg
   = do
       P'.tellT "identifier" (identifier msg)
       P'.tellT "envoy_metrics" (envoy_metrics msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'identifier, parse'envoy_metrics]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'identifier = Prelude'.fmap (\ v o -> o{identifier = v}) (P'.try (P'.getT "identifier"))
        parse'envoy_metrics
         = Prelude'.fmap (\ v o -> o{envoy_metrics = P'.append (envoy_metrics o) v}) (P'.try (P'.getT "envoy_metrics"))