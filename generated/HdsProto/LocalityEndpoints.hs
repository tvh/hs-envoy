{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HdsProto.LocalityEndpoints (LocalityEndpoints(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.Locality as BaseProto
import qualified EndpointComponentsProto.Endpoint as EndpointComponentsProto

data LocalityEndpoints = LocalityEndpoints{locality :: !(P'.Maybe BaseProto.Locality),
                                           endpoints :: !(P'.Seq EndpointComponentsProto.Endpoint)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable LocalityEndpoints where
  mergeAppend (LocalityEndpoints x'1 x'2) (LocalityEndpoints y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in LocalityEndpoints z'1 z'2

instance P'.Default LocalityEndpoints where
  defaultValue = LocalityEndpoints P'.defaultValue P'.defaultValue

instance P'.Wire LocalityEndpoints where
  wireSize ft' self'@(LocalityEndpoints x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePutWithSize ft' self'@(LocalityEndpoints x'1 x'2)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{locality = P'.mergeAppend (locality old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{endpoints = P'.append (endpoints old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> LocalityEndpoints) LocalityEndpoints where
  getVal m' f' = f' m'

instance P'.GPB LocalityEndpoints

instance P'.ReflectDescriptor LocalityEndpoints where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.health.v3.LocalityEndpoints\", haskellPrefix = [], parentModule = [MName \"HdsProto\"], baseName = MName \"LocalityEndpoints\"}, descFilePath = [\"HdsProto\",\"LocalityEndpoints.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.LocalityEndpoints.locality\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"LocalityEndpoints\"], baseName' = FName \"locality\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Locality\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"Locality\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.LocalityEndpoints.endpoints\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"LocalityEndpoints\"], baseName' = FName \"endpoints\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.endpoint.v3.Endpoint\", haskellPrefix = [], parentModule = [MName \"EndpointComponentsProto\"], baseName = MName \"Endpoint\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType LocalityEndpoints where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg LocalityEndpoints where
  textPut msg
   = do
       P'.tellT "locality" (locality msg)
       P'.tellT "endpoints" (endpoints msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'locality, parse'endpoints]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'locality = Prelude'.fmap (\ v o -> o{locality = v}) (P'.try (P'.getT "locality"))
        parse'endpoints = Prelude'.fmap (\ v o -> o{endpoints = P'.append (endpoints o) v}) (P'.try (P'.getT "endpoints"))