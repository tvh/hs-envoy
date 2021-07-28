{- This file was auto-generated from envoy/type/http.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.Http (
        CodecClientType(..), CodecClientType(),
        CodecClientType'UnrecognizedValue
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
newtype CodecClientType'UnrecognizedValue
  = CodecClientType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data CodecClientType
  = HTTP1 |
    HTTP2 |
    HTTP3 |
    CodecClientType'Unrecognized !CodecClientType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum CodecClientType where
  maybeToEnum 0 = Prelude.Just HTTP1
  maybeToEnum 1 = Prelude.Just HTTP2
  maybeToEnum 2 = Prelude.Just HTTP3
  maybeToEnum k
    = Prelude.Just
        (CodecClientType'Unrecognized
           (CodecClientType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum HTTP1 = "HTTP1"
  showEnum HTTP2 = "HTTP2"
  showEnum HTTP3 = "HTTP3"
  showEnum
    (CodecClientType'Unrecognized (CodecClientType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "HTTP1" = Prelude.Just HTTP1
    | (Prelude.==) k "HTTP2" = Prelude.Just HTTP2
    | (Prelude.==) k "HTTP3" = Prelude.Just HTTP3
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded CodecClientType where
  minBound = HTTP1
  maxBound = HTTP3
instance Prelude.Enum CodecClientType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum CodecClientType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum HTTP1 = 0
  fromEnum HTTP2 = 1
  fromEnum HTTP3 = 2
  fromEnum
    (CodecClientType'Unrecognized (CodecClientType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ HTTP3
    = Prelude.error
        "CodecClientType.succ: bad argument HTTP3. This value would be out of bounds."
  succ HTTP1 = HTTP2
  succ HTTP2 = HTTP3
  succ (CodecClientType'Unrecognized _)
    = Prelude.error
        "CodecClientType.succ: bad argument: unrecognized value"
  pred HTTP1
    = Prelude.error
        "CodecClientType.pred: bad argument HTTP1. This value would be out of bounds."
  pred HTTP2 = HTTP1
  pred HTTP3 = HTTP2
  pred (CodecClientType'Unrecognized _)
    = Prelude.error
        "CodecClientType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault CodecClientType where
  fieldDefault = HTTP1
instance Control.DeepSeq.NFData CodecClientType where
  rnf x__ = Prelude.seq x__ ()