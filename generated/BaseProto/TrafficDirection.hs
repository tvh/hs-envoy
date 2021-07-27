{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.TrafficDirection (TrafficDirection(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data TrafficDirection = UNSPECIFIED
                      | INBOUND
                      | OUTBOUND
                        deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                  Prelude'.Generic)

instance P'.Mergeable TrafficDirection

instance Prelude'.Bounded TrafficDirection where
  minBound = UNSPECIFIED
  maxBound = OUTBOUND

instance P'.Default TrafficDirection where
  defaultValue = UNSPECIFIED

toMaybe'Enum :: Prelude'.Int -> P'.Maybe TrafficDirection
toMaybe'Enum 0 = Prelude'.Just UNSPECIFIED
toMaybe'Enum 1 = Prelude'.Just INBOUND
toMaybe'Enum 2 = Prelude'.Just OUTBOUND
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum TrafficDirection where
  fromEnum UNSPECIFIED = 0
  fromEnum INBOUND = 1
  fromEnum OUTBOUND = 2
  toEnum = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type BaseProto.TrafficDirection") . toMaybe'Enum
  succ UNSPECIFIED = INBOUND
  succ INBOUND = OUTBOUND
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type BaseProto.TrafficDirection"
  pred INBOUND = UNSPECIFIED
  pred OUTBOUND = INBOUND
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type BaseProto.TrafficDirection"

instance P'.Wire TrafficDirection where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB TrafficDirection

instance P'.MessageAPI msg' (msg' -> TrafficDirection) TrafficDirection where
  getVal m' f' = f' m'

instance P'.ReflectEnum TrafficDirection where
  reflectEnum = [(0, "UNSPECIFIED", UNSPECIFIED), (1, "INBOUND", INBOUND), (2, "OUTBOUND", OUTBOUND)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".envoy.config.core.v3.TrafficDirection") [] ["BaseProto"] "TrafficDirection")
      ["BaseProto", "TrafficDirection.hs"]
      [(0, "UNSPECIFIED"), (1, "INBOUND"), (2, "OUTBOUND")]
      Prelude'.False

instance P'.TextType TrafficDirection where
  tellT = P'.tellShow
  getT = P'.getRead