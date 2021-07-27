{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ConfigSourceProto.RateLimitSettings (RateLimitSettings(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified WrappersProto.DoubleValue as WrappersProto
import qualified WrappersProto.UInt32Value as WrappersProto

data RateLimitSettings = RateLimitSettings{max_tokens :: !(P'.Maybe WrappersProto.UInt32Value),
                                           fill_rate :: !(P'.Maybe WrappersProto.DoubleValue)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable RateLimitSettings where
  mergeAppend (RateLimitSettings x'1 x'2) (RateLimitSettings y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in RateLimitSettings z'1 z'2

instance P'.Default RateLimitSettings where
  defaultValue = RateLimitSettings P'.defaultValue P'.defaultValue

instance P'.Wire RateLimitSettings where
  wireSize ft' self'@(RateLimitSettings x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePutWithSize ft' self'@(RateLimitSettings x'1 x'2)
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
                    (\ !new'Field -> old'Self{max_tokens = P'.mergeAppend (max_tokens old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{fill_rate = P'.mergeAppend (fill_rate old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> RateLimitSettings) RateLimitSettings where
  getVal m' f' = f' m'

instance P'.GPB RateLimitSettings

instance P'.ReflectDescriptor RateLimitSettings where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.RateLimitSettings\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\"], baseName = MName \"RateLimitSettings\"}, descFilePath = [\"ConfigSourceProto\",\"RateLimitSettings.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.RateLimitSettings.max_tokens\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"RateLimitSettings\"], baseName' = FName \"max_tokens\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.RateLimitSettings.fill_rate\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"RateLimitSettings\"], baseName' = FName \"fill_rate\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.DoubleValue\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"DoubleValue\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType RateLimitSettings where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg RateLimitSettings where
  textPut msg
   = do
       P'.tellT "max_tokens" (max_tokens msg)
       P'.tellT "fill_rate" (fill_rate msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'max_tokens, parse'fill_rate]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'max_tokens = Prelude'.fmap (\ v o -> o{max_tokens = v}) (P'.try (P'.getT "max_tokens"))
        parse'fill_rate = Prelude'.fmap (\ v o -> o{fill_rate = v}) (P'.try (P'.getT "fill_rate"))