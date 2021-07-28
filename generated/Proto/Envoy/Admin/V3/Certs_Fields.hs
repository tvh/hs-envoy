{- This file was auto-generated from envoy/admin/v3/certs.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Admin.V3.Certs_Fields where
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
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
caCert ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "caCert" a) =>
  Lens.Family2.LensLike' f s a
caCert = Data.ProtoLens.Field.field @"caCert"
certChain ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "certChain" a) =>
  Lens.Family2.LensLike' f s a
certChain = Data.ProtoLens.Field.field @"certChain"
certificates ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "certificates" a) =>
  Lens.Family2.LensLike' f s a
certificates = Data.ProtoLens.Field.field @"certificates"
daysUntilExpiration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "daysUntilExpiration" a) =>
  Lens.Family2.LensLike' f s a
daysUntilExpiration
  = Data.ProtoLens.Field.field @"daysUntilExpiration"
dns ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dns" a) =>
  Lens.Family2.LensLike' f s a
dns = Data.ProtoLens.Field.field @"dns"
expiration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "expiration" a) =>
  Lens.Family2.LensLike' f s a
expiration = Data.ProtoLens.Field.field @"expiration"
expirationTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "expirationTime" a) =>
  Lens.Family2.LensLike' f s a
expirationTime = Data.ProtoLens.Field.field @"expirationTime"
ipAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ipAddress" a) =>
  Lens.Family2.LensLike' f s a
ipAddress = Data.ProtoLens.Field.field @"ipAddress"
maybe'dns ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dns" a) =>
  Lens.Family2.LensLike' f s a
maybe'dns = Data.ProtoLens.Field.field @"maybe'dns"
maybe'expiration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'expiration" a) =>
  Lens.Family2.LensLike' f s a
maybe'expiration = Data.ProtoLens.Field.field @"maybe'expiration"
maybe'expirationTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'expirationTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'expirationTime
  = Data.ProtoLens.Field.field @"maybe'expirationTime"
maybe'ipAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ipAddress" a) =>
  Lens.Family2.LensLike' f s a
maybe'ipAddress = Data.ProtoLens.Field.field @"maybe'ipAddress"
maybe'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'name" a) =>
  Lens.Family2.LensLike' f s a
maybe'name = Data.ProtoLens.Field.field @"maybe'name"
maybe'ocspDetails ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ocspDetails" a) =>
  Lens.Family2.LensLike' f s a
maybe'ocspDetails = Data.ProtoLens.Field.field @"maybe'ocspDetails"
maybe'uri ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uri" a) =>
  Lens.Family2.LensLike' f s a
maybe'uri = Data.ProtoLens.Field.field @"maybe'uri"
maybe'validFrom ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'validFrom" a) =>
  Lens.Family2.LensLike' f s a
maybe'validFrom = Data.ProtoLens.Field.field @"maybe'validFrom"
ocspDetails ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ocspDetails" a) =>
  Lens.Family2.LensLike' f s a
ocspDetails = Data.ProtoLens.Field.field @"ocspDetails"
path ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "path" a) =>
  Lens.Family2.LensLike' f s a
path = Data.ProtoLens.Field.field @"path"
serialNumber ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "serialNumber" a) =>
  Lens.Family2.LensLike' f s a
serialNumber = Data.ProtoLens.Field.field @"serialNumber"
subjectAltNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "subjectAltNames" a) =>
  Lens.Family2.LensLike' f s a
subjectAltNames = Data.ProtoLens.Field.field @"subjectAltNames"
uri ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uri" a) =>
  Lens.Family2.LensLike' f s a
uri = Data.ProtoLens.Field.field @"uri"
validFrom ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validFrom" a) =>
  Lens.Family2.LensLike' f s a
validFrom = Data.ProtoLens.Field.field @"validFrom"
vec'caCert ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'caCert" a) =>
  Lens.Family2.LensLike' f s a
vec'caCert = Data.ProtoLens.Field.field @"vec'caCert"
vec'certChain ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'certChain" a) =>
  Lens.Family2.LensLike' f s a
vec'certChain = Data.ProtoLens.Field.field @"vec'certChain"
vec'certificates ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'certificates" a) =>
  Lens.Family2.LensLike' f s a
vec'certificates = Data.ProtoLens.Field.field @"vec'certificates"
vec'subjectAltNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'subjectAltNames" a) =>
  Lens.Family2.LensLike' f s a
vec'subjectAltNames
  = Data.ProtoLens.Field.field @"vec'subjectAltNames"