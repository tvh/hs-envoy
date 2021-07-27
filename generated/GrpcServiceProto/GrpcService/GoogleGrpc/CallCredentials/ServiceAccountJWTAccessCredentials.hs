{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials
       (ServiceAccountJWTAccessCredentials(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data ServiceAccountJWTAccessCredentials = ServiceAccountJWTAccessCredentials{json_key :: !(P'.Maybe P'.Utf8),
                                                                             token_lifetime_seconds :: !(P'.Maybe P'.Word64)}
                                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                                    Prelude'.Generic)

instance P'.Mergeable ServiceAccountJWTAccessCredentials where
  mergeAppend (ServiceAccountJWTAccessCredentials x'1 x'2) (ServiceAccountJWTAccessCredentials y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in ServiceAccountJWTAccessCredentials z'1 z'2

instance P'.Default ServiceAccountJWTAccessCredentials where
  defaultValue = ServiceAccountJWTAccessCredentials P'.defaultValue P'.defaultValue

instance P'.Wire ServiceAccountJWTAccessCredentials where
  wireSize ft' self'@(ServiceAccountJWTAccessCredentials x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 4 x'2)
  wirePutWithSize ft' self'@(ServiceAccountJWTAccessCredentials x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 9 x'1, P'.wirePutOptWithSize 16 4 x'2]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{json_key = Prelude'.Just new'Field}) (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{token_lifetime_seconds = Prelude'.Just new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ServiceAccountJWTAccessCredentials) ServiceAccountJWTAccessCredentials where
  getVal m' f' = f' m'

instance P'.GPB ServiceAccountJWTAccessCredentials

instance P'.ReflectDescriptor ServiceAccountJWTAccessCredentials where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\"], baseName = MName \"ServiceAccountJWTAccessCredentials\"}, descFilePath = [\"GrpcServiceProto\",\"GrpcService\",\"GoogleGrpc\",\"CallCredentials\",\"ServiceAccountJWTAccessCredentials.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials.json_key\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"ServiceAccountJWTAccessCredentials\"], baseName' = FName \"json_key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials.token_lifetime_seconds\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"ServiceAccountJWTAccessCredentials\"], baseName' = FName \"token_lifetime_seconds\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType ServiceAccountJWTAccessCredentials where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ServiceAccountJWTAccessCredentials where
  textPut msg
   = do
       P'.tellT "json_key" (json_key msg)
       P'.tellT "token_lifetime_seconds" (token_lifetime_seconds msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'json_key, parse'token_lifetime_seconds]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'json_key = Prelude'.fmap (\ v o -> o{json_key = v}) (P'.try (P'.getT "json_key"))
        parse'token_lifetime_seconds
         = Prelude'.fmap (\ v o -> o{token_lifetime_seconds = v}) (P'.try (P'.getT "token_lifetime_seconds"))