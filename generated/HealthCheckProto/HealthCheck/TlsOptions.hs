{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HealthCheckProto.HealthCheck.TlsOptions (TlsOptions(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data TlsOptions = TlsOptions{alpn_protocols :: !(P'.Seq P'.Utf8)}
                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable TlsOptions where
  mergeAppend (TlsOptions x'1) (TlsOptions y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in TlsOptions z'1

instance P'.Default TlsOptions where
  defaultValue = TlsOptions P'.defaultValue

instance P'.Wire TlsOptions where
  wireSize ft' self'@(TlsOptions x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 9 x'1)
  wirePutWithSize ft' self'@(TlsOptions x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutRepWithSize 10 9 x'1]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{alpn_protocols = P'.append (alpn_protocols old'Self) new'Field})
                    (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> TlsOptions) TlsOptions where
  getVal m' f' = f' m'

instance P'.GPB TlsOptions

instance P'.ReflectDescriptor TlsOptions where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.TlsOptions\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName = MName \"TlsOptions\"}, descFilePath = [\"HealthCheckProto\",\"HealthCheck\",\"TlsOptions.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.TlsOptions.alpn_protocols\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"TlsOptions\"], baseName' = FName \"alpn_protocols\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType TlsOptions where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg TlsOptions where
  textPut msg
   = do
       P'.tellT "alpn_protocols" (alpn_protocols msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'alpn_protocols]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'alpn_protocols
         = Prelude'.fmap (\ v o -> o{alpn_protocols = P'.append (alpn_protocols o) v}) (P'.try (P'.getT "alpn_protocols"))