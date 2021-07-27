{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AccesslogProto.HTTPRequestProperties (HTTPRequestProperties(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AccesslogProto.HTTPRequestProperties.RequestHeadersEntry as AccesslogProto.HTTPRequestProperties
import qualified BaseProto.RequestMethod as BaseProto
import qualified WrappersProto.UInt32Value as WrappersProto

data HTTPRequestProperties = HTTPRequestProperties{request_method :: !(P'.Maybe BaseProto.RequestMethod),
                                                   scheme :: !(P'.Maybe P'.Utf8), authority :: !(P'.Maybe P'.Utf8),
                                                   port :: !(P'.Maybe WrappersProto.UInt32Value), path :: !(P'.Maybe P'.Utf8),
                                                   user_agent :: !(P'.Maybe P'.Utf8), referer :: !(P'.Maybe P'.Utf8),
                                                   forwarded_for :: !(P'.Maybe P'.Utf8), request_id :: !(P'.Maybe P'.Utf8),
                                                   original_path :: !(P'.Maybe P'.Utf8),
                                                   request_headers_bytes :: !(P'.Maybe P'.Word64),
                                                   request_body_bytes :: !(P'.Maybe P'.Word64),
                                                   request_headers :: P'.Map (P'.Utf8) (P'.Utf8)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable HTTPRequestProperties where
  mergeAppend (HTTPRequestProperties x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13)
   (HTTPRequestProperties y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
         !z'6 = P'.mergeAppend x'6 y'6
         !z'7 = P'.mergeAppend x'7 y'7
         !z'8 = P'.mergeAppend x'8 y'8
         !z'9 = P'.mergeAppend x'9 y'9
         !z'10 = P'.mergeAppend x'10 y'10
         !z'11 = P'.mergeAppend x'11 y'11
         !z'12 = P'.mergeAppend x'12 y'12
         !z'13 = P'.mergeAppend x'13 y'13
      in HTTPRequestProperties z'1 z'2 z'3 z'4 z'5 z'6 z'7 z'8 z'9 z'10 z'11 z'12 z'13

instance P'.Default HTTPRequestProperties where
  defaultValue
   = HTTPRequestProperties P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue

instance P'.Wire HTTPRequestProperties where
  wireSize ft' self'@(HTTPRequestProperties x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeOpt 1 9 x'6
             + P'.wireSizeOpt 1 9 x'7
             + P'.wireSizeOpt 1 9 x'8
             + P'.wireSizeOpt 1 9 x'9
             + P'.wireSizeOpt 1 9 x'10
             + P'.wireSizeOpt 1 4 x'11
             + P'.wireSizeOpt 1 4 x'12
             + P'.wireSizeRep 1 11 (AccesslogProto.HTTPRequestProperties.requestHeadersEntryToSeq x'13))
  wirePutWithSize ft' self'@(HTTPRequestProperties x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 8 14 x'1, P'.wirePutOptWithSize 18 9 x'2, P'.wirePutOptWithSize 26 9 x'3,
             P'.wirePutOptWithSize 34 11 x'4, P'.wirePutOptWithSize 42 9 x'5, P'.wirePutOptWithSize 50 9 x'6,
             P'.wirePutOptWithSize 58 9 x'7, P'.wirePutOptWithSize 66 9 x'8, P'.wirePutOptWithSize 74 9 x'9,
             P'.wirePutOptWithSize 82 9 x'10, P'.wirePutOptWithSize 88 4 x'11, P'.wirePutOptWithSize 96 4 x'12,
             P'.wirePutRepWithSize 106 11 (AccesslogProto.HTTPRequestProperties.requestHeadersEntryToSeq x'13)]
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
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{request_method = Prelude'.Just new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{scheme = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{authority = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{port = P'.mergeAppend (port old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{path = Prelude'.Just new'Field}) (P'.wireGet 9)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{user_agent = Prelude'.Just new'Field}) (P'.wireGet 9)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{referer = Prelude'.Just new'Field}) (P'.wireGet 9)
             66 -> Prelude'.fmap (\ !new'Field -> old'Self{forwarded_for = Prelude'.Just new'Field}) (P'.wireGet 9)
             74 -> Prelude'.fmap (\ !new'Field -> old'Self{request_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             82 -> Prelude'.fmap (\ !new'Field -> old'Self{original_path = Prelude'.Just new'Field}) (P'.wireGet 9)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{request_headers_bytes = Prelude'.Just new'Field}) (P'.wireGet 4)
             96 -> Prelude'.fmap (\ !new'Field -> old'Self{request_body_bytes = Prelude'.Just new'Field}) (P'.wireGet 4)
             106 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{request_headers =
                                 P'.appendMap (request_headers old'Self)
                                  (AccesslogProto.HTTPRequestProperties.requestHeadersEntryToPair new'Field)})
                     (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> HTTPRequestProperties) HTTPRequestProperties where
  getVal m' f' = f' m'

instance P'.GPB HTTPRequestProperties

instance P'.ReflectDescriptor HTTPRequestProperties where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18, 26, 34, 42, 50, 58, 66, 74, 82, 88, 96, 106])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.HTTPRequestProperties\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\"], baseName = MName \"HTTPRequestProperties\"}, descFilePath = [\"AccesslogProto\",\"HTTPRequestProperties.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPRequestProperties.request_method\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPRequestProperties\"], baseName' = FName \"request_method\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.RequestMethod\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"RequestMethod\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPRequestProperties.scheme\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPRequestProperties\"], baseName' = FName \"scheme\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPRequestProperties.authority\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPRequestProperties\"], baseName' = FName \"authority\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPRequestProperties.port\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPRequestProperties\"], baseName' = FName \"port\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPRequestProperties.path\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPRequestProperties\"], baseName' = FName \"path\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPRequestProperties.user_agent\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPRequestProperties\"], baseName' = FName \"user_agent\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPRequestProperties.referer\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPRequestProperties\"], baseName' = FName \"referer\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPRequestProperties.forwarded_for\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPRequestProperties\"], baseName' = FName \"forwarded_for\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPRequestProperties.request_id\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPRequestProperties\"], baseName' = FName \"request_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPRequestProperties.original_path\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPRequestProperties\"], baseName' = FName \"original_path\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPRequestProperties.request_headers_bytes\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPRequestProperties\"], baseName' = FName \"request_headers_bytes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPRequestProperties.request_body_bytes\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPRequestProperties\"], baseName' = FName \"request_body_bytes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 96}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.HTTPRequestProperties.request_headers\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"HTTPRequestProperties\"], baseName' = FName \"request_headers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 106}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.HTTPRequestProperties.RequestHeadersEntry\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\",MName \"HTTPRequestProperties\"], baseName = MName \"RequestHeadersEntry\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = True, mapKeyVal = Just ((FieldType {getFieldType = 9},Nothing),(FieldType {getFieldType = 9},Nothing))}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType HTTPRequestProperties where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg HTTPRequestProperties where
  textPut msg
   = do
       P'.tellT "request_method" (request_method msg)
       P'.tellT "scheme" (scheme msg)
       P'.tellT "authority" (authority msg)
       P'.tellT "port" (port msg)
       P'.tellT "path" (path msg)
       P'.tellT "user_agent" (user_agent msg)
       P'.tellT "referer" (referer msg)
       P'.tellT "forwarded_for" (forwarded_for msg)
       P'.tellT "request_id" (request_id msg)
       P'.tellT "original_path" (original_path msg)
       P'.tellT "request_headers_bytes" (request_headers_bytes msg)
       P'.tellT "request_body_bytes" (request_body_bytes msg)
       P'.tellT "request_headers" (AccesslogProto.HTTPRequestProperties.requestHeadersEntryToSeq (request_headers msg))
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'request_method, parse'scheme, parse'authority, parse'port, parse'path, parse'user_agent, parse'referer,
                   parse'forwarded_for, parse'request_id, parse'original_path, parse'request_headers_bytes,
                   parse'request_body_bytes, parse'request_headers])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'request_method = Prelude'.fmap (\ v o -> o{request_method = v}) (P'.try (P'.getT "request_method"))
        parse'scheme = Prelude'.fmap (\ v o -> o{scheme = v}) (P'.try (P'.getT "scheme"))
        parse'authority = Prelude'.fmap (\ v o -> o{authority = v}) (P'.try (P'.getT "authority"))
        parse'port = Prelude'.fmap (\ v o -> o{port = v}) (P'.try (P'.getT "port"))
        parse'path = Prelude'.fmap (\ v o -> o{path = v}) (P'.try (P'.getT "path"))
        parse'user_agent = Prelude'.fmap (\ v o -> o{user_agent = v}) (P'.try (P'.getT "user_agent"))
        parse'referer = Prelude'.fmap (\ v o -> o{referer = v}) (P'.try (P'.getT "referer"))
        parse'forwarded_for = Prelude'.fmap (\ v o -> o{forwarded_for = v}) (P'.try (P'.getT "forwarded_for"))
        parse'request_id = Prelude'.fmap (\ v o -> o{request_id = v}) (P'.try (P'.getT "request_id"))
        parse'original_path = Prelude'.fmap (\ v o -> o{original_path = v}) (P'.try (P'.getT "original_path"))
        parse'request_headers_bytes
         = Prelude'.fmap (\ v o -> o{request_headers_bytes = v}) (P'.try (P'.getT "request_headers_bytes"))
        parse'request_body_bytes = Prelude'.fmap (\ v o -> o{request_body_bytes = v}) (P'.try (P'.getT "request_body_bytes"))
        parse'request_headers
         = Prelude'.fmap
            (\ v o ->
              o{request_headers =
                 P'.appendMap (request_headers o) (AccesslogProto.HTTPRequestProperties.requestHeadersEntryToPair v)})
            (P'.try (P'.getT "request_headers"))