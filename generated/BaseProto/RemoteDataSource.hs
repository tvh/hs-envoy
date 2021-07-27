{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.RemoteDataSource (RemoteDataSource(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.RetryPolicy as BaseProto
import qualified HttpUriProto.HttpUri as HttpUriProto

data RemoteDataSource = RemoteDataSource{http_uri :: !(P'.Maybe HttpUriProto.HttpUri), sha256 :: !(P'.Maybe P'.Utf8),
                                         retry_policy :: !(P'.Maybe BaseProto.RetryPolicy)}
                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable RemoteDataSource where
  mergeAppend (RemoteDataSource x'1 x'2 x'3) (RemoteDataSource y'1 y'2 y'3)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
      in RemoteDataSource z'1 z'2 z'3

instance P'.Default RemoteDataSource where
  defaultValue = RemoteDataSource P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire RemoteDataSource where
  wireSize ft' self'@(RemoteDataSource x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 11 x'3)
  wirePutWithSize ft' self'@(RemoteDataSource x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 18 9 x'2, P'.wirePutOptWithSize 26 11 x'3]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{http_uri = P'.mergeAppend (http_uri old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{sha256 = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{retry_policy = P'.mergeAppend (retry_policy old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> RemoteDataSource) RemoteDataSource where
  getVal m' f' = f' m'

instance P'.GPB RemoteDataSource

instance P'.ReflectDescriptor RemoteDataSource where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.RemoteDataSource\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"RemoteDataSource\"}, descFilePath = [\"BaseProto\",\"RemoteDataSource.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.RemoteDataSource.http_uri\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"RemoteDataSource\"], baseName' = FName \"http_uri\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HttpUri\", haskellPrefix = [], parentModule = [MName \"HttpUriProto\"], baseName = MName \"HttpUri\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.RemoteDataSource.sha256\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"RemoteDataSource\"], baseName' = FName \"sha256\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.RemoteDataSource.retry_policy\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"RemoteDataSource\"], baseName' = FName \"retry_policy\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.RetryPolicy\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"RetryPolicy\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType RemoteDataSource where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg RemoteDataSource where
  textPut msg
   = do
       P'.tellT "http_uri" (http_uri msg)
       P'.tellT "sha256" (sha256 msg)
       P'.tellT "retry_policy" (retry_policy msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'http_uri, parse'sha256, parse'retry_policy]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'http_uri = Prelude'.fmap (\ v o -> o{http_uri = v}) (P'.try (P'.getT "http_uri"))
        parse'sha256 = Prelude'.fmap (\ v o -> o{sha256 = v}) (P'.try (P'.getT "sha256"))
        parse'retry_policy = Prelude'.fmap (\ v o -> o{retry_policy = v}) (P'.try (P'.getT "retry_policy"))