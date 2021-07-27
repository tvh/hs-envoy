{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ResolverProto.DnsResolutionConfig (DnsResolutionConfig(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AddressProto.Address as AddressProto
import qualified ResolverProto.DnsResolverOptions as ResolverProto

data DnsResolutionConfig = DnsResolutionConfig{resolvers :: !(P'.Seq AddressProto.Address),
                                               dns_resolver_options :: !(P'.Maybe ResolverProto.DnsResolverOptions)}
                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable DnsResolutionConfig where
  mergeAppend (DnsResolutionConfig x'1 x'2) (DnsResolutionConfig y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in DnsResolutionConfig z'1 z'2

instance P'.Default DnsResolutionConfig where
  defaultValue = DnsResolutionConfig P'.defaultValue P'.defaultValue

instance P'.Wire DnsResolutionConfig where
  wireSize ft' self'@(DnsResolutionConfig x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePutWithSize ft' self'@(DnsResolutionConfig x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutRepWithSize 10 11 x'1, P'.wirePutOptWithSize 18 11 x'2]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{resolvers = P'.append (resolvers old'Self) new'Field}) (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{dns_resolver_options = P'.mergeAppend (dns_resolver_options old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> DnsResolutionConfig) DnsResolutionConfig where
  getVal m' f' = f' m'

instance P'.GPB DnsResolutionConfig

instance P'.ReflectDescriptor DnsResolutionConfig where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.DnsResolutionConfig\", haskellPrefix = [], parentModule = [MName \"ResolverProto\"], baseName = MName \"DnsResolutionConfig\"}, descFilePath = [\"ResolverProto\",\"DnsResolutionConfig.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.DnsResolutionConfig.resolvers\", haskellPrefix' = [], parentModule' = [MName \"ResolverProto\",MName \"DnsResolutionConfig\"], baseName' = FName \"resolvers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Address\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"Address\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.DnsResolutionConfig.dns_resolver_options\", haskellPrefix' = [], parentModule' = [MName \"ResolverProto\",MName \"DnsResolutionConfig\"], baseName' = FName \"dns_resolver_options\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.DnsResolverOptions\", haskellPrefix = [], parentModule = [MName \"ResolverProto\"], baseName = MName \"DnsResolverOptions\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType DnsResolutionConfig where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg DnsResolutionConfig where
  textPut msg
   = do
       P'.tellT "resolvers" (resolvers msg)
       P'.tellT "dns_resolver_options" (dns_resolver_options msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'resolvers, parse'dns_resolver_options]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'resolvers = Prelude'.fmap (\ v o -> o{resolvers = P'.append (resolvers o) v}) (P'.try (P'.getT "resolvers"))
        parse'dns_resolver_options = Prelude'.fmap (\ v o -> o{dns_resolver_options = v}) (P'.try (P'.getT "dns_resolver_options"))