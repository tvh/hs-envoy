{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.HeaderMap (HeaderMap(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.HeaderValue as BaseProto

data HeaderMap = HeaderMap{headers :: !(P'.Seq BaseProto.HeaderValue)}
                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable HeaderMap where
  mergeAppend (HeaderMap x'1) (HeaderMap y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in HeaderMap z'1

instance P'.Default HeaderMap where
  defaultValue = HeaderMap P'.defaultValue

instance P'.Wire HeaderMap where
  wireSize ft' self'@(HeaderMap x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePutWithSize ft' self'@(HeaderMap x'1)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{headers = P'.append (headers old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> HeaderMap) HeaderMap where
  getVal m' f' = f' m'

instance P'.GPB HeaderMap

instance P'.ReflectDescriptor HeaderMap where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.HeaderMap\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"HeaderMap\"}, descFilePath = [\"BaseProto\",\"HeaderMap.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HeaderMap.headers\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"HeaderMap\"], baseName' = FName \"headers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HeaderValue\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"HeaderValue\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType HeaderMap where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg HeaderMap where
  textPut msg
   = do
       P'.tellT "headers" (headers msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'headers]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'headers = Prelude'.fmap (\ v o -> o{headers = P'.append (headers o) v}) (P'.try (P'.getT "headers"))