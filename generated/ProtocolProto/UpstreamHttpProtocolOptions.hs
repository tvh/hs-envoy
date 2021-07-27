{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ProtocolProto.UpstreamHttpProtocolOptions (UpstreamHttpProtocolOptions(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data UpstreamHttpProtocolOptions = UpstreamHttpProtocolOptions{auto_sni :: !(P'.Maybe P'.Bool),
                                                               auto_san_validation :: !(P'.Maybe P'.Bool)}
                                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                             Prelude'.Generic)

instance P'.Mergeable UpstreamHttpProtocolOptions where
  mergeAppend (UpstreamHttpProtocolOptions x'1 x'2) (UpstreamHttpProtocolOptions y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in UpstreamHttpProtocolOptions z'1 z'2

instance P'.Default UpstreamHttpProtocolOptions where
  defaultValue = UpstreamHttpProtocolOptions P'.defaultValue P'.defaultValue

instance P'.Wire UpstreamHttpProtocolOptions where
  wireSize ft' self'@(UpstreamHttpProtocolOptions x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 8 x'1 + P'.wireSizeOpt 1 8 x'2)
  wirePutWithSize ft' self'@(UpstreamHttpProtocolOptions x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 8 8 x'1, P'.wirePutOptWithSize 16 8 x'2]
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
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{auto_sni = Prelude'.Just new'Field}) (P'.wireGet 8)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{auto_san_validation = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> UpstreamHttpProtocolOptions) UpstreamHttpProtocolOptions where
  getVal m' f' = f' m'

instance P'.GPB UpstreamHttpProtocolOptions

instance P'.ReflectDescriptor UpstreamHttpProtocolOptions where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.UpstreamHttpProtocolOptions\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\"], baseName = MName \"UpstreamHttpProtocolOptions\"}, descFilePath = [\"ProtocolProto\",\"UpstreamHttpProtocolOptions.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.UpstreamHttpProtocolOptions.auto_sni\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"UpstreamHttpProtocolOptions\"], baseName' = FName \"auto_sni\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.UpstreamHttpProtocolOptions.auto_san_validation\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"UpstreamHttpProtocolOptions\"], baseName' = FName \"auto_san_validation\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType UpstreamHttpProtocolOptions where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg UpstreamHttpProtocolOptions where
  textPut msg
   = do
       P'.tellT "auto_sni" (auto_sni msg)
       P'.tellT "auto_san_validation" (auto_san_validation msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'auto_sni, parse'auto_san_validation]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'auto_sni = Prelude'.fmap (\ v o -> o{auto_sni = v}) (P'.try (P'.getT "auto_sni"))
        parse'auto_san_validation = Prelude'.fmap (\ v o -> o{auto_san_validation = v}) (P'.try (P'.getT "auto_san_validation"))