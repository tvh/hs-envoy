{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HttpUriProto.HttpUri (HttpUri(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified DurationProto.Duration as DurationProto
import qualified HttpUriProto.HttpUri.Http_upstream_type as HttpUriProto.HttpUri.Http_upstream_type
       (Http_upstream_type(..), get'cluster)

data HttpUri = HttpUri{uri :: !(P'.Maybe P'.Utf8), timeout :: !(P'.Maybe DurationProto.Duration),
                       http_upstream_type :: P'.Maybe (HttpUriProto.HttpUri.Http_upstream_type.Http_upstream_type)}
               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable HttpUri where
  mergeAppend (HttpUri x'1 x'2 x'3) (HttpUri y'1 y'2 y'3)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
      in HttpUri z'1 z'2 z'3

instance P'.Default HttpUri where
  defaultValue = HttpUri P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire HttpUri where
  wireSize ft' self'@(HttpUri x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 11 x'2 +
             P'.wireSizeOpt 1 9 (HttpUriProto.HttpUri.Http_upstream_type.get'cluster Prelude'.=<< x'3))
  wirePutWithSize ft' self'@(HttpUri x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9 x'1,
             P'.wirePutOptWithSize 18 9 (HttpUriProto.HttpUri.Http_upstream_type.get'cluster Prelude'.=<< x'3),
             P'.wirePutOptWithSize 26 11 x'2]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{uri = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{timeout = P'.mergeAppend (timeout old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{http_upstream_type = Prelude'.Just (HttpUriProto.HttpUri.Http_upstream_type.Cluster new'Field)})
                    (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> HttpUri) HttpUri where
  getVal m' f' = f' m'

instance P'.GPB HttpUri

instance P'.ReflectDescriptor HttpUri where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.HttpUri\", haskellPrefix = [], parentModule = [MName \"HttpUriProto\"], baseName = MName \"HttpUri\"}, descFilePath = [\"HttpUriProto\",\"HttpUri.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HttpUri.uri\", haskellPrefix' = [], parentModule' = [MName \"HttpUriProto\",MName \"HttpUri\"], baseName' = FName \"uri\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HttpUri.timeout\", haskellPrefix' = [], parentModule' = [MName \"HttpUriProto\",MName \"HttpUri\"], baseName' = FName \"timeout\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.HttpUri.http_upstream_type\", haskellPrefix = [], parentModule = [MName \"HttpUriProto\",MName \"HttpUri\"], baseName = MName \"Http_upstream_type\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HttpUri.http_upstream_type\", haskellPrefix' = [], parentModule' = [MName \"HttpUriProto\",MName \"HttpUri\"], baseName' = FName \"http_upstream_type\", baseNamePrefix' = \"\"}, oneofFilePath = [\"HttpUriProto\",\"HttpUri\",\"Http_upstream_type.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.HttpUri.http_upstream_type.cluster\", haskellPrefix = [], parentModule = [MName \"HttpUriProto\",MName \"HttpUri\",MName \"Http_upstream_type\"], baseName = MName \"Cluster\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HttpUri.http_upstream_type.cluster\", haskellPrefix' = [], parentModule' = [MName \"HttpUriProto\",MName \"HttpUri\",MName \"Http_upstream_type\"], baseName' = FName \"cluster\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType HttpUri where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg HttpUri where
  textPut msg
   = do
       P'.tellT "uri" (uri msg)
       P'.tellT "timeout" (timeout msg)
       case (http_upstream_type msg) of
         Prelude'.Just (HttpUriProto.HttpUri.Http_upstream_type.Cluster cluster) -> P'.tellT "cluster" cluster
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'uri, parse'timeout, parse'http_upstream_type]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'uri = Prelude'.fmap (\ v o -> o{uri = v}) (P'.try (P'.getT "uri"))
        parse'timeout = Prelude'.fmap (\ v o -> o{timeout = v}) (P'.try (P'.getT "timeout"))
        parse'http_upstream_type = P'.try (P'.choice [parse'cluster])
          where
              parse'cluster
               = P'.try
                  (do
                     v <- P'.getT "cluster"
                     Prelude'.return
                      (\ s -> s{http_upstream_type = Prelude'.Just (HttpUriProto.HttpUri.Http_upstream_type.Cluster v)}))