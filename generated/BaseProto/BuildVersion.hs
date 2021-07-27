{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.BuildVersion (BuildVersion(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified SemanticVersionProto.SemanticVersion as SemanticVersionProto
import qualified StructProto.Struct as StructProto

data BuildVersion = BuildVersion{version :: !(P'.Maybe SemanticVersionProto.SemanticVersion),
                                 metadata :: !(P'.Maybe StructProto.Struct)}
                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable BuildVersion where
  mergeAppend (BuildVersion x'1 x'2) (BuildVersion y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in BuildVersion z'1 z'2

instance P'.Default BuildVersion where
  defaultValue = BuildVersion P'.defaultValue P'.defaultValue

instance P'.Wire BuildVersion where
  wireSize ft' self'@(BuildVersion x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePutWithSize ft' self'@(BuildVersion x'1 x'2)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{version = P'.mergeAppend (version old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{metadata = P'.mergeAppend (metadata old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> BuildVersion) BuildVersion where
  getVal m' f' = f' m'

instance P'.GPB BuildVersion

instance P'.ReflectDescriptor BuildVersion where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.BuildVersion\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"BuildVersion\"}, descFilePath = [\"BaseProto\",\"BuildVersion.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.BuildVersion.version\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"BuildVersion\"], baseName' = FName \"version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.type.v3.SemanticVersion\", haskellPrefix = [], parentModule = [MName \"SemanticVersionProto\"], baseName = MName \"SemanticVersion\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.BuildVersion.metadata\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"BuildVersion\"], baseName' = FName \"metadata\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Struct\", haskellPrefix = [], parentModule = [MName \"StructProto\"], baseName = MName \"Struct\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType BuildVersion where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg BuildVersion where
  textPut msg
   = do
       P'.tellT "version" (version msg)
       P'.tellT "metadata" (metadata msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'version, parse'metadata]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'version = Prelude'.fmap (\ v o -> o{version = v}) (P'.try (P'.getT "version"))
        parse'metadata = Prelude'.fmap (\ v o -> o{metadata = v}) (P'.try (P'.getT "metadata"))