{- This file was auto-generated from envoy/extensions/filters/http/oauth2/v3alpha/oauth.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Oauth2.V3alpha.Oauth_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.HttpUri
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret
import qualified Proto.Envoy.Type.Matcher.V3.Path
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
authScopes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authScopes" a) =>
  Lens.Family2.LensLike' f s a
authScopes = Data.ProtoLens.Field.field @"authScopes"
authorizationEndpoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authorizationEndpoint" a) =>
  Lens.Family2.LensLike' f s a
authorizationEndpoint
  = Data.ProtoLens.Field.field @"authorizationEndpoint"
clientId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clientId" a) =>
  Lens.Family2.LensLike' f s a
clientId = Data.ProtoLens.Field.field @"clientId"
config ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "config" a) =>
  Lens.Family2.LensLike' f s a
config = Data.ProtoLens.Field.field @"config"
credentials ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "credentials" a) =>
  Lens.Family2.LensLike' f s a
credentials = Data.ProtoLens.Field.field @"credentials"
forwardBearerToken ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "forwardBearerToken" a) =>
  Lens.Family2.LensLike' f s a
forwardBearerToken
  = Data.ProtoLens.Field.field @"forwardBearerToken"
hmacSecret ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hmacSecret" a) =>
  Lens.Family2.LensLike' f s a
hmacSecret = Data.ProtoLens.Field.field @"hmacSecret"
maybe'config ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'config" a) =>
  Lens.Family2.LensLike' f s a
maybe'config = Data.ProtoLens.Field.field @"maybe'config"
maybe'credentials ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'credentials" a) =>
  Lens.Family2.LensLike' f s a
maybe'credentials = Data.ProtoLens.Field.field @"maybe'credentials"
maybe'hmacSecret ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hmacSecret" a) =>
  Lens.Family2.LensLike' f s a
maybe'hmacSecret = Data.ProtoLens.Field.field @"maybe'hmacSecret"
maybe'redirectPathMatcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'redirectPathMatcher" a) =>
  Lens.Family2.LensLike' f s a
maybe'redirectPathMatcher
  = Data.ProtoLens.Field.field @"maybe'redirectPathMatcher"
maybe'signoutPath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'signoutPath" a) =>
  Lens.Family2.LensLike' f s a
maybe'signoutPath = Data.ProtoLens.Field.field @"maybe'signoutPath"
maybe'tokenEndpoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tokenEndpoint" a) =>
  Lens.Family2.LensLike' f s a
maybe'tokenEndpoint
  = Data.ProtoLens.Field.field @"maybe'tokenEndpoint"
maybe'tokenFormation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tokenFormation" a) =>
  Lens.Family2.LensLike' f s a
maybe'tokenFormation
  = Data.ProtoLens.Field.field @"maybe'tokenFormation"
maybe'tokenSecret ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tokenSecret" a) =>
  Lens.Family2.LensLike' f s a
maybe'tokenSecret = Data.ProtoLens.Field.field @"maybe'tokenSecret"
passThroughMatcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "passThroughMatcher" a) =>
  Lens.Family2.LensLike' f s a
passThroughMatcher
  = Data.ProtoLens.Field.field @"passThroughMatcher"
redirectPathMatcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "redirectPathMatcher" a) =>
  Lens.Family2.LensLike' f s a
redirectPathMatcher
  = Data.ProtoLens.Field.field @"redirectPathMatcher"
redirectUri ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "redirectUri" a) =>
  Lens.Family2.LensLike' f s a
redirectUri = Data.ProtoLens.Field.field @"redirectUri"
resources ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resources" a) =>
  Lens.Family2.LensLike' f s a
resources = Data.ProtoLens.Field.field @"resources"
signoutPath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signoutPath" a) =>
  Lens.Family2.LensLike' f s a
signoutPath = Data.ProtoLens.Field.field @"signoutPath"
tokenEndpoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tokenEndpoint" a) =>
  Lens.Family2.LensLike' f s a
tokenEndpoint = Data.ProtoLens.Field.field @"tokenEndpoint"
tokenSecret ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tokenSecret" a) =>
  Lens.Family2.LensLike' f s a
tokenSecret = Data.ProtoLens.Field.field @"tokenSecret"
vec'authScopes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'authScopes" a) =>
  Lens.Family2.LensLike' f s a
vec'authScopes = Data.ProtoLens.Field.field @"vec'authScopes"
vec'passThroughMatcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'passThroughMatcher" a) =>
  Lens.Family2.LensLike' f s a
vec'passThroughMatcher
  = Data.ProtoLens.Field.field @"vec'passThroughMatcher"
vec'resources ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'resources" a) =>
  Lens.Family2.LensLike' f s a
vec'resources = Data.ProtoLens.Field.field @"vec'resources"