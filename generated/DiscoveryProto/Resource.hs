{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module DiscoveryProto.Resource (Resource(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AnyProto.Any as AnyProto
import qualified DiscoveryProto.Resource.CacheControl as DiscoveryProto.Resource
import qualified DurationProto.Duration as DurationProto

data Resource = Resource{name :: !(P'.Maybe P'.Utf8), aliases :: !(P'.Seq P'.Utf8), version :: !(P'.Maybe P'.Utf8),
                         resource :: !(P'.Maybe AnyProto.Any), ttl :: !(P'.Maybe DurationProto.Duration),
                         cache_control :: !(P'.Maybe DiscoveryProto.Resource.CacheControl)}
                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Resource where
  mergeAppend (Resource x'1 x'2 x'3 x'4 x'5 x'6) (Resource y'1 y'2 y'3 y'4 y'5 y'6)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
         !z'6 = P'.mergeAppend x'6 y'6
      in Resource z'1 z'2 z'3 z'4 z'5 z'6

instance P'.Default Resource where
  defaultValue = Resource P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire Resource where
  wireSize ft' self'@(Resource x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeRep 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 11 x'5
             + P'.wireSizeOpt 1 11 x'6)
  wirePutWithSize ft' self'@(Resource x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9 x'3, P'.wirePutOptWithSize 18 11 x'4, P'.wirePutOptWithSize 26 9 x'1,
             P'.wirePutRepWithSize 34 9 x'2, P'.wirePutOptWithSize 50 11 x'5, P'.wirePutOptWithSize 58 11 x'6]
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
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{name = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{aliases = P'.append (aliases old'Self) new'Field}) (P'.wireGet 9)
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{version = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{resource = P'.mergeAppend (resource old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{ttl = P'.mergeAppend (ttl old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             58 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{cache_control = P'.mergeAppend (cache_control old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Resource) Resource where
  getVal m' f' = f' m'

instance P'.GPB Resource

instance P'.ReflectDescriptor Resource where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 50, 58])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.discovery.v3.Resource\", haskellPrefix = [], parentModule = [MName \"DiscoveryProto\"], baseName = MName \"Resource\"}, descFilePath = [\"DiscoveryProto\",\"Resource.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.Resource.name\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"Resource\"], baseName' = FName \"name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.Resource.aliases\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"Resource\"], baseName' = FName \"aliases\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.Resource.version\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"Resource\"], baseName' = FName \"version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.Resource.resource\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"Resource\"], baseName' = FName \"resource\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Any\", haskellPrefix = [], parentModule = [MName \"AnyProto\"], baseName = MName \"Any\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.Resource.ttl\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"Resource\"], baseName' = FName \"ttl\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.Resource.cache_control\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"Resource\"], baseName' = FName \"cache_control\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.discovery.v3.Resource.CacheControl\", haskellPrefix = [], parentModule = [MName \"DiscoveryProto\",MName \"Resource\"], baseName = MName \"CacheControl\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType Resource where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Resource where
  textPut msg
   = do
       P'.tellT "name" (name msg)
       P'.tellT "aliases" (aliases msg)
       P'.tellT "version" (version msg)
       P'.tellT "resource" (resource msg)
       P'.tellT "ttl" (ttl msg)
       P'.tellT "cache_control" (cache_control msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'name, parse'aliases, parse'version, parse'resource, parse'ttl, parse'cache_control])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'name = Prelude'.fmap (\ v o -> o{name = v}) (P'.try (P'.getT "name"))
        parse'aliases = Prelude'.fmap (\ v o -> o{aliases = P'.append (aliases o) v}) (P'.try (P'.getT "aliases"))
        parse'version = Prelude'.fmap (\ v o -> o{version = v}) (P'.try (P'.getT "version"))
        parse'resource = Prelude'.fmap (\ v o -> o{resource = v}) (P'.try (P'.getT "resource"))
        parse'ttl = Prelude'.fmap (\ v o -> o{ttl = v}) (P'.try (P'.getT "ttl"))
        parse'cache_control = Prelude'.fmap (\ v o -> o{cache_control = v}) (P'.try (P'.getT "cache_control"))