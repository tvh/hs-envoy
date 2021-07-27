{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ProtocolProto.SchemeHeaderTransformation (SchemeHeaderTransformation(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ProtocolProto.SchemeHeaderTransformation.Transformation as ProtocolProto.SchemeHeaderTransformation.Transformation
       (Transformation(..), get'scheme_to_overwrite)

data SchemeHeaderTransformation = SchemeHeaderTransformation{transformation ::
                                                             P'.Maybe
                                                              (ProtocolProto.SchemeHeaderTransformation.Transformation.Transformation)}
                                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                            Prelude'.Generic)

instance P'.Mergeable SchemeHeaderTransformation where
  mergeAppend (SchemeHeaderTransformation x'1) (SchemeHeaderTransformation y'1)
   = let !z'1 = P'.mergeAppend x'1 y'1 in SchemeHeaderTransformation z'1

instance P'.Default SchemeHeaderTransformation where
  defaultValue = SchemeHeaderTransformation P'.defaultValue

instance P'.Wire SchemeHeaderTransformation where
  wireSize ft' self'@(SchemeHeaderTransformation x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 (ProtocolProto.SchemeHeaderTransformation.Transformation.get'scheme_to_overwrite Prelude'.=<< x'1))
  wirePutWithSize ft' self'@(SchemeHeaderTransformation x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9
              (ProtocolProto.SchemeHeaderTransformation.Transformation.get'scheme_to_overwrite Prelude'.=<< x'1)]
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
                      old'Self{transformation =
                                Prelude'.Just
                                 (ProtocolProto.SchemeHeaderTransformation.Transformation.Scheme_to_overwrite new'Field)})
                    (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> SchemeHeaderTransformation) SchemeHeaderTransformation where
  getVal m' f' = f' m'

instance P'.GPB SchemeHeaderTransformation

instance P'.ReflectDescriptor SchemeHeaderTransformation where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.SchemeHeaderTransformation\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\"], baseName = MName \"SchemeHeaderTransformation\"}, descFilePath = [\"ProtocolProto\",\"SchemeHeaderTransformation.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.SchemeHeaderTransformation.transformation\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\",MName \"SchemeHeaderTransformation\"], baseName = MName \"Transformation\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SchemeHeaderTransformation.transformation\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"SchemeHeaderTransformation\"], baseName' = FName \"transformation\", baseNamePrefix' = \"\"}, oneofFilePath = [\"ProtocolProto\",\"SchemeHeaderTransformation\",\"Transformation.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.SchemeHeaderTransformation.transformation.scheme_to_overwrite\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\",MName \"SchemeHeaderTransformation\",MName \"Transformation\"], baseName = MName \"Scheme_to_overwrite\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SchemeHeaderTransformation.transformation.scheme_to_overwrite\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"SchemeHeaderTransformation\",MName \"Transformation\"], baseName' = FName \"scheme_to_overwrite\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType SchemeHeaderTransformation where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg SchemeHeaderTransformation where
  textPut msg
   = do
       case (transformation msg) of
         Prelude'.Just (ProtocolProto.SchemeHeaderTransformation.Transformation.Scheme_to_overwrite scheme_to_overwrite) -> P'.tellT
                                                                                                                             "scheme_to_overwrite"
                                                                                                                             scheme_to_overwrite
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'transformation]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'transformation = P'.try (P'.choice [parse'scheme_to_overwrite])
          where
              parse'scheme_to_overwrite
               = P'.try
                  (do
                     v <- P'.getT "scheme_to_overwrite"
                     Prelude'.return
                      (\ s ->
                        s{transformation =
                           Prelude'.Just (ProtocolProto.SchemeHeaderTransformation.Transformation.Scheme_to_overwrite v)}))