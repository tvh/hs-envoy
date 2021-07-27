{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module LrsProto.LoadStatsResponse (LoadStatsResponse(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified DurationProto.Duration as DurationProto

data LoadStatsResponse = LoadStatsResponse{clusters :: !(P'.Seq P'.Utf8), send_all_clusters :: !(P'.Maybe P'.Bool),
                                           load_reporting_interval :: !(P'.Maybe DurationProto.Duration),
                                           report_endpoint_granularity :: !(P'.Maybe P'.Bool)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable LoadStatsResponse where
  mergeAppend (LoadStatsResponse x'1 x'2 x'3 x'4) (LoadStatsResponse y'1 y'2 y'3 y'4)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
      in LoadStatsResponse z'1 z'2 z'3 z'4

instance P'.Default LoadStatsResponse where
  defaultValue = LoadStatsResponse P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire LoadStatsResponse where
  wireSize ft' self'@(LoadStatsResponse x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 9 x'1 + P'.wireSizeOpt 1 8 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 8 x'4)
  wirePutWithSize ft' self'@(LoadStatsResponse x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutRepWithSize 10 9 x'1, P'.wirePutOptWithSize 18 11 x'3, P'.wirePutOptWithSize 24 8 x'4,
             P'.wirePutOptWithSize 32 8 x'2]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{clusters = P'.append (clusters old'Self) new'Field}) (P'.wireGet 9)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{send_all_clusters = Prelude'.Just new'Field}) (P'.wireGet 8)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{load_reporting_interval =
                                P'.mergeAppend (load_reporting_interval old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{report_endpoint_granularity = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> LoadStatsResponse) LoadStatsResponse where
  getVal m' f' = f' m'

instance P'.GPB LoadStatsResponse

instance P'.ReflectDescriptor LoadStatsResponse where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 24, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.load_stats.v3.LoadStatsResponse\", haskellPrefix = [], parentModule = [MName \"LrsProto\"], baseName = MName \"LoadStatsResponse\"}, descFilePath = [\"LrsProto\",\"LoadStatsResponse.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.load_stats.v3.LoadStatsResponse.clusters\", haskellPrefix' = [], parentModule' = [MName \"LrsProto\",MName \"LoadStatsResponse\"], baseName' = FName \"clusters\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.load_stats.v3.LoadStatsResponse.send_all_clusters\", haskellPrefix' = [], parentModule' = [MName \"LrsProto\",MName \"LoadStatsResponse\"], baseName' = FName \"send_all_clusters\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.load_stats.v3.LoadStatsResponse.load_reporting_interval\", haskellPrefix' = [], parentModule' = [MName \"LrsProto\",MName \"LoadStatsResponse\"], baseName' = FName \"load_reporting_interval\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.load_stats.v3.LoadStatsResponse.report_endpoint_granularity\", haskellPrefix' = [], parentModule' = [MName \"LrsProto\",MName \"LoadStatsResponse\"], baseName' = FName \"report_endpoint_granularity\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType LoadStatsResponse where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg LoadStatsResponse where
  textPut msg
   = do
       P'.tellT "clusters" (clusters msg)
       P'.tellT "send_all_clusters" (send_all_clusters msg)
       P'.tellT "load_reporting_interval" (load_reporting_interval msg)
       P'.tellT "report_endpoint_granularity" (report_endpoint_granularity msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'clusters, parse'send_all_clusters, parse'load_reporting_interval, parse'report_endpoint_granularity])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'clusters = Prelude'.fmap (\ v o -> o{clusters = P'.append (clusters o) v}) (P'.try (P'.getT "clusters"))
        parse'send_all_clusters = Prelude'.fmap (\ v o -> o{send_all_clusters = v}) (P'.try (P'.getT "send_all_clusters"))
        parse'load_reporting_interval
         = Prelude'.fmap (\ v o -> o{load_reporting_interval = v}) (P'.try (P'.getT "load_reporting_interval"))
        parse'report_endpoint_granularity
         = Prelude'.fmap (\ v o -> o{report_endpoint_granularity = v}) (P'.try (P'.getT "report_endpoint_granularity"))