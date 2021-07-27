{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HdsProto.HealthCheckSpecifier (HealthCheckSpecifier(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified DurationProto.Duration as DurationProto
import qualified HdsProto.ClusterHealthCheck as HdsProto

data HealthCheckSpecifier = HealthCheckSpecifier{cluster_health_checks :: !(P'.Seq HdsProto.ClusterHealthCheck),
                                                 interval :: !(P'.Maybe DurationProto.Duration)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable HealthCheckSpecifier where
  mergeAppend (HealthCheckSpecifier x'1 x'2) (HealthCheckSpecifier y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in HealthCheckSpecifier z'1 z'2

instance P'.Default HealthCheckSpecifier where
  defaultValue = HealthCheckSpecifier P'.defaultValue P'.defaultValue

instance P'.Wire HealthCheckSpecifier where
  wireSize ft' self'@(HealthCheckSpecifier x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePutWithSize ft' self'@(HealthCheckSpecifier x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutRepWithSize 10 11 x'1, P'.wirePutOptWithSize 18 11 x'2]
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
                    (\ !new'Field -> old'Self{cluster_health_checks = P'.append (cluster_health_checks old'Self) new'Field})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{interval = P'.mergeAppend (interval old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> HealthCheckSpecifier) HealthCheckSpecifier where
  getVal m' f' = f' m'

instance P'.GPB HealthCheckSpecifier

instance P'.ReflectDescriptor HealthCheckSpecifier where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.health.v3.HealthCheckSpecifier\", haskellPrefix = [], parentModule = [MName \"HdsProto\"], baseName = MName \"HealthCheckSpecifier\"}, descFilePath = [\"HdsProto\",\"HealthCheckSpecifier.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.HealthCheckSpecifier.cluster_health_checks\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"HealthCheckSpecifier\"], baseName' = FName \"cluster_health_checks\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.health.v3.ClusterHealthCheck\", haskellPrefix = [], parentModule = [MName \"HdsProto\"], baseName = MName \"ClusterHealthCheck\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.HealthCheckSpecifier.interval\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"HealthCheckSpecifier\"], baseName' = FName \"interval\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType HealthCheckSpecifier where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg HealthCheckSpecifier where
  textPut msg
   = do
       P'.tellT "cluster_health_checks" (cluster_health_checks msg)
       P'.tellT "interval" (interval msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'cluster_health_checks, parse'interval]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'cluster_health_checks
         = Prelude'.fmap (\ v o -> o{cluster_health_checks = P'.append (cluster_health_checks o) v})
            (P'.try (P'.getT "cluster_health_checks"))
        parse'interval = Prelude'.fmap (\ v o -> o{interval = v}) (P'.try (P'.getT "interval"))