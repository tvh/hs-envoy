{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module CsdsProto.ClientConfigStatus (ClientConfigStatus(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data ClientConfigStatus = CLIENT_UNKNOWN
                        | CLIENT_REQUESTED
                        | CLIENT_ACKED
                        | CLIENT_NACKED
                          deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                    Prelude'.Generic)

instance P'.Mergeable ClientConfigStatus

instance Prelude'.Bounded ClientConfigStatus where
  minBound = CLIENT_UNKNOWN
  maxBound = CLIENT_NACKED

instance P'.Default ClientConfigStatus where
  defaultValue = CLIENT_UNKNOWN

toMaybe'Enum :: Prelude'.Int -> P'.Maybe ClientConfigStatus
toMaybe'Enum 0 = Prelude'.Just CLIENT_UNKNOWN
toMaybe'Enum 1 = Prelude'.Just CLIENT_REQUESTED
toMaybe'Enum 2 = Prelude'.Just CLIENT_ACKED
toMaybe'Enum 3 = Prelude'.Just CLIENT_NACKED
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum ClientConfigStatus where
  fromEnum CLIENT_UNKNOWN = 0
  fromEnum CLIENT_REQUESTED = 1
  fromEnum CLIENT_ACKED = 2
  fromEnum CLIENT_NACKED = 3
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type CsdsProto.ClientConfigStatus") . toMaybe'Enum
  succ CLIENT_UNKNOWN = CLIENT_REQUESTED
  succ CLIENT_REQUESTED = CLIENT_ACKED
  succ CLIENT_ACKED = CLIENT_NACKED
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type CsdsProto.ClientConfigStatus"
  pred CLIENT_REQUESTED = CLIENT_UNKNOWN
  pred CLIENT_ACKED = CLIENT_REQUESTED
  pred CLIENT_NACKED = CLIENT_ACKED
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type CsdsProto.ClientConfigStatus"

instance P'.Wire ClientConfigStatus where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB ClientConfigStatus

instance P'.MessageAPI msg' (msg' -> ClientConfigStatus) ClientConfigStatus where
  getVal m' f' = f' m'

instance P'.ReflectEnum ClientConfigStatus where
  reflectEnum
   = [(0, "CLIENT_UNKNOWN", CLIENT_UNKNOWN), (1, "CLIENT_REQUESTED", CLIENT_REQUESTED), (2, "CLIENT_ACKED", CLIENT_ACKED),
      (3, "CLIENT_NACKED", CLIENT_NACKED)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".envoy.service.status.v3.ClientConfigStatus") [] ["CsdsProto"] "ClientConfigStatus")
      ["CsdsProto", "ClientConfigStatus.hs"]
      [(0, "CLIENT_UNKNOWN"), (1, "CLIENT_REQUESTED"), (2, "CLIENT_ACKED"), (3, "CLIENT_NACKED")]
      Prelude'.False

instance P'.TextType ClientConfigStatus where
  tellT = P'.tellShow
  getT = P'.getRead