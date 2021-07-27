{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.Extension (Extension(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.BuildVersion as BaseProto

data Extension = Extension{name :: !(P'.Maybe P'.Utf8), category :: !(P'.Maybe P'.Utf8), type_descriptor :: !(P'.Maybe P'.Utf8),
                           version :: !(P'.Maybe BaseProto.BuildVersion), disabled :: !(P'.Maybe P'.Bool)}
                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Extension where
  mergeAppend (Extension x'1 x'2 x'3 x'4 x'5) (Extension y'1 y'2 y'3 y'4 y'5)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
      in Extension z'1 z'2 z'3 z'4 z'5

instance P'.Default Extension where
  defaultValue = Extension P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire Extension where
  wireSize ft' self'@(Extension x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 8 x'5)
  wirePutWithSize ft' self'@(Extension x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9 x'1, P'.wirePutOptWithSize 18 9 x'2, P'.wirePutOptWithSize 26 9 x'3,
             P'.wirePutOptWithSize 34 11 x'4, P'.wirePutOptWithSize 40 8 x'5]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{name = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{category = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{type_descriptor = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{version = P'.mergeAppend (version old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{disabled = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Extension) Extension where
  getVal m' f' = f' m'

instance P'.GPB Extension

instance P'.ReflectDescriptor Extension where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 40])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.Extension\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"Extension\"}, descFilePath = [\"BaseProto\",\"Extension.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Extension.name\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Extension\"], baseName' = FName \"name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Extension.category\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Extension\"], baseName' = FName \"category\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Extension.type_descriptor\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Extension\"], baseName' = FName \"type_descriptor\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Extension.version\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Extension\"], baseName' = FName \"version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.BuildVersion\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"BuildVersion\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Extension.disabled\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Extension\"], baseName' = FName \"disabled\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType Extension where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Extension where
  textPut msg
   = do
       P'.tellT "name" (name msg)
       P'.tellT "category" (category msg)
       P'.tellT "type_descriptor" (type_descriptor msg)
       P'.tellT "version" (version msg)
       P'.tellT "disabled" (disabled msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'name, parse'category, parse'type_descriptor, parse'version, parse'disabled]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'name = Prelude'.fmap (\ v o -> o{name = v}) (P'.try (P'.getT "name"))
        parse'category = Prelude'.fmap (\ v o -> o{category = v}) (P'.try (P'.getT "category"))
        parse'type_descriptor = Prelude'.fmap (\ v o -> o{type_descriptor = v}) (P'.try (P'.getT "type_descriptor"))
        parse'version = Prelude'.fmap (\ v o -> o{version = v}) (P'.try (P'.getT "version"))
        parse'disabled = Prelude'.fmap (\ v o -> o{disabled = v}) (P'.try (P'.getT "disabled"))