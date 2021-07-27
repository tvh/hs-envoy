{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ConfigSourceProto.ApiConfigSource (ApiConfigSource(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ConfigSourceProto.ApiConfigSource.ApiType as ConfigSourceProto.ApiConfigSource
import qualified ConfigSourceProto.ApiVersion as ConfigSourceProto
import qualified ConfigSourceProto.RateLimitSettings as ConfigSourceProto
import qualified DurationProto.Duration as DurationProto
import qualified GrpcServiceProto.GrpcService as GrpcServiceProto

data ApiConfigSource = ApiConfigSource{api_type :: !(P'.Maybe ConfigSourceProto.ApiConfigSource.ApiType),
                                       transport_api_version :: !(P'.Maybe ConfigSourceProto.ApiVersion),
                                       cluster_names :: !(P'.Seq P'.Utf8), grpc_services :: !(P'.Seq GrpcServiceProto.GrpcService),
                                       refresh_delay :: !(P'.Maybe DurationProto.Duration),
                                       request_timeout :: !(P'.Maybe DurationProto.Duration),
                                       rate_limit_settings :: !(P'.Maybe ConfigSourceProto.RateLimitSettings),
                                       set_node_on_first_message_only :: !(P'.Maybe P'.Bool)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable ApiConfigSource where
  mergeAppend (ApiConfigSource x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8) (ApiConfigSource y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
         !z'6 = P'.mergeAppend x'6 y'6
         !z'7 = P'.mergeAppend x'7 y'7
         !z'8 = P'.mergeAppend x'8 y'8
      in ApiConfigSource z'1 z'2 z'3 z'4 z'5 z'6 z'7 z'8

instance P'.Default ApiConfigSource where
  defaultValue
   = ApiConfigSource P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue

instance P'.Wire ApiConfigSource where
  wireSize ft' self'@(ApiConfigSource x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeOpt 1 14 x'2 + P'.wireSizeRep 1 9 x'3 + P'.wireSizeRep 1 11 x'4 +
             P'.wireSizeOpt 1 11 x'5
             + P'.wireSizeOpt 1 11 x'6
             + P'.wireSizeOpt 1 11 x'7
             + P'.wireSizeOpt 1 8 x'8)
  wirePutWithSize ft' self'@(ApiConfigSource x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 8 14 x'1, P'.wirePutRepWithSize 18 9 x'3, P'.wirePutOptWithSize 26 11 x'5,
             P'.wirePutRepWithSize 34 11 x'4, P'.wirePutOptWithSize 42 11 x'6, P'.wirePutOptWithSize 50 11 x'7,
             P'.wirePutOptWithSize 56 8 x'8, P'.wirePutOptWithSize 64 14 x'2]
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
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{api_type = Prelude'.Just new'Field}) (P'.wireGet 14)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{transport_api_version = Prelude'.Just new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{cluster_names = P'.append (cluster_names old'Self) new'Field})
                    (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{grpc_services = P'.append (grpc_services old'Self) new'Field})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{refresh_delay = P'.mergeAppend (refresh_delay old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{request_timeout = P'.mergeAppend (request_timeout old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{rate_limit_settings = P'.mergeAppend (rate_limit_settings old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{set_node_on_first_message_only = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ApiConfigSource) ApiConfigSource where
  getVal m' f' = f' m'

instance P'.GPB ApiConfigSource

instance P'.ReflectDescriptor ApiConfigSource where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18, 26, 34, 42, 50, 56, 64])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.ApiConfigSource\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\"], baseName = MName \"ApiConfigSource\"}, descFilePath = [\"ConfigSourceProto\",\"ApiConfigSource.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ApiConfigSource.api_type\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"ApiConfigSource\"], baseName' = FName \"api_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.ApiConfigSource.ApiType\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\",MName \"ApiConfigSource\"], baseName = MName \"ApiType\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ApiConfigSource.transport_api_version\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"ApiConfigSource\"], baseName' = FName \"transport_api_version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.ApiVersion\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\"], baseName = MName \"ApiVersion\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ApiConfigSource.cluster_names\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"ApiConfigSource\"], baseName' = FName \"cluster_names\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ApiConfigSource.grpc_services\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"ApiConfigSource\"], baseName' = FName \"grpc_services\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\"], baseName = MName \"GrpcService\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ApiConfigSource.refresh_delay\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"ApiConfigSource\"], baseName' = FName \"refresh_delay\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ApiConfigSource.request_timeout\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"ApiConfigSource\"], baseName' = FName \"request_timeout\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ApiConfigSource.rate_limit_settings\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"ApiConfigSource\"], baseName' = FName \"rate_limit_settings\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.RateLimitSettings\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\"], baseName = MName \"RateLimitSettings\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ApiConfigSource.set_node_on_first_message_only\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"ApiConfigSource\"], baseName' = FName \"set_node_on_first_message_only\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType ApiConfigSource where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ApiConfigSource where
  textPut msg
   = do
       P'.tellT "api_type" (api_type msg)
       P'.tellT "transport_api_version" (transport_api_version msg)
       P'.tellT "cluster_names" (cluster_names msg)
       P'.tellT "grpc_services" (grpc_services msg)
       P'.tellT "refresh_delay" (refresh_delay msg)
       P'.tellT "request_timeout" (request_timeout msg)
       P'.tellT "rate_limit_settings" (rate_limit_settings msg)
       P'.tellT "set_node_on_first_message_only" (set_node_on_first_message_only msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'api_type, parse'transport_api_version, parse'cluster_names, parse'grpc_services, parse'refresh_delay,
                   parse'request_timeout, parse'rate_limit_settings, parse'set_node_on_first_message_only])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'api_type = Prelude'.fmap (\ v o -> o{api_type = v}) (P'.try (P'.getT "api_type"))
        parse'transport_api_version
         = Prelude'.fmap (\ v o -> o{transport_api_version = v}) (P'.try (P'.getT "transport_api_version"))
        parse'cluster_names
         = Prelude'.fmap (\ v o -> o{cluster_names = P'.append (cluster_names o) v}) (P'.try (P'.getT "cluster_names"))
        parse'grpc_services
         = Prelude'.fmap (\ v o -> o{grpc_services = P'.append (grpc_services o) v}) (P'.try (P'.getT "grpc_services"))
        parse'refresh_delay = Prelude'.fmap (\ v o -> o{refresh_delay = v}) (P'.try (P'.getT "refresh_delay"))
        parse'request_timeout = Prelude'.fmap (\ v o -> o{request_timeout = v}) (P'.try (P'.getT "request_timeout"))
        parse'rate_limit_settings = Prelude'.fmap (\ v o -> o{rate_limit_settings = v}) (P'.try (P'.getT "rate_limit_settings"))
        parse'set_node_on_first_message_only
         = Prelude'.fmap (\ v o -> o{set_node_on_first_message_only = v}) (P'.try (P'.getT "set_node_on_first_message_only"))