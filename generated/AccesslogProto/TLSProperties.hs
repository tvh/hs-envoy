{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AccesslogProto.TLSProperties (TLSProperties(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AccesslogProto.TLSProperties.CertificateProperties as AccesslogProto.TLSProperties
import qualified AccesslogProto.TLSProperties.TLSVersion as AccesslogProto.TLSProperties
import qualified WrappersProto.UInt32Value as WrappersProto

data TLSProperties = TLSProperties{tls_version :: !(P'.Maybe AccesslogProto.TLSProperties.TLSVersion),
                                   tls_cipher_suite :: !(P'.Maybe WrappersProto.UInt32Value),
                                   tls_sni_hostname :: !(P'.Maybe P'.Utf8),
                                   local_certificate_properties :: !(P'.Maybe AccesslogProto.TLSProperties.CertificateProperties),
                                   peer_certificate_properties :: !(P'.Maybe AccesslogProto.TLSProperties.CertificateProperties),
                                   tls_session_id :: !(P'.Maybe P'.Utf8)}
                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable TLSProperties where
  mergeAppend (TLSProperties x'1 x'2 x'3 x'4 x'5 x'6) (TLSProperties y'1 y'2 y'3 y'4 y'5 y'6)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
         !z'6 = P'.mergeAppend x'6 y'6
      in TLSProperties z'1 z'2 z'3 z'4 z'5 z'6

instance P'.Default TLSProperties where
  defaultValue = TLSProperties P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire TLSProperties where
  wireSize ft' self'@(TLSProperties x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 11 x'5
             + P'.wireSizeOpt 1 9 x'6)
  wirePutWithSize ft' self'@(TLSProperties x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 8 14 x'1, P'.wirePutOptWithSize 18 11 x'2, P'.wirePutOptWithSize 26 9 x'3,
             P'.wirePutOptWithSize 34 11 x'4, P'.wirePutOptWithSize 42 11 x'5, P'.wirePutOptWithSize 50 9 x'6]
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
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{tls_version = Prelude'.Just new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{tls_cipher_suite = P'.mergeAppend (tls_cipher_suite old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{tls_sni_hostname = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{local_certificate_properties =
                                P'.mergeAppend (local_certificate_properties old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{peer_certificate_properties =
                                P'.mergeAppend (peer_certificate_properties old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{tls_session_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> TLSProperties) TLSProperties where
  getVal m' f' = f' m'

instance P'.GPB TLSProperties

instance P'.ReflectDescriptor TLSProperties where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18, 26, 34, 42, 50])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.TLSProperties\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\"], baseName = MName \"TLSProperties\"}, descFilePath = [\"AccesslogProto\",\"TLSProperties.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.TLSProperties.tls_version\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"TLSProperties\"], baseName' = FName \"tls_version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.TLSProperties.TLSVersion\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\",MName \"TLSProperties\"], baseName = MName \"TLSVersion\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.TLSProperties.tls_cipher_suite\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"TLSProperties\"], baseName' = FName \"tls_cipher_suite\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.TLSProperties.tls_sni_hostname\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"TLSProperties\"], baseName' = FName \"tls_sni_hostname\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.TLSProperties.local_certificate_properties\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"TLSProperties\"], baseName' = FName \"local_certificate_properties\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.TLSProperties.CertificateProperties\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\",MName \"TLSProperties\"], baseName = MName \"CertificateProperties\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.TLSProperties.peer_certificate_properties\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"TLSProperties\"], baseName' = FName \"peer_certificate_properties\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.TLSProperties.CertificateProperties\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\",MName \"TLSProperties\"], baseName = MName \"CertificateProperties\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.TLSProperties.tls_session_id\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"TLSProperties\"], baseName' = FName \"tls_session_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType TLSProperties where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg TLSProperties where
  textPut msg
   = do
       P'.tellT "tls_version" (tls_version msg)
       P'.tellT "tls_cipher_suite" (tls_cipher_suite msg)
       P'.tellT "tls_sni_hostname" (tls_sni_hostname msg)
       P'.tellT "local_certificate_properties" (local_certificate_properties msg)
       P'.tellT "peer_certificate_properties" (peer_certificate_properties msg)
       P'.tellT "tls_session_id" (tls_session_id msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'tls_version, parse'tls_cipher_suite, parse'tls_sni_hostname, parse'local_certificate_properties,
                   parse'peer_certificate_properties, parse'tls_session_id])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'tls_version = Prelude'.fmap (\ v o -> o{tls_version = v}) (P'.try (P'.getT "tls_version"))
        parse'tls_cipher_suite = Prelude'.fmap (\ v o -> o{tls_cipher_suite = v}) (P'.try (P'.getT "tls_cipher_suite"))
        parse'tls_sni_hostname = Prelude'.fmap (\ v o -> o{tls_sni_hostname = v}) (P'.try (P'.getT "tls_sni_hostname"))
        parse'local_certificate_properties
         = Prelude'.fmap (\ v o -> o{local_certificate_properties = v}) (P'.try (P'.getT "local_certificate_properties"))
        parse'peer_certificate_properties
         = Prelude'.fmap (\ v o -> o{peer_certificate_properties = v}) (P'.try (P'.getT "peer_certificate_properties"))
        parse'tls_session_id = Prelude'.fmap (\ v o -> o{tls_session_id = v}) (P'.try (P'.getT "tls_session_id"))