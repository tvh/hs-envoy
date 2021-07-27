{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ConfigSourceProto.ApiConfigSource.ApiType (ApiType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data ApiType = DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
             | REST
             | GRPC
             | DELTA_GRPC
             | AGGREGATED_GRPC
             | AGGREGATED_DELTA_GRPC
               deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                         Prelude'.Generic)

instance P'.Mergeable ApiType

instance Prelude'.Bounded ApiType where
  minBound = DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
  maxBound = AGGREGATED_DELTA_GRPC

instance P'.Default ApiType where
  defaultValue = DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE

toMaybe'Enum :: Prelude'.Int -> P'.Maybe ApiType
toMaybe'Enum 0 = Prelude'.Just DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
toMaybe'Enum 1 = Prelude'.Just REST
toMaybe'Enum 2 = Prelude'.Just GRPC
toMaybe'Enum 3 = Prelude'.Just DELTA_GRPC
toMaybe'Enum 5 = Prelude'.Just AGGREGATED_GRPC
toMaybe'Enum 6 = Prelude'.Just AGGREGATED_DELTA_GRPC
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum ApiType where
  fromEnum DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE = 0
  fromEnum REST = 1
  fromEnum GRPC = 2
  fromEnum DELTA_GRPC = 3
  fromEnum AGGREGATED_GRPC = 5
  fromEnum AGGREGATED_DELTA_GRPC = 6
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type ConfigSourceProto.ApiConfigSource.ApiType") .
      toMaybe'Enum
  succ DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE = REST
  succ REST = GRPC
  succ GRPC = DELTA_GRPC
  succ DELTA_GRPC = AGGREGATED_GRPC
  succ AGGREGATED_GRPC = AGGREGATED_DELTA_GRPC
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type ConfigSourceProto.ApiConfigSource.ApiType"
  pred REST = DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
  pred GRPC = REST
  pred DELTA_GRPC = GRPC
  pred AGGREGATED_GRPC = DELTA_GRPC
  pred AGGREGATED_DELTA_GRPC = AGGREGATED_GRPC
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type ConfigSourceProto.ApiConfigSource.ApiType"

instance P'.Wire ApiType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB ApiType

instance P'.MessageAPI msg' (msg' -> ApiType) ApiType where
  getVal m' f' = f' m'

instance P'.ReflectEnum ApiType where
  reflectEnum
   = [(0, "DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE", DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE), (1, "REST", REST), (2, "GRPC", GRPC),
      (3, "DELTA_GRPC", DELTA_GRPC), (5, "AGGREGATED_GRPC", AGGREGATED_GRPC), (6, "AGGREGATED_DELTA_GRPC", AGGREGATED_DELTA_GRPC)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".envoy.config.core.v3.ApiConfigSource.ApiType") [] ["ConfigSourceProto", "ApiConfigSource"] "ApiType")
      ["ConfigSourceProto", "ApiConfigSource", "ApiType.hs"]
      [(0, "DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE"), (1, "REST"), (2, "GRPC"), (3, "DELTA_GRPC"), (5, "AGGREGATED_GRPC"),
       (6, "AGGREGATED_DELTA_GRPC")]
      Prelude'.False

instance P'.TextType ApiType where
  tellT = P'.tellShow
  getT = P'.getRead