{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AccesslogProto.TLSProperties.CertificateProperties.SubjectAltName (SubjectAltName(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AccesslogProto.TLSProperties.CertificateProperties.SubjectAltName.San
       as AccesslogProto.TLSProperties.CertificateProperties.SubjectAltName.San (San(..), get'uri, get'dns)

data SubjectAltName = SubjectAltName{san :: P'.Maybe (AccesslogProto.TLSProperties.CertificateProperties.SubjectAltName.San.San)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable SubjectAltName where
  mergeAppend (SubjectAltName x'1) (SubjectAltName y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in SubjectAltName z'1

instance P'.Default SubjectAltName where
  defaultValue = SubjectAltName P'.defaultValue

instance P'.Wire SubjectAltName where
  wireSize ft' self'@(SubjectAltName x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 (AccesslogProto.TLSProperties.CertificateProperties.SubjectAltName.San.get'uri Prelude'.=<< x'1) +
             P'.wireSizeOpt 1 9 (AccesslogProto.TLSProperties.CertificateProperties.SubjectAltName.San.get'dns Prelude'.=<< x'1))
  wirePutWithSize ft' self'@(SubjectAltName x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9
              (AccesslogProto.TLSProperties.CertificateProperties.SubjectAltName.San.get'uri Prelude'.=<< x'1),
             P'.wirePutOptWithSize 18 9
              (AccesslogProto.TLSProperties.CertificateProperties.SubjectAltName.San.get'dns Prelude'.=<< x'1)]
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
                      old'Self{san =
                                Prelude'.Just
                                 (AccesslogProto.TLSProperties.CertificateProperties.SubjectAltName.San.Uri new'Field)})
                    (P'.wireGet 9)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{san =
                                Prelude'.Just
                                 (AccesslogProto.TLSProperties.CertificateProperties.SubjectAltName.San.Dns new'Field)})
                    (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> SubjectAltName) SubjectAltName where
  getVal m' f' = f' m'

instance P'.GPB SubjectAltName

instance P'.ReflectDescriptor SubjectAltName where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.TLSProperties.CertificateProperties.SubjectAltName\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\",MName \"TLSProperties\",MName \"CertificateProperties\"], baseName = MName \"SubjectAltName\"}, descFilePath = [\"AccesslogProto\",\"TLSProperties\",\"CertificateProperties\",\"SubjectAltName.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.TLSProperties.CertificateProperties.SubjectAltName.san\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\",MName \"TLSProperties\",MName \"CertificateProperties\",MName \"SubjectAltName\"], baseName = MName \"San\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.TLSProperties.CertificateProperties.SubjectAltName.san\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"TLSProperties\",MName \"CertificateProperties\",MName \"SubjectAltName\"], baseName' = FName \"san\", baseNamePrefix' = \"\"}, oneofFilePath = [\"AccesslogProto\",\"TLSProperties\",\"CertificateProperties\",\"SubjectAltName\",\"San.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.TLSProperties.CertificateProperties.SubjectAltName.san.uri\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\",MName \"TLSProperties\",MName \"CertificateProperties\",MName \"SubjectAltName\",MName \"San\"], baseName = MName \"Uri\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.TLSProperties.CertificateProperties.SubjectAltName.san.uri\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"TLSProperties\",MName \"CertificateProperties\",MName \"SubjectAltName\",MName \"San\"], baseName' = FName \"uri\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.TLSProperties.CertificateProperties.SubjectAltName.san.dns\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\",MName \"TLSProperties\",MName \"CertificateProperties\",MName \"SubjectAltName\",MName \"San\"], baseName = MName \"Dns\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.TLSProperties.CertificateProperties.SubjectAltName.san.dns\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"TLSProperties\",MName \"CertificateProperties\",MName \"SubjectAltName\",MName \"San\"], baseName' = FName \"dns\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType SubjectAltName where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg SubjectAltName where
  textPut msg
   = do
       case (san msg) of
         Prelude'.Just (AccesslogProto.TLSProperties.CertificateProperties.SubjectAltName.San.Uri uri) -> P'.tellT "uri" uri
         Prelude'.Just (AccesslogProto.TLSProperties.CertificateProperties.SubjectAltName.San.Dns dns) -> P'.tellT "dns" dns
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'san]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'san = P'.try (P'.choice [parse'uri, parse'dns])
          where
              parse'uri
               = P'.try
                  (do
                     v <- P'.getT "uri"
                     Prelude'.return
                      (\ s -> s{san = Prelude'.Just (AccesslogProto.TLSProperties.CertificateProperties.SubjectAltName.San.Uri v)}))
              parse'dns
               = P'.try
                  (do
                     v <- P'.getT "dns"
                     Prelude'.return
                      (\ s -> s{san = Prelude'.Just (AccesslogProto.TLSProperties.CertificateProperties.SubjectAltName.San.Dns v)}))