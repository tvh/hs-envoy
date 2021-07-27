{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AttributeContextProto.AttributeContext (AttributeContext(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AttributeContextProto.AttributeContext.ContextExtensionsEntry as AttributeContextProto.AttributeContext
import qualified AttributeContextProto.AttributeContext.Peer as AttributeContextProto.AttributeContext
import qualified AttributeContextProto.AttributeContext.Request as AttributeContextProto.AttributeContext
import qualified BaseProto.Metadata as BaseProto

data AttributeContext = AttributeContext{source :: !(P'.Maybe AttributeContextProto.AttributeContext.Peer),
                                         destination :: !(P'.Maybe AttributeContextProto.AttributeContext.Peer),
                                         request :: !(P'.Maybe AttributeContextProto.AttributeContext.Request),
                                         metadata_context :: !(P'.Maybe BaseProto.Metadata),
                                         context_extensions :: P'.Map (P'.Utf8) (P'.Utf8)}
                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable AttributeContext where
  mergeAppend (AttributeContext x'1 x'2 x'3 x'4 x'5) (AttributeContext y'1 y'2 y'3 y'4 y'5)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
      in AttributeContext z'1 z'2 z'3 z'4 z'5

instance P'.Default AttributeContext where
  defaultValue = AttributeContext P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire AttributeContext where
  wireSize ft' self'@(AttributeContext x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeRep 1 11 (AttributeContextProto.AttributeContext.contextExtensionsEntryToSeq x'5))
  wirePutWithSize ft' self'@(AttributeContext x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 18 11 x'2, P'.wirePutOptWithSize 34 11 x'3,
             P'.wirePutRepWithSize 82 11 (AttributeContextProto.AttributeContext.contextExtensionsEntryToSeq x'5),
             P'.wirePutOptWithSize 90 11 x'4]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{source = P'.mergeAppend (source old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{destination = P'.mergeAppend (destination old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{request = P'.mergeAppend (request old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             90 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{metadata_context = P'.mergeAppend (metadata_context old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             82 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{context_extensions =
                                P'.appendMap (context_extensions old'Self)
                                 (AttributeContextProto.AttributeContext.contextExtensionsEntryToPair new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> AttributeContext) AttributeContext where
  getVal m' f' = f' m'

instance P'.GPB AttributeContext

instance P'.ReflectDescriptor AttributeContext where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 34, 82, 90])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.auth.v3.AttributeContext\", haskellPrefix = [], parentModule = [MName \"AttributeContextProto\"], baseName = MName \"AttributeContext\"}, descFilePath = [\"AttributeContextProto\",\"AttributeContext.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.source\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\"], baseName' = FName \"source\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.auth.v3.AttributeContext.Peer\", haskellPrefix = [], parentModule = [MName \"AttributeContextProto\",MName \"AttributeContext\"], baseName = MName \"Peer\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.destination\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\"], baseName' = FName \"destination\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.auth.v3.AttributeContext.Peer\", haskellPrefix = [], parentModule = [MName \"AttributeContextProto\",MName \"AttributeContext\"], baseName = MName \"Peer\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.request\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\"], baseName' = FName \"request\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.auth.v3.AttributeContext.Request\", haskellPrefix = [], parentModule = [MName \"AttributeContextProto\",MName \"AttributeContext\"], baseName = MName \"Request\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.metadata_context\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\"], baseName' = FName \"metadata_context\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Metadata\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"Metadata\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.context_extensions\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\"], baseName' = FName \"context_extensions\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.auth.v3.AttributeContext.ContextExtensionsEntry\", haskellPrefix = [], parentModule = [MName \"AttributeContextProto\",MName \"AttributeContext\"], baseName = MName \"ContextExtensionsEntry\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = True, mapKeyVal = Just ((FieldType {getFieldType = 9},Nothing),(FieldType {getFieldType = 9},Nothing))}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType AttributeContext where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg AttributeContext where
  textPut msg
   = do
       P'.tellT "source" (source msg)
       P'.tellT "destination" (destination msg)
       P'.tellT "request" (request msg)
       P'.tellT "metadata_context" (metadata_context msg)
       P'.tellT "context_extensions" (AttributeContextProto.AttributeContext.contextExtensionsEntryToSeq (context_extensions msg))
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice [parse'source, parse'destination, parse'request, parse'metadata_context, parse'context_extensions])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'source = Prelude'.fmap (\ v o -> o{source = v}) (P'.try (P'.getT "source"))
        parse'destination = Prelude'.fmap (\ v o -> o{destination = v}) (P'.try (P'.getT "destination"))
        parse'request = Prelude'.fmap (\ v o -> o{request = v}) (P'.try (P'.getT "request"))
        parse'metadata_context = Prelude'.fmap (\ v o -> o{metadata_context = v}) (P'.try (P'.getT "metadata_context"))
        parse'context_extensions
         = Prelude'.fmap
            (\ v o ->
              o{context_extensions =
                 P'.appendMap (context_extensions o) (AttributeContextProto.AttributeContext.contextExtensionsEntryToPair v)})
            (P'.try (P'.getT "context_extensions"))