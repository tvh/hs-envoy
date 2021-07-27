{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ProtocolProto.HttpProtocolOptions (HttpProtocolOptions(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified DurationProto.Duration as DurationProto
import qualified ProtocolProto.HttpProtocolOptions.HeadersWithUnderscoresAction as ProtocolProto.HttpProtocolOptions
import qualified WrappersProto.UInt32Value as WrappersProto

data HttpProtocolOptions = HttpProtocolOptions{idle_timeout :: !(P'.Maybe DurationProto.Duration),
                                               max_connection_duration :: !(P'.Maybe DurationProto.Duration),
                                               max_headers_count :: !(P'.Maybe WrappersProto.UInt32Value),
                                               max_stream_duration :: !(P'.Maybe DurationProto.Duration),
                                               headers_with_underscores_action ::
                                               !(P'.Maybe ProtocolProto.HttpProtocolOptions.HeadersWithUnderscoresAction)}
                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable HttpProtocolOptions where
  mergeAppend (HttpProtocolOptions x'1 x'2 x'3 x'4 x'5) (HttpProtocolOptions y'1 y'2 y'3 y'4 y'5)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
      in HttpProtocolOptions z'1 z'2 z'3 z'4 z'5

instance P'.Default HttpProtocolOptions where
  defaultValue = HttpProtocolOptions P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire HttpProtocolOptions where
  wireSize ft' self'@(HttpProtocolOptions x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 14 x'5)
  wirePutWithSize ft' self'@(HttpProtocolOptions x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 18 11 x'3, P'.wirePutOptWithSize 26 11 x'2,
             P'.wirePutOptWithSize 34 11 x'4, P'.wirePutOptWithSize 40 14 x'5]
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
                    (\ !new'Field -> old'Self{idle_timeout = P'.mergeAppend (idle_timeout old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{max_connection_duration =
                                P'.mergeAppend (max_connection_duration old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{max_headers_count = P'.mergeAppend (max_headers_count old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{max_stream_duration = P'.mergeAppend (max_stream_duration old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{headers_with_underscores_action = Prelude'.Just new'Field})
                    (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> HttpProtocolOptions) HttpProtocolOptions where
  getVal m' f' = f' m'

instance P'.GPB HttpProtocolOptions

instance P'.ReflectDescriptor HttpProtocolOptions where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 40])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.HttpProtocolOptions\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\"], baseName = MName \"HttpProtocolOptions\"}, descFilePath = [\"ProtocolProto\",\"HttpProtocolOptions.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HttpProtocolOptions.idle_timeout\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"HttpProtocolOptions\"], baseName' = FName \"idle_timeout\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HttpProtocolOptions.max_connection_duration\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"HttpProtocolOptions\"], baseName' = FName \"max_connection_duration\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HttpProtocolOptions.max_headers_count\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"HttpProtocolOptions\"], baseName' = FName \"max_headers_count\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HttpProtocolOptions.max_stream_duration\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"HttpProtocolOptions\"], baseName' = FName \"max_stream_duration\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HttpProtocolOptions.headers_with_underscores_action\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"HttpProtocolOptions\"], baseName' = FName \"headers_with_underscores_action\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HttpProtocolOptions.HeadersWithUnderscoresAction\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\",MName \"HttpProtocolOptions\"], baseName = MName \"HeadersWithUnderscoresAction\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType HttpProtocolOptions where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg HttpProtocolOptions where
  textPut msg
   = do
       P'.tellT "idle_timeout" (idle_timeout msg)
       P'.tellT "max_connection_duration" (max_connection_duration msg)
       P'.tellT "max_headers_count" (max_headers_count msg)
       P'.tellT "max_stream_duration" (max_stream_duration msg)
       P'.tellT "headers_with_underscores_action" (headers_with_underscores_action msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'idle_timeout, parse'max_connection_duration, parse'max_headers_count, parse'max_stream_duration,
                   parse'headers_with_underscores_action])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'idle_timeout = Prelude'.fmap (\ v o -> o{idle_timeout = v}) (P'.try (P'.getT "idle_timeout"))
        parse'max_connection_duration
         = Prelude'.fmap (\ v o -> o{max_connection_duration = v}) (P'.try (P'.getT "max_connection_duration"))
        parse'max_headers_count = Prelude'.fmap (\ v o -> o{max_headers_count = v}) (P'.try (P'.getT "max_headers_count"))
        parse'max_stream_duration = Prelude'.fmap (\ v o -> o{max_stream_duration = v}) (P'.try (P'.getT "max_stream_duration"))
        parse'headers_with_underscores_action
         = Prelude'.fmap (\ v o -> o{headers_with_underscores_action = v}) (P'.try (P'.getT "headers_with_underscores_action"))