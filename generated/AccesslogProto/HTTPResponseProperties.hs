{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AccesslogProto.HTTPResponseProperties (HTTPResponseProperties(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AccesslogProto.HTTPResponseProperties.ResponseHeadersEntry as AccesslogProto.HTTPResponseProperties
import qualified AccesslogProto.HTTPResponseProperties.ResponseTrailersEntry as AccesslogProto.HTTPResponseProperties
import qualified WrappersProto.UInt32Value as WrappersProto

data HTTPResponseProperties = HTTPResponseProperties{response_code :: !(P'.Maybe WrappersProto.UInt32Value),
                                                     response_headers_bytes :: !(P'.Maybe P'.Word64),
                                                     response_body_bytes :: !(P'.Maybe P'.Word64),
                                                     response_code_details :: !(P'.Maybe P'.Utf8),
                                                     response_headers :: P'.Map (P'.Utf8) (P'.Utf8),
                                                     response_trailers :: P'.Map (P'.Utf8) (P'.Utf8)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                        Prelude'.Generic)

instance P'.Mergeable HTTPResponseProperties where
  mergeAppend (HTTPResponseProperties x'1 x'2 x'3 x'4 x'5 x'6) (HTTPResponseProperties y'1 y'2 y'3 y'4 y'5 y'6)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
         !z'6 = P'.mergeAppend x'6 y'6
      in HTTPResponseProperties z'1 z'2 z'3 z'4 z'5 z'6

instance P'.Default HTTPResponseProperties where
  defaultValue
   = HTTPResponseProperties P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire HTTPResponseProperties where
  wireSize ft' self'@(HTTPResponseProperties x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 4 x'2 + P'.wireSizeOpt 1 4 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeRep 1 11 (AccesslogProto.HTTPResponseProperties.responseHeadersEntryToSeq x'5)
             + P'.wireSizeRep 1 11 (AccesslogProto.HTTPResponseProperties.responseTrailersEntryToSeq x'6))
  wirePutWithSize ft' self'@(HTTPResponseProperties x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 16 4 x'2, P'.wirePutOptWithSize 24 4 x'3,
             P'.wirePutRepWithSize 34 11 (AccesslogProto.HTTPResponseProperties.responseHeadersEntryToSeq x'5),
             P'.wirePutRepWithSize 42 11 (AccesslogProto.HTTPResponseProperties.responseTrailersEntryToSeq x'6),
             P'.wirePutOptWithSize 50 9 x'4]
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
                    (\ !new'Field -> old'Self{response_code = P'.mergeAppend (response_code old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{response_headers_bytes = Prelude'.Just new'Field}) (P'.wireGet 4)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{response_body_bytes = Prelude'.Just new'Field}) (P'.wireGet 4)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{response_code_details = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{response_headers =
                                P'.appendMap (response_headers old'Self)
                                 (AccesslogProto.HTTPResponseProperties.responseHeadersEntryToPair new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{response_trailers =
                                P'.appendMap (response_trailers old'Self)
                                 (AccesslogProto.HTTPResponseProperties.responseTrailersEntryToPair new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> HTTPResponseProperties) HTTPResponseProperties where
  getVal m' f' = f' m'

instance P'.GPB HTTPResponseProperties

instance P'.ReflectDescriptor HTTPResponseProperties where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16, 24, 34, 42, 50])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.HTTPResponseProperties\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\"], baseName = MName \"HTTPResponseProperties\"}, descFilePath = [\"AccesslogProto\",\"HTTPResponseProperties.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPResponseProperties.response_code\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPResponseProperties\"], baseName' = FName \"response_code\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPResponseProperties.response_headers_bytes\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPResponseProperties\"], baseName' = FName \"response_headers_bytes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPResponseProperties.response_body_bytes\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPResponseProperties\"], baseName' = FName \"response_body_bytes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPResponseProperties.response_code_details\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPResponseProperties\"], baseName' = FName \"response_code_details\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPResponseProperties.response_headers\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPResponseProperties\"], baseName' = FName \"response_headers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.HTTPResponseProperties.ResponseHeadersEntry\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\",MName \"HTTPResponseProperties\"], baseName = MName \"ResponseHeadersEntry\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = True, mapKeyVal = Just ((FieldType {getFieldType = 9},Nothing),(FieldType {getFieldType = 9},Nothing))},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPResponseProperties.response_trailers\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPResponseProperties\"], baseName' = FName \"response_trailers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.HTTPResponseProperties.ResponseTrailersEntry\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\",MName \"HTTPResponseProperties\"], baseName = MName \"ResponseTrailersEntry\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = True, mapKeyVal = Just ((FieldType {getFieldType = 9},Nothing),(FieldType {getFieldType = 9},Nothing))}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType HTTPResponseProperties where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg HTTPResponseProperties where
  textPut msg
   = do
       P'.tellT "response_code" (response_code msg)
       P'.tellT "response_headers_bytes" (response_headers_bytes msg)
       P'.tellT "response_body_bytes" (response_body_bytes msg)
       P'.tellT "response_code_details" (response_code_details msg)
       P'.tellT "response_headers" (AccesslogProto.HTTPResponseProperties.responseHeadersEntryToSeq (response_headers msg))
       P'.tellT "response_trailers" (AccesslogProto.HTTPResponseProperties.responseTrailersEntryToSeq (response_trailers msg))
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'response_code, parse'response_headers_bytes, parse'response_body_bytes, parse'response_code_details,
                   parse'response_headers, parse'response_trailers])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'response_code = Prelude'.fmap (\ v o -> o{response_code = v}) (P'.try (P'.getT "response_code"))
        parse'response_headers_bytes
         = Prelude'.fmap (\ v o -> o{response_headers_bytes = v}) (P'.try (P'.getT "response_headers_bytes"))
        parse'response_body_bytes = Prelude'.fmap (\ v o -> o{response_body_bytes = v}) (P'.try (P'.getT "response_body_bytes"))
        parse'response_code_details
         = Prelude'.fmap (\ v o -> o{response_code_details = v}) (P'.try (P'.getT "response_code_details"))
        parse'response_headers
         = Prelude'.fmap
            (\ v o ->
              o{response_headers =
                 P'.appendMap (response_headers o) (AccesslogProto.HTTPResponseProperties.responseHeadersEntryToPair v)})
            (P'.try (P'.getT "response_headers"))
        parse'response_trailers
         = Prelude'.fmap
            (\ v o ->
              o{response_trailers =
                 P'.appendMap (response_trailers o) (AccesslogProto.HTTPResponseProperties.responseTrailersEntryToPair v)})
            (P'.try (P'.getT "response_trailers"))