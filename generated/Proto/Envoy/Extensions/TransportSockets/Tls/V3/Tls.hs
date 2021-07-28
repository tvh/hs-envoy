{- This file was auto-generated from envoy/extensions/transport_sockets/tls/v3/tls.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls (
        CommonTlsContext(), CommonTlsContext'ValidationContextType(..),
        _CommonTlsContext'ValidationContext,
        _CommonTlsContext'ValidationContextSdsSecretConfig,
        _CommonTlsContext'CombinedValidationContext,
        _CommonTlsContext'ValidationContextCertificateProvider,
        _CommonTlsContext'ValidationContextCertificateProviderInstance,
        CommonTlsContext'CertificateProvider(),
        CommonTlsContext'CertificateProvider'Config(..),
        _CommonTlsContext'CertificateProvider'TypedConfig,
        CommonTlsContext'CertificateProviderInstance(),
        CommonTlsContext'CombinedCertificateValidationContext(),
        DownstreamTlsContext(),
        DownstreamTlsContext'SessionTicketKeysType(..),
        _DownstreamTlsContext'SessionTicketKeys,
        _DownstreamTlsContext'SessionTicketKeysSdsSecretConfig,
        _DownstreamTlsContext'DisableStatelessSessionResumption,
        DownstreamTlsContext'OcspStaplePolicy(..),
        DownstreamTlsContext'OcspStaplePolicy(),
        DownstreamTlsContext'OcspStaplePolicy'UnrecognizedValue,
        UpstreamTlsContext()
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
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common
import qualified Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.tlsParams' @:: Lens' CommonTlsContext Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsParameters@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'tlsParams' @:: Lens' CommonTlsContext (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsParameters)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.tlsCertificates' @:: Lens' CommonTlsContext [Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsCertificate]@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.vec'tlsCertificates' @:: Lens' CommonTlsContext (Data.Vector.Vector Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsCertificate)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.tlsCertificateSdsSecretConfigs' @:: Lens' CommonTlsContext [Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig]@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.vec'tlsCertificateSdsSecretConfigs' @:: Lens' CommonTlsContext (Data.Vector.Vector Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.tlsCertificateCertificateProvider' @:: Lens' CommonTlsContext CommonTlsContext'CertificateProvider@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'tlsCertificateCertificateProvider' @:: Lens' CommonTlsContext (Prelude.Maybe CommonTlsContext'CertificateProvider)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.tlsCertificateCertificateProviderInstance' @:: Lens' CommonTlsContext CommonTlsContext'CertificateProviderInstance@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'tlsCertificateCertificateProviderInstance' @:: Lens' CommonTlsContext (Prelude.Maybe CommonTlsContext'CertificateProviderInstance)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.alpnProtocols' @:: Lens' CommonTlsContext [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.vec'alpnProtocols' @:: Lens' CommonTlsContext (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.customHandshaker' @:: Lens' CommonTlsContext Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'customHandshaker' @:: Lens' CommonTlsContext (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'validationContextType' @:: Lens' CommonTlsContext (Prelude.Maybe CommonTlsContext'ValidationContextType)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'validationContext' @:: Lens' CommonTlsContext (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.validationContext' @:: Lens' CommonTlsContext Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'validationContextSdsSecretConfig' @:: Lens' CommonTlsContext (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.validationContextSdsSecretConfig' @:: Lens' CommonTlsContext Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'combinedValidationContext' @:: Lens' CommonTlsContext (Prelude.Maybe CommonTlsContext'CombinedCertificateValidationContext)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.combinedValidationContext' @:: Lens' CommonTlsContext CommonTlsContext'CombinedCertificateValidationContext@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'validationContextCertificateProvider' @:: Lens' CommonTlsContext (Prelude.Maybe CommonTlsContext'CertificateProvider)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.validationContextCertificateProvider' @:: Lens' CommonTlsContext CommonTlsContext'CertificateProvider@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'validationContextCertificateProviderInstance' @:: Lens' CommonTlsContext (Prelude.Maybe CommonTlsContext'CertificateProviderInstance)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.validationContextCertificateProviderInstance' @:: Lens' CommonTlsContext CommonTlsContext'CertificateProviderInstance@ -}
data CommonTlsContext
  = CommonTlsContext'_constructor {_CommonTlsContext'tlsParams :: !(Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsParameters),
                                   _CommonTlsContext'tlsCertificates :: !(Data.Vector.Vector Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsCertificate),
                                   _CommonTlsContext'tlsCertificateSdsSecretConfigs :: !(Data.Vector.Vector Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig),
                                   _CommonTlsContext'tlsCertificateCertificateProvider :: !(Prelude.Maybe CommonTlsContext'CertificateProvider),
                                   _CommonTlsContext'tlsCertificateCertificateProviderInstance :: !(Prelude.Maybe CommonTlsContext'CertificateProviderInstance),
                                   _CommonTlsContext'alpnProtocols :: !(Data.Vector.Vector Data.Text.Text),
                                   _CommonTlsContext'customHandshaker :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                                   _CommonTlsContext'validationContextType :: !(Prelude.Maybe CommonTlsContext'ValidationContextType),
                                   _CommonTlsContext'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommonTlsContext where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data CommonTlsContext'ValidationContextType
  = CommonTlsContext'ValidationContext !Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext |
    CommonTlsContext'ValidationContextSdsSecretConfig !Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig |
    CommonTlsContext'CombinedValidationContext !CommonTlsContext'CombinedCertificateValidationContext |
    CommonTlsContext'ValidationContextCertificateProvider !CommonTlsContext'CertificateProvider |
    CommonTlsContext'ValidationContextCertificateProviderInstance !CommonTlsContext'CertificateProviderInstance
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField CommonTlsContext "tlsParams" Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsParameters where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'tlsParams
           (\ x__ y__ -> x__ {_CommonTlsContext'tlsParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommonTlsContext "maybe'tlsParams" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsParameters) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'tlsParams
           (\ x__ y__ -> x__ {_CommonTlsContext'tlsParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonTlsContext "tlsCertificates" [Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsCertificate] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'tlsCertificates
           (\ x__ y__ -> x__ {_CommonTlsContext'tlsCertificates = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CommonTlsContext "vec'tlsCertificates" (Data.Vector.Vector Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsCertificate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'tlsCertificates
           (\ x__ y__ -> x__ {_CommonTlsContext'tlsCertificates = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonTlsContext "tlsCertificateSdsSecretConfigs" [Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'tlsCertificateSdsSecretConfigs
           (\ x__ y__
              -> x__ {_CommonTlsContext'tlsCertificateSdsSecretConfigs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CommonTlsContext "vec'tlsCertificateSdsSecretConfigs" (Data.Vector.Vector Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'tlsCertificateSdsSecretConfigs
           (\ x__ y__
              -> x__ {_CommonTlsContext'tlsCertificateSdsSecretConfigs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonTlsContext "tlsCertificateCertificateProvider" CommonTlsContext'CertificateProvider where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'tlsCertificateCertificateProvider
           (\ x__ y__
              -> x__
                   {_CommonTlsContext'tlsCertificateCertificateProvider = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommonTlsContext "maybe'tlsCertificateCertificateProvider" (Prelude.Maybe CommonTlsContext'CertificateProvider) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'tlsCertificateCertificateProvider
           (\ x__ y__
              -> x__
                   {_CommonTlsContext'tlsCertificateCertificateProvider = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonTlsContext "tlsCertificateCertificateProviderInstance" CommonTlsContext'CertificateProviderInstance where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'tlsCertificateCertificateProviderInstance
           (\ x__ y__
              -> x__
                   {_CommonTlsContext'tlsCertificateCertificateProviderInstance = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommonTlsContext "maybe'tlsCertificateCertificateProviderInstance" (Prelude.Maybe CommonTlsContext'CertificateProviderInstance) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'tlsCertificateCertificateProviderInstance
           (\ x__ y__
              -> x__
                   {_CommonTlsContext'tlsCertificateCertificateProviderInstance = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonTlsContext "alpnProtocols" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'alpnProtocols
           (\ x__ y__ -> x__ {_CommonTlsContext'alpnProtocols = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CommonTlsContext "vec'alpnProtocols" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'alpnProtocols
           (\ x__ y__ -> x__ {_CommonTlsContext'alpnProtocols = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonTlsContext "customHandshaker" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'customHandshaker
           (\ x__ y__ -> x__ {_CommonTlsContext'customHandshaker = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommonTlsContext "maybe'customHandshaker" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'customHandshaker
           (\ x__ y__ -> x__ {_CommonTlsContext'customHandshaker = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonTlsContext "maybe'validationContextType" (Prelude.Maybe CommonTlsContext'ValidationContextType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'validationContextType
           (\ x__ y__ -> x__ {_CommonTlsContext'validationContextType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonTlsContext "maybe'validationContext" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'validationContextType
           (\ x__ y__ -> x__ {_CommonTlsContext'validationContextType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CommonTlsContext'ValidationContext x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CommonTlsContext'ValidationContext y__))
instance Data.ProtoLens.Field.HasField CommonTlsContext "validationContext" Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'validationContextType
           (\ x__ y__ -> x__ {_CommonTlsContext'validationContextType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CommonTlsContext'ValidationContext x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CommonTlsContext'ValidationContext y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CommonTlsContext "maybe'validationContextSdsSecretConfig" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'validationContextType
           (\ x__ y__ -> x__ {_CommonTlsContext'validationContextType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CommonTlsContext'ValidationContextSdsSecretConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   CommonTlsContext'ValidationContextSdsSecretConfig y__))
instance Data.ProtoLens.Field.HasField CommonTlsContext "validationContextSdsSecretConfig" Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'validationContextType
           (\ x__ y__ -> x__ {_CommonTlsContext'validationContextType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CommonTlsContext'ValidationContextSdsSecretConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      CommonTlsContext'ValidationContextSdsSecretConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CommonTlsContext "maybe'combinedValidationContext" (Prelude.Maybe CommonTlsContext'CombinedCertificateValidationContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'validationContextType
           (\ x__ y__ -> x__ {_CommonTlsContext'validationContextType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CommonTlsContext'CombinedValidationContext x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap CommonTlsContext'CombinedValidationContext y__))
instance Data.ProtoLens.Field.HasField CommonTlsContext "combinedValidationContext" CommonTlsContext'CombinedCertificateValidationContext where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'validationContextType
           (\ x__ y__ -> x__ {_CommonTlsContext'validationContextType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CommonTlsContext'CombinedValidationContext x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap CommonTlsContext'CombinedValidationContext y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CommonTlsContext "maybe'validationContextCertificateProvider" (Prelude.Maybe CommonTlsContext'CertificateProvider) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'validationContextType
           (\ x__ y__ -> x__ {_CommonTlsContext'validationContextType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CommonTlsContext'ValidationContextCertificateProvider x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   CommonTlsContext'ValidationContextCertificateProvider y__))
instance Data.ProtoLens.Field.HasField CommonTlsContext "validationContextCertificateProvider" CommonTlsContext'CertificateProvider where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'validationContextType
           (\ x__ y__ -> x__ {_CommonTlsContext'validationContextType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CommonTlsContext'ValidationContextCertificateProvider x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      CommonTlsContext'ValidationContextCertificateProvider y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CommonTlsContext "maybe'validationContextCertificateProviderInstance" (Prelude.Maybe CommonTlsContext'CertificateProviderInstance) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'validationContextType
           (\ x__ y__ -> x__ {_CommonTlsContext'validationContextType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CommonTlsContext'ValidationContextCertificateProviderInstance x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   CommonTlsContext'ValidationContextCertificateProviderInstance y__))
instance Data.ProtoLens.Field.HasField CommonTlsContext "validationContextCertificateProviderInstance" CommonTlsContext'CertificateProviderInstance where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'validationContextType
           (\ x__ y__ -> x__ {_CommonTlsContext'validationContextType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CommonTlsContext'ValidationContextCertificateProviderInstance x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      CommonTlsContext'ValidationContextCertificateProviderInstance y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message CommonTlsContext where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.tls.v3.CommonTlsContext"
  packedMessageDescriptor _
    = "\n\
      \\DLECommonTlsContext\DC2W\n\
      \\n\
      \tls_params\CAN\SOH \SOH(\v28.envoy.extensions.transport_sockets.tls.v3.TlsParametersR\ttlsParams\DC2d\n\
      \\DLEtls_certificates\CAN\STX \ETX(\v29.envoy.extensions.transport_sockets.tls.v3.TlsCertificateR\SItlsCertificates\DC2\144\SOH\n\
      \\"tls_certificate_sds_secret_configs\CAN\ACK \ETX(\v2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigR\RStlsCertificateSdsSecretConfigsB\b\250B\ENQ\146\SOH\STX\DLE\STX\DC2\160\SOH\n\
      \$tls_certificate_certificate_provider\CAN\t \SOH(\v2O.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderR!tlsCertificateCertificateProvider\DC2\185\SOH\n\
      \-tls_certificate_certificate_provider_instance\CAN\v \SOH(\v2W.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstanceR)tlsCertificateCertificateProviderInstance\DC2x\n\
      \\DC2validation_context\CAN\ETX \SOH(\v2G.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContextH\NULR\DC1validationContext\DC2\140\SOH\n\
      \$validation_context_sds_secret_config\CAN\a \SOH(\v2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigH\NULR validationContextSdsSecretConfig\DC2\162\SOH\n\
      \\ESCcombined_validation_context\CAN\b \SOH(\v2`.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CombinedCertificateValidationContextH\NULR\EMcombinedValidationContext\DC2\168\SOH\n\
      \'validation_context_certificate_provider\CAN\n\
      \ \SOH(\v2O.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderH\NULR$validationContextCertificateProvider\DC2\193\SOH\n\
      \0validation_context_certificate_provider_instance\CAN\f \SOH(\v2W.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstanceH\NULR,validationContextCertificateProviderInstance\DC2%\n\
      \\SOalpn_protocols\CAN\EOT \ETX(\tR\ralpnProtocols\DC2W\n\
      \\DC1custom_handshaker\CAN\r \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\DLEcustomHandshaker\SUB\146\SOH\n\
      \\DC3CertificateProvider\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2O\n\
      \\ftyped_config\CAN\STX \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigH\NULR\vtypedConfigB\r\n\
      \\ACKconfig\DC2\ETX\248B\SOH\SUBm\n\
      \\ESCCertificateProviderInstance\DC2#\n\
      \\rinstance_name\CAN\SOH \SOH(\tR\finstanceName\DC2)\n\
      \\DLEcertificate_name\CAN\STX \SOH(\tR\SIcertificateName\SUB\244\ACK\n\
      \$CombinedCertificateValidationContext\DC2\143\SOH\n\
      \\SUBdefault_validation_context\CAN\SOH \SOH(\v2G.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContextR\CANdefaultValidationContextB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\182\SOH\n\
      \$validation_context_sds_secret_config\CAN\STX \SOH(\v2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigR validationContextSdsSecretConfigB*\250B\ENQ\138\SOH\STX\DLE\SOH\242\152\254\143\ENQ\FS\DC2\SUBdynamic_validation_context\DC2\202\SOH\n\
      \'validation_context_certificate_provider\CAN\ETX \SOH(\v2O.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderR$validationContextCertificateProviderB\"\242\152\254\143\ENQ\FS\DC2\SUBdynamic_validation_context\DC2\227\SOH\n\
      \0validation_context_certificate_provider_instance\CAN\EOT \SOH(\v2W.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstanceR,validationContextCertificateProviderInstanceB\"\242\152\254\143\ENQ\FS\DC2\SUBdynamic_validation_context:N\154\197\136\RSI\n\
      \Genvoy.api.v2.auth.CommonTlsContext.CombinedCertificateValidationContextB\EM\n\
      \\ETBvalidation_context_type:)\154\197\136\RS$\n\
      \\"envoy.api.v2.auth.CommonTlsContextJ\EOT\b\ENQ\DLE\ACK"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tlsParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tls_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsParameters)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tlsParams")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext
        tlsCertificates__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tls_certificates"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsCertificate)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"tlsCertificates")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext
        tlsCertificateSdsSecretConfigs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tls_certificate_sds_secret_configs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"tlsCertificateSdsSecretConfigs")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext
        tlsCertificateCertificateProvider__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tls_certificate_certificate_provider"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommonTlsContext'CertificateProvider)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'tlsCertificateCertificateProvider")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext
        tlsCertificateCertificateProviderInstance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tls_certificate_certificate_provider_instance"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommonTlsContext'CertificateProviderInstance)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'tlsCertificateCertificateProviderInstance")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext
        alpnProtocols__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "alpn_protocols"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"alpnProtocols")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext
        customHandshaker__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "custom_handshaker"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'customHandshaker")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext
        validationContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validation_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'validationContext")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext
        validationContextSdsSecretConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validation_context_sds_secret_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'validationContextSdsSecretConfig")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext
        combinedValidationContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "combined_validation_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommonTlsContext'CombinedCertificateValidationContext)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'combinedValidationContext")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext
        validationContextCertificateProvider__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validation_context_certificate_provider"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommonTlsContext'CertificateProvider)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'validationContextCertificateProvider")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext
        validationContextCertificateProviderInstance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validation_context_certificate_provider_instance"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommonTlsContext'CertificateProviderInstance)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'validationContextCertificateProviderInstance")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tlsParams__field_descriptor),
           (Data.ProtoLens.Tag 2, tlsCertificates__field_descriptor),
           (Data.ProtoLens.Tag 6, 
            tlsCertificateSdsSecretConfigs__field_descriptor),
           (Data.ProtoLens.Tag 9, 
            tlsCertificateCertificateProvider__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            tlsCertificateCertificateProviderInstance__field_descriptor),
           (Data.ProtoLens.Tag 4, alpnProtocols__field_descriptor),
           (Data.ProtoLens.Tag 13, customHandshaker__field_descriptor),
           (Data.ProtoLens.Tag 3, validationContext__field_descriptor),
           (Data.ProtoLens.Tag 7, 
            validationContextSdsSecretConfig__field_descriptor),
           (Data.ProtoLens.Tag 8, 
            combinedValidationContext__field_descriptor),
           (Data.ProtoLens.Tag 10, 
            validationContextCertificateProvider__field_descriptor),
           (Data.ProtoLens.Tag 12, 
            validationContextCertificateProviderInstance__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommonTlsContext'_unknownFields
        (\ x__ y__ -> x__ {_CommonTlsContext'_unknownFields = y__})
  defMessage
    = CommonTlsContext'_constructor
        {_CommonTlsContext'tlsParams = Prelude.Nothing,
         _CommonTlsContext'tlsCertificates = Data.Vector.Generic.empty,
         _CommonTlsContext'tlsCertificateSdsSecretConfigs = Data.Vector.Generic.empty,
         _CommonTlsContext'tlsCertificateCertificateProvider = Prelude.Nothing,
         _CommonTlsContext'tlsCertificateCertificateProviderInstance = Prelude.Nothing,
         _CommonTlsContext'alpnProtocols = Data.Vector.Generic.empty,
         _CommonTlsContext'customHandshaker = Prelude.Nothing,
         _CommonTlsContext'validationContextType = Prelude.Nothing,
         _CommonTlsContext'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CommonTlsContext
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsCertificate
                   -> Data.ProtoLens.Encoding.Bytes.Parser CommonTlsContext
        loop
          x
          mutable'alpnProtocols
          mutable'tlsCertificateSdsSecretConfigs
          mutable'tlsCertificates
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'alpnProtocols <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'alpnProtocols)
                      frozen'tlsCertificateSdsSecretConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                    mutable'tlsCertificateSdsSecretConfigs)
                      frozen'tlsCertificates <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'tlsCertificates)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'alpnProtocols")
                              frozen'alpnProtocols
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'tlsCertificateSdsSecretConfigs")
                                 frozen'tlsCertificateSdsSecretConfigs
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'tlsCertificates")
                                    frozen'tlsCertificates
                                    x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tls_params"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tlsParams") y x)
                                  mutable'alpnProtocols
                                  mutable'tlsCertificateSdsSecretConfigs
                                  mutable'tlsCertificates
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "tls_certificates"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'tlsCertificates y)
                                loop
                                  x mutable'alpnProtocols mutable'tlsCertificateSdsSecretConfigs v
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "tls_certificate_sds_secret_configs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'tlsCertificateSdsSecretConfigs y)
                                loop x mutable'alpnProtocols v mutable'tlsCertificates
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tls_certificate_certificate_provider"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"tlsCertificateCertificateProvider")
                                     y
                                     x)
                                  mutable'alpnProtocols
                                  mutable'tlsCertificateSdsSecretConfigs
                                  mutable'tlsCertificates
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tls_certificate_certificate_provider_instance"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"tlsCertificateCertificateProviderInstance")
                                     y
                                     x)
                                  mutable'alpnProtocols
                                  mutable'tlsCertificateSdsSecretConfigs
                                  mutable'tlsCertificates
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "alpn_protocols"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'alpnProtocols y)
                                loop
                                  x v mutable'tlsCertificateSdsSecretConfigs mutable'tlsCertificates
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "custom_handshaker"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"customHandshaker") y x)
                                  mutable'alpnProtocols
                                  mutable'tlsCertificateSdsSecretConfigs
                                  mutable'tlsCertificates
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "validation_context"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validationContext") y x)
                                  mutable'alpnProtocols
                                  mutable'tlsCertificateSdsSecretConfigs
                                  mutable'tlsCertificates
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "validation_context_sds_secret_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"validationContextSdsSecretConfig")
                                     y
                                     x)
                                  mutable'alpnProtocols
                                  mutable'tlsCertificateSdsSecretConfigs
                                  mutable'tlsCertificates
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "combined_validation_context"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"combinedValidationContext") y x)
                                  mutable'alpnProtocols
                                  mutable'tlsCertificateSdsSecretConfigs
                                  mutable'tlsCertificates
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "validation_context_certificate_provider"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"validationContextCertificateProvider")
                                     y
                                     x)
                                  mutable'alpnProtocols
                                  mutable'tlsCertificateSdsSecretConfigs
                                  mutable'tlsCertificates
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "validation_context_certificate_provider_instance"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"validationContextCertificateProviderInstance")
                                     y
                                     x)
                                  mutable'alpnProtocols
                                  mutable'tlsCertificateSdsSecretConfigs
                                  mutable'tlsCertificates
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'alpnProtocols
                                  mutable'tlsCertificateSdsSecretConfigs
                                  mutable'tlsCertificates
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'alpnProtocols <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              mutable'tlsCertificateSdsSecretConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                          Data.ProtoLens.Encoding.Growing.new
              mutable'tlsCertificates <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'alpnProtocols
                mutable'tlsCertificateSdsSecretConfigs
                mutable'tlsCertificates)
          "CommonTlsContext"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'tlsParams") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage
                              _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'tlsCertificates") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'tlsCertificateSdsSecretConfigs")
                         _x))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field
                                @"maybe'tlsCertificateCertificateProvider")
                             _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage
                                   _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field
                                   @"maybe'tlsCertificateCertificateProviderInstance")
                                _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage
                                      _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.Text.Encoding.encodeUtf8
                                          _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'alpnProtocols") _x))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'customHandshaker") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 106)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage
                                            _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'validationContextType")
                                         _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just (CommonTlsContext'ValidationContext v))
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage
                                               v)
                                     (Prelude.Just (CommonTlsContext'ValidationContextSdsSecretConfig v))
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage
                                               v)
                                     (Prelude.Just (CommonTlsContext'CombinedValidationContext v))
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage
                                               v)
                                     (Prelude.Just (CommonTlsContext'ValidationContextCertificateProvider v))
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage
                                               v)
                                     (Prelude.Just (CommonTlsContext'ValidationContextCertificateProviderInstance v))
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage
                                               v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData CommonTlsContext where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommonTlsContext'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CommonTlsContext'tlsParams x__)
                (Control.DeepSeq.deepseq
                   (_CommonTlsContext'tlsCertificates x__)
                   (Control.DeepSeq.deepseq
                      (_CommonTlsContext'tlsCertificateSdsSecretConfigs x__)
                      (Control.DeepSeq.deepseq
                         (_CommonTlsContext'tlsCertificateCertificateProvider x__)
                         (Control.DeepSeq.deepseq
                            (_CommonTlsContext'tlsCertificateCertificateProviderInstance x__)
                            (Control.DeepSeq.deepseq
                               (_CommonTlsContext'alpnProtocols x__)
                               (Control.DeepSeq.deepseq
                                  (_CommonTlsContext'customHandshaker x__)
                                  (Control.DeepSeq.deepseq
                                     (_CommonTlsContext'validationContextType x__) ()))))))))
instance Control.DeepSeq.NFData CommonTlsContext'ValidationContextType where
  rnf (CommonTlsContext'ValidationContext x__)
    = Control.DeepSeq.rnf x__
  rnf (CommonTlsContext'ValidationContextSdsSecretConfig x__)
    = Control.DeepSeq.rnf x__
  rnf (CommonTlsContext'CombinedValidationContext x__)
    = Control.DeepSeq.rnf x__
  rnf (CommonTlsContext'ValidationContextCertificateProvider x__)
    = Control.DeepSeq.rnf x__
  rnf
    (CommonTlsContext'ValidationContextCertificateProviderInstance x__)
    = Control.DeepSeq.rnf x__
_CommonTlsContext'ValidationContext ::
  Data.ProtoLens.Prism.Prism' CommonTlsContext'ValidationContextType Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext
_CommonTlsContext'ValidationContext
  = Data.ProtoLens.Prism.prism'
      CommonTlsContext'ValidationContext
      (\ p__
         -> case p__ of
              (CommonTlsContext'ValidationContext p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CommonTlsContext'ValidationContextSdsSecretConfig ::
  Data.ProtoLens.Prism.Prism' CommonTlsContext'ValidationContextType Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig
_CommonTlsContext'ValidationContextSdsSecretConfig
  = Data.ProtoLens.Prism.prism'
      CommonTlsContext'ValidationContextSdsSecretConfig
      (\ p__
         -> case p__ of
              (CommonTlsContext'ValidationContextSdsSecretConfig p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CommonTlsContext'CombinedValidationContext ::
  Data.ProtoLens.Prism.Prism' CommonTlsContext'ValidationContextType CommonTlsContext'CombinedCertificateValidationContext
_CommonTlsContext'CombinedValidationContext
  = Data.ProtoLens.Prism.prism'
      CommonTlsContext'CombinedValidationContext
      (\ p__
         -> case p__ of
              (CommonTlsContext'CombinedValidationContext p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CommonTlsContext'ValidationContextCertificateProvider ::
  Data.ProtoLens.Prism.Prism' CommonTlsContext'ValidationContextType CommonTlsContext'CertificateProvider
_CommonTlsContext'ValidationContextCertificateProvider
  = Data.ProtoLens.Prism.prism'
      CommonTlsContext'ValidationContextCertificateProvider
      (\ p__
         -> case p__ of
              (CommonTlsContext'ValidationContextCertificateProvider p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CommonTlsContext'ValidationContextCertificateProviderInstance ::
  Data.ProtoLens.Prism.Prism' CommonTlsContext'ValidationContextType CommonTlsContext'CertificateProviderInstance
_CommonTlsContext'ValidationContextCertificateProviderInstance
  = Data.ProtoLens.Prism.prism'
      CommonTlsContext'ValidationContextCertificateProviderInstance
      (\ p__
         -> case p__ of
              (CommonTlsContext'ValidationContextCertificateProviderInstance p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.name' @:: Lens' CommonTlsContext'CertificateProvider Data.Text.Text@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'config' @:: Lens' CommonTlsContext'CertificateProvider (Prelude.Maybe CommonTlsContext'CertificateProvider'Config)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'typedConfig' @:: Lens' CommonTlsContext'CertificateProvider (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.typedConfig' @:: Lens' CommonTlsContext'CertificateProvider Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@ -}
data CommonTlsContext'CertificateProvider
  = CommonTlsContext'CertificateProvider'_constructor {_CommonTlsContext'CertificateProvider'name :: !Data.Text.Text,
                                                       _CommonTlsContext'CertificateProvider'config :: !(Prelude.Maybe CommonTlsContext'CertificateProvider'Config),
                                                       _CommonTlsContext'CertificateProvider'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommonTlsContext'CertificateProvider where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data CommonTlsContext'CertificateProvider'Config
  = CommonTlsContext'CertificateProvider'TypedConfig !Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField CommonTlsContext'CertificateProvider "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'CertificateProvider'name
           (\ x__ y__
              -> x__ {_CommonTlsContext'CertificateProvider'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonTlsContext'CertificateProvider "maybe'config" (Prelude.Maybe CommonTlsContext'CertificateProvider'Config) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'CertificateProvider'config
           (\ x__ y__
              -> x__ {_CommonTlsContext'CertificateProvider'config = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonTlsContext'CertificateProvider "maybe'typedConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'CertificateProvider'config
           (\ x__ y__
              -> x__ {_CommonTlsContext'CertificateProvider'config = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CommonTlsContext'CertificateProvider'TypedConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   CommonTlsContext'CertificateProvider'TypedConfig y__))
instance Data.ProtoLens.Field.HasField CommonTlsContext'CertificateProvider "typedConfig" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'CertificateProvider'config
           (\ x__ y__
              -> x__ {_CommonTlsContext'CertificateProvider'config = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CommonTlsContext'CertificateProvider'TypedConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      CommonTlsContext'CertificateProvider'TypedConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message CommonTlsContext'CertificateProvider where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProvider"
  packedMessageDescriptor _
    = "\n\
      \\DC3CertificateProvider\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2O\n\
      \\ftyped_config\CAN\STX \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigH\NULR\vtypedConfigB\r\n\
      \\ACKconfig\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext'CertificateProvider
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext'CertificateProvider
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommonTlsContext'CertificateProvider'_unknownFields
        (\ x__ y__
           -> x__
                {_CommonTlsContext'CertificateProvider'_unknownFields = y__})
  defMessage
    = CommonTlsContext'CertificateProvider'_constructor
        {_CommonTlsContext'CertificateProvider'name = Data.ProtoLens.fieldDefault,
         _CommonTlsContext'CertificateProvider'config = Prelude.Nothing,
         _CommonTlsContext'CertificateProvider'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CommonTlsContext'CertificateProvider
          -> Data.ProtoLens.Encoding.Bytes.Parser CommonTlsContext'CertificateProvider
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "typed_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typedConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CertificateProvider"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8
                         _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'config") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (CommonTlsContext'CertificateProvider'TypedConfig v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CommonTlsContext'CertificateProvider where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommonTlsContext'CertificateProvider'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CommonTlsContext'CertificateProvider'name x__)
                (Control.DeepSeq.deepseq
                   (_CommonTlsContext'CertificateProvider'config x__) ()))
instance Control.DeepSeq.NFData CommonTlsContext'CertificateProvider'Config where
  rnf (CommonTlsContext'CertificateProvider'TypedConfig x__)
    = Control.DeepSeq.rnf x__
_CommonTlsContext'CertificateProvider'TypedConfig ::
  Data.ProtoLens.Prism.Prism' CommonTlsContext'CertificateProvider'Config Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig
_CommonTlsContext'CertificateProvider'TypedConfig
  = Data.ProtoLens.Prism.prism'
      CommonTlsContext'CertificateProvider'TypedConfig
      (\ p__
         -> case p__ of {
              (CommonTlsContext'CertificateProvider'TypedConfig p__val)
                -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.instanceName' @:: Lens' CommonTlsContext'CertificateProviderInstance Data.Text.Text@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.certificateName' @:: Lens' CommonTlsContext'CertificateProviderInstance Data.Text.Text@ -}
data CommonTlsContext'CertificateProviderInstance
  = CommonTlsContext'CertificateProviderInstance'_constructor {_CommonTlsContext'CertificateProviderInstance'instanceName :: !Data.Text.Text,
                                                               _CommonTlsContext'CertificateProviderInstance'certificateName :: !Data.Text.Text,
                                                               _CommonTlsContext'CertificateProviderInstance'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommonTlsContext'CertificateProviderInstance where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CommonTlsContext'CertificateProviderInstance "instanceName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'CertificateProviderInstance'instanceName
           (\ x__ y__
              -> x__
                   {_CommonTlsContext'CertificateProviderInstance'instanceName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonTlsContext'CertificateProviderInstance "certificateName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'CertificateProviderInstance'certificateName
           (\ x__ y__
              -> x__
                   {_CommonTlsContext'CertificateProviderInstance'certificateName = y__}))
        Prelude.id
instance Data.ProtoLens.Message CommonTlsContext'CertificateProviderInstance where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstance"
  packedMessageDescriptor _
    = "\n\
      \\ESCCertificateProviderInstance\DC2#\n\
      \\rinstance_name\CAN\SOH \SOH(\tR\finstanceName\DC2)\n\
      \\DLEcertificate_name\CAN\STX \SOH(\tR\SIcertificateName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        instanceName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "instance_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"instanceName")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext'CertificateProviderInstance
        certificateName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "certificate_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"certificateName")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext'CertificateProviderInstance
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, instanceName__field_descriptor),
           (Data.ProtoLens.Tag 2, certificateName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommonTlsContext'CertificateProviderInstance'_unknownFields
        (\ x__ y__
           -> x__
                {_CommonTlsContext'CertificateProviderInstance'_unknownFields = y__})
  defMessage
    = CommonTlsContext'CertificateProviderInstance'_constructor
        {_CommonTlsContext'CertificateProviderInstance'instanceName = Data.ProtoLens.fieldDefault,
         _CommonTlsContext'CertificateProviderInstance'certificateName = Data.ProtoLens.fieldDefault,
         _CommonTlsContext'CertificateProviderInstance'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CommonTlsContext'CertificateProviderInstance
          -> Data.ProtoLens.Encoding.Bytes.Parser CommonTlsContext'CertificateProviderInstance
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "instance_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"instanceName") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "certificate_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"certificateName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CertificateProviderInstance"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"instanceName") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"certificateName") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CommonTlsContext'CertificateProviderInstance where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommonTlsContext'CertificateProviderInstance'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CommonTlsContext'CertificateProviderInstance'instanceName x__)
                (Control.DeepSeq.deepseq
                   (_CommonTlsContext'CertificateProviderInstance'certificateName x__)
                   ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.defaultValidationContext' @:: Lens' CommonTlsContext'CombinedCertificateValidationContext Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'defaultValidationContext' @:: Lens' CommonTlsContext'CombinedCertificateValidationContext (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.validationContextSdsSecretConfig' @:: Lens' CommonTlsContext'CombinedCertificateValidationContext Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'validationContextSdsSecretConfig' @:: Lens' CommonTlsContext'CombinedCertificateValidationContext (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.validationContextCertificateProvider' @:: Lens' CommonTlsContext'CombinedCertificateValidationContext CommonTlsContext'CertificateProvider@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'validationContextCertificateProvider' @:: Lens' CommonTlsContext'CombinedCertificateValidationContext (Prelude.Maybe CommonTlsContext'CertificateProvider)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.validationContextCertificateProviderInstance' @:: Lens' CommonTlsContext'CombinedCertificateValidationContext CommonTlsContext'CertificateProviderInstance@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'validationContextCertificateProviderInstance' @:: Lens' CommonTlsContext'CombinedCertificateValidationContext (Prelude.Maybe CommonTlsContext'CertificateProviderInstance)@ -}
data CommonTlsContext'CombinedCertificateValidationContext
  = CommonTlsContext'CombinedCertificateValidationContext'_constructor {_CommonTlsContext'CombinedCertificateValidationContext'defaultValidationContext :: !(Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext),
                                                                        _CommonTlsContext'CombinedCertificateValidationContext'validationContextSdsSecretConfig :: !(Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig),
                                                                        _CommonTlsContext'CombinedCertificateValidationContext'validationContextCertificateProvider :: !(Prelude.Maybe CommonTlsContext'CertificateProvider),
                                                                        _CommonTlsContext'CombinedCertificateValidationContext'validationContextCertificateProviderInstance :: !(Prelude.Maybe CommonTlsContext'CertificateProviderInstance),
                                                                        _CommonTlsContext'CombinedCertificateValidationContext'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommonTlsContext'CombinedCertificateValidationContext where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CommonTlsContext'CombinedCertificateValidationContext "defaultValidationContext" Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'CombinedCertificateValidationContext'defaultValidationContext
           (\ x__ y__
              -> x__
                   {_CommonTlsContext'CombinedCertificateValidationContext'defaultValidationContext = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommonTlsContext'CombinedCertificateValidationContext "maybe'defaultValidationContext" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'CombinedCertificateValidationContext'defaultValidationContext
           (\ x__ y__
              -> x__
                   {_CommonTlsContext'CombinedCertificateValidationContext'defaultValidationContext = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonTlsContext'CombinedCertificateValidationContext "validationContextSdsSecretConfig" Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'CombinedCertificateValidationContext'validationContextSdsSecretConfig
           (\ x__ y__
              -> x__
                   {_CommonTlsContext'CombinedCertificateValidationContext'validationContextSdsSecretConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommonTlsContext'CombinedCertificateValidationContext "maybe'validationContextSdsSecretConfig" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'CombinedCertificateValidationContext'validationContextSdsSecretConfig
           (\ x__ y__
              -> x__
                   {_CommonTlsContext'CombinedCertificateValidationContext'validationContextSdsSecretConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonTlsContext'CombinedCertificateValidationContext "validationContextCertificateProvider" CommonTlsContext'CertificateProvider where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'CombinedCertificateValidationContext'validationContextCertificateProvider
           (\ x__ y__
              -> x__
                   {_CommonTlsContext'CombinedCertificateValidationContext'validationContextCertificateProvider = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommonTlsContext'CombinedCertificateValidationContext "maybe'validationContextCertificateProvider" (Prelude.Maybe CommonTlsContext'CertificateProvider) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'CombinedCertificateValidationContext'validationContextCertificateProvider
           (\ x__ y__
              -> x__
                   {_CommonTlsContext'CombinedCertificateValidationContext'validationContextCertificateProvider = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonTlsContext'CombinedCertificateValidationContext "validationContextCertificateProviderInstance" CommonTlsContext'CertificateProviderInstance where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'CombinedCertificateValidationContext'validationContextCertificateProviderInstance
           (\ x__ y__
              -> x__
                   {_CommonTlsContext'CombinedCertificateValidationContext'validationContextCertificateProviderInstance = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommonTlsContext'CombinedCertificateValidationContext "maybe'validationContextCertificateProviderInstance" (Prelude.Maybe CommonTlsContext'CertificateProviderInstance) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonTlsContext'CombinedCertificateValidationContext'validationContextCertificateProviderInstance
           (\ x__ y__
              -> x__
                   {_CommonTlsContext'CombinedCertificateValidationContext'validationContextCertificateProviderInstance = y__}))
        Prelude.id
instance Data.ProtoLens.Message CommonTlsContext'CombinedCertificateValidationContext where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CombinedCertificateValidationContext"
  packedMessageDescriptor _
    = "\n\
      \$CombinedCertificateValidationContext\DC2\143\SOH\n\
      \\SUBdefault_validation_context\CAN\SOH \SOH(\v2G.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContextR\CANdefaultValidationContextB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\182\SOH\n\
      \$validation_context_sds_secret_config\CAN\STX \SOH(\v2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigR validationContextSdsSecretConfigB*\250B\ENQ\138\SOH\STX\DLE\SOH\242\152\254\143\ENQ\FS\DC2\SUBdynamic_validation_context\DC2\202\SOH\n\
      \'validation_context_certificate_provider\CAN\ETX \SOH(\v2O.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderR$validationContextCertificateProviderB\"\242\152\254\143\ENQ\FS\DC2\SUBdynamic_validation_context\DC2\227\SOH\n\
      \0validation_context_certificate_provider_instance\CAN\EOT \SOH(\v2W.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstanceR,validationContextCertificateProviderInstanceB\"\242\152\254\143\ENQ\FS\DC2\SUBdynamic_validation_context:N\154\197\136\RSI\n\
      \Genvoy.api.v2.auth.CommonTlsContext.CombinedCertificateValidationContext"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        defaultValidationContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_validation_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.CertificateValidationContext)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'defaultValidationContext")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext'CombinedCertificateValidationContext
        validationContextSdsSecretConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validation_context_sds_secret_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'validationContextSdsSecretConfig")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext'CombinedCertificateValidationContext
        validationContextCertificateProvider__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validation_context_certificate_provider"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommonTlsContext'CertificateProvider)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'validationContextCertificateProvider")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext'CombinedCertificateValidationContext
        validationContextCertificateProviderInstance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validation_context_certificate_provider_instance"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommonTlsContext'CertificateProviderInstance)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'validationContextCertificateProviderInstance")) ::
              Data.ProtoLens.FieldDescriptor CommonTlsContext'CombinedCertificateValidationContext
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            defaultValidationContext__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            validationContextSdsSecretConfig__field_descriptor),
           (Data.ProtoLens.Tag 3, 
            validationContextCertificateProvider__field_descriptor),
           (Data.ProtoLens.Tag 4, 
            validationContextCertificateProviderInstance__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommonTlsContext'CombinedCertificateValidationContext'_unknownFields
        (\ x__ y__
           -> x__
                {_CommonTlsContext'CombinedCertificateValidationContext'_unknownFields = y__})
  defMessage
    = CommonTlsContext'CombinedCertificateValidationContext'_constructor
        {_CommonTlsContext'CombinedCertificateValidationContext'defaultValidationContext = Prelude.Nothing,
         _CommonTlsContext'CombinedCertificateValidationContext'validationContextSdsSecretConfig = Prelude.Nothing,
         _CommonTlsContext'CombinedCertificateValidationContext'validationContextCertificateProvider = Prelude.Nothing,
         _CommonTlsContext'CombinedCertificateValidationContext'validationContextCertificateProviderInstance = Prelude.Nothing,
         _CommonTlsContext'CombinedCertificateValidationContext'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CommonTlsContext'CombinedCertificateValidationContext
          -> Data.ProtoLens.Encoding.Bytes.Parser CommonTlsContext'CombinedCertificateValidationContext
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "default_validation_context"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultValidationContext") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "validation_context_sds_secret_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"validationContextSdsSecretConfig")
                                     y
                                     x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "validation_context_certificate_provider"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"validationContextCertificateProvider")
                                     y
                                     x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "validation_context_certificate_provider_instance"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"validationContextCertificateProviderInstance")
                                     y
                                     x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "CombinedCertificateValidationContext"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'defaultValidationContext") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field
                          @"maybe'validationContextSdsSecretConfig")
                       _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field
                             @"maybe'validationContextCertificateProvider")
                          _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field
                                @"maybe'validationContextCertificateProviderInstance")
                             _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage
                                   _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData CommonTlsContext'CombinedCertificateValidationContext where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommonTlsContext'CombinedCertificateValidationContext'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_CommonTlsContext'CombinedCertificateValidationContext'defaultValidationContext
                   x__)
                (Control.DeepSeq.deepseq
                   (_CommonTlsContext'CombinedCertificateValidationContext'validationContextSdsSecretConfig
                      x__)
                   (Control.DeepSeq.deepseq
                      (_CommonTlsContext'CombinedCertificateValidationContext'validationContextCertificateProvider
                         x__)
                      (Control.DeepSeq.deepseq
                         (_CommonTlsContext'CombinedCertificateValidationContext'validationContextCertificateProviderInstance
                            x__)
                         ()))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.commonTlsContext' @:: Lens' DownstreamTlsContext CommonTlsContext@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'commonTlsContext' @:: Lens' DownstreamTlsContext (Prelude.Maybe CommonTlsContext)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.requireClientCertificate' @:: Lens' DownstreamTlsContext Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'requireClientCertificate' @:: Lens' DownstreamTlsContext (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.requireSni' @:: Lens' DownstreamTlsContext Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'requireSni' @:: Lens' DownstreamTlsContext (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.sessionTimeout' @:: Lens' DownstreamTlsContext Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'sessionTimeout' @:: Lens' DownstreamTlsContext (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.ocspStaplePolicy' @:: Lens' DownstreamTlsContext DownstreamTlsContext'OcspStaplePolicy@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'sessionTicketKeysType' @:: Lens' DownstreamTlsContext (Prelude.Maybe DownstreamTlsContext'SessionTicketKeysType)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'sessionTicketKeys' @:: Lens' DownstreamTlsContext (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsSessionTicketKeys)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.sessionTicketKeys' @:: Lens' DownstreamTlsContext Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsSessionTicketKeys@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'sessionTicketKeysSdsSecretConfig' @:: Lens' DownstreamTlsContext (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.sessionTicketKeysSdsSecretConfig' @:: Lens' DownstreamTlsContext Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'disableStatelessSessionResumption' @:: Lens' DownstreamTlsContext (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.disableStatelessSessionResumption' @:: Lens' DownstreamTlsContext Prelude.Bool@ -}
data DownstreamTlsContext
  = DownstreamTlsContext'_constructor {_DownstreamTlsContext'commonTlsContext :: !(Prelude.Maybe CommonTlsContext),
                                       _DownstreamTlsContext'requireClientCertificate :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                       _DownstreamTlsContext'requireSni :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                       _DownstreamTlsContext'sessionTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                       _DownstreamTlsContext'ocspStaplePolicy :: !DownstreamTlsContext'OcspStaplePolicy,
                                       _DownstreamTlsContext'sessionTicketKeysType :: !(Prelude.Maybe DownstreamTlsContext'SessionTicketKeysType),
                                       _DownstreamTlsContext'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DownstreamTlsContext where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data DownstreamTlsContext'SessionTicketKeysType
  = DownstreamTlsContext'SessionTicketKeys !Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsSessionTicketKeys |
    DownstreamTlsContext'SessionTicketKeysSdsSecretConfig !Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig |
    DownstreamTlsContext'DisableStatelessSessionResumption !Prelude.Bool
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField DownstreamTlsContext "commonTlsContext" CommonTlsContext where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DownstreamTlsContext'commonTlsContext
           (\ x__ y__ -> x__ {_DownstreamTlsContext'commonTlsContext = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DownstreamTlsContext "maybe'commonTlsContext" (Prelude.Maybe CommonTlsContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DownstreamTlsContext'commonTlsContext
           (\ x__ y__ -> x__ {_DownstreamTlsContext'commonTlsContext = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DownstreamTlsContext "requireClientCertificate" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DownstreamTlsContext'requireClientCertificate
           (\ x__ y__
              -> x__ {_DownstreamTlsContext'requireClientCertificate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DownstreamTlsContext "maybe'requireClientCertificate" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DownstreamTlsContext'requireClientCertificate
           (\ x__ y__
              -> x__ {_DownstreamTlsContext'requireClientCertificate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DownstreamTlsContext "requireSni" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DownstreamTlsContext'requireSni
           (\ x__ y__ -> x__ {_DownstreamTlsContext'requireSni = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DownstreamTlsContext "maybe'requireSni" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DownstreamTlsContext'requireSni
           (\ x__ y__ -> x__ {_DownstreamTlsContext'requireSni = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DownstreamTlsContext "sessionTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DownstreamTlsContext'sessionTimeout
           (\ x__ y__ -> x__ {_DownstreamTlsContext'sessionTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DownstreamTlsContext "maybe'sessionTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DownstreamTlsContext'sessionTimeout
           (\ x__ y__ -> x__ {_DownstreamTlsContext'sessionTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DownstreamTlsContext "ocspStaplePolicy" DownstreamTlsContext'OcspStaplePolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DownstreamTlsContext'ocspStaplePolicy
           (\ x__ y__ -> x__ {_DownstreamTlsContext'ocspStaplePolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DownstreamTlsContext "maybe'sessionTicketKeysType" (Prelude.Maybe DownstreamTlsContext'SessionTicketKeysType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DownstreamTlsContext'sessionTicketKeysType
           (\ x__ y__
              -> x__ {_DownstreamTlsContext'sessionTicketKeysType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DownstreamTlsContext "maybe'sessionTicketKeys" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsSessionTicketKeys) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DownstreamTlsContext'sessionTicketKeysType
           (\ x__ y__
              -> x__ {_DownstreamTlsContext'sessionTicketKeysType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DownstreamTlsContext'SessionTicketKeys x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap DownstreamTlsContext'SessionTicketKeys y__))
instance Data.ProtoLens.Field.HasField DownstreamTlsContext "sessionTicketKeys" Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsSessionTicketKeys where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DownstreamTlsContext'sessionTicketKeysType
           (\ x__ y__
              -> x__ {_DownstreamTlsContext'sessionTicketKeysType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DownstreamTlsContext'SessionTicketKeys x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap DownstreamTlsContext'SessionTicketKeys y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField DownstreamTlsContext "maybe'sessionTicketKeysSdsSecretConfig" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DownstreamTlsContext'sessionTicketKeysType
           (\ x__ y__
              -> x__ {_DownstreamTlsContext'sessionTicketKeysType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DownstreamTlsContext'SessionTicketKeysSdsSecretConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   DownstreamTlsContext'SessionTicketKeysSdsSecretConfig y__))
instance Data.ProtoLens.Field.HasField DownstreamTlsContext "sessionTicketKeysSdsSecretConfig" Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DownstreamTlsContext'sessionTicketKeysType
           (\ x__ y__
              -> x__ {_DownstreamTlsContext'sessionTicketKeysType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DownstreamTlsContext'SessionTicketKeysSdsSecretConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      DownstreamTlsContext'SessionTicketKeysSdsSecretConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField DownstreamTlsContext "maybe'disableStatelessSessionResumption" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DownstreamTlsContext'sessionTicketKeysType
           (\ x__ y__
              -> x__ {_DownstreamTlsContext'sessionTicketKeysType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DownstreamTlsContext'DisableStatelessSessionResumption x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   DownstreamTlsContext'DisableStatelessSessionResumption y__))
instance Data.ProtoLens.Field.HasField DownstreamTlsContext "disableStatelessSessionResumption" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DownstreamTlsContext'sessionTicketKeysType
           (\ x__ y__
              -> x__ {_DownstreamTlsContext'sessionTicketKeysType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DownstreamTlsContext'DisableStatelessSessionResumption x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      DownstreamTlsContext'DisableStatelessSessionResumption y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message DownstreamTlsContext where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext"
  packedMessageDescriptor _
    = "\n\
      \\DC4DownstreamTlsContext\DC2i\n\
      \\DC2common_tls_context\CAN\SOH \SOH(\v2;.envoy.extensions.transport_sockets.tls.v3.CommonTlsContextR\DLEcommonTlsContext\DC2X\n\
      \\SUBrequire_client_certificate\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\CANrequireClientCertificate\DC2;\n\
      \\vrequire_sni\CAN\ETX \SOH(\v2\SUB.google.protobuf.BoolValueR\n\
      \requireSni\DC2q\n\
      \\DC3session_ticket_keys\CAN\EOT \SOH(\v2?.envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeysH\NULR\DC1sessionTicketKeys\DC2\141\SOH\n\
      \%session_ticket_keys_sds_secret_config\CAN\ENQ \SOH(\v2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigH\NULR sessionTicketKeysSdsSecretConfig\DC2Q\n\
      \$disable_stateless_session_resumption\CAN\a \SOH(\bH\NULR!disableStatelessSessionResumption\DC2T\n\
      \\SIsession_timeout\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\SOsessionTimeoutB\DLE\250B\r\170\SOH\n\
      \\SUB\ACK\b\128\128\128\128\DLE2\NUL\DC2\136\SOH\n\
      \\DC2ocsp_staple_policy\CAN\b \SOH(\SO2P.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext.OcspStaplePolicyR\DLEocspStaplePolicyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"N\n\
      \\DLEOcspStaplePolicy\DC2\DC4\n\
      \\DLELENIENT_STAPLING\DLE\NUL\DC2\DC3\n\
      \\SISTRICT_STAPLING\DLE\SOH\DC2\SI\n\
      \\vMUST_STAPLE\DLE\STXB\SUB\n\
      \\CANsession_ticket_keys_type:-\154\197\136\RS(\n\
      \&envoy.api.v2.auth.DownstreamTlsContext"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commonTlsContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_tls_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommonTlsContext)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commonTlsContext")) ::
              Data.ProtoLens.FieldDescriptor DownstreamTlsContext
        requireClientCertificate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "require_client_certificate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requireClientCertificate")) ::
              Data.ProtoLens.FieldDescriptor DownstreamTlsContext
        requireSni__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "require_sni"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requireSni")) ::
              Data.ProtoLens.FieldDescriptor DownstreamTlsContext
        sessionTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "session_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sessionTimeout")) ::
              Data.ProtoLens.FieldDescriptor DownstreamTlsContext
        ocspStaplePolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ocsp_staple_policy"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor DownstreamTlsContext'OcspStaplePolicy)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"ocspStaplePolicy")) ::
              Data.ProtoLens.FieldDescriptor DownstreamTlsContext
        sessionTicketKeys__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "session_ticket_keys"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsSessionTicketKeys)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sessionTicketKeys")) ::
              Data.ProtoLens.FieldDescriptor DownstreamTlsContext
        sessionTicketKeysSdsSecretConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "session_ticket_keys_sds_secret_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'sessionTicketKeysSdsSecretConfig")) ::
              Data.ProtoLens.FieldDescriptor DownstreamTlsContext
        disableStatelessSessionResumption__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disable_stateless_session_resumption"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'disableStatelessSessionResumption")) ::
              Data.ProtoLens.FieldDescriptor DownstreamTlsContext
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commonTlsContext__field_descriptor),
           (Data.ProtoLens.Tag 2, requireClientCertificate__field_descriptor),
           (Data.ProtoLens.Tag 3, requireSni__field_descriptor),
           (Data.ProtoLens.Tag 6, sessionTimeout__field_descriptor),
           (Data.ProtoLens.Tag 8, ocspStaplePolicy__field_descriptor),
           (Data.ProtoLens.Tag 4, sessionTicketKeys__field_descriptor),
           (Data.ProtoLens.Tag 5, 
            sessionTicketKeysSdsSecretConfig__field_descriptor),
           (Data.ProtoLens.Tag 7, 
            disableStatelessSessionResumption__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DownstreamTlsContext'_unknownFields
        (\ x__ y__ -> x__ {_DownstreamTlsContext'_unknownFields = y__})
  defMessage
    = DownstreamTlsContext'_constructor
        {_DownstreamTlsContext'commonTlsContext = Prelude.Nothing,
         _DownstreamTlsContext'requireClientCertificate = Prelude.Nothing,
         _DownstreamTlsContext'requireSni = Prelude.Nothing,
         _DownstreamTlsContext'sessionTimeout = Prelude.Nothing,
         _DownstreamTlsContext'ocspStaplePolicy = Data.ProtoLens.fieldDefault,
         _DownstreamTlsContext'sessionTicketKeysType = Prelude.Nothing,
         _DownstreamTlsContext'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DownstreamTlsContext
          -> Data.ProtoLens.Encoding.Bytes.Parser DownstreamTlsContext
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "common_tls_context"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commonTlsContext") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "require_client_certificate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requireClientCertificate") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "require_sni"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"requireSni") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "session_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sessionTimeout") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "ocsp_staple_policy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ocspStaplePolicy") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "session_ticket_keys"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sessionTicketKeys") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "session_ticket_keys_sds_secret_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"sessionTicketKeysSdsSecretConfig")
                                     y
                                     x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "disable_stateless_session_resumption"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"disableStatelessSessionResumption")
                                     y
                                     x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DownstreamTlsContext"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'commonTlsContext") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'requireClientCertificate") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'requireSni") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'sessionTimeout") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage
                                   _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"ocspStaplePolicy") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                  ((Prelude..)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     Prelude.fromEnum
                                     _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'sessionTicketKeysType") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just (DownstreamTlsContext'SessionTicketKeys v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         v)
                               (Prelude.Just (DownstreamTlsContext'SessionTicketKeysSdsSecretConfig v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         v)
                               (Prelude.Just (DownstreamTlsContext'DisableStatelessSessionResumption v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (\ b -> if b then 1 else 0)
                                         v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData DownstreamTlsContext where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DownstreamTlsContext'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DownstreamTlsContext'commonTlsContext x__)
                (Control.DeepSeq.deepseq
                   (_DownstreamTlsContext'requireClientCertificate x__)
                   (Control.DeepSeq.deepseq
                      (_DownstreamTlsContext'requireSni x__)
                      (Control.DeepSeq.deepseq
                         (_DownstreamTlsContext'sessionTimeout x__)
                         (Control.DeepSeq.deepseq
                            (_DownstreamTlsContext'ocspStaplePolicy x__)
                            (Control.DeepSeq.deepseq
                               (_DownstreamTlsContext'sessionTicketKeysType x__) ()))))))
instance Control.DeepSeq.NFData DownstreamTlsContext'SessionTicketKeysType where
  rnf (DownstreamTlsContext'SessionTicketKeys x__)
    = Control.DeepSeq.rnf x__
  rnf (DownstreamTlsContext'SessionTicketKeysSdsSecretConfig x__)
    = Control.DeepSeq.rnf x__
  rnf (DownstreamTlsContext'DisableStatelessSessionResumption x__)
    = Control.DeepSeq.rnf x__
_DownstreamTlsContext'SessionTicketKeys ::
  Data.ProtoLens.Prism.Prism' DownstreamTlsContext'SessionTicketKeysType Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common.TlsSessionTicketKeys
_DownstreamTlsContext'SessionTicketKeys
  = Data.ProtoLens.Prism.prism'
      DownstreamTlsContext'SessionTicketKeys
      (\ p__
         -> case p__ of
              (DownstreamTlsContext'SessionTicketKeys p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DownstreamTlsContext'SessionTicketKeysSdsSecretConfig ::
  Data.ProtoLens.Prism.Prism' DownstreamTlsContext'SessionTicketKeysType Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret.SdsSecretConfig
_DownstreamTlsContext'SessionTicketKeysSdsSecretConfig
  = Data.ProtoLens.Prism.prism'
      DownstreamTlsContext'SessionTicketKeysSdsSecretConfig
      (\ p__
         -> case p__ of
              (DownstreamTlsContext'SessionTicketKeysSdsSecretConfig p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DownstreamTlsContext'DisableStatelessSessionResumption ::
  Data.ProtoLens.Prism.Prism' DownstreamTlsContext'SessionTicketKeysType Prelude.Bool
_DownstreamTlsContext'DisableStatelessSessionResumption
  = Data.ProtoLens.Prism.prism'
      DownstreamTlsContext'DisableStatelessSessionResumption
      (\ p__
         -> case p__ of
              (DownstreamTlsContext'DisableStatelessSessionResumption p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
newtype DownstreamTlsContext'OcspStaplePolicy'UnrecognizedValue
  = DownstreamTlsContext'OcspStaplePolicy'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data DownstreamTlsContext'OcspStaplePolicy
  = DownstreamTlsContext'LENIENT_STAPLING |
    DownstreamTlsContext'STRICT_STAPLING |
    DownstreamTlsContext'MUST_STAPLE |
    DownstreamTlsContext'OcspStaplePolicy'Unrecognized !DownstreamTlsContext'OcspStaplePolicy'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum DownstreamTlsContext'OcspStaplePolicy where
  maybeToEnum 0 = Prelude.Just DownstreamTlsContext'LENIENT_STAPLING
  maybeToEnum 1 = Prelude.Just DownstreamTlsContext'STRICT_STAPLING
  maybeToEnum 2 = Prelude.Just DownstreamTlsContext'MUST_STAPLE
  maybeToEnum k
    = Prelude.Just
        (DownstreamTlsContext'OcspStaplePolicy'Unrecognized
           (DownstreamTlsContext'OcspStaplePolicy'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum DownstreamTlsContext'LENIENT_STAPLING = "LENIENT_STAPLING"
  showEnum DownstreamTlsContext'STRICT_STAPLING = "STRICT_STAPLING"
  showEnum DownstreamTlsContext'MUST_STAPLE = "MUST_STAPLE"
  showEnum
    (DownstreamTlsContext'OcspStaplePolicy'Unrecognized (DownstreamTlsContext'OcspStaplePolicy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "LENIENT_STAPLING"
    = Prelude.Just DownstreamTlsContext'LENIENT_STAPLING
    | (Prelude.==) k "STRICT_STAPLING"
    = Prelude.Just DownstreamTlsContext'STRICT_STAPLING
    | (Prelude.==) k "MUST_STAPLE"
    = Prelude.Just DownstreamTlsContext'MUST_STAPLE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded DownstreamTlsContext'OcspStaplePolicy where
  minBound = DownstreamTlsContext'LENIENT_STAPLING
  maxBound = DownstreamTlsContext'MUST_STAPLE
instance Prelude.Enum DownstreamTlsContext'OcspStaplePolicy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum OcspStaplePolicy: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum DownstreamTlsContext'LENIENT_STAPLING = 0
  fromEnum DownstreamTlsContext'STRICT_STAPLING = 1
  fromEnum DownstreamTlsContext'MUST_STAPLE = 2
  fromEnum
    (DownstreamTlsContext'OcspStaplePolicy'Unrecognized (DownstreamTlsContext'OcspStaplePolicy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ DownstreamTlsContext'MUST_STAPLE
    = Prelude.error
        "DownstreamTlsContext'OcspStaplePolicy.succ: bad argument DownstreamTlsContext'MUST_STAPLE. This value would be out of bounds."
  succ DownstreamTlsContext'LENIENT_STAPLING
    = DownstreamTlsContext'STRICT_STAPLING
  succ DownstreamTlsContext'STRICT_STAPLING
    = DownstreamTlsContext'MUST_STAPLE
  succ (DownstreamTlsContext'OcspStaplePolicy'Unrecognized _)
    = Prelude.error
        "DownstreamTlsContext'OcspStaplePolicy.succ: bad argument: unrecognized value"
  pred DownstreamTlsContext'LENIENT_STAPLING
    = Prelude.error
        "DownstreamTlsContext'OcspStaplePolicy.pred: bad argument DownstreamTlsContext'LENIENT_STAPLING. This value would be out of bounds."
  pred DownstreamTlsContext'STRICT_STAPLING
    = DownstreamTlsContext'LENIENT_STAPLING
  pred DownstreamTlsContext'MUST_STAPLE
    = DownstreamTlsContext'STRICT_STAPLING
  pred (DownstreamTlsContext'OcspStaplePolicy'Unrecognized _)
    = Prelude.error
        "DownstreamTlsContext'OcspStaplePolicy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault DownstreamTlsContext'OcspStaplePolicy where
  fieldDefault = DownstreamTlsContext'LENIENT_STAPLING
instance Control.DeepSeq.NFData DownstreamTlsContext'OcspStaplePolicy where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.commonTlsContext' @:: Lens' UpstreamTlsContext CommonTlsContext@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'commonTlsContext' @:: Lens' UpstreamTlsContext (Prelude.Maybe CommonTlsContext)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.sni' @:: Lens' UpstreamTlsContext Data.Text.Text@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.allowRenegotiation' @:: Lens' UpstreamTlsContext Prelude.Bool@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maxSessionKeys' @:: Lens' UpstreamTlsContext Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls_Fields.maybe'maxSessionKeys' @:: Lens' UpstreamTlsContext (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data UpstreamTlsContext
  = UpstreamTlsContext'_constructor {_UpstreamTlsContext'commonTlsContext :: !(Prelude.Maybe CommonTlsContext),
                                     _UpstreamTlsContext'sni :: !Data.Text.Text,
                                     _UpstreamTlsContext'allowRenegotiation :: !Prelude.Bool,
                                     _UpstreamTlsContext'maxSessionKeys :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                     _UpstreamTlsContext'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpstreamTlsContext where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpstreamTlsContext "commonTlsContext" CommonTlsContext where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamTlsContext'commonTlsContext
           (\ x__ y__ -> x__ {_UpstreamTlsContext'commonTlsContext = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpstreamTlsContext "maybe'commonTlsContext" (Prelude.Maybe CommonTlsContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamTlsContext'commonTlsContext
           (\ x__ y__ -> x__ {_UpstreamTlsContext'commonTlsContext = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamTlsContext "sni" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamTlsContext'sni
           (\ x__ y__ -> x__ {_UpstreamTlsContext'sni = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamTlsContext "allowRenegotiation" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamTlsContext'allowRenegotiation
           (\ x__ y__ -> x__ {_UpstreamTlsContext'allowRenegotiation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamTlsContext "maxSessionKeys" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamTlsContext'maxSessionKeys
           (\ x__ y__ -> x__ {_UpstreamTlsContext'maxSessionKeys = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpstreamTlsContext "maybe'maxSessionKeys" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamTlsContext'maxSessionKeys
           (\ x__ y__ -> x__ {_UpstreamTlsContext'maxSessionKeys = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpstreamTlsContext where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.tls.v3.UpstreamTlsContext"
  packedMessageDescriptor _
    = "\n\
      \\DC2UpstreamTlsContext\DC2i\n\
      \\DC2common_tls_context\CAN\SOH \SOH(\v2;.envoy.extensions.transport_sockets.tls.v3.CommonTlsContextR\DLEcommonTlsContext\DC2\SUB\n\
      \\ETXsni\CAN\STX \SOH(\tR\ETXsniB\b\250B\ENQr\ETX(\255\SOH\DC2/\n\
      \\DC3allow_renegotiation\CAN\ETX \SOH(\bR\DC2allowRenegotiation\DC2F\n\
      \\DLEmax_session_keys\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOmaxSessionKeys:+\154\197\136\RS&\n\
      \$envoy.api.v2.auth.UpstreamTlsContext"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commonTlsContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_tls_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommonTlsContext)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commonTlsContext")) ::
              Data.ProtoLens.FieldDescriptor UpstreamTlsContext
        sni__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sni"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"sni")) ::
              Data.ProtoLens.FieldDescriptor UpstreamTlsContext
        allowRenegotiation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allow_renegotiation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"allowRenegotiation")) ::
              Data.ProtoLens.FieldDescriptor UpstreamTlsContext
        maxSessionKeys__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_session_keys"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxSessionKeys")) ::
              Data.ProtoLens.FieldDescriptor UpstreamTlsContext
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commonTlsContext__field_descriptor),
           (Data.ProtoLens.Tag 2, sni__field_descriptor),
           (Data.ProtoLens.Tag 3, allowRenegotiation__field_descriptor),
           (Data.ProtoLens.Tag 4, maxSessionKeys__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpstreamTlsContext'_unknownFields
        (\ x__ y__ -> x__ {_UpstreamTlsContext'_unknownFields = y__})
  defMessage
    = UpstreamTlsContext'_constructor
        {_UpstreamTlsContext'commonTlsContext = Prelude.Nothing,
         _UpstreamTlsContext'sni = Data.ProtoLens.fieldDefault,
         _UpstreamTlsContext'allowRenegotiation = Data.ProtoLens.fieldDefault,
         _UpstreamTlsContext'maxSessionKeys = Prelude.Nothing,
         _UpstreamTlsContext'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpstreamTlsContext
          -> Data.ProtoLens.Encoding.Bytes.Parser UpstreamTlsContext
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "common_tls_context"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commonTlsContext") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "sni"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sni") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "allow_renegotiation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allowRenegotiation") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_session_keys"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxSessionKeys") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UpstreamTlsContext"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'commonTlsContext") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sni") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"allowRenegotiation") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt
                               (\ b -> if b then 1 else 0)
                               _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'maxSessionKeys") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage
                                   _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData UpstreamTlsContext where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpstreamTlsContext'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpstreamTlsContext'commonTlsContext x__)
                (Control.DeepSeq.deepseq
                   (_UpstreamTlsContext'sni x__)
                   (Control.DeepSeq.deepseq
                      (_UpstreamTlsContext'allowRenegotiation x__)
                      (Control.DeepSeq.deepseq
                         (_UpstreamTlsContext'maxSessionKeys x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \3envoy/extensions/transport_sockets/tls/v3/tls.proto\DC2)envoy.extensions.transport_sockets.tls.v3\SUB$envoy/config/core/v3/extension.proto\SUB6envoy/extensions/transport_sockets/tls/v3/common.proto\SUB6envoy/extensions/transport_sockets/tls/v3/secret.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\RSudpa/annotations/migrate.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\193\STX\n\
    \\DC2UpstreamTlsContext\DC2i\n\
    \\DC2common_tls_context\CAN\SOH \SOH(\v2;.envoy.extensions.transport_sockets.tls.v3.CommonTlsContextR\DLEcommonTlsContext\DC2\SUB\n\
    \\ETXsni\CAN\STX \SOH(\tR\ETXsniB\b\250B\ENQr\ETX(\255\SOH\DC2/\n\
    \\DC3allow_renegotiation\CAN\ETX \SOH(\bR\DC2allowRenegotiation\DC2F\n\
    \\DLEmax_session_keys\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOmaxSessionKeys:+\154\197\136\RS&\n\
    \$envoy.api.v2.auth.UpstreamTlsContext\"\234\a\n\
    \\DC4DownstreamTlsContext\DC2i\n\
    \\DC2common_tls_context\CAN\SOH \SOH(\v2;.envoy.extensions.transport_sockets.tls.v3.CommonTlsContextR\DLEcommonTlsContext\DC2X\n\
    \\SUBrequire_client_certificate\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\CANrequireClientCertificate\DC2;\n\
    \\vrequire_sni\CAN\ETX \SOH(\v2\SUB.google.protobuf.BoolValueR\n\
    \requireSni\DC2q\n\
    \\DC3session_ticket_keys\CAN\EOT \SOH(\v2?.envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeysH\NULR\DC1sessionTicketKeys\DC2\141\SOH\n\
    \%session_ticket_keys_sds_secret_config\CAN\ENQ \SOH(\v2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigH\NULR sessionTicketKeysSdsSecretConfig\DC2Q\n\
    \$disable_stateless_session_resumption\CAN\a \SOH(\bH\NULR!disableStatelessSessionResumption\DC2T\n\
    \\SIsession_timeout\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\SOsessionTimeoutB\DLE\250B\r\170\SOH\n\
    \\SUB\ACK\b\128\128\128\128\DLE2\NUL\DC2\136\SOH\n\
    \\DC2ocsp_staple_policy\CAN\b \SOH(\SO2P.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext.OcspStaplePolicyR\DLEocspStaplePolicyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"N\n\
    \\DLEOcspStaplePolicy\DC2\DC4\n\
    \\DLELENIENT_STAPLING\DLE\NUL\DC2\DC3\n\
    \\SISTRICT_STAPLING\DLE\SOH\DC2\SI\n\
    \\vMUST_STAPLE\DLE\STXB\SUB\n\
    \\CANsession_ticket_keys_type:-\154\197\136\RS(\n\
    \&envoy.api.v2.auth.DownstreamTlsContext\"\167\SYN\n\
    \\DLECommonTlsContext\DC2W\n\
    \\n\
    \tls_params\CAN\SOH \SOH(\v28.envoy.extensions.transport_sockets.tls.v3.TlsParametersR\ttlsParams\DC2d\n\
    \\DLEtls_certificates\CAN\STX \ETX(\v29.envoy.extensions.transport_sockets.tls.v3.TlsCertificateR\SItlsCertificates\DC2\144\SOH\n\
    \\"tls_certificate_sds_secret_configs\CAN\ACK \ETX(\v2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigR\RStlsCertificateSdsSecretConfigsB\b\250B\ENQ\146\SOH\STX\DLE\STX\DC2\160\SOH\n\
    \$tls_certificate_certificate_provider\CAN\t \SOH(\v2O.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderR!tlsCertificateCertificateProvider\DC2\185\SOH\n\
    \-tls_certificate_certificate_provider_instance\CAN\v \SOH(\v2W.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstanceR)tlsCertificateCertificateProviderInstance\DC2x\n\
    \\DC2validation_context\CAN\ETX \SOH(\v2G.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContextH\NULR\DC1validationContext\DC2\140\SOH\n\
    \$validation_context_sds_secret_config\CAN\a \SOH(\v2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigH\NULR validationContextSdsSecretConfig\DC2\162\SOH\n\
    \\ESCcombined_validation_context\CAN\b \SOH(\v2`.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CombinedCertificateValidationContextH\NULR\EMcombinedValidationContext\DC2\168\SOH\n\
    \'validation_context_certificate_provider\CAN\n\
    \ \SOH(\v2O.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderH\NULR$validationContextCertificateProvider\DC2\193\SOH\n\
    \0validation_context_certificate_provider_instance\CAN\f \SOH(\v2W.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstanceH\NULR,validationContextCertificateProviderInstance\DC2%\n\
    \\SOalpn_protocols\CAN\EOT \ETX(\tR\ralpnProtocols\DC2W\n\
    \\DC1custom_handshaker\CAN\r \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\DLEcustomHandshaker\SUB\146\SOH\n\
    \\DC3CertificateProvider\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2O\n\
    \\ftyped_config\CAN\STX \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigH\NULR\vtypedConfigB\r\n\
    \\ACKconfig\DC2\ETX\248B\SOH\SUBm\n\
    \\ESCCertificateProviderInstance\DC2#\n\
    \\rinstance_name\CAN\SOH \SOH(\tR\finstanceName\DC2)\n\
    \\DLEcertificate_name\CAN\STX \SOH(\tR\SIcertificateName\SUB\244\ACK\n\
    \$CombinedCertificateValidationContext\DC2\143\SOH\n\
    \\SUBdefault_validation_context\CAN\SOH \SOH(\v2G.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContextR\CANdefaultValidationContextB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\182\SOH\n\
    \$validation_context_sds_secret_config\CAN\STX \SOH(\v2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigR validationContextSdsSecretConfigB*\250B\ENQ\138\SOH\STX\DLE\SOH\242\152\254\143\ENQ\FS\DC2\SUBdynamic_validation_context\DC2\202\SOH\n\
    \'validation_context_certificate_provider\CAN\ETX \SOH(\v2O.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderR$validationContextCertificateProviderB\"\242\152\254\143\ENQ\FS\DC2\SUBdynamic_validation_context\DC2\227\SOH\n\
    \0validation_context_certificate_provider_instance\CAN\EOT \SOH(\v2W.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstanceR,validationContextCertificateProviderInstanceB\"\242\152\254\143\ENQ\FS\DC2\SUBdynamic_validation_context:N\154\197\136\RSI\n\
    \Genvoy.api.v2.auth.CommonTlsContext.CombinedCertificateValidationContextB\EM\n\
    \\ETBvalidation_context_type:)\154\197\136\RS$\n\
    \\"envoy.api.v2.auth.CommonTlsContextJ\EOT\b\ENQ\DLE\ACKBM\n\
    \7io.envoyproxy.envoy.extensions.transport_sockets.tls.v3B\bTlsProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\162^\n\
    \\a\DC2\ENQ\NUL\NUL\148\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL2\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL.\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL@\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL@\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL(\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL(\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL'\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL+\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\SO\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULP\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\DLE\NULP\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL)\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DC1\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC2\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC3\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC3\NULF\n\
    \\193\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\EM\NUL5\SOH2\180\SOH [#protodoc-title: TLS transport socket]\n\
    \ [#extension: envoy.transport_sockets.tls]\n\
    \ The TLS contexts below provide the transport socket configuration for upstream/downstream TLS.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\EM\b\SUB\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\SUB\STX\ESC-\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\SUB\STX\ESC-\n\
    \\150\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX$\STX*\SUB\136\STX Common TLS context settings.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   Server certificate verification is not enabled by default. Configure\n\
    \   :ref:`trusted_ca<envoy_v3_api_field_extensions.transport_sockets.tls.v3.CertificateValidationContext.trusted_ca>` to enable\n\
    \   verification.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX$\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX$\DC3%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX$()\n\
    \G\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX'\STX>\SUB: SNI string to use when creating TLS backend connections.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX'\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX'\t\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX'\SI\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX'\DC1=\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\SO\DC2\ETX'\DC2<\n\
    \\189\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX.\STX\US\SUB\175\SOH If true, server-initiated TLS renegotiation will be allowed.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   TLS renegotiation is considered insecure and shouldn't be used unless absolutely necessary.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX.\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX.\a\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX.\GS\RS\n\
    \\245\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX4\STX3\SUB\231\SOH Maximum number of session keys (Pre-Shared Keys for TLSv1.3+, Session IDs and Session Tickets\n\
    \ for TLSv1.2 and older) to store for the purpose of session resumption.\n\
    \\n\
    \ Defaults to 1, setting this to 0 disables session resumption.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX4\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX4\RS.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX412\n\
    \#\n\
    \\STX\EOT\SOH\DC2\EOT8\NUL|\SOH\SUB\ETB [#next-free-field: 9]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX8\b\FS\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT9\STX:/\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT9\STX:/\n\
    \\f\n\
    \\EOT\EOT\SOH\EOT\NUL\DC2\EOT<\STXP\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\EOT\NUL\SOH\DC2\ETX<\a\ETB\n\
    \\170\SOH\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\NUL\DC2\ETX@\EOT\EM\SUB\154\SOH OCSP responses are optional. If an OCSP response is absent\n\
    \ or expired, the associated certificate will be used for\n\
    \ connections without an OCSP staple.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\SOH\DC2\ETX@\EOT\DC4\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\STX\DC2\ETX@\ETB\CAN\n\
    \\197\STX\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\SOH\DC2\ETXH\EOT\CAN\SUB\181\STX OCSP responses are optional. If an OCSP response is absent,\n\
    \ the associated certificate will be used without an\n\
    \ OCSP staple. If a response is provided but is expired,\n\
    \ the associated certificate will not be used for\n\
    \ subsequent connections. If no suitable certificate is found,\n\
    \ the connection is rejected.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\SOH\DC2\ETXH\EOT\DC3\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\STX\DC2\ETXH\SYN\ETB\n\
    \\146\STX\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\STX\DC2\ETXO\EOT\DC4\SUB\130\STX OCSP responses are required. Configuration will fail if\n\
    \ a certificate is provided without an OCSP response. If a\n\
    \ response expires, the associated certificate will not be\n\
    \ used connections. If no suitable certificate is found, the\n\
    \ connection is rejected.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\SOH\DC2\ETXO\EOT\SI\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\STX\DC2\ETXO\DC2\DC3\n\
    \+\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXS\STX*\SUB\RS Common TLS context settings.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXS\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXS\DC3%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXS()\n\
    \_\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXW\STX;\SUBR If specified, Envoy will reject connections without a valid client\n\
    \ certificate.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXW\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXW\FS6\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXW9:\n\
    \v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX[\STX,\SUBi If specified, Envoy will reject connections without a valid and matching SNI.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX[\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX[\FS'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX[*+\n\
    \\f\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOT]\STXm\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETX]\b \n\
    \/\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX_\EOT1\SUB\" TLS session ticket key settings.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETX_\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX_\EM,\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX_/0\n\
    \G\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETXb\EOT>\SUB: Config for fetching TLS session ticket keys via SDS API.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETXb\EOT\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETXb\DC49\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETXb<=\n\
    \\147\a\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETXl\EOT2\SUB\133\a Config for controlling stateless TLS session resumption: setting this to true will cause the TLS\n\
    \ server to not issue TLS session tickets for the purposes of stateless TLS session resumption.\n\
    \ If set to false, the TLS server will issue TLS session tickets and encrypt/decrypt them using\n\
    \ the keys specified through either :ref:`session_ticket_keys <envoy_v3_api_field_extensions.transport_sockets.tls.v3.DownstreamTlsContext.session_ticket_keys>`\n\
    \ or :ref:`session_ticket_keys_sds_secret_config <envoy_v3_api_field_extensions.transport_sockets.tls.v3.DownstreamTlsContext.session_ticket_keys_sds_secret_config>`.\n\
    \ If this config is set to false and no keys are explicitly configured, the TLS server will issue\n\
    \ TLS session tickets and encrypt/decrypt them using an internally-generated and managed key, with the\n\
    \ implication that sessions cannot be resumed across hot restarts or on different hosts.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETXl\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETXl\t-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETXl01\n\
    \\192\STX\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\EOTs\STXv\ENQ\SUB\177\STX If specified, session_timeout will change maximum lifetime (in seconds) of TLS session\n\
    \ Currently this value is used as a hint to `TLS session ticket lifetime (for TLSv1.2)\n\
    \ <https://tools.ietf.org/html/rfc5077#section-5.6>`\n\
    \ only seconds could be specified (fractional seconds are going to be ignored).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\ETXs\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETXs\ESC*\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETXs-.\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\b\DC2\EOTs/v\EOT\n\
    \\DLE\n\
    \\b\EOT\SOH\STX\ACK\b\175\b\NAK\DC2\EOTs0v\ETX\n\
    \\174\SOH\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETX{\STXY\SUB\160\SOH Config for whether to use certificates if they do not have\n\
    \ an accompanying OCSP response or if the response expires at runtime.\n\
    \ Defaults to LENIENT_STAPLING\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ACK\DC2\ETX{\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETX{\DC3%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETX{()\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\b\DC2\ETX{*X\n\
    \\SI\n\
    \\b\EOT\SOH\STX\a\b\175\b\DLE\DC2\ETX{+W\n\
    \b\n\
    \\STX\EOT\STX\DC2\ACK\128\SOH\NUL\148\STX\SOH\SUBT TLS context shared by both client and server TLS contexts.\n\
    \ [#next-free-field: 14]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\128\SOH\b\CAN\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOT\129\SOH\STXd\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOT\129\SOH\STXd\n\
    \\203\SOH\n\
    \\EOT\EOT\STX\ETX\NUL\DC2\ACK\133\SOH\STX\149\SOH\ETX\SUB\186\SOH Config for Certificate provider to get certificates. This provider should allow certificates to be\n\
    \ fetched/refreshed over the network asynchronously with respect to the TLS handshake.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\ETX\NUL\SOH\DC2\EOT\133\SOH\n\
    \\GS\n\
    \\195\SOH\n\
    \\ACK\EOT\STX\ETX\NUL\STX\NUL\DC2\EOT\136\SOH\EOT=\SUB\178\SOH opaque name used to specify certificate instances or types. For example, \"ROOTCA\" to specify\n\
    \ a root-certificate (validation context) or \"TLS\" to specify a new tls-certificate.\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ENQ\DC2\EOT\136\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\SOH\DC2\EOT\136\SOH\v\SI\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ETX\DC2\EOT\136\SOH\DC2\DC3\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\b\DC2\EOT\136\SOH\DC4<\n\
    \\DC2\n\
    \\n\
    \\EOT\STX\ETX\NUL\STX\NUL\b\175\b\SO\DC2\EOT\136\SOH\NAK;\n\
    \\155\ETX\n\
    \\ACK\EOT\STX\ETX\NUL\b\NUL\DC2\ACK\144\SOH\EOT\148\SOH\ENQ\SUB\136\ETX Provider specific config.\n\
    \ Note: an implementation is expected to dedup multiple instances of the same config\n\
    \ to maintain a single certificate-provider instance. The sharing can happen, for\n\
    \ example, among multiple clusters or between the tls_certificate and validation_context\n\
    \ certificate providers of a cluster.\n\
    \ This config could be supplied inline or (in future) a named xDS resource.\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\b\NUL\SOH\DC2\EOT\144\SOH\n\
    \\DLE\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\b\NUL\STX\DC2\EOT\145\SOH\ACK(\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\NUL\b\NUL\STX\175\b\DC2\EOT\145\SOH\ACK(\n\
    \\SO\n\
    \\ACK\EOT\STX\ETX\NUL\STX\SOH\DC2\EOT\147\SOH\ACK;\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\ACK\DC2\EOT\147\SOH\ACK)\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\SOH\DC2\EOT\147\SOH*6\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\ETX\DC2\EOT\147\SOH9:\n\
    \\173\SOH\n\
    \\EOT\EOT\STX\ETX\SOH\DC2\ACK\153\SOH\STX\169\SOH\ETX\SUB\156\SOH Similar to CertificateProvider above, but allows the provider instances to be configured on\n\
    \ the client side instead of being sent from the control plane.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\ETX\SOH\SOH\DC2\EOT\153\SOH\n\
    \%\n\
    \\181\EOT\n\
    \\ACK\EOT\STX\ETX\SOH\STX\NUL\DC2\EOT\162\SOH\EOT\GS\SUB\164\EOT Provider instance name. This name must be defined in the client's configuration (e.g., a\n\
    \ bootstrap file) to correspond to a provider instance (i.e., the same data in the typed_config\n\
    \ field that would be sent in the CertificateProvider message if the config was sent by the\n\
    \ control plane). If not present, defaults to \"default\".\n\
    \\n\
    \ Instance names should generally be defined not in terms of the underlying provider\n\
    \ implementation (e.g., \"file_watcher\") but rather in terms of the function of the\n\
    \ certificates (e.g., \"foo_deployment_identity\").\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\ENQ\DC2\EOT\162\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\SOH\DC2\EOT\162\SOH\v\CAN\n\
    \\SI\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\ETX\DC2\EOT\162\SOH\ESC\FS\n\
    \\193\STX\n\
    \\ACK\EOT\STX\ETX\SOH\STX\SOH\DC2\EOT\168\SOH\EOT \SUB\176\STX Opaque name used to specify certificate instances or types. For example, \"ROOTCA\" to specify\n\
    \ a root-certificate (validation context) or \"example.com\" to specify a certificate for a\n\
    \ particular domain. Not all provider instances will actually use this field, so the value\n\
    \ defaults to the empty string.\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\SOH\STX\SOH\ENQ\DC2\EOT\168\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\SOH\STX\SOH\SOH\DC2\EOT\168\SOH\v\ESC\n\
    \\SI\n\
    \\a\EOT\STX\ETX\SOH\STX\SOH\ETX\DC2\EOT\168\SOH\RS\US\n\
    \\SO\n\
    \\EOT\EOT\STX\ETX\STX\DC2\ACK\171\SOH\STX\201\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\STX\ETX\STX\SOH\DC2\EOT\171\SOH\n\
    \.\n\
    \\SI\n\
    \\ENQ\EOT\STX\ETX\STX\a\DC2\ACK\172\SOH\EOT\173\SOHR\n\
    \\DC4\n\
    \\n\
    \\EOT\STX\ETX\STX\a\211\136\225\ETX\SOH\DC2\ACK\172\SOH\EOT\173\SOHR\n\
    \6\n\
    \\ACK\EOT\STX\ETX\STX\STX\NUL\DC2\ACK\176\SOH\EOT\177\SOH6\SUB$ How to validate peer certificates.\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\STX\STX\NUL\ACK\DC2\EOT\176\SOH\EOT \n\
    \\SI\n\
    \\a\EOT\STX\ETX\STX\STX\NUL\SOH\DC2\EOT\176\SOH!;\n\
    \\SI\n\
    \\a\EOT\STX\ETX\STX\STX\NUL\ETX\DC2\EOT\176\SOH>?\n\
    \\SI\n\
    \\a\EOT\STX\ETX\STX\STX\NUL\b\DC2\EOT\177\SOH\b5\n\
    \\DC2\n\
    \\n\
    \\EOT\STX\ETX\STX\STX\NUL\b\175\b\DC1\DC2\EOT\177\SOH\t4\n\
    \\227\STX\n\
    \\ACK\EOT\STX\ETX\STX\STX\SOH\DC2\ACK\183\SOH\EOT\186\SOH\ACK\SUB\208\STX Config for fetching validation context via SDS API. Note SDS API allows certificates to be\n\
    \ fetched/refreshed over the network asynchronously with respect to the TLS handshake.\n\
    \ Only one of validation_context_sds_secret_config, validation_context_certificate_provider,\n\
    \ or validation_context_certificate_provider_instance may be used.\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\STX\STX\SOH\ACK\DC2\EOT\183\SOH\EOT\DC3\n\
    \\SI\n\
    \\a\EOT\STX\ETX\STX\STX\SOH\SOH\DC2\EOT\183\SOH\DC48\n\
    \\SI\n\
    \\a\EOT\STX\ETX\STX\STX\SOH\ETX\DC2\EOT\183\SOH;<\n\
    \\DC1\n\
    \\a\EOT\STX\ETX\STX\STX\SOH\b\DC2\ACK\183\SOH=\186\SOH\ENQ\n\
    \\DC2\n\
    \\n\
    \\EOT\STX\ETX\STX\STX\SOH\b\175\b\DC1\DC2\EOT\184\SOH\ACK1\n\
    \\DC4\n\
    \\f\EOT\STX\ETX\STX\STX\SOH\b\142\227\255Q\STX\DC2\EOT\185\SOH\ACKU\n\
    \\130\STX\n\
    \\ACK\EOT\STX\ETX\STX\STX\STX\DC2\ACK\192\SOH\EOT\193\SOHZ\SUB\239\SOH Certificate provider for fetching validation context.\n\
    \ Only one of validation_context_sds_secret_config, validation_context_certificate_provider,\n\
    \ or validation_context_certificate_provider_instance may be used.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\STX\STX\STX\ACK\DC2\EOT\192\SOH\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\STX\ETX\STX\STX\STX\SOH\DC2\EOT\192\SOH\CAN?\n\
    \\SI\n\
    \\a\EOT\STX\ETX\STX\STX\STX\ETX\DC2\EOT\192\SOHBC\n\
    \\SI\n\
    \\a\EOT\STX\ETX\STX\STX\STX\b\DC2\EOT\193\SOH\bY\n\
    \\DC4\n\
    \\f\EOT\STX\ETX\STX\STX\STX\b\142\227\255Q\STX\DC2\EOT\193\SOH\tX\n\
    \\139\STX\n\
    \\ACK\EOT\STX\ETX\STX\STX\ETX\DC2\ACK\199\SOH\EOT\200\SOHZ\SUB\248\SOH Certificate provider instance for fetching validation context.\n\
    \ Only one of validation_context_sds_secret_config, validation_context_certificate_provider,\n\
    \ or validation_context_certificate_provider_instance may be used.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\STX\STX\ETX\ACK\DC2\EOT\199\SOH\EOT\US\n\
    \\SI\n\
    \\a\EOT\STX\ETX\STX\STX\ETX\SOH\DC2\EOT\199\SOH P\n\
    \\SI\n\
    \\a\EOT\STX\ETX\STX\STX\ETX\ETX\DC2\EOT\199\SOHST\n\
    \\SI\n\
    \\a\EOT\STX\ETX\STX\STX\ETX\b\DC2\EOT\200\SOH\bY\n\
    \\DC4\n\
    \\f\EOT\STX\ETX\STX\STX\ETX\b\142\227\255Q\STX\DC2\EOT\200\SOH\tX\n\
    \\v\n\
    \\ETX\EOT\STX\t\DC2\EOT\203\SOH\STX\r\n\
    \\f\n\
    \\EOT\EOT\STX\t\NUL\DC2\EOT\203\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\STX\t\NUL\SOH\DC2\EOT\203\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\STX\t\NUL\STX\DC2\EOT\203\SOH\v\f\n\
    \9\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\206\SOH\STX\US\SUB+ TLS protocol versions, cipher suites etc.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\EOT\206\SOH\STX\SI\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\206\SOH\DLE\SUB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\206\SOH\GS\RS\n\
    \\135\ETX\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\214\SOH\STX/\SUB\248\STX :ref:`Multiple TLS certificates <arch_overview_ssl_cert_select>` can be associated with the\n\
    \ same context to allow both RSA and ECDSA certificates.\n\
    \\n\
    \ Only a single TLS certificate is supported in client contexts. In server contexts, the first\n\
    \ RSA certificate is used for clients that only support RSA and the first ECDSA certificate is\n\
    \ used for clients that support ECDSA.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\EOT\214\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\EOT\214\SOH\v\EM\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\214\SOH\SUB*\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\214\SOH-.\n\
    \\195\EOT\n\
    \\EOT\EOT\STX\STX\STX\DC2\ACK\224\SOH\STX\225\SOH3\SUB\178\EOT Configs for fetching TLS certificates via SDS API. Note SDS API allows certificates to be\n\
    \ fetched/refreshed over the network asynchronously with respect to the TLS handshake.\n\
    \\n\
    \ The same number and types of certificates as :ref:`tls_certificates <envoy_v3_api_field_extensions.transport_sockets.tls.v3.CommonTlsContext.tls_certificates>`\n\
    \ are valid in the the certificates fetched through this setting.\n\
    \\n\
    \ If :ref:`tls_certificates <envoy_v3_api_field_extensions.transport_sockets.tls.v3.CommonTlsContext.tls_certificates>`\n\
    \ is non-empty, this field is ignored.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\EOT\224\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\EOT\224\SOH\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\224\SOH\ESC=\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\224\SOH@A\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\b\DC2\EOT\225\SOH\ACK2\n\
    \\DLE\n\
    \\b\EOT\STX\STX\STX\b\175\b\DC2\DC2\EOT\225\SOH\a1\n\
    \]\n\
    \\EOT\EOT\STX\STX\ETX\DC2\EOT\229\SOH\STX?\SUBO Certificate provider for fetching TLS certificates.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\EOT\229\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\EOT\229\SOH\SYN:\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\EOT\229\SOH=>\n\
    \f\n\
    \\EOT\EOT\STX\STX\EOT\DC2\EOT\233\SOH\STXQ\SUBX Certificate provider instance for fetching TLS certificates.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\EOT\233\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\EOT\233\SOH\RSK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\EOT\233\SOHNP\n\
    \\SO\n\
    \\EOT\EOT\STX\b\NUL\DC2\ACK\235\SOH\STX\131\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\STX\b\NUL\SOH\DC2\EOT\235\SOH\b\US\n\
    \2\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\EOT\237\SOH\EOT8\SUB$ How to validate peer certificates.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\ACK\DC2\EOT\237\SOH\EOT \n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\EOT\237\SOH!3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\EOT\237\SOH67\n\
    \\193\SOH\n\
    \\EOT\EOT\STX\STX\ACK\DC2\EOT\241\SOH\EOT=\SUB\178\SOH Config for fetching validation context via SDS API. Note SDS API allows certificates to be\n\
    \ fetched/refreshed over the network asynchronously with respect to the TLS handshake.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\ACK\DC2\EOT\241\SOH\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\EOT\241\SOH\DC48\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\EOT\241\SOH;<\n\
    \\193\EOT\n\
    \\EOT\EOT\STX\STX\a\DC2\EOT\250\SOH\EOTI\SUB\178\EOT Combined certificate validation context holds a default CertificateValidationContext\n\
    \ and SDS config. When SDS server returns dynamic CertificateValidationContext, both dynamic\n\
    \ and default CertificateValidationContext are merged into a new CertificateValidationContext\n\
    \ for validation. This merge is done by Message::MergeFrom(), so dynamic\n\
    \ CertificateValidationContext overwrites singular fields in default\n\
    \ CertificateValidationContext, and concatenates repeated fields to default\n\
    \ CertificateValidationContext, and logical OR is applied to boolean fields.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\ACK\DC2\EOT\250\SOH\EOT(\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\EOT\250\SOH)D\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\EOT\250\SOHGH\n\
    \_\n\
    \\EOT\EOT\STX\STX\b\DC2\EOT\254\SOH\EOTE\SUBQ Certificate provider for fetching validation context.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\b\ACK\DC2\EOT\254\SOH\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\b\SOH\DC2\EOT\254\SOH\CAN?\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\b\ETX\DC2\EOT\254\SOHBD\n\
    \h\n\
    \\EOT\EOT\STX\STX\t\DC2\EOT\130\STX\EOTV\SUBZ Certificate provider instance for fetching validation context.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\t\ACK\DC2\EOT\130\STX\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\t\SOH\DC2\EOT\130\STX P\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\t\ETX\DC2\EOT\130\STXSU\n\
    \\187\EOT\n\
    \\EOT\EOT\STX\STX\n\
    \\DC2\EOT\143\STX\STX%\SUB\172\EOT Supplies the list of ALPN protocols that the listener should expose. In\n\
    \ practice this is likely to be set to one of two values (see the\n\
    \ :ref:`codec_type\n\
    \ <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.codec_type>`\n\
    \ parameter in the HTTP connection manager for more information):\n\
    \\n\
    \ * \"h2,http/1.1\" If the listener is going to support both HTTP/2 and HTTP/1.1.\n\
    \ * \"http/1.1\" If the listener is only going to support HTTP/1.1.\n\
    \\n\
    \ There is no default for this parameter. If empty, Envoy will not expose ALPN.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\n\
    \\EOT\DC2\EOT\143\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\n\
    \\ENQ\DC2\EOT\143\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\n\
    \\SOH\DC2\EOT\143\STX\DC2 \n\
    \\r\n\
    \\ENQ\EOT\STX\STX\n\
    \\ETX\DC2\EOT\143\STX#$\n\
    \^\n\
    \\EOT\EOT\STX\STX\v\DC2\EOT\147\STX\STX=\SUBP Custom TLS handshaker. If empty, defaults to native TLS handshaking\n\
    \ behavior.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\v\ACK\DC2\EOT\147\STX\STX%\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\v\SOH\DC2\EOT\147\STX&7\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\v\ETX\DC2\EOT\147\STX:<b\ACKproto3"