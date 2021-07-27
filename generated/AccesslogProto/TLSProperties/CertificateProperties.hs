{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AccesslogProto.TLSProperties.CertificateProperties (CertificateProperties(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AccesslogProto.TLSProperties.CertificateProperties.SubjectAltName
       as AccesslogProto.TLSProperties.CertificateProperties

data CertificateProperties = CertificateProperties{subject_alt_name ::
                                                   !(P'.Seq AccesslogProto.TLSProperties.CertificateProperties.SubjectAltName),
                                                   subject :: !(P'.Maybe P'.Utf8)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable CertificateProperties where
  mergeAppend (CertificateProperties x'1 x'2) (CertificateProperties y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in CertificateProperties z'1 z'2

instance P'.Default CertificateProperties where
  defaultValue = CertificateProperties P'.defaultValue P'.defaultValue

instance P'.Wire CertificateProperties where
  wireSize ft' self'@(CertificateProperties x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeOpt 1 9 x'2)
  wirePutWithSize ft' self'@(CertificateProperties x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutRepWithSize 10 11 x'1, P'.wirePutOptWithSize 18 9 x'2]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{subject_alt_name = P'.append (subject_alt_name old'Self) new'Field})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{subject = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> CertificateProperties) CertificateProperties where
  getVal m' f' = f' m'

instance P'.GPB CertificateProperties

instance P'.ReflectDescriptor CertificateProperties where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.TLSProperties.CertificateProperties\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\",MName \"TLSProperties\"], baseName = MName \"CertificateProperties\"}, descFilePath = [\"AccesslogProto\",\"TLSProperties\",\"CertificateProperties.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.TLSProperties.CertificateProperties.subject_alt_name\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"TLSProperties\",MName \"CertificateProperties\"], baseName' = FName \"subject_alt_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.TLSProperties.CertificateProperties.SubjectAltName\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\",MName \"TLSProperties\",MName \"CertificateProperties\"], baseName = MName \"SubjectAltName\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.TLSProperties.CertificateProperties.subject\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"TLSProperties\",MName \"CertificateProperties\"], baseName' = FName \"subject\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType CertificateProperties where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg CertificateProperties where
  textPut msg
   = do
       P'.tellT "subject_alt_name" (subject_alt_name msg)
       P'.tellT "subject" (subject msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'subject_alt_name, parse'subject]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'subject_alt_name
         = Prelude'.fmap (\ v o -> o{subject_alt_name = P'.append (subject_alt_name o) v}) (P'.try (P'.getT "subject_alt_name"))
        parse'subject = Prelude'.fmap (\ v o -> o{subject = v}) (P'.try (P'.getT "subject"))