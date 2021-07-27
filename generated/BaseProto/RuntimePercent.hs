{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.RuntimePercent (RuntimePercent(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified PercentProto.Percent as PercentProto

data RuntimePercent = RuntimePercent{default_value :: !(P'.Maybe PercentProto.Percent), runtime_key :: !(P'.Maybe P'.Utf8)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable RuntimePercent where
  mergeAppend (RuntimePercent x'1 x'2) (RuntimePercent y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in RuntimePercent z'1 z'2

instance P'.Default RuntimePercent where
  defaultValue = RuntimePercent P'.defaultValue P'.defaultValue

instance P'.Wire RuntimePercent where
  wireSize ft' self'@(RuntimePercent x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 9 x'2)
  wirePutWithSize ft' self'@(RuntimePercent x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 18 9 x'2]
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
                    (\ !new'Field -> old'Self{default_value = P'.mergeAppend (default_value old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{runtime_key = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> RuntimePercent) RuntimePercent where
  getVal m' f' = f' m'

instance P'.GPB RuntimePercent

instance P'.ReflectDescriptor RuntimePercent where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.RuntimePercent\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"RuntimePercent\"}, descFilePath = [\"BaseProto\",\"RuntimePercent.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.RuntimePercent.default_value\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"RuntimePercent\"], baseName' = FName \"default_value\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.type.v3.Percent\", haskellPrefix = [], parentModule = [MName \"PercentProto\"], baseName = MName \"Percent\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.RuntimePercent.runtime_key\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"RuntimePercent\"], baseName' = FName \"runtime_key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType RuntimePercent where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg RuntimePercent where
  textPut msg
   = do
       P'.tellT "default_value" (default_value msg)
       P'.tellT "runtime_key" (runtime_key msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'default_value, parse'runtime_key]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'default_value = Prelude'.fmap (\ v o -> o{default_value = v}) (P'.try (P'.getT "default_value"))
        parse'runtime_key = Prelude'.fmap (\ v o -> o{runtime_key = v}) (P'.try (P'.getT "runtime_key"))