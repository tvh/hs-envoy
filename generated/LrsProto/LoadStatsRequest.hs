{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module LrsProto.LoadStatsRequest (LoadStatsRequest(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.Node as BaseProto
import qualified LoadReportProto.ClusterStats as LoadReportProto

data LoadStatsRequest = LoadStatsRequest{node :: !(P'.Maybe BaseProto.Node),
                                         cluster_stats :: !(P'.Seq LoadReportProto.ClusterStats)}
                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable LoadStatsRequest where
  mergeAppend (LoadStatsRequest x'1 x'2) (LoadStatsRequest y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in LoadStatsRequest z'1 z'2

instance P'.Default LoadStatsRequest where
  defaultValue = LoadStatsRequest P'.defaultValue P'.defaultValue

instance P'.Wire LoadStatsRequest where
  wireSize ft' self'@(LoadStatsRequest x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePutWithSize ft' self'@(LoadStatsRequest x'1 x'2)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{node = P'.mergeAppend (node old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{cluster_stats = P'.append (cluster_stats old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> LoadStatsRequest) LoadStatsRequest where
  getVal m' f' = f' m'

instance P'.GPB LoadStatsRequest

instance P'.ReflectDescriptor LoadStatsRequest where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.load_stats.v3.LoadStatsRequest\", haskellPrefix = [], parentModule = [MName \"LrsProto\"], baseName = MName \"LoadStatsRequest\"}, descFilePath = [\"LrsProto\",\"LoadStatsRequest.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.load_stats.v3.LoadStatsRequest.node\", haskellPrefix' = [], parentModule' = [MName \"LrsProto\",MName \"LoadStatsRequest\"], baseName' = FName \"node\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Node\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"Node\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.load_stats.v3.LoadStatsRequest.cluster_stats\", haskellPrefix' = [], parentModule' = [MName \"LrsProto\",MName \"LoadStatsRequest\"], baseName' = FName \"cluster_stats\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.endpoint.v3.ClusterStats\", haskellPrefix = [], parentModule = [MName \"LoadReportProto\"], baseName = MName \"ClusterStats\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType LoadStatsRequest where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg LoadStatsRequest where
  textPut msg
   = do
       P'.tellT "node" (node msg)
       P'.tellT "cluster_stats" (cluster_stats msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'node, parse'cluster_stats]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'node = Prelude'.fmap (\ v o -> o{node = v}) (P'.try (P'.getT "node"))
        parse'cluster_stats
         = Prelude'.fmap (\ v o -> o{cluster_stats = P'.append (cluster_stats o) v}) (P'.try (P'.getT "cluster_stats"))