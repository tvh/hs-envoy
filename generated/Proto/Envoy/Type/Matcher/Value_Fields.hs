{- This file was auto-generated from envoy/type/matcher/value.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.Matcher.Value_Fields where
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
import qualified Proto.Envoy.Type.Matcher.Number
import qualified Proto.Envoy.Type.Matcher.String
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
boolMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "boolMatch" a) =>
  Lens.Family2.LensLike' f s a
boolMatch = Data.ProtoLens.Field.field @"boolMatch"
doubleMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "doubleMatch" a) =>
  Lens.Family2.LensLike' f s a
doubleMatch = Data.ProtoLens.Field.field @"doubleMatch"
listMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "listMatch" a) =>
  Lens.Family2.LensLike' f s a
listMatch = Data.ProtoLens.Field.field @"listMatch"
maybe'boolMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'boolMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'boolMatch = Data.ProtoLens.Field.field @"maybe'boolMatch"
maybe'doubleMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'doubleMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'doubleMatch = Data.ProtoLens.Field.field @"maybe'doubleMatch"
maybe'listMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'listMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'listMatch = Data.ProtoLens.Field.field @"maybe'listMatch"
maybe'matchPattern ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'matchPattern" a) =>
  Lens.Family2.LensLike' f s a
maybe'matchPattern
  = Data.ProtoLens.Field.field @"maybe'matchPattern"
maybe'nullMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nullMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'nullMatch = Data.ProtoLens.Field.field @"maybe'nullMatch"
maybe'oneOf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'oneOf" a) =>
  Lens.Family2.LensLike' f s a
maybe'oneOf = Data.ProtoLens.Field.field @"maybe'oneOf"
maybe'presentMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'presentMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'presentMatch
  = Data.ProtoLens.Field.field @"maybe'presentMatch"
maybe'stringMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stringMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'stringMatch = Data.ProtoLens.Field.field @"maybe'stringMatch"
nullMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nullMatch" a) =>
  Lens.Family2.LensLike' f s a
nullMatch = Data.ProtoLens.Field.field @"nullMatch"
oneOf ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "oneOf" a) =>
  Lens.Family2.LensLike' f s a
oneOf = Data.ProtoLens.Field.field @"oneOf"
presentMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "presentMatch" a) =>
  Lens.Family2.LensLike' f s a
presentMatch = Data.ProtoLens.Field.field @"presentMatch"
stringMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stringMatch" a) =>
  Lens.Family2.LensLike' f s a
stringMatch = Data.ProtoLens.Field.field @"stringMatch"