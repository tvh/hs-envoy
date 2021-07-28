{- This file was auto-generated from envoy/extensions/transport_sockets/tls/v3/tls.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common
import qualified Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
allowRenegotiation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowRenegotiation" a) =>
  Lens.Family2.LensLike' f s a
allowRenegotiation
  = Data.ProtoLens.Field.field @"allowRenegotiation"
alpnProtocols ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "alpnProtocols" a) =>
  Lens.Family2.LensLike' f s a
alpnProtocols = Data.ProtoLens.Field.field @"alpnProtocols"
certificateName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "certificateName" a) =>
  Lens.Family2.LensLike' f s a
certificateName = Data.ProtoLens.Field.field @"certificateName"
combinedValidationContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "combinedValidationContext" a) =>
  Lens.Family2.LensLike' f s a
combinedValidationContext
  = Data.ProtoLens.Field.field @"combinedValidationContext"
commonTlsContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commonTlsContext" a) =>
  Lens.Family2.LensLike' f s a
commonTlsContext = Data.ProtoLens.Field.field @"commonTlsContext"
customHandshaker ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "customHandshaker" a) =>
  Lens.Family2.LensLike' f s a
customHandshaker = Data.ProtoLens.Field.field @"customHandshaker"
defaultValidationContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "defaultValidationContext" a) =>
  Lens.Family2.LensLike' f s a
defaultValidationContext
  = Data.ProtoLens.Field.field @"defaultValidationContext"
disableStatelessSessionResumption ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "disableStatelessSessionResumption" a) =>
  Lens.Family2.LensLike' f s a
disableStatelessSessionResumption
  = Data.ProtoLens.Field.field @"disableStatelessSessionResumption"
instanceName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "instanceName" a) =>
  Lens.Family2.LensLike' f s a
instanceName = Data.ProtoLens.Field.field @"instanceName"
maxSessionKeys ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxSessionKeys" a) =>
  Lens.Family2.LensLike' f s a
maxSessionKeys = Data.ProtoLens.Field.field @"maxSessionKeys"
maybe'combinedValidationContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'combinedValidationContext" a) =>
  Lens.Family2.LensLike' f s a
maybe'combinedValidationContext
  = Data.ProtoLens.Field.field @"maybe'combinedValidationContext"
maybe'commonTlsContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commonTlsContext" a) =>
  Lens.Family2.LensLike' f s a
maybe'commonTlsContext
  = Data.ProtoLens.Field.field @"maybe'commonTlsContext"
maybe'config ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'config" a) =>
  Lens.Family2.LensLike' f s a
maybe'config = Data.ProtoLens.Field.field @"maybe'config"
maybe'customHandshaker ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'customHandshaker" a) =>
  Lens.Family2.LensLike' f s a
maybe'customHandshaker
  = Data.ProtoLens.Field.field @"maybe'customHandshaker"
maybe'defaultValidationContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'defaultValidationContext" a) =>
  Lens.Family2.LensLike' f s a
maybe'defaultValidationContext
  = Data.ProtoLens.Field.field @"maybe'defaultValidationContext"
maybe'disableStatelessSessionResumption ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'disableStatelessSessionResumption" a) =>
  Lens.Family2.LensLike' f s a
maybe'disableStatelessSessionResumption
  = Data.ProtoLens.Field.field
      @"maybe'disableStatelessSessionResumption"
maybe'maxSessionKeys ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxSessionKeys" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxSessionKeys
  = Data.ProtoLens.Field.field @"maybe'maxSessionKeys"
maybe'requireClientCertificate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requireClientCertificate" a) =>
  Lens.Family2.LensLike' f s a
maybe'requireClientCertificate
  = Data.ProtoLens.Field.field @"maybe'requireClientCertificate"
maybe'requireSni ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requireSni" a) =>
  Lens.Family2.LensLike' f s a
maybe'requireSni = Data.ProtoLens.Field.field @"maybe'requireSni"
maybe'sessionTicketKeys ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sessionTicketKeys" a) =>
  Lens.Family2.LensLike' f s a
maybe'sessionTicketKeys
  = Data.ProtoLens.Field.field @"maybe'sessionTicketKeys"
maybe'sessionTicketKeysSdsSecretConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sessionTicketKeysSdsSecretConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'sessionTicketKeysSdsSecretConfig
  = Data.ProtoLens.Field.field
      @"maybe'sessionTicketKeysSdsSecretConfig"
maybe'sessionTicketKeysType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sessionTicketKeysType" a) =>
  Lens.Family2.LensLike' f s a
maybe'sessionTicketKeysType
  = Data.ProtoLens.Field.field @"maybe'sessionTicketKeysType"
maybe'sessionTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sessionTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'sessionTimeout
  = Data.ProtoLens.Field.field @"maybe'sessionTimeout"
maybe'tlsCertificateCertificateProvider ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tlsCertificateCertificateProvider" a) =>
  Lens.Family2.LensLike' f s a
maybe'tlsCertificateCertificateProvider
  = Data.ProtoLens.Field.field
      @"maybe'tlsCertificateCertificateProvider"
maybe'tlsCertificateCertificateProviderInstance ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tlsCertificateCertificateProviderInstance" a) =>
  Lens.Family2.LensLike' f s a
maybe'tlsCertificateCertificateProviderInstance
  = Data.ProtoLens.Field.field
      @"maybe'tlsCertificateCertificateProviderInstance"
maybe'tlsParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tlsParams" a) =>
  Lens.Family2.LensLike' f s a
maybe'tlsParams = Data.ProtoLens.Field.field @"maybe'tlsParams"
maybe'typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'typedConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'typedConfig = Data.ProtoLens.Field.field @"maybe'typedConfig"
maybe'validationContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'validationContext" a) =>
  Lens.Family2.LensLike' f s a
maybe'validationContext
  = Data.ProtoLens.Field.field @"maybe'validationContext"
maybe'validationContextCertificateProvider ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'validationContextCertificateProvider" a) =>
  Lens.Family2.LensLike' f s a
maybe'validationContextCertificateProvider
  = Data.ProtoLens.Field.field
      @"maybe'validationContextCertificateProvider"
maybe'validationContextCertificateProviderInstance ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'validationContextCertificateProviderInstance" a) =>
  Lens.Family2.LensLike' f s a
maybe'validationContextCertificateProviderInstance
  = Data.ProtoLens.Field.field
      @"maybe'validationContextCertificateProviderInstance"
maybe'validationContextSdsSecretConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'validationContextSdsSecretConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'validationContextSdsSecretConfig
  = Data.ProtoLens.Field.field
      @"maybe'validationContextSdsSecretConfig"
maybe'validationContextType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'validationContextType" a) =>
  Lens.Family2.LensLike' f s a
maybe'validationContextType
  = Data.ProtoLens.Field.field @"maybe'validationContextType"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
ocspStaplePolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ocspStaplePolicy" a) =>
  Lens.Family2.LensLike' f s a
ocspStaplePolicy = Data.ProtoLens.Field.field @"ocspStaplePolicy"
requireClientCertificate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requireClientCertificate" a) =>
  Lens.Family2.LensLike' f s a
requireClientCertificate
  = Data.ProtoLens.Field.field @"requireClientCertificate"
requireSni ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requireSni" a) =>
  Lens.Family2.LensLike' f s a
requireSni = Data.ProtoLens.Field.field @"requireSni"
sessionTicketKeys ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sessionTicketKeys" a) =>
  Lens.Family2.LensLike' f s a
sessionTicketKeys = Data.ProtoLens.Field.field @"sessionTicketKeys"
sessionTicketKeysSdsSecretConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sessionTicketKeysSdsSecretConfig" a) =>
  Lens.Family2.LensLike' f s a
sessionTicketKeysSdsSecretConfig
  = Data.ProtoLens.Field.field @"sessionTicketKeysSdsSecretConfig"
sessionTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sessionTimeout" a) =>
  Lens.Family2.LensLike' f s a
sessionTimeout = Data.ProtoLens.Field.field @"sessionTimeout"
sni ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sni" a) =>
  Lens.Family2.LensLike' f s a
sni = Data.ProtoLens.Field.field @"sni"
tlsCertificateCertificateProvider ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tlsCertificateCertificateProvider" a) =>
  Lens.Family2.LensLike' f s a
tlsCertificateCertificateProvider
  = Data.ProtoLens.Field.field @"tlsCertificateCertificateProvider"
tlsCertificateCertificateProviderInstance ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tlsCertificateCertificateProviderInstance" a) =>
  Lens.Family2.LensLike' f s a
tlsCertificateCertificateProviderInstance
  = Data.ProtoLens.Field.field
      @"tlsCertificateCertificateProviderInstance"
tlsCertificateSdsSecretConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tlsCertificateSdsSecretConfigs" a) =>
  Lens.Family2.LensLike' f s a
tlsCertificateSdsSecretConfigs
  = Data.ProtoLens.Field.field @"tlsCertificateSdsSecretConfigs"
tlsCertificates ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tlsCertificates" a) =>
  Lens.Family2.LensLike' f s a
tlsCertificates = Data.ProtoLens.Field.field @"tlsCertificates"
tlsParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tlsParams" a) =>
  Lens.Family2.LensLike' f s a
tlsParams = Data.ProtoLens.Field.field @"tlsParams"
typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typedConfig" a) =>
  Lens.Family2.LensLike' f s a
typedConfig = Data.ProtoLens.Field.field @"typedConfig"
validationContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validationContext" a) =>
  Lens.Family2.LensLike' f s a
validationContext = Data.ProtoLens.Field.field @"validationContext"
validationContextCertificateProvider ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validationContextCertificateProvider" a) =>
  Lens.Family2.LensLike' f s a
validationContextCertificateProvider
  = Data.ProtoLens.Field.field
      @"validationContextCertificateProvider"
validationContextCertificateProviderInstance ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validationContextCertificateProviderInstance" a) =>
  Lens.Family2.LensLike' f s a
validationContextCertificateProviderInstance
  = Data.ProtoLens.Field.field
      @"validationContextCertificateProviderInstance"
validationContextSdsSecretConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validationContextSdsSecretConfig" a) =>
  Lens.Family2.LensLike' f s a
validationContextSdsSecretConfig
  = Data.ProtoLens.Field.field @"validationContextSdsSecretConfig"
vec'alpnProtocols ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'alpnProtocols" a) =>
  Lens.Family2.LensLike' f s a
vec'alpnProtocols = Data.ProtoLens.Field.field @"vec'alpnProtocols"
vec'tlsCertificateSdsSecretConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'tlsCertificateSdsSecretConfigs" a) =>
  Lens.Family2.LensLike' f s a
vec'tlsCertificateSdsSecretConfigs
  = Data.ProtoLens.Field.field @"vec'tlsCertificateSdsSecretConfigs"
vec'tlsCertificates ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'tlsCertificates" a) =>
  Lens.Family2.LensLike' f s a
vec'tlsCertificates
  = Data.ProtoLens.Field.field @"vec'tlsCertificates"