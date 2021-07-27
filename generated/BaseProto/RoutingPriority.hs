{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.RoutingPriority (RoutingPriority(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data RoutingPriority = DEFAULT
                     | HIGH
                       deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                 Prelude'.Generic)

instance P'.Mergeable RoutingPriority

instance Prelude'.Bounded RoutingPriority where
  minBound = DEFAULT
  maxBound = HIGH

instance P'.Default RoutingPriority where
  defaultValue = DEFAULT

toMaybe'Enum :: Prelude'.Int -> P'.Maybe RoutingPriority
toMaybe'Enum 0 = Prelude'.Just DEFAULT
toMaybe'Enum 1 = Prelude'.Just HIGH
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum RoutingPriority where
  fromEnum DEFAULT = 0
  fromEnum HIGH = 1
  toEnum = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type BaseProto.RoutingPriority") . toMaybe'Enum
  succ DEFAULT = HIGH
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type BaseProto.RoutingPriority"
  pred HIGH = DEFAULT
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type BaseProto.RoutingPriority"

instance P'.Wire RoutingPriority where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB RoutingPriority

instance P'.MessageAPI msg' (msg' -> RoutingPriority) RoutingPriority where
  getVal m' f' = f' m'

instance P'.ReflectEnum RoutingPriority where
  reflectEnum = [(0, "DEFAULT", DEFAULT), (1, "HIGH", HIGH)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".envoy.config.core.v3.RoutingPriority") [] ["BaseProto"] "RoutingPriority")
      ["BaseProto", "RoutingPriority.hs"]
      [(0, "DEFAULT"), (1, "HIGH")]
      Prelude'.False

instance P'.TextType RoutingPriority where
  tellT = P'.tellShow
  getT = P'.getRead