{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HealthCheckProto.HealthStatus (HealthStatus(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data HealthStatus = UNKNOWN
                  | HEALTHY
                  | UNHEALTHY
                  | DRAINING
                  | TIMEOUT
                  | DEGRADED
                    deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                              Prelude'.Generic)

instance P'.Mergeable HealthStatus

instance Prelude'.Bounded HealthStatus where
  minBound = UNKNOWN
  maxBound = DEGRADED

instance P'.Default HealthStatus where
  defaultValue = UNKNOWN

toMaybe'Enum :: Prelude'.Int -> P'.Maybe HealthStatus
toMaybe'Enum 0 = Prelude'.Just UNKNOWN
toMaybe'Enum 1 = Prelude'.Just HEALTHY
toMaybe'Enum 2 = Prelude'.Just UNHEALTHY
toMaybe'Enum 3 = Prelude'.Just DRAINING
toMaybe'Enum 4 = Prelude'.Just TIMEOUT
toMaybe'Enum 5 = Prelude'.Just DEGRADED
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum HealthStatus where
  fromEnum UNKNOWN = 0
  fromEnum HEALTHY = 1
  fromEnum UNHEALTHY = 2
  fromEnum DRAINING = 3
  fromEnum TIMEOUT = 4
  fromEnum DEGRADED = 5
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type HealthCheckProto.HealthStatus") . toMaybe'Enum
  succ UNKNOWN = HEALTHY
  succ HEALTHY = UNHEALTHY
  succ UNHEALTHY = DRAINING
  succ DRAINING = TIMEOUT
  succ TIMEOUT = DEGRADED
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type HealthCheckProto.HealthStatus"
  pred HEALTHY = UNKNOWN
  pred UNHEALTHY = HEALTHY
  pred DRAINING = UNHEALTHY
  pred TIMEOUT = DRAINING
  pred DEGRADED = TIMEOUT
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type HealthCheckProto.HealthStatus"

instance P'.Wire HealthStatus where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB HealthStatus

instance P'.MessageAPI msg' (msg' -> HealthStatus) HealthStatus where
  getVal m' f' = f' m'

instance P'.ReflectEnum HealthStatus where
  reflectEnum
   = [(0, "UNKNOWN", UNKNOWN), (1, "HEALTHY", HEALTHY), (2, "UNHEALTHY", UNHEALTHY), (3, "DRAINING", DRAINING),
      (4, "TIMEOUT", TIMEOUT), (5, "DEGRADED", DEGRADED)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".envoy.config.core.v3.HealthStatus") [] ["HealthCheckProto"] "HealthStatus")
      ["HealthCheckProto", "HealthStatus.hs"]
      [(0, "UNKNOWN"), (1, "HEALTHY"), (2, "UNHEALTHY"), (3, "DRAINING"), (4, "TIMEOUT"), (5, "DEGRADED")]
      Prelude'.False

instance P'.TextType HealthStatus where
  tellT = P'.tellShow
  getT = P'.getRead