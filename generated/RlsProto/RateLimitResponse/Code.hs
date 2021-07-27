{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module RlsProto.RateLimitResponse.Code (Code(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Code = UNKNOWN
          | OK
          | OVER_LIMIT
            deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Code

instance Prelude'.Bounded Code where
  minBound = UNKNOWN
  maxBound = OVER_LIMIT

instance P'.Default Code where
  defaultValue = UNKNOWN

toMaybe'Enum :: Prelude'.Int -> P'.Maybe Code
toMaybe'Enum 0 = Prelude'.Just UNKNOWN
toMaybe'Enum 1 = Prelude'.Just OK
toMaybe'Enum 2 = Prelude'.Just OVER_LIMIT
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum Code where
  fromEnum UNKNOWN = 0
  fromEnum OK = 1
  fromEnum OVER_LIMIT = 2
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type RlsProto.RateLimitResponse.Code") . toMaybe'Enum
  succ UNKNOWN = OK
  succ OK = OVER_LIMIT
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type RlsProto.RateLimitResponse.Code"
  pred OK = UNKNOWN
  pred OVER_LIMIT = OK
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type RlsProto.RateLimitResponse.Code"

instance P'.Wire Code where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB Code

instance P'.MessageAPI msg' (msg' -> Code) Code where
  getVal m' f' = f' m'

instance P'.ReflectEnum Code where
  reflectEnum = [(0, "UNKNOWN", UNKNOWN), (1, "OK", OK), (2, "OVER_LIMIT", OVER_LIMIT)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".envoy.service.ratelimit.v3.RateLimitResponse.Code") [] ["RlsProto", "RateLimitResponse"] "Code")
      ["RlsProto", "RateLimitResponse", "Code.hs"]
      [(0, "UNKNOWN"), (1, "OK"), (2, "OVER_LIMIT")]
      Prelude'.False

instance P'.TextType Code where
  tellT = P'.tellShow
  getT = P'.getRead