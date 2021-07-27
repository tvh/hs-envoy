{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AccesslogProto.ResponseFlags.Unauthorized.Reason (Reason(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Reason = REASON_UNSPECIFIED
            | EXTERNAL_SERVICE
              deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Reason

instance Prelude'.Bounded Reason where
  minBound = REASON_UNSPECIFIED
  maxBound = EXTERNAL_SERVICE

instance P'.Default Reason where
  defaultValue = REASON_UNSPECIFIED

toMaybe'Enum :: Prelude'.Int -> P'.Maybe Reason
toMaybe'Enum 0 = Prelude'.Just REASON_UNSPECIFIED
toMaybe'Enum 1 = Prelude'.Just EXTERNAL_SERVICE
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum Reason where
  fromEnum REASON_UNSPECIFIED = 0
  fromEnum EXTERNAL_SERVICE = 1
  toEnum
   = P'.fromMaybe
      (Prelude'.error "hprotoc generated code: toEnum failure for type AccesslogProto.ResponseFlags.Unauthorized.Reason")
      . toMaybe'Enum
  succ REASON_UNSPECIFIED = EXTERNAL_SERVICE
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type AccesslogProto.ResponseFlags.Unauthorized.Reason"
  pred EXTERNAL_SERVICE = REASON_UNSPECIFIED
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type AccesslogProto.ResponseFlags.Unauthorized.Reason"

instance P'.Wire Reason where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB Reason

instance P'.MessageAPI msg' (msg' -> Reason) Reason where
  getVal m' f' = f' m'

instance P'.ReflectEnum Reason where
  reflectEnum = [(0, "REASON_UNSPECIFIED", REASON_UNSPECIFIED), (1, "EXTERNAL_SERVICE", EXTERNAL_SERVICE)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".envoy.data.accesslog.v3.ResponseFlags.Unauthorized.Reason") []
        ["AccesslogProto", "ResponseFlags", "Unauthorized"]
        "Reason")
      ["AccesslogProto", "ResponseFlags", "Unauthorized", "Reason.hs"]
      [(0, "REASON_UNSPECIFIED"), (1, "EXTERNAL_SERVICE")]
      Prelude'.False

instance P'.TextType Reason where
  tellT = P'.tellShow
  getT = P'.getRead