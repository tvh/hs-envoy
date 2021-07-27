{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HdsProto.HealthCheckRequest (HealthCheckRequest(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.Node as BaseProto
import qualified HdsProto.Capability as HdsProto

data HealthCheckRequest = HealthCheckRequest{node :: !(P'.Maybe BaseProto.Node), capability :: !(P'.Maybe HdsProto.Capability)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable HealthCheckRequest where
  mergeAppend (HealthCheckRequest x'1 x'2) (HealthCheckRequest y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in HealthCheckRequest z'1 z'2

instance P'.Default HealthCheckRequest where
  defaultValue = HealthCheckRequest P'.defaultValue P'.defaultValue

instance P'.Wire HealthCheckRequest where
  wireSize ft' self'@(HealthCheckRequest x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePutWithSize ft' self'@(HealthCheckRequest x'1 x'2)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{node = P'.mergeAppend (node old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{capability = P'.mergeAppend (capability old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> HealthCheckRequest) HealthCheckRequest where
  getVal m' f' = f' m'

instance P'.GPB HealthCheckRequest

instance P'.ReflectDescriptor HealthCheckRequest where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.health.v3.HealthCheckRequest\", haskellPrefix = [], parentModule = [MName \"HdsProto\"], baseName = MName \"HealthCheckRequest\"}, descFilePath = [\"HdsProto\",\"HealthCheckRequest.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.HealthCheckRequest.node\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"HealthCheckRequest\"], baseName' = FName \"node\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Node\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"Node\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.HealthCheckRequest.capability\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"HealthCheckRequest\"], baseName' = FName \"capability\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.health.v3.Capability\", haskellPrefix = [], parentModule = [MName \"HdsProto\"], baseName = MName \"Capability\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType HealthCheckRequest where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg HealthCheckRequest where
  textPut msg
   = do
       P'.tellT "node" (node msg)
       P'.tellT "capability" (capability msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'node, parse'capability]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'node = Prelude'.fmap (\ v o -> o{node = v}) (P'.try (P'.getT "node"))
        parse'capability = Prelude'.fmap (\ v o -> o{capability = v}) (P'.try (P'.getT "capability"))