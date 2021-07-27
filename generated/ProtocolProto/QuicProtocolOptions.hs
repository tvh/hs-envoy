{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ProtocolProto.QuicProtocolOptions (QuicProtocolOptions(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified WrappersProto.UInt32Value as WrappersProto

data QuicProtocolOptions = QuicProtocolOptions{max_concurrent_streams :: !(P'.Maybe WrappersProto.UInt32Value),
                                               initial_stream_window_size :: !(P'.Maybe WrappersProto.UInt32Value),
                                               initial_connection_window_size :: !(P'.Maybe WrappersProto.UInt32Value)}
                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable QuicProtocolOptions where
  mergeAppend (QuicProtocolOptions x'1 x'2 x'3) (QuicProtocolOptions y'1 y'2 y'3)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
      in QuicProtocolOptions z'1 z'2 z'3

instance P'.Default QuicProtocolOptions where
  defaultValue = QuicProtocolOptions P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire QuicProtocolOptions where
  wireSize ft' self'@(QuicProtocolOptions x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 11 x'3)
  wirePutWithSize ft' self'@(QuicProtocolOptions x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 18 11 x'2, P'.wirePutOptWithSize 26 11 x'3]
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
                      old'Self{max_concurrent_streams = P'.mergeAppend (max_concurrent_streams old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{initial_stream_window_size =
                                P'.mergeAppend (initial_stream_window_size old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{initial_connection_window_size =
                                P'.mergeAppend (initial_connection_window_size old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> QuicProtocolOptions) QuicProtocolOptions where
  getVal m' f' = f' m'

instance P'.GPB QuicProtocolOptions

instance P'.ReflectDescriptor QuicProtocolOptions where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.QuicProtocolOptions\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\"], baseName = MName \"QuicProtocolOptions\"}, descFilePath = [\"ProtocolProto\",\"QuicProtocolOptions.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.QuicProtocolOptions.max_concurrent_streams\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"QuicProtocolOptions\"], baseName' = FName \"max_concurrent_streams\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.QuicProtocolOptions.initial_stream_window_size\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"QuicProtocolOptions\"], baseName' = FName \"initial_stream_window_size\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.QuicProtocolOptions.initial_connection_window_size\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"QuicProtocolOptions\"], baseName' = FName \"initial_connection_window_size\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType QuicProtocolOptions where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg QuicProtocolOptions where
  textPut msg
   = do
       P'.tellT "max_concurrent_streams" (max_concurrent_streams msg)
       P'.tellT "initial_stream_window_size" (initial_stream_window_size msg)
       P'.tellT "initial_connection_window_size" (initial_connection_window_size msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice [parse'max_concurrent_streams, parse'initial_stream_window_size, parse'initial_connection_window_size])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'max_concurrent_streams
         = Prelude'.fmap (\ v o -> o{max_concurrent_streams = v}) (P'.try (P'.getT "max_concurrent_streams"))
        parse'initial_stream_window_size
         = Prelude'.fmap (\ v o -> o{initial_stream_window_size = v}) (P'.try (P'.getT "initial_stream_window_size"))
        parse'initial_connection_window_size
         = Prelude'.fmap (\ v o -> o{initial_connection_window_size = v}) (P'.try (P'.getT "initial_connection_window_size"))