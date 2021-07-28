{- This file was auto-generated from envoy/type/v3/ratelimit_unit.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.V3.RatelimitUnit (
        RateLimitUnit(..), RateLimitUnit(), RateLimitUnit'UnrecognizedValue
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
import qualified Proto.Udpa.Annotations.Status
newtype RateLimitUnit'UnrecognizedValue
  = RateLimitUnit'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RateLimitUnit
  = UNKNOWN |
    SECOND |
    MINUTE |
    HOUR |
    DAY |
    RateLimitUnit'Unrecognized !RateLimitUnit'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RateLimitUnit where
  maybeToEnum 0 = Prelude.Just UNKNOWN
  maybeToEnum 1 = Prelude.Just SECOND
  maybeToEnum 2 = Prelude.Just MINUTE
  maybeToEnum 3 = Prelude.Just HOUR
  maybeToEnum 4 = Prelude.Just DAY
  maybeToEnum k
    = Prelude.Just
        (RateLimitUnit'Unrecognized
           (RateLimitUnit'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum UNKNOWN = "UNKNOWN"
  showEnum SECOND = "SECOND"
  showEnum MINUTE = "MINUTE"
  showEnum HOUR = "HOUR"
  showEnum DAY = "DAY"
  showEnum
    (RateLimitUnit'Unrecognized (RateLimitUnit'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UNKNOWN" = Prelude.Just UNKNOWN
    | (Prelude.==) k "SECOND" = Prelude.Just SECOND
    | (Prelude.==) k "MINUTE" = Prelude.Just MINUTE
    | (Prelude.==) k "HOUR" = Prelude.Just HOUR
    | (Prelude.==) k "DAY" = Prelude.Just DAY
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RateLimitUnit where
  minBound = UNKNOWN
  maxBound = DAY
instance Prelude.Enum RateLimitUnit where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum RateLimitUnit: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum UNKNOWN = 0
  fromEnum SECOND = 1
  fromEnum MINUTE = 2
  fromEnum HOUR = 3
  fromEnum DAY = 4
  fromEnum
    (RateLimitUnit'Unrecognized (RateLimitUnit'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ DAY
    = Prelude.error
        "RateLimitUnit.succ: bad argument DAY. This value would be out of bounds."
  succ UNKNOWN = SECOND
  succ SECOND = MINUTE
  succ MINUTE = HOUR
  succ HOUR = DAY
  succ (RateLimitUnit'Unrecognized _)
    = Prelude.error
        "RateLimitUnit.succ: bad argument: unrecognized value"
  pred UNKNOWN
    = Prelude.error
        "RateLimitUnit.pred: bad argument UNKNOWN. This value would be out of bounds."
  pred SECOND = UNKNOWN
  pred MINUTE = SECOND
  pred HOUR = MINUTE
  pred DAY = HOUR
  pred (RateLimitUnit'Unrecognized _)
    = Prelude.error
        "RateLimitUnit.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RateLimitUnit where
  fieldDefault = UNKNOWN
instance Control.DeepSeq.NFData RateLimitUnit where
  rnf x__ = Prelude.seq x__ ()