{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat (HeaderKeyFormat(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat.Header_format
       as ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat.Header_format
       (Header_format(..), get'proper_case_words, get'stateful_formatter)

data HeaderKeyFormat = HeaderKeyFormat{header_format ::
                                       P'.Maybe (ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat.Header_format.Header_format)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable HeaderKeyFormat where
  mergeAppend (HeaderKeyFormat x'1) (HeaderKeyFormat y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in HeaderKeyFormat z'1

instance P'.Default HeaderKeyFormat where
  defaultValue = HeaderKeyFormat P'.defaultValue

instance P'.Wire HeaderKeyFormat where
  wireSize ft' self'@(HeaderKeyFormat x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11
             (ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat.Header_format.get'proper_case_words Prelude'.=<< x'1)
             +
             P'.wireSizeOpt 1 11
              (ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat.Header_format.get'stateful_formatter Prelude'.=<< x'1))
  wirePutWithSize ft' self'@(HeaderKeyFormat x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11
              (ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat.Header_format.get'proper_case_words Prelude'.=<< x'1),
             P'.wirePutOptWithSize 66 11
              (ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat.Header_format.get'stateful_formatter Prelude'.=<< x'1)]
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
                      old'Self{header_format =
                                P'.mergeAppend (header_format old'Self)
                                 (Prelude'.Just
                                   (ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat.Header_format.Proper_case_words new'Field))})
                    (P'.wireGet 11)
             66 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{header_format =
                                P'.mergeAppend (header_format old'Self)
                                 (Prelude'.Just
                                   (ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat.Header_format.Stateful_formatter
                                     new'Field))})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> HeaderKeyFormat) HeaderKeyFormat where
  getVal m' f' = f' m'

instance P'.GPB HeaderKeyFormat

instance P'.ReflectDescriptor HeaderKeyFormat where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\",MName \"Http1ProtocolOptions\"], baseName = MName \"HeaderKeyFormat\"}, descFilePath = [\"ProtocolProto\",\"Http1ProtocolOptions\",\"HeaderKeyFormat.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.header_format\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\",MName \"Http1ProtocolOptions\",MName \"HeaderKeyFormat\"], baseName = MName \"Header_format\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.header_format\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http1ProtocolOptions\",MName \"HeaderKeyFormat\"], baseName' = FName \"header_format\", baseNamePrefix' = \"\"}, oneofFilePath = [\"ProtocolProto\",\"Http1ProtocolOptions\",\"HeaderKeyFormat\",\"Header_format.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.header_format.proper_case_words\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\",MName \"Http1ProtocolOptions\",MName \"HeaderKeyFormat\",MName \"Header_format\"], baseName = MName \"Proper_case_words\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.header_format.proper_case_words\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http1ProtocolOptions\",MName \"HeaderKeyFormat\",MName \"Header_format\"], baseName' = FName \"proper_case_words\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWords\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\",MName \"Http1ProtocolOptions\",MName \"HeaderKeyFormat\"], baseName = MName \"ProperCaseWords\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.header_format.stateful_formatter\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\",MName \"Http1ProtocolOptions\",MName \"HeaderKeyFormat\",MName \"Header_format\"], baseName = MName \"Stateful_formatter\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.header_format.stateful_formatter\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http1ProtocolOptions\",MName \"HeaderKeyFormat\",MName \"Header_format\"], baseName' = FName \"stateful_formatter\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.TypedExtensionConfig\", haskellPrefix = [], parentModule = [MName \"ExtensionProto\"], baseName = MName \"TypedExtensionConfig\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType HeaderKeyFormat where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg HeaderKeyFormat where
  textPut msg
   = do
       case (header_format msg) of
         Prelude'.Just
          (ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat.Header_format.Proper_case_words proper_case_words) -> P'.tellT
                                                                                                                     "proper_case_words"
                                                                                                                     proper_case_words
         Prelude'.Just
          (ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat.Header_format.Stateful_formatter stateful_formatter) -> P'.tellT
                                                                                                                       "stateful_formatter"
                                                                                                                       stateful_formatter
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'header_format]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'header_format = P'.try (P'.choice [parse'proper_case_words, parse'stateful_formatter])
          where
              parse'proper_case_words
               = P'.try
                  (do
                     v <- P'.getT "proper_case_words"
                     Prelude'.return
                      (\ s ->
                        s{header_format =
                           Prelude'.Just (ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat.Header_format.Proper_case_words v)}))
              parse'stateful_formatter
               = P'.try
                  (do
                     v <- P'.getT "stateful_formatter"
                     Prelude'.return
                      (\ s ->
                        s{header_format =
                           Prelude'.Just (ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat.Header_format.Stateful_formatter v)}))