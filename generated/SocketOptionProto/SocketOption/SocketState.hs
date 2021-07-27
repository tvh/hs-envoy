{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module SocketOptionProto.SocketOption.SocketState (SocketState(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data SocketState = STATE_PREBIND
                 | STATE_BOUND
                 | STATE_LISTENING
                   deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                             Prelude'.Generic)

instance P'.Mergeable SocketState

instance Prelude'.Bounded SocketState where
  minBound = STATE_PREBIND
  maxBound = STATE_LISTENING

instance P'.Default SocketState where
  defaultValue = STATE_PREBIND

toMaybe'Enum :: Prelude'.Int -> P'.Maybe SocketState
toMaybe'Enum 0 = Prelude'.Just STATE_PREBIND
toMaybe'Enum 1 = Prelude'.Just STATE_BOUND
toMaybe'Enum 2 = Prelude'.Just STATE_LISTENING
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum SocketState where
  fromEnum STATE_PREBIND = 0
  fromEnum STATE_BOUND = 1
  fromEnum STATE_LISTENING = 2
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type SocketOptionProto.SocketOption.SocketState") .
      toMaybe'Enum
  succ STATE_PREBIND = STATE_BOUND
  succ STATE_BOUND = STATE_LISTENING
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type SocketOptionProto.SocketOption.SocketState"
  pred STATE_BOUND = STATE_PREBIND
  pred STATE_LISTENING = STATE_BOUND
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type SocketOptionProto.SocketOption.SocketState"

instance P'.Wire SocketState where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB SocketState

instance P'.MessageAPI msg' (msg' -> SocketState) SocketState where
  getVal m' f' = f' m'

instance P'.ReflectEnum SocketState where
  reflectEnum = [(0, "STATE_PREBIND", STATE_PREBIND), (1, "STATE_BOUND", STATE_BOUND), (2, "STATE_LISTENING", STATE_LISTENING)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".envoy.config.core.v3.SocketOption.SocketState") [] ["SocketOptionProto", "SocketOption"] "SocketState")
      ["SocketOptionProto", "SocketOption", "SocketState.hs"]
      [(0, "STATE_PREBIND"), (1, "STATE_BOUND"), (2, "STATE_LISTENING")]
      Prelude'.False

instance P'.TextType SocketState where
  tellT = P'.tellShow
  getT = P'.getRead