{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module GrpcServiceProto.GrpcService.GoogleGrpc.SslCredentials (SslCredentials(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.DataSource as BaseProto

data SslCredentials = SslCredentials{root_certs :: !(P'.Maybe BaseProto.DataSource),
                                     private_key :: !(P'.Maybe BaseProto.DataSource),
                                     cert_chain :: !(P'.Maybe BaseProto.DataSource)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable SslCredentials where
  mergeAppend (SslCredentials x'1 x'2 x'3) (SslCredentials y'1 y'2 y'3)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
      in SslCredentials z'1 z'2 z'3

instance P'.Default SslCredentials where
  defaultValue = SslCredentials P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire SslCredentials where
  wireSize ft' self'@(SslCredentials x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 11 x'3)
  wirePutWithSize ft' self'@(SslCredentials x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 18 11 x'2, P'.wirePutOptWithSize 26 11 x'3]
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
                    (\ !new'Field -> old'Self{root_certs = P'.mergeAppend (root_certs old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{private_key = P'.mergeAppend (private_key old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{cert_chain = P'.mergeAppend (cert_chain old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> SslCredentials) SslCredentials where
  getVal m' f' = f' m'

instance P'.GPB SslCredentials

instance P'.ReflectDescriptor SslCredentials where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentials\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\"], baseName = MName \"SslCredentials\"}, descFilePath = [\"GrpcServiceProto\",\"GrpcService\",\"GoogleGrpc\",\"SslCredentials.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentials.root_certs\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"SslCredentials\"], baseName' = FName \"root_certs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.DataSource\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"DataSource\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentials.private_key\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"SslCredentials\"], baseName' = FName \"private_key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.DataSource\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"DataSource\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentials.cert_chain\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"SslCredentials\"], baseName' = FName \"cert_chain\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.DataSource\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"DataSource\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType SslCredentials where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg SslCredentials where
  textPut msg
   = do
       P'.tellT "root_certs" (root_certs msg)
       P'.tellT "private_key" (private_key msg)
       P'.tellT "cert_chain" (cert_chain msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'root_certs, parse'private_key, parse'cert_chain]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'root_certs = Prelude'.fmap (\ v o -> o{root_certs = v}) (P'.try (P'.getT "root_certs"))
        parse'private_key = Prelude'.fmap (\ v o -> o{private_key = v}) (P'.try (P'.getT "private_key"))
        parse'cert_chain = Prelude'.fmap (\ v o -> o{cert_chain = v}) (P'.try (P'.getT "cert_chain"))