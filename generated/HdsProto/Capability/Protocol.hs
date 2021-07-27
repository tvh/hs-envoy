{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HdsProto.Capability.Protocol (Protocol(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Protocol = HTTP
              | TCP
              | REDIS
                deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                          Prelude'.Generic)

instance P'.Mergeable Protocol

instance Prelude'.Bounded Protocol where
  minBound = HTTP
  maxBound = REDIS

instance P'.Default Protocol where
  defaultValue = HTTP

toMaybe'Enum :: Prelude'.Int -> P'.Maybe Protocol
toMaybe'Enum 0 = Prelude'.Just HTTP
toMaybe'Enum 1 = Prelude'.Just TCP
toMaybe'Enum 2 = Prelude'.Just REDIS
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum Protocol where
  fromEnum HTTP = 0
  fromEnum TCP = 1
  fromEnum REDIS = 2
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type HdsProto.Capability.Protocol") . toMaybe'Enum
  succ HTTP = TCP
  succ TCP = REDIS
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type HdsProto.Capability.Protocol"
  pred TCP = HTTP
  pred REDIS = TCP
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type HdsProto.Capability.Protocol"

instance P'.Wire Protocol where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB Protocol

instance P'.MessageAPI msg' (msg' -> Protocol) Protocol where
  getVal m' f' = f' m'

instance P'.ReflectEnum Protocol where
  reflectEnum = [(0, "HTTP", HTTP), (1, "TCP", TCP), (2, "REDIS", REDIS)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".envoy.service.health.v3.Capability.Protocol") [] ["HdsProto", "Capability"] "Protocol")
      ["HdsProto", "Capability", "Protocol.hs"]
      [(0, "HTTP"), (1, "TCP"), (2, "REDIS")]
      Prelude'.False

instance P'.TextType Protocol where
  tellT = P'.tellShow
  getT = P'.getRead