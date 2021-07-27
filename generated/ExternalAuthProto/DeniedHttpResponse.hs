{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ExternalAuthProto.DeniedHttpResponse (DeniedHttpResponse(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.HeaderValueOption as BaseProto
import qualified HttpStatusProto.HttpStatus as HttpStatusProto

data DeniedHttpResponse = DeniedHttpResponse{status :: !(P'.Maybe HttpStatusProto.HttpStatus),
                                             headers :: !(P'.Seq BaseProto.HeaderValueOption), body :: !(P'.Maybe P'.Utf8)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable DeniedHttpResponse where
  mergeAppend (DeniedHttpResponse x'1 x'2 x'3) (DeniedHttpResponse y'1 y'2 y'3)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
      in DeniedHttpResponse z'1 z'2 z'3

instance P'.Default DeniedHttpResponse where
  defaultValue = DeniedHttpResponse P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire DeniedHttpResponse where
  wireSize ft' self'@(DeniedHttpResponse x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeRep 1 11 x'2 + P'.wireSizeOpt 1 9 x'3)
  wirePutWithSize ft' self'@(DeniedHttpResponse x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutRepWithSize 18 11 x'2, P'.wirePutOptWithSize 26 9 x'3]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{status = P'.mergeAppend (status old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{headers = P'.append (headers old'Self) new'Field}) (P'.wireGet 11)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{body = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> DeniedHttpResponse) DeniedHttpResponse where
  getVal m' f' = f' m'

instance P'.GPB DeniedHttpResponse

instance P'.ReflectDescriptor DeniedHttpResponse where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.auth.v3.DeniedHttpResponse\", haskellPrefix = [], parentModule = [MName \"ExternalAuthProto\"], baseName = MName \"DeniedHttpResponse\"}, descFilePath = [\"ExternalAuthProto\",\"DeniedHttpResponse.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.DeniedHttpResponse.status\", haskellPrefix' = [], parentModule' = [MName \"ExternalAuthProto\",MName \"DeniedHttpResponse\"], baseName' = FName \"status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.type.v3.HttpStatus\", haskellPrefix = [], parentModule = [MName \"HttpStatusProto\"], baseName = MName \"HttpStatus\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.DeniedHttpResponse.headers\", haskellPrefix' = [], parentModule' = [MName \"ExternalAuthProto\",MName \"DeniedHttpResponse\"], baseName' = FName \"headers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HeaderValueOption\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"HeaderValueOption\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.DeniedHttpResponse.body\", haskellPrefix' = [], parentModule' = [MName \"ExternalAuthProto\",MName \"DeniedHttpResponse\"], baseName' = FName \"body\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType DeniedHttpResponse where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg DeniedHttpResponse where
  textPut msg
   = do
       P'.tellT "status" (status msg)
       P'.tellT "headers" (headers msg)
       P'.tellT "body" (body msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'status, parse'headers, parse'body]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'status = Prelude'.fmap (\ v o -> o{status = v}) (P'.try (P'.getT "status"))
        parse'headers = Prelude'.fmap (\ v o -> o{headers = P'.append (headers o) v}) (P'.try (P'.getT "headers"))
        parse'body = Prelude'.fmap (\ v o -> o{body = v}) (P'.try (P'.getT "body"))