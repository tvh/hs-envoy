{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.RetryPolicy (RetryPolicy(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BackoffProto.BackoffStrategy as BackoffProto
import qualified WrappersProto.UInt32Value as WrappersProto

data RetryPolicy = RetryPolicy{retry_back_off :: !(P'.Maybe BackoffProto.BackoffStrategy),
                               num_retries :: !(P'.Maybe WrappersProto.UInt32Value)}
                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable RetryPolicy where
  mergeAppend (RetryPolicy x'1 x'2) (RetryPolicy y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in RetryPolicy z'1 z'2

instance P'.Default RetryPolicy where
  defaultValue = RetryPolicy P'.defaultValue P'.defaultValue

instance P'.Wire RetryPolicy where
  wireSize ft' self'@(RetryPolicy x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePutWithSize ft' self'@(RetryPolicy x'1 x'2)
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
                    (\ !new'Field -> old'Self{retry_back_off = P'.mergeAppend (retry_back_off old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{num_retries = P'.mergeAppend (num_retries old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> RetryPolicy) RetryPolicy where
  getVal m' f' = f' m'

instance P'.GPB RetryPolicy

instance P'.ReflectDescriptor RetryPolicy where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.RetryPolicy\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"RetryPolicy\"}, descFilePath = [\"BaseProto\",\"RetryPolicy.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.RetryPolicy.retry_back_off\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"RetryPolicy\"], baseName' = FName \"retry_back_off\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.BackoffStrategy\", haskellPrefix = [], parentModule = [MName \"BackoffProto\"], baseName = MName \"BackoffStrategy\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.RetryPolicy.num_retries\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"RetryPolicy\"], baseName' = FName \"num_retries\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType RetryPolicy where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg RetryPolicy where
  textPut msg
   = do
       P'.tellT "retry_back_off" (retry_back_off msg)
       P'.tellT "num_retries" (num_retries msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'retry_back_off, parse'num_retries]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'retry_back_off = Prelude'.fmap (\ v o -> o{retry_back_off = v}) (P'.try (P'.getT "retry_back_off"))
        parse'num_retries = Prelude'.fmap (\ v o -> o{num_retries = v}) (P'.try (P'.getT "num_retries"))