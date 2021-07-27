{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module SubstitutionFormatStringProto.SubstitutionFormatString (SubstitutionFormatString(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ExtensionProto.TypedExtensionConfig as ExtensionProto
import qualified SubstitutionFormatStringProto.SubstitutionFormatString.Format
       as SubstitutionFormatStringProto.SubstitutionFormatString.Format
       (Format(..), get'text_format, get'json_format, get'text_format_source)

data SubstitutionFormatString = SubstitutionFormatString{omit_empty_values :: !(P'.Maybe P'.Bool),
                                                         content_type :: !(P'.Maybe P'.Utf8),
                                                         formatters :: !(P'.Seq ExtensionProto.TypedExtensionConfig),
                                                         format ::
                                                         P'.Maybe
                                                          (SubstitutionFormatStringProto.SubstitutionFormatString.Format.Format)}
                                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                          Prelude'.Generic)

instance P'.Mergeable SubstitutionFormatString where
  mergeAppend (SubstitutionFormatString x'1 x'2 x'3 x'4) (SubstitutionFormatString y'1 y'2 y'3 y'4)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
      in SubstitutionFormatString z'1 z'2 z'3 z'4

instance P'.Default SubstitutionFormatString where
  defaultValue = SubstitutionFormatString P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire SubstitutionFormatString where
  wireSize ft' self'@(SubstitutionFormatString x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 8 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeRep 1 11 x'3 +
             P'.wireSizeOpt 1 9 (SubstitutionFormatStringProto.SubstitutionFormatString.Format.get'text_format Prelude'.=<< x'4)
             + P'.wireSizeOpt 1 11 (SubstitutionFormatStringProto.SubstitutionFormatString.Format.get'json_format Prelude'.=<< x'4)
             +
             P'.wireSizeOpt 1 11
              (SubstitutionFormatStringProto.SubstitutionFormatString.Format.get'text_format_source Prelude'.=<< x'4))
  wirePutWithSize ft' self'@(SubstitutionFormatString x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9
              (SubstitutionFormatStringProto.SubstitutionFormatString.Format.get'text_format Prelude'.=<< x'4),
             P'.wirePutOptWithSize 18 11
              (SubstitutionFormatStringProto.SubstitutionFormatString.Format.get'json_format Prelude'.=<< x'4),
             P'.wirePutOptWithSize 24 8 x'1, P'.wirePutOptWithSize 34 9 x'2,
             P'.wirePutOptWithSize 42 11
              (SubstitutionFormatStringProto.SubstitutionFormatString.Format.get'text_format_source Prelude'.=<< x'4),
             P'.wirePutRepWithSize 50 11 x'3]
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
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{omit_empty_values = Prelude'.Just new'Field}) (P'.wireGet 8)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{content_type = Prelude'.Just new'Field}) (P'.wireGet 9)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{formatters = P'.append (formatters old'Self) new'Field}) (P'.wireGet 11)
             10 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{format =
                                Prelude'.Just
                                 (SubstitutionFormatStringProto.SubstitutionFormatString.Format.Text_format new'Field)})
                    (P'.wireGet 9)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{format =
                                P'.mergeAppend (format old'Self)
                                 (Prelude'.Just
                                   (SubstitutionFormatStringProto.SubstitutionFormatString.Format.Json_format new'Field))})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{format =
                                P'.mergeAppend (format old'Self)
                                 (Prelude'.Just
                                   (SubstitutionFormatStringProto.SubstitutionFormatString.Format.Text_format_source new'Field))})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> SubstitutionFormatString) SubstitutionFormatString where
  getVal m' f' = f' m'

instance P'.GPB SubstitutionFormatString

instance P'.ReflectDescriptor SubstitutionFormatString where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [24, 34, 50])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.SubstitutionFormatString\", haskellPrefix = [], parentModule = [MName \"SubstitutionFormatStringProto\"], baseName = MName \"SubstitutionFormatString\"}, descFilePath = [\"SubstitutionFormatStringProto\",\"SubstitutionFormatString.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SubstitutionFormatString.omit_empty_values\", haskellPrefix' = [], parentModule' = [MName \"SubstitutionFormatStringProto\",MName \"SubstitutionFormatString\"], baseName' = FName \"omit_empty_values\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SubstitutionFormatString.content_type\", haskellPrefix' = [], parentModule' = [MName \"SubstitutionFormatStringProto\",MName \"SubstitutionFormatString\"], baseName' = FName \"content_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SubstitutionFormatString.formatters\", haskellPrefix' = [], parentModule' = [MName \"SubstitutionFormatStringProto\",MName \"SubstitutionFormatString\"], baseName' = FName \"formatters\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.TypedExtensionConfig\", haskellPrefix = [], parentModule = [MName \"ExtensionProto\"], baseName = MName \"TypedExtensionConfig\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.SubstitutionFormatString.format\", haskellPrefix = [], parentModule = [MName \"SubstitutionFormatStringProto\",MName \"SubstitutionFormatString\"], baseName = MName \"Format\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SubstitutionFormatString.format\", haskellPrefix' = [], parentModule' = [MName \"SubstitutionFormatStringProto\",MName \"SubstitutionFormatString\"], baseName' = FName \"format\", baseNamePrefix' = \"\"}, oneofFilePath = [\"SubstitutionFormatStringProto\",\"SubstitutionFormatString\",\"Format.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.SubstitutionFormatString.format.text_format\", haskellPrefix = [], parentModule = [MName \"SubstitutionFormatStringProto\",MName \"SubstitutionFormatString\",MName \"Format\"], baseName = MName \"Text_format\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SubstitutionFormatString.format.text_format\", haskellPrefix' = [], parentModule' = [MName \"SubstitutionFormatStringProto\",MName \"SubstitutionFormatString\",MName \"Format\"], baseName' = FName \"text_format\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.SubstitutionFormatString.format.json_format\", haskellPrefix = [], parentModule = [MName \"SubstitutionFormatStringProto\",MName \"SubstitutionFormatString\",MName \"Format\"], baseName = MName \"Json_format\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SubstitutionFormatString.format.json_format\", haskellPrefix' = [], parentModule' = [MName \"SubstitutionFormatStringProto\",MName \"SubstitutionFormatString\",MName \"Format\"], baseName' = FName \"json_format\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Struct\", haskellPrefix = [], parentModule = [MName \"StructProto\"], baseName = MName \"Struct\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.SubstitutionFormatString.format.text_format_source\", haskellPrefix = [], parentModule = [MName \"SubstitutionFormatStringProto\",MName \"SubstitutionFormatString\",MName \"Format\"], baseName = MName \"Text_format_source\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SubstitutionFormatString.format.text_format_source\", haskellPrefix' = [], parentModule' = [MName \"SubstitutionFormatStringProto\",MName \"SubstitutionFormatString\",MName \"Format\"], baseName' = FName \"text_format_source\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.DataSource\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"DataSource\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType SubstitutionFormatString where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg SubstitutionFormatString where
  textPut msg
   = do
       P'.tellT "omit_empty_values" (omit_empty_values msg)
       P'.tellT "content_type" (content_type msg)
       P'.tellT "formatters" (formatters msg)
       case (format msg) of
         Prelude'.Just (SubstitutionFormatStringProto.SubstitutionFormatString.Format.Text_format text_format) -> P'.tellT
                                                                                                                   "text_format"
                                                                                                                   text_format
         Prelude'.Just (SubstitutionFormatStringProto.SubstitutionFormatString.Format.Json_format json_format) -> P'.tellT
                                                                                                                   "json_format"
                                                                                                                   json_format
         Prelude'.Just
          (SubstitutionFormatStringProto.SubstitutionFormatString.Format.Text_format_source text_format_source) -> P'.tellT
                                                                                                                    "text_format_source"
                                                                                                                    text_format_source
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'omit_empty_values, parse'content_type, parse'formatters, parse'format]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'omit_empty_values = Prelude'.fmap (\ v o -> o{omit_empty_values = v}) (P'.try (P'.getT "omit_empty_values"))
        parse'content_type = Prelude'.fmap (\ v o -> o{content_type = v}) (P'.try (P'.getT "content_type"))
        parse'formatters = Prelude'.fmap (\ v o -> o{formatters = P'.append (formatters o) v}) (P'.try (P'.getT "formatters"))
        parse'format = P'.try (P'.choice [parse'text_format, parse'json_format, parse'text_format_source])
          where
              parse'text_format
               = P'.try
                  (do
                     v <- P'.getT "text_format"
                     Prelude'.return
                      (\ s ->
                        s{format = Prelude'.Just (SubstitutionFormatStringProto.SubstitutionFormatString.Format.Text_format v)}))
              parse'json_format
               = P'.try
                  (do
                     v <- P'.getT "json_format"
                     Prelude'.return
                      (\ s ->
                        s{format = Prelude'.Just (SubstitutionFormatStringProto.SubstitutionFormatString.Format.Json_format v)}))
              parse'text_format_source
               = P'.try
                  (do
                     v <- P'.getT "text_format_source"
                     Prelude'.return
                      (\ s ->
                        s{format =
                           Prelude'.Just (SubstitutionFormatStringProto.SubstitutionFormatString.Format.Text_format_source v)}))