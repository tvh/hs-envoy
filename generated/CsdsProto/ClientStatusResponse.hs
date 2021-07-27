{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module CsdsProto.ClientStatusResponse (ClientStatusResponse(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified CsdsProto.ClientConfig as CsdsProto

data ClientStatusResponse = ClientStatusResponse{config :: !(P'.Seq CsdsProto.ClientConfig)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable ClientStatusResponse where
  mergeAppend (ClientStatusResponse x'1) (ClientStatusResponse y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in ClientStatusResponse z'1

instance P'.Default ClientStatusResponse where
  defaultValue = ClientStatusResponse P'.defaultValue

instance P'.Wire ClientStatusResponse where
  wireSize ft' self'@(ClientStatusResponse x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePutWithSize ft' self'@(ClientStatusResponse x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutRepWithSize 10 11 x'1]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{config = P'.append (config old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ClientStatusResponse) ClientStatusResponse where
  getVal m' f' = f' m'

instance P'.GPB ClientStatusResponse

instance P'.ReflectDescriptor ClientStatusResponse where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.status.v3.ClientStatusResponse\", haskellPrefix = [], parentModule = [MName \"CsdsProto\"], baseName = MName \"ClientStatusResponse\"}, descFilePath = [\"CsdsProto\",\"ClientStatusResponse.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.ClientStatusResponse.config\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"ClientStatusResponse\"], baseName' = FName \"config\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.status.v3.ClientConfig\", haskellPrefix = [], parentModule = [MName \"CsdsProto\"], baseName = MName \"ClientConfig\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType ClientStatusResponse where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ClientStatusResponse where
  textPut msg
   = do
       P'.tellT "config" (config msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'config]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'config = Prelude'.fmap (\ v o -> o{config = P'.append (config o) v}) (P'.try (P'.getT "config"))