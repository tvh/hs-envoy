{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials (GoogleIAMCredentials(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data GoogleIAMCredentials = GoogleIAMCredentials{authorization_token :: !(P'.Maybe P'.Utf8),
                                                 authority_selector :: !(P'.Maybe P'.Utf8)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable GoogleIAMCredentials where
  mergeAppend (GoogleIAMCredentials x'1 x'2) (GoogleIAMCredentials y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in GoogleIAMCredentials z'1 z'2

instance P'.Default GoogleIAMCredentials where
  defaultValue = GoogleIAMCredentials P'.defaultValue P'.defaultValue

instance P'.Wire GoogleIAMCredentials where
  wireSize ft' self'@(GoogleIAMCredentials x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2)
  wirePutWithSize ft' self'@(GoogleIAMCredentials x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 9 x'1, P'.wirePutOptWithSize 18 9 x'2]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{authorization_token = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{authority_selector = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> GoogleIAMCredentials) GoogleIAMCredentials where
  getVal m' f' = f' m'

instance P'.GPB GoogleIAMCredentials

instance P'.ReflectDescriptor GoogleIAMCredentials where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\"], baseName = MName \"GoogleIAMCredentials\"}, descFilePath = [\"GrpcServiceProto\",\"GrpcService\",\"GoogleGrpc\",\"CallCredentials\",\"GoogleIAMCredentials.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials.authorization_token\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"GoogleIAMCredentials\"], baseName' = FName \"authorization_token\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials.authority_selector\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"GoogleIAMCredentials\"], baseName' = FName \"authority_selector\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType GoogleIAMCredentials where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg GoogleIAMCredentials where
  textPut msg
   = do
       P'.tellT "authorization_token" (authorization_token msg)
       P'.tellT "authority_selector" (authority_selector msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'authorization_token, parse'authority_selector]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'authorization_token = Prelude'.fmap (\ v o -> o{authorization_token = v}) (P'.try (P'.getT "authorization_token"))
        parse'authority_selector = Prelude'.fmap (\ v o -> o{authority_selector = v}) (P'.try (P'.getT "authority_selector"))