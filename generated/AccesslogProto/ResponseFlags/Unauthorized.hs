{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AccesslogProto.ResponseFlags.Unauthorized (Unauthorized(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AccesslogProto.ResponseFlags.Unauthorized.Reason as AccesslogProto.ResponseFlags.Unauthorized

data Unauthorized = Unauthorized{reason :: !(P'.Maybe AccesslogProto.ResponseFlags.Unauthorized.Reason)}
                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Unauthorized where
  mergeAppend (Unauthorized x'1) (Unauthorized y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in Unauthorized z'1

instance P'.Default Unauthorized where
  defaultValue = Unauthorized P'.defaultValue

instance P'.Wire Unauthorized where
  wireSize ft' self'@(Unauthorized x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 14 x'1)
  wirePutWithSize ft' self'@(Unauthorized x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 8 14 x'1]
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
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{reason = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Unauthorized) Unauthorized where
  getVal m' f' = f' m'

instance P'.GPB Unauthorized

instance P'.ReflectDescriptor Unauthorized where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.ResponseFlags.Unauthorized\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\",MName \"ResponseFlags\"], baseName = MName \"Unauthorized\"}, descFilePath = [\"AccesslogProto\",\"ResponseFlags\",\"Unauthorized.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ResponseFlags.Unauthorized.reason\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ResponseFlags\",MName \"Unauthorized\"], baseName' = FName \"reason\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.ResponseFlags.Unauthorized.Reason\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\",MName \"ResponseFlags\",MName \"Unauthorized\"], baseName = MName \"Reason\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType Unauthorized where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Unauthorized where
  textPut msg
   = do
       P'.tellT "reason" (reason msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'reason]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'reason = Prelude'.fmap (\ v o -> o{reason = v}) (P'.try (P'.getT "reason"))