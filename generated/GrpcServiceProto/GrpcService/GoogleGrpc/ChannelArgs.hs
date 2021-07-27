{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs (ChannelArgs(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.ArgsEntry
       as GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs
import qualified GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.Value as GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs

data ChannelArgs = ChannelArgs{args :: P'.Map (P'.Utf8) (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.Value)}
                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable ChannelArgs where
  mergeAppend (ChannelArgs x'1) (ChannelArgs y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in ChannelArgs z'1

instance P'.Default ChannelArgs where
  defaultValue = ChannelArgs P'.defaultValue

instance P'.Wire ChannelArgs where
  wireSize ft' self'@(ChannelArgs x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.argsEntryToSeq x'1))
  wirePutWithSize ft' self'@(ChannelArgs x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutRepWithSize 10 11 (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.argsEntryToSeq x'1)]
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
                      old'Self{args =
                                P'.appendMap (args old'Self)
                                 (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.argsEntryToPair new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ChannelArgs) ChannelArgs where
  getVal m' f' = f' m'

instance P'.GPB ChannelArgs

instance P'.ReflectDescriptor ChannelArgs where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\"], baseName = MName \"ChannelArgs\"}, descFilePath = [\"GrpcServiceProto\",\"GrpcService\",\"GoogleGrpc\",\"ChannelArgs.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.args\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelArgs\"], baseName' = FName \"args\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.ArgsEntry\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelArgs\"], baseName = MName \"ArgsEntry\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = True, mapKeyVal = Just ((FieldType {getFieldType = 9},Nothing),(FieldType {getFieldType = 11},Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.Value\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelArgs\"], baseName = MName \"Value\"})))}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType ChannelArgs where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ChannelArgs where
  textPut msg
   = do
       P'.tellT "args" (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.argsEntryToSeq (args msg))
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'args]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'args
         = Prelude'.fmap
            (\ v o -> o{args = P'.appendMap (args o) (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.argsEntryToPair v)})
            (P'.try (P'.getT "args"))