{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module CsdsProto.ConfigStatus (ConfigStatus(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data ConfigStatus = UNKNOWN
                  | SYNCED
                  | NOT_SENT
                  | STALE
                  | ERROR
                    deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                              Prelude'.Generic)

instance P'.Mergeable ConfigStatus

instance Prelude'.Bounded ConfigStatus where
  minBound = UNKNOWN
  maxBound = ERROR

instance P'.Default ConfigStatus where
  defaultValue = UNKNOWN

toMaybe'Enum :: Prelude'.Int -> P'.Maybe ConfigStatus
toMaybe'Enum 0 = Prelude'.Just UNKNOWN
toMaybe'Enum 1 = Prelude'.Just SYNCED
toMaybe'Enum 2 = Prelude'.Just NOT_SENT
toMaybe'Enum 3 = Prelude'.Just STALE
toMaybe'Enum 4 = Prelude'.Just ERROR
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum ConfigStatus where
  fromEnum UNKNOWN = 0
  fromEnum SYNCED = 1
  fromEnum NOT_SENT = 2
  fromEnum STALE = 3
  fromEnum ERROR = 4
  toEnum = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type CsdsProto.ConfigStatus") . toMaybe'Enum
  succ UNKNOWN = SYNCED
  succ SYNCED = NOT_SENT
  succ NOT_SENT = STALE
  succ STALE = ERROR
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type CsdsProto.ConfigStatus"
  pred SYNCED = UNKNOWN
  pred NOT_SENT = SYNCED
  pred STALE = NOT_SENT
  pred ERROR = STALE
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type CsdsProto.ConfigStatus"

instance P'.Wire ConfigStatus where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB ConfigStatus

instance P'.MessageAPI msg' (msg' -> ConfigStatus) ConfigStatus where
  getVal m' f' = f' m'

instance P'.ReflectEnum ConfigStatus where
  reflectEnum
   = [(0, "UNKNOWN", UNKNOWN), (1, "SYNCED", SYNCED), (2, "NOT_SENT", NOT_SENT), (3, "STALE", STALE), (4, "ERROR", ERROR)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".envoy.service.status.v3.ConfigStatus") [] ["CsdsProto"] "ConfigStatus")
      ["CsdsProto", "ConfigStatus.hs"]
      [(0, "UNKNOWN"), (1, "SYNCED"), (2, "NOT_SENT"), (3, "STALE"), (4, "ERROR")]
      Prelude'.False

instance P'.TextType ConfigStatus where
  tellT = P'.tellShow
  getT = P'.getRead