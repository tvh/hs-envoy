{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AddressProto.SocketAddress.Protocol (Protocol(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Protocol = TCP
              | UDP
                deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                          Prelude'.Generic)

instance P'.Mergeable Protocol

instance Prelude'.Bounded Protocol where
  minBound = TCP
  maxBound = UDP

instance P'.Default Protocol where
  defaultValue = TCP

toMaybe'Enum :: Prelude'.Int -> P'.Maybe Protocol
toMaybe'Enum 0 = Prelude'.Just TCP
toMaybe'Enum 1 = Prelude'.Just UDP
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum Protocol where
  fromEnum TCP = 0
  fromEnum UDP = 1
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type AddressProto.SocketAddress.Protocol") .
      toMaybe'Enum
  succ TCP = UDP
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type AddressProto.SocketAddress.Protocol"
  pred UDP = TCP
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type AddressProto.SocketAddress.Protocol"

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
  reflectEnum = [(0, "TCP", TCP), (1, "UDP", UDP)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".envoy.config.core.v3.SocketAddress.Protocol") [] ["AddressProto", "SocketAddress"] "Protocol")
      ["AddressProto", "SocketAddress", "Protocol.hs"]
      [(0, "TCP"), (1, "UDP")]
      Prelude'.False

instance P'.TextType Protocol where
  tellT = P'.tellShow
  getT = P'.getRead