{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ResolverProto.DnsResolverOptions (DnsResolverOptions(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data DnsResolverOptions = DnsResolverOptions{use_tcp_for_dns_lookups :: !(P'.Maybe P'.Bool),
                                             no_default_search_domain :: !(P'.Maybe P'.Bool)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable DnsResolverOptions where
  mergeAppend (DnsResolverOptions x'1 x'2) (DnsResolverOptions y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in DnsResolverOptions z'1 z'2

instance P'.Default DnsResolverOptions where
  defaultValue = DnsResolverOptions P'.defaultValue P'.defaultValue

instance P'.Wire DnsResolverOptions where
  wireSize ft' self'@(DnsResolverOptions x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 8 x'1 + P'.wireSizeOpt 1 8 x'2)
  wirePutWithSize ft' self'@(DnsResolverOptions x'1 x'2)
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
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{use_tcp_for_dns_lookups = Prelude'.Just new'Field}) (P'.wireGet 8)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{no_default_search_domain = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> DnsResolverOptions) DnsResolverOptions where
  getVal m' f' = f' m'

instance P'.GPB DnsResolverOptions

instance P'.ReflectDescriptor DnsResolverOptions where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.DnsResolverOptions\", haskellPrefix = [], parentModule = [MName \"ResolverProto\"], baseName = MName \"DnsResolverOptions\"}, descFilePath = [\"ResolverProto\",\"DnsResolverOptions.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.DnsResolverOptions.use_tcp_for_dns_lookups\", haskellPrefix' = [], parentModule' = [MName \"ResolverProto\",MName \"DnsResolverOptions\"], baseName' = FName \"use_tcp_for_dns_lookups\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.DnsResolverOptions.no_default_search_domain\", haskellPrefix' = [], parentModule' = [MName \"ResolverProto\",MName \"DnsResolverOptions\"], baseName' = FName \"no_default_search_domain\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType DnsResolverOptions where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg DnsResolverOptions where
  textPut msg
   = do
       P'.tellT "use_tcp_for_dns_lookups" (use_tcp_for_dns_lookups msg)
       P'.tellT "no_default_search_domain" (no_default_search_domain msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'use_tcp_for_dns_lookups, parse'no_default_search_domain]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'use_tcp_for_dns_lookups
         = Prelude'.fmap (\ v o -> o{use_tcp_for_dns_lookups = v}) (P'.try (P'.getT "use_tcp_for_dns_lookups"))
        parse'no_default_search_domain
         = Prelude'.fmap (\ v o -> o{no_default_search_domain = v}) (P'.try (P'.getT "no_default_search_domain"))