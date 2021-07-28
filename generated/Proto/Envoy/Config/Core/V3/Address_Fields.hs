{- This file was auto-generated from envoy/config/core/v3/address.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.Address_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.SocketOption
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
addressPrefix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "addressPrefix" a) =>
  Lens.Family2.LensLike' f s a
addressPrefix = Data.ProtoLens.Field.field @"addressPrefix"
envoyInternalAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "envoyInternalAddress" a) =>
  Lens.Family2.LensLike' f s a
envoyInternalAddress
  = Data.ProtoLens.Field.field @"envoyInternalAddress"
freebind ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "freebind" a) =>
  Lens.Family2.LensLike' f s a
freebind = Data.ProtoLens.Field.field @"freebind"
ipv4Compat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ipv4Compat" a) =>
  Lens.Family2.LensLike' f s a
ipv4Compat = Data.ProtoLens.Field.field @"ipv4Compat"
keepaliveInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "keepaliveInterval" a) =>
  Lens.Family2.LensLike' f s a
keepaliveInterval = Data.ProtoLens.Field.field @"keepaliveInterval"
keepaliveProbes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "keepaliveProbes" a) =>
  Lens.Family2.LensLike' f s a
keepaliveProbes = Data.ProtoLens.Field.field @"keepaliveProbes"
keepaliveTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "keepaliveTime" a) =>
  Lens.Family2.LensLike' f s a
keepaliveTime = Data.ProtoLens.Field.field @"keepaliveTime"
maybe'address ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'address" a) =>
  Lens.Family2.LensLike' f s a
maybe'address = Data.ProtoLens.Field.field @"maybe'address"
maybe'addressNameSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'addressNameSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'addressNameSpecifier
  = Data.ProtoLens.Field.field @"maybe'addressNameSpecifier"
maybe'envoyInternalAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'envoyInternalAddress" a) =>
  Lens.Family2.LensLike' f s a
maybe'envoyInternalAddress
  = Data.ProtoLens.Field.field @"maybe'envoyInternalAddress"
maybe'freebind ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'freebind" a) =>
  Lens.Family2.LensLike' f s a
maybe'freebind = Data.ProtoLens.Field.field @"maybe'freebind"
maybe'keepaliveInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'keepaliveInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'keepaliveInterval
  = Data.ProtoLens.Field.field @"maybe'keepaliveInterval"
maybe'keepaliveProbes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'keepaliveProbes" a) =>
  Lens.Family2.LensLike' f s a
maybe'keepaliveProbes
  = Data.ProtoLens.Field.field @"maybe'keepaliveProbes"
maybe'keepaliveTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'keepaliveTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'keepaliveTime
  = Data.ProtoLens.Field.field @"maybe'keepaliveTime"
maybe'namedPort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'namedPort" a) =>
  Lens.Family2.LensLike' f s a
maybe'namedPort = Data.ProtoLens.Field.field @"maybe'namedPort"
maybe'pipe ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pipe" a) =>
  Lens.Family2.LensLike' f s a
maybe'pipe = Data.ProtoLens.Field.field @"maybe'pipe"
maybe'portSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'portSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'portSpecifier
  = Data.ProtoLens.Field.field @"maybe'portSpecifier"
maybe'portValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'portValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'portValue = Data.ProtoLens.Field.field @"maybe'portValue"
maybe'prefixLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'prefixLen" a) =>
  Lens.Family2.LensLike' f s a
maybe'prefixLen = Data.ProtoLens.Field.field @"maybe'prefixLen"
maybe'serverListenerName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'serverListenerName" a) =>
  Lens.Family2.LensLike' f s a
maybe'serverListenerName
  = Data.ProtoLens.Field.field @"maybe'serverListenerName"
maybe'socketAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'socketAddress" a) =>
  Lens.Family2.LensLike' f s a
maybe'socketAddress
  = Data.ProtoLens.Field.field @"maybe'socketAddress"
maybe'sourceAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sourceAddress" a) =>
  Lens.Family2.LensLike' f s a
maybe'sourceAddress
  = Data.ProtoLens.Field.field @"maybe'sourceAddress"
mode ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mode" a) =>
  Lens.Family2.LensLike' f s a
mode = Data.ProtoLens.Field.field @"mode"
namedPort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "namedPort" a) =>
  Lens.Family2.LensLike' f s a
namedPort = Data.ProtoLens.Field.field @"namedPort"
path ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "path" a) =>
  Lens.Family2.LensLike' f s a
path = Data.ProtoLens.Field.field @"path"
pipe ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pipe" a) =>
  Lens.Family2.LensLike' f s a
pipe = Data.ProtoLens.Field.field @"pipe"
portValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "portValue" a) =>
  Lens.Family2.LensLike' f s a
portValue = Data.ProtoLens.Field.field @"portValue"
prefixLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "prefixLen" a) =>
  Lens.Family2.LensLike' f s a
prefixLen = Data.ProtoLens.Field.field @"prefixLen"
protocol ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "protocol" a) =>
  Lens.Family2.LensLike' f s a
protocol = Data.ProtoLens.Field.field @"protocol"
resolverName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resolverName" a) =>
  Lens.Family2.LensLike' f s a
resolverName = Data.ProtoLens.Field.field @"resolverName"
serverListenerName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "serverListenerName" a) =>
  Lens.Family2.LensLike' f s a
serverListenerName
  = Data.ProtoLens.Field.field @"serverListenerName"
socketAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "socketAddress" a) =>
  Lens.Family2.LensLike' f s a
socketAddress = Data.ProtoLens.Field.field @"socketAddress"
socketOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "socketOptions" a) =>
  Lens.Family2.LensLike' f s a
socketOptions = Data.ProtoLens.Field.field @"socketOptions"
sourceAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceAddress" a) =>
  Lens.Family2.LensLike' f s a
sourceAddress = Data.ProtoLens.Field.field @"sourceAddress"
vec'socketOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'socketOptions" a) =>
  Lens.Family2.LensLike' f s a
vec'socketOptions = Data.ProtoLens.Field.field @"vec'socketOptions"