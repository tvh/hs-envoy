{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module RlsProto.RateLimitResponse.RateLimit.Unit (Unit(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Unit = UNKNOWN
          | SECOND
          | MINUTE
          | HOUR
          | DAY
            deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Unit

instance Prelude'.Bounded Unit where
  minBound = UNKNOWN
  maxBound = DAY

instance P'.Default Unit where
  defaultValue = UNKNOWN

toMaybe'Enum :: Prelude'.Int -> P'.Maybe Unit
toMaybe'Enum 0 = Prelude'.Just UNKNOWN
toMaybe'Enum 1 = Prelude'.Just SECOND
toMaybe'Enum 2 = Prelude'.Just MINUTE
toMaybe'Enum 3 = Prelude'.Just HOUR
toMaybe'Enum 4 = Prelude'.Just DAY
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum Unit where
  fromEnum UNKNOWN = 0
  fromEnum SECOND = 1
  fromEnum MINUTE = 2
  fromEnum HOUR = 3
  fromEnum DAY = 4
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type RlsProto.RateLimitResponse.RateLimit.Unit") .
      toMaybe'Enum
  succ UNKNOWN = SECOND
  succ SECOND = MINUTE
  succ MINUTE = HOUR
  succ HOUR = DAY
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type RlsProto.RateLimitResponse.RateLimit.Unit"
  pred SECOND = UNKNOWN
  pred MINUTE = SECOND
  pred HOUR = MINUTE
  pred DAY = HOUR
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type RlsProto.RateLimitResponse.RateLimit.Unit"

instance P'.Wire Unit where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB Unit

instance P'.MessageAPI msg' (msg' -> Unit) Unit where
  getVal m' f' = f' m'

instance P'.ReflectEnum Unit where
  reflectEnum = [(0, "UNKNOWN", UNKNOWN), (1, "SECOND", SECOND), (2, "MINUTE", MINUTE), (3, "HOUR", HOUR), (4, "DAY", DAY)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".envoy.service.ratelimit.v3.RateLimitResponse.RateLimit.Unit") []
        ["RlsProto", "RateLimitResponse", "RateLimit"]
        "Unit")
      ["RlsProto", "RateLimitResponse", "RateLimit", "Unit.hs"]
      [(0, "UNKNOWN"), (1, "SECOND"), (2, "MINUTE"), (3, "HOUR"), (4, "DAY")]
      Prelude'.False

instance P'.TextType Unit where
  tellT = P'.tellShow
  getT = P'.getRead