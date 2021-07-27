{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module GrpcServiceProto.GrpcService.GoogleGrpc (GoogleGrpc(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials as GrpcServiceProto.GrpcService.GoogleGrpc
import qualified GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs as GrpcServiceProto.GrpcService.GoogleGrpc
import qualified GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials as GrpcServiceProto.GrpcService.GoogleGrpc
import qualified StructProto.Struct as StructProto
import qualified WrappersProto.UInt32Value as WrappersProto

data GoogleGrpc = GoogleGrpc{target_uri :: !(P'.Maybe P'.Utf8),
                             channel_credentials :: !(P'.Maybe GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials),
                             call_credentials :: !(P'.Seq GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials),
                             stat_prefix :: !(P'.Maybe P'.Utf8), credentials_factory_name :: !(P'.Maybe P'.Utf8),
                             config :: !(P'.Maybe StructProto.Struct),
                             per_stream_buffer_limit_bytes :: !(P'.Maybe WrappersProto.UInt32Value),
                             channel_args :: !(P'.Maybe GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs)}
                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable GoogleGrpc where
  mergeAppend (GoogleGrpc x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8) (GoogleGrpc y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
         !z'6 = P'.mergeAppend x'6 y'6
         !z'7 = P'.mergeAppend x'7 y'7
         !z'8 = P'.mergeAppend x'8 y'8
      in GoogleGrpc z'1 z'2 z'3 z'4 z'5 z'6 z'7 z'8

instance P'.Default GoogleGrpc where
  defaultValue
   = GoogleGrpc P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue

instance P'.Wire GoogleGrpc where
  wireSize ft' self'@(GoogleGrpc x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeRep 1 11 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeOpt 1 11 x'6
             + P'.wireSizeOpt 1 11 x'7
             + P'.wireSizeOpt 1 11 x'8)
  wirePutWithSize ft' self'@(GoogleGrpc x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9 x'1, P'.wirePutOptWithSize 18 11 x'2, P'.wirePutRepWithSize 26 11 x'3,
             P'.wirePutOptWithSize 34 9 x'4, P'.wirePutOptWithSize 42 9 x'5, P'.wirePutOptWithSize 50 11 x'6,
             P'.wirePutOptWithSize 58 11 x'7, P'.wirePutOptWithSize 66 11 x'8]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{target_uri = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{channel_credentials = P'.mergeAppend (channel_credentials old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{call_credentials = P'.append (call_credentials old'Self) new'Field})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{stat_prefix = Prelude'.Just new'Field}) (P'.wireGet 9)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{credentials_factory_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{config = P'.mergeAppend (config old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             58 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{per_stream_buffer_limit_bytes =
                                P'.mergeAppend (per_stream_buffer_limit_bytes old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             66 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{channel_args = P'.mergeAppend (channel_args old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> GoogleGrpc) GoogleGrpc where
  getVal m' f' = f' m'

instance P'.GPB GoogleGrpc

instance P'.ReflectDescriptor GoogleGrpc where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 42, 50, 58, 66])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\"], baseName = MName \"GoogleGrpc\"}, descFilePath = [\"GrpcServiceProto\",\"GrpcService\",\"GoogleGrpc.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.target_uri\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\"], baseName' = FName \"target_uri\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.channel_credentials\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\"], baseName' = FName \"channel_credentials\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\"], baseName = MName \"ChannelCredentials\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.call_credentials\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\"], baseName' = FName \"call_credentials\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\"], baseName = MName \"CallCredentials\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.stat_prefix\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\"], baseName' = FName \"stat_prefix\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.credentials_factory_name\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\"], baseName' = FName \"credentials_factory_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.config\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\"], baseName' = FName \"config\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Struct\", haskellPrefix = [], parentModule = [MName \"StructProto\"], baseName = MName \"Struct\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.per_stream_buffer_limit_bytes\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\"], baseName' = FName \"per_stream_buffer_limit_bytes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.channel_args\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\"], baseName' = FName \"channel_args\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\"], baseName = MName \"ChannelArgs\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType GoogleGrpc where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg GoogleGrpc where
  textPut msg
   = do
       P'.tellT "target_uri" (target_uri msg)
       P'.tellT "channel_credentials" (channel_credentials msg)
       P'.tellT "call_credentials" (call_credentials msg)
       P'.tellT "stat_prefix" (stat_prefix msg)
       P'.tellT "credentials_factory_name" (credentials_factory_name msg)
       P'.tellT "config" (config msg)
       P'.tellT "per_stream_buffer_limit_bytes" (per_stream_buffer_limit_bytes msg)
       P'.tellT "channel_args" (channel_args msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'target_uri, parse'channel_credentials, parse'call_credentials, parse'stat_prefix,
                   parse'credentials_factory_name, parse'config, parse'per_stream_buffer_limit_bytes, parse'channel_args])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'target_uri = Prelude'.fmap (\ v o -> o{target_uri = v}) (P'.try (P'.getT "target_uri"))
        parse'channel_credentials = Prelude'.fmap (\ v o -> o{channel_credentials = v}) (P'.try (P'.getT "channel_credentials"))
        parse'call_credentials
         = Prelude'.fmap (\ v o -> o{call_credentials = P'.append (call_credentials o) v}) (P'.try (P'.getT "call_credentials"))
        parse'stat_prefix = Prelude'.fmap (\ v o -> o{stat_prefix = v}) (P'.try (P'.getT "stat_prefix"))
        parse'credentials_factory_name
         = Prelude'.fmap (\ v o -> o{credentials_factory_name = v}) (P'.try (P'.getT "credentials_factory_name"))
        parse'config = Prelude'.fmap (\ v o -> o{config = v}) (P'.try (P'.getT "config"))
        parse'per_stream_buffer_limit_bytes
         = Prelude'.fmap (\ v o -> o{per_stream_buffer_limit_bytes = v}) (P'.try (P'.getT "per_stream_buffer_limit_bytes"))
        parse'channel_args = Prelude'.fmap (\ v o -> o{channel_args = v}) (P'.try (P'.getT "channel_args"))