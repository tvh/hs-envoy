{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AttributeContextProto.AttributeContext.HttpRequest (HttpRequest(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AttributeContextProto.AttributeContext.HttpRequest.HeadersEntry
       as AttributeContextProto.AttributeContext.HttpRequest

data HttpRequest = HttpRequest{id :: !(P'.Maybe P'.Utf8), method :: !(P'.Maybe P'.Utf8), path :: !(P'.Maybe P'.Utf8),
                               host :: !(P'.Maybe P'.Utf8), scheme :: !(P'.Maybe P'.Utf8), query :: !(P'.Maybe P'.Utf8),
                               fragment :: !(P'.Maybe P'.Utf8), size :: !(P'.Maybe P'.Int64), protocol :: !(P'.Maybe P'.Utf8),
                               body :: !(P'.Maybe P'.Utf8), raw_body :: !(P'.Maybe P'.ByteString),
                               headers :: P'.Map (P'.Utf8) (P'.Utf8)}
                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable HttpRequest where
  mergeAppend (HttpRequest x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
   (HttpRequest y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12)
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
      in HttpRequest z'1 z'2 z'3 z'4 z'5 z'6 z'7 z'8 z'9 z'10 z'11 z'12

instance P'.Default HttpRequest where
  defaultValue
   = HttpRequest P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue

instance P'.Wire HttpRequest where
  wireSize ft' self'@(HttpRequest x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeOpt 1 9 x'6
             + P'.wireSizeOpt 1 9 x'7
             + P'.wireSizeOpt 1 3 x'8
             + P'.wireSizeOpt 1 9 x'9
             + P'.wireSizeOpt 1 9 x'10
             + P'.wireSizeOpt 1 12 x'11
             + P'.wireSizeRep 1 11 (AttributeContextProto.AttributeContext.HttpRequest.headersEntryToSeq x'12))
  wirePutWithSize ft' self'@(HttpRequest x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9 x'1, P'.wirePutOptWithSize 18 9 x'2,
             P'.wirePutRepWithSize 26 11 (AttributeContextProto.AttributeContext.HttpRequest.headersEntryToSeq x'12),
             P'.wirePutOptWithSize 34 9 x'3, P'.wirePutOptWithSize 42 9 x'4, P'.wirePutOptWithSize 50 9 x'5,
             P'.wirePutOptWithSize 58 9 x'6, P'.wirePutOptWithSize 66 9 x'7, P'.wirePutOptWithSize 72 3 x'8,
             P'.wirePutOptWithSize 82 9 x'9, P'.wirePutOptWithSize 90 9 x'10, P'.wirePutOptWithSize 98 12 x'11]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{id = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{method = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{path = Prelude'.Just new'Field}) (P'.wireGet 9)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{host = Prelude'.Just new'Field}) (P'.wireGet 9)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{scheme = Prelude'.Just new'Field}) (P'.wireGet 9)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{query = Prelude'.Just new'Field}) (P'.wireGet 9)
             66 -> Prelude'.fmap (\ !new'Field -> old'Self{fragment = Prelude'.Just new'Field}) (P'.wireGet 9)
             72 -> Prelude'.fmap (\ !new'Field -> old'Self{size = Prelude'.Just new'Field}) (P'.wireGet 3)
             82 -> Prelude'.fmap (\ !new'Field -> old'Self{protocol = Prelude'.Just new'Field}) (P'.wireGet 9)
             90 -> Prelude'.fmap (\ !new'Field -> old'Self{body = Prelude'.Just new'Field}) (P'.wireGet 9)
             98 -> Prelude'.fmap (\ !new'Field -> old'Self{raw_body = Prelude'.Just new'Field}) (P'.wireGet 12)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{headers =
                                P'.appendMap (headers old'Self)
                                 (AttributeContextProto.AttributeContext.HttpRequest.headersEntryToPair new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> HttpRequest) HttpRequest where
  getVal m' f' = f' m'

instance P'.GPB HttpRequest

instance P'.ReflectDescriptor HttpRequest where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 42, 50, 58, 66, 72, 82, 90, 98])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.auth.v3.AttributeContext.HttpRequest\", haskellPrefix = [], parentModule = [MName \"AttributeContextProto\",MName \"AttributeContext\"], baseName = MName \"HttpRequest\"}, descFilePath = [\"AttributeContextProto\",\"AttributeContext\",\"HttpRequest.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.HttpRequest.id\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"HttpRequest\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.HttpRequest.method\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"HttpRequest\"], baseName' = FName \"method\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.HttpRequest.path\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"HttpRequest\"], baseName' = FName \"path\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.HttpRequest.host\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"HttpRequest\"], baseName' = FName \"host\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.HttpRequest.scheme\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"HttpRequest\"], baseName' = FName \"scheme\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.HttpRequest.query\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"HttpRequest\"], baseName' = FName \"query\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.HttpRequest.fragment\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"HttpRequest\"], baseName' = FName \"fragment\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.HttpRequest.size\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"HttpRequest\"], baseName' = FName \"size\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 72}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.HttpRequest.protocol\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"HttpRequest\"], baseName' = FName \"protocol\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.HttpRequest.body\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"HttpRequest\"], baseName' = FName \"body\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.HttpRequest.raw_body\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"HttpRequest\"], baseName' = FName \"raw_body\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 98}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.HttpRequest.headers\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"HttpRequest\"], baseName' = FName \"headers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.auth.v3.AttributeContext.HttpRequest.HeadersEntry\", haskellPrefix = [], parentModule = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"HttpRequest\"], baseName = MName \"HeadersEntry\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = True, mapKeyVal = Just ((FieldType {getFieldType = 9},Nothing),(FieldType {getFieldType = 9},Nothing))}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType HttpRequest where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg HttpRequest where
  textPut msg
   = do
       P'.tellT "id" (id msg)
       P'.tellT "method" (method msg)
       P'.tellT "path" (path msg)
       P'.tellT "host" (host msg)
       P'.tellT "scheme" (scheme msg)
       P'.tellT "query" (query msg)
       P'.tellT "fragment" (fragment msg)
       P'.tellT "size" (size msg)
       P'.tellT "protocol" (protocol msg)
       P'.tellT "body" (body msg)
       P'.tellT "raw_body" (raw_body msg)
       P'.tellT "headers" (AttributeContextProto.AttributeContext.HttpRequest.headersEntryToSeq (headers msg))
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'id, parse'method, parse'path, parse'host, parse'scheme, parse'query, parse'fragment, parse'size,
                   parse'protocol, parse'body, parse'raw_body, parse'headers])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'id = Prelude'.fmap (\ v o -> o{id = v}) (P'.try (P'.getT "id"))
        parse'method = Prelude'.fmap (\ v o -> o{method = v}) (P'.try (P'.getT "method"))
        parse'path = Prelude'.fmap (\ v o -> o{path = v}) (P'.try (P'.getT "path"))
        parse'host = Prelude'.fmap (\ v o -> o{host = v}) (P'.try (P'.getT "host"))
        parse'scheme = Prelude'.fmap (\ v o -> o{scheme = v}) (P'.try (P'.getT "scheme"))
        parse'query = Prelude'.fmap (\ v o -> o{query = v}) (P'.try (P'.getT "query"))
        parse'fragment = Prelude'.fmap (\ v o -> o{fragment = v}) (P'.try (P'.getT "fragment"))
        parse'size = Prelude'.fmap (\ v o -> o{size = v}) (P'.try (P'.getT "size"))
        parse'protocol = Prelude'.fmap (\ v o -> o{protocol = v}) (P'.try (P'.getT "protocol"))
        parse'body = Prelude'.fmap (\ v o -> o{body = v}) (P'.try (P'.getT "body"))
        parse'raw_body = Prelude'.fmap (\ v o -> o{raw_body = v}) (P'.try (P'.getT "raw_body"))
        parse'headers
         = Prelude'.fmap
            (\ v o ->
              o{headers = P'.appendMap (headers o) (AttributeContextProto.AttributeContext.HttpRequest.headersEntryToPair v)})
            (P'.try (P'.getT "headers"))