{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ProtocolProto.GrpcProtocolOptions (GrpcProtocolOptions(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ProtocolProto.Http2ProtocolOptions as ProtocolProto

data GrpcProtocolOptions = GrpcProtocolOptions{http2_protocol_options :: !(P'.Maybe ProtocolProto.Http2ProtocolOptions)}
                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable GrpcProtocolOptions where
  mergeAppend (GrpcProtocolOptions x'1) (GrpcProtocolOptions y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in GrpcProtocolOptions z'1

instance P'.Default GrpcProtocolOptions where
  defaultValue = GrpcProtocolOptions P'.defaultValue

instance P'.Wire GrpcProtocolOptions where
  wireSize ft' self'@(GrpcProtocolOptions x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1)
  wirePutWithSize ft' self'@(GrpcProtocolOptions x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 11 x'1]
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
                      old'Self{http2_protocol_options = P'.mergeAppend (http2_protocol_options old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> GrpcProtocolOptions) GrpcProtocolOptions where
  getVal m' f' = f' m'

instance P'.GPB GrpcProtocolOptions

instance P'.ReflectDescriptor GrpcProtocolOptions where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcProtocolOptions\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\"], baseName = MName \"GrpcProtocolOptions\"}, descFilePath = [\"ProtocolProto\",\"GrpcProtocolOptions.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcProtocolOptions.http2_protocol_options\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"GrpcProtocolOptions\"], baseName' = FName \"http2_protocol_options\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Http2ProtocolOptions\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\"], baseName = MName \"Http2ProtocolOptions\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType GrpcProtocolOptions where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg GrpcProtocolOptions where
  textPut msg
   = do
       P'.tellT "http2_protocol_options" (http2_protocol_options msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'http2_protocol_options]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'http2_protocol_options
         = Prelude'.fmap (\ v o -> o{http2_protocol_options = v}) (P'.try (P'.getT "http2_protocol_options"))