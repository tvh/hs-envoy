{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ProtocolProto.Http3ProtocolOptions (Http3ProtocolOptions(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ProtocolProto.QuicProtocolOptions as ProtocolProto
import qualified WrappersProto.BoolValue as WrappersProto

data Http3ProtocolOptions = Http3ProtocolOptions{quic_protocol_options :: !(P'.Maybe ProtocolProto.QuicProtocolOptions),
                                                 override_stream_error_on_invalid_http_message ::
                                                 !(P'.Maybe WrappersProto.BoolValue)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Http3ProtocolOptions where
  mergeAppend (Http3ProtocolOptions x'1 x'2) (Http3ProtocolOptions y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in Http3ProtocolOptions z'1 z'2

instance P'.Default Http3ProtocolOptions where
  defaultValue = Http3ProtocolOptions P'.defaultValue P'.defaultValue

instance P'.Wire Http3ProtocolOptions where
  wireSize ft' self'@(Http3ProtocolOptions x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePutWithSize ft' self'@(Http3ProtocolOptions x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 18 11 x'2]
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
                      old'Self{quic_protocol_options = P'.mergeAppend (quic_protocol_options old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{override_stream_error_on_invalid_http_message =
                                P'.mergeAppend (override_stream_error_on_invalid_http_message old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Http3ProtocolOptions) Http3ProtocolOptions where
  getVal m' f' = f' m'

instance P'.GPB Http3ProtocolOptions

instance P'.ReflectDescriptor Http3ProtocolOptions where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.Http3ProtocolOptions\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\"], baseName = MName \"Http3ProtocolOptions\"}, descFilePath = [\"ProtocolProto\",\"Http3ProtocolOptions.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http3ProtocolOptions.quic_protocol_options\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http3ProtocolOptions\"], baseName' = FName \"quic_protocol_options\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.QuicProtocolOptions\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\"], baseName = MName \"QuicProtocolOptions\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Http3ProtocolOptions.override_stream_error_on_invalid_http_message\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"Http3ProtocolOptions\"], baseName' = FName \"override_stream_error_on_invalid_http_message\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.BoolValue\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"BoolValue\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType Http3ProtocolOptions where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Http3ProtocolOptions where
  textPut msg
   = do
       P'.tellT "quic_protocol_options" (quic_protocol_options msg)
       P'.tellT "override_stream_error_on_invalid_http_message" (override_stream_error_on_invalid_http_message msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'quic_protocol_options, parse'override_stream_error_on_invalid_http_message]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'quic_protocol_options
         = Prelude'.fmap (\ v o -> o{quic_protocol_options = v}) (P'.try (P'.getT "quic_protocol_options"))
        parse'override_stream_error_on_invalid_http_message
         = Prelude'.fmap (\ v o -> o{override_stream_error_on_invalid_http_message = v})
            (P'.try (P'.getT "override_stream_error_on_invalid_http_message"))