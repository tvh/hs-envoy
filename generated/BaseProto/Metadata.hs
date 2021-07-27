{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.Metadata (Metadata(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AnyProto.Any as AnyProto
import qualified BaseProto.Metadata.FilterMetadataEntry as BaseProto.Metadata
import qualified BaseProto.Metadata.TypedFilterMetadataEntry as BaseProto.Metadata
import qualified StructProto.Struct as StructProto

data Metadata = Metadata{filter_metadata :: P'.Map (P'.Utf8) (StructProto.Struct),
                         typed_filter_metadata :: P'.Map (P'.Utf8) (AnyProto.Any)}
                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Metadata where
  mergeAppend (Metadata x'1 x'2) (Metadata y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in Metadata z'1 z'2

instance P'.Default Metadata where
  defaultValue = Metadata P'.defaultValue P'.defaultValue

instance P'.Wire Metadata where
  wireSize ft' self'@(Metadata x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeRep 1 11 (BaseProto.Metadata.filterMetadataEntryToSeq x'1) +
             P'.wireSizeRep 1 11 (BaseProto.Metadata.typedFilterMetadataEntryToSeq x'2))
  wirePutWithSize ft' self'@(Metadata x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutRepWithSize 10 11 (BaseProto.Metadata.filterMetadataEntryToSeq x'1),
             P'.wirePutRepWithSize 18 11 (BaseProto.Metadata.typedFilterMetadataEntryToSeq x'2)]
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
                    (\ !new'Field ->
                      old'Self{filter_metadata =
                                P'.appendMap (filter_metadata old'Self) (BaseProto.Metadata.filterMetadataEntryToPair new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{typed_filter_metadata =
                                P'.appendMap (typed_filter_metadata old'Self)
                                 (BaseProto.Metadata.typedFilterMetadataEntryToPair new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Metadata) Metadata where
  getVal m' f' = f' m'

instance P'.GPB Metadata

instance P'.ReflectDescriptor Metadata where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.Metadata\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"Metadata\"}, descFilePath = [\"BaseProto\",\"Metadata.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Metadata.filter_metadata\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Metadata\"], baseName' = FName \"filter_metadata\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Metadata.FilterMetadataEntry\", haskellPrefix = [], parentModule = [MName \"BaseProto\",MName \"Metadata\"], baseName = MName \"FilterMetadataEntry\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = True, mapKeyVal = Just ((FieldType {getFieldType = 9},Nothing),(FieldType {getFieldType = 11},Just (ProtoName {protobufName = FIName \".google.protobuf.Struct\", haskellPrefix = [], parentModule = [MName \"StructProto\"], baseName = MName \"Struct\"})))},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Metadata.typed_filter_metadata\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Metadata\"], baseName' = FName \"typed_filter_metadata\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Metadata.TypedFilterMetadataEntry\", haskellPrefix = [], parentModule = [MName \"BaseProto\",MName \"Metadata\"], baseName = MName \"TypedFilterMetadataEntry\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = True, mapKeyVal = Just ((FieldType {getFieldType = 9},Nothing),(FieldType {getFieldType = 11},Just (ProtoName {protobufName = FIName \".google.protobuf.Any\", haskellPrefix = [], parentModule = [MName \"AnyProto\"], baseName = MName \"Any\"})))}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType Metadata where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Metadata where
  textPut msg
   = do
       P'.tellT "filter_metadata" (BaseProto.Metadata.filterMetadataEntryToSeq (filter_metadata msg))
       P'.tellT "typed_filter_metadata" (BaseProto.Metadata.typedFilterMetadataEntryToSeq (typed_filter_metadata msg))
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'filter_metadata, parse'typed_filter_metadata]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'filter_metadata
         = Prelude'.fmap
            (\ v o -> o{filter_metadata = P'.appendMap (filter_metadata o) (BaseProto.Metadata.filterMetadataEntryToPair v)})
            (P'.try (P'.getT "filter_metadata"))
        parse'typed_filter_metadata
         = Prelude'.fmap
            (\ v o ->
              o{typed_filter_metadata =
                 P'.appendMap (typed_filter_metadata o) (BaseProto.Metadata.typedFilterMetadataEntryToPair v)})
            (P'.try (P'.getT "typed_filter_metadata"))