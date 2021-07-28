{- This file was auto-generated from envoy/extensions/filters/network/http_connection_manager/v3/http_connection_manager.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager (
        HttpConnectionManager(), HttpConnectionManager'RouteSpecifier(..),
        HttpConnectionManager'StripPortMode(..),
        _HttpConnectionManager'Rds, _HttpConnectionManager'RouteConfig,
        _HttpConnectionManager'ScopedRoutes,
        _HttpConnectionManager'StripAnyHostPort,
        HttpConnectionManager'CodecType(..),
        HttpConnectionManager'CodecType(),
        HttpConnectionManager'CodecType'UnrecognizedValue,
        HttpConnectionManager'ForwardClientCertDetails(..),
        HttpConnectionManager'ForwardClientCertDetails(),
        HttpConnectionManager'ForwardClientCertDetails'UnrecognizedValue,
        HttpConnectionManager'InternalAddressConfig(),
        HttpConnectionManager'PathNormalizationOptions(),
        HttpConnectionManager'PathWithEscapedSlashesAction(..),
        HttpConnectionManager'PathWithEscapedSlashesAction(),
        HttpConnectionManager'PathWithEscapedSlashesAction'UnrecognizedValue,
        HttpConnectionManager'ServerHeaderTransformation(..),
        HttpConnectionManager'ServerHeaderTransformation(),
        HttpConnectionManager'ServerHeaderTransformation'UnrecognizedValue,
        HttpConnectionManager'SetCurrentClientCertDetails(),
        HttpConnectionManager'Tracing(),
        HttpConnectionManager'Tracing'OperationName(..),
        HttpConnectionManager'Tracing'OperationName(),
        HttpConnectionManager'Tracing'OperationName'UnrecognizedValue,
        HttpConnectionManager'UpgradeConfig(), HttpFilter(),
        HttpFilter'ConfigType(..), _HttpFilter'TypedConfig,
        _HttpFilter'ConfigDiscovery, LocalReplyConfig(), Rds(),
        RequestIDExtension(), ResponseMapper(), ScopedRds(),
        ScopedRouteConfigurationsList(), ScopedRoutes(),
        ScopedRoutes'ConfigSpecifier(..),
        _ScopedRoutes'ScopedRouteConfigurationsList,
        _ScopedRoutes'ScopedRds, ScopedRoutes'ScopeKeyBuilder(),
        ScopedRoutes'ScopeKeyBuilder'FragmentBuilder(),
        ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'Type(..),
        _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor',
        ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor(),
        ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'ExtractType(..),
        _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Index,
        _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Element,
        ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement()
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
import qualified Proto.Envoy.Annotations.Deprecation
import qualified Proto.Envoy.Config.Accesslog.V3.Accesslog
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.ConfigSource
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Envoy.Config.Core.V3.Protocol
import qualified Proto.Envoy.Config.Core.V3.SubstitutionFormatString
import qualified Proto.Envoy.Config.Route.V3.Route
import qualified Proto.Envoy.Config.Route.V3.ScopedRoute
import qualified Proto.Envoy.Config.Trace.V3.HttpTracer
import qualified Proto.Envoy.Type.Http.V3.PathTransformation
import qualified Proto.Envoy.Type.Tracing.V3.CustomTag
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Security
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.codecType' @:: Lens' HttpConnectionManager HttpConnectionManager'CodecType@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.statPrefix' @:: Lens' HttpConnectionManager Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.httpFilters' @:: Lens' HttpConnectionManager [HttpFilter]@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.vec'httpFilters' @:: Lens' HttpConnectionManager (Data.Vector.Vector HttpFilter)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.addUserAgent' @:: Lens' HttpConnectionManager Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'addUserAgent' @:: Lens' HttpConnectionManager (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.tracing' @:: Lens' HttpConnectionManager HttpConnectionManager'Tracing@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'tracing' @:: Lens' HttpConnectionManager (Prelude.Maybe HttpConnectionManager'Tracing)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.commonHttpProtocolOptions' @:: Lens' HttpConnectionManager Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'commonHttpProtocolOptions' @:: Lens' HttpConnectionManager (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.httpProtocolOptions' @:: Lens' HttpConnectionManager Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'httpProtocolOptions' @:: Lens' HttpConnectionManager (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.http2ProtocolOptions' @:: Lens' HttpConnectionManager Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'http2ProtocolOptions' @:: Lens' HttpConnectionManager (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.http3ProtocolOptions' @:: Lens' HttpConnectionManager Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'http3ProtocolOptions' @:: Lens' HttpConnectionManager (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.serverName' @:: Lens' HttpConnectionManager Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.serverHeaderTransformation' @:: Lens' HttpConnectionManager HttpConnectionManager'ServerHeaderTransformation@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.schemeHeaderTransformation' @:: Lens' HttpConnectionManager Proto.Envoy.Config.Core.V3.Protocol.SchemeHeaderTransformation@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'schemeHeaderTransformation' @:: Lens' HttpConnectionManager (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.SchemeHeaderTransformation)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maxRequestHeadersKb' @:: Lens' HttpConnectionManager Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'maxRequestHeadersKb' @:: Lens' HttpConnectionManager (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.streamIdleTimeout' @:: Lens' HttpConnectionManager Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'streamIdleTimeout' @:: Lens' HttpConnectionManager (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.requestTimeout' @:: Lens' HttpConnectionManager Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'requestTimeout' @:: Lens' HttpConnectionManager (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.requestHeadersTimeout' @:: Lens' HttpConnectionManager Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'requestHeadersTimeout' @:: Lens' HttpConnectionManager (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.drainTimeout' @:: Lens' HttpConnectionManager Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'drainTimeout' @:: Lens' HttpConnectionManager (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.delayedCloseTimeout' @:: Lens' HttpConnectionManager Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'delayedCloseTimeout' @:: Lens' HttpConnectionManager (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.accessLog' @:: Lens' HttpConnectionManager [Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog]@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.vec'accessLog' @:: Lens' HttpConnectionManager (Data.Vector.Vector Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.useRemoteAddress' @:: Lens' HttpConnectionManager Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'useRemoteAddress' @:: Lens' HttpConnectionManager (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.xffNumTrustedHops' @:: Lens' HttpConnectionManager Data.Word.Word32@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.originalIpDetectionExtensions' @:: Lens' HttpConnectionManager [Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig]@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.vec'originalIpDetectionExtensions' @:: Lens' HttpConnectionManager (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.internalAddressConfig' @:: Lens' HttpConnectionManager HttpConnectionManager'InternalAddressConfig@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'internalAddressConfig' @:: Lens' HttpConnectionManager (Prelude.Maybe HttpConnectionManager'InternalAddressConfig)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.skipXffAppend' @:: Lens' HttpConnectionManager Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.via' @:: Lens' HttpConnectionManager Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.generateRequestId' @:: Lens' HttpConnectionManager Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'generateRequestId' @:: Lens' HttpConnectionManager (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.preserveExternalRequestId' @:: Lens' HttpConnectionManager Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.alwaysSetRequestIdInResponse' @:: Lens' HttpConnectionManager Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.forwardClientCertDetails' @:: Lens' HttpConnectionManager HttpConnectionManager'ForwardClientCertDetails@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.setCurrentClientCertDetails' @:: Lens' HttpConnectionManager HttpConnectionManager'SetCurrentClientCertDetails@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'setCurrentClientCertDetails' @:: Lens' HttpConnectionManager (Prelude.Maybe HttpConnectionManager'SetCurrentClientCertDetails)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.proxy100Continue' @:: Lens' HttpConnectionManager Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.representIpv4RemoteAddressAsIpv4MappedIpv6' @:: Lens' HttpConnectionManager Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.upgradeConfigs' @:: Lens' HttpConnectionManager [HttpConnectionManager'UpgradeConfig]@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.vec'upgradeConfigs' @:: Lens' HttpConnectionManager (Data.Vector.Vector HttpConnectionManager'UpgradeConfig)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.normalizePath' @:: Lens' HttpConnectionManager Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'normalizePath' @:: Lens' HttpConnectionManager (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.mergeSlashes' @:: Lens' HttpConnectionManager Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.pathWithEscapedSlashesAction' @:: Lens' HttpConnectionManager HttpConnectionManager'PathWithEscapedSlashesAction@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.requestIdExtension' @:: Lens' HttpConnectionManager RequestIDExtension@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'requestIdExtension' @:: Lens' HttpConnectionManager (Prelude.Maybe RequestIDExtension)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.localReplyConfig' @:: Lens' HttpConnectionManager LocalReplyConfig@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'localReplyConfig' @:: Lens' HttpConnectionManager (Prelude.Maybe LocalReplyConfig)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.stripMatchingHostPort' @:: Lens' HttpConnectionManager Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.streamErrorOnInvalidHttpMessage' @:: Lens' HttpConnectionManager Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'streamErrorOnInvalidHttpMessage' @:: Lens' HttpConnectionManager (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.pathNormalizationOptions' @:: Lens' HttpConnectionManager HttpConnectionManager'PathNormalizationOptions@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'pathNormalizationOptions' @:: Lens' HttpConnectionManager (Prelude.Maybe HttpConnectionManager'PathNormalizationOptions)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.stripTrailingHostDot' @:: Lens' HttpConnectionManager Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'routeSpecifier' @:: Lens' HttpConnectionManager (Prelude.Maybe HttpConnectionManager'RouteSpecifier)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'rds' @:: Lens' HttpConnectionManager (Prelude.Maybe Rds)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.rds' @:: Lens' HttpConnectionManager Rds@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'routeConfig' @:: Lens' HttpConnectionManager (Prelude.Maybe Proto.Envoy.Config.Route.V3.Route.RouteConfiguration)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.routeConfig' @:: Lens' HttpConnectionManager Proto.Envoy.Config.Route.V3.Route.RouteConfiguration@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'scopedRoutes' @:: Lens' HttpConnectionManager (Prelude.Maybe ScopedRoutes)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.scopedRoutes' @:: Lens' HttpConnectionManager ScopedRoutes@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'stripPortMode' @:: Lens' HttpConnectionManager (Prelude.Maybe HttpConnectionManager'StripPortMode)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'stripAnyHostPort' @:: Lens' HttpConnectionManager (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.stripAnyHostPort' @:: Lens' HttpConnectionManager Prelude.Bool@ -}
data HttpConnectionManager
  = HttpConnectionManager'_constructor {_HttpConnectionManager'codecType :: !HttpConnectionManager'CodecType,
                                        _HttpConnectionManager'statPrefix :: !Data.Text.Text,
                                        _HttpConnectionManager'httpFilters :: !(Data.Vector.Vector HttpFilter),
                                        _HttpConnectionManager'addUserAgent :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                        _HttpConnectionManager'tracing :: !(Prelude.Maybe HttpConnectionManager'Tracing),
                                        _HttpConnectionManager'commonHttpProtocolOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions),
                                        _HttpConnectionManager'httpProtocolOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions),
                                        _HttpConnectionManager'http2ProtocolOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions),
                                        _HttpConnectionManager'http3ProtocolOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions),
                                        _HttpConnectionManager'serverName :: !Data.Text.Text,
                                        _HttpConnectionManager'serverHeaderTransformation :: !HttpConnectionManager'ServerHeaderTransformation,
                                        _HttpConnectionManager'schemeHeaderTransformation :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.SchemeHeaderTransformation),
                                        _HttpConnectionManager'maxRequestHeadersKb :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                        _HttpConnectionManager'streamIdleTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _HttpConnectionManager'requestTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _HttpConnectionManager'requestHeadersTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _HttpConnectionManager'drainTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _HttpConnectionManager'delayedCloseTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _HttpConnectionManager'accessLog :: !(Data.Vector.Vector Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog),
                                        _HttpConnectionManager'useRemoteAddress :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                        _HttpConnectionManager'xffNumTrustedHops :: !Data.Word.Word32,
                                        _HttpConnectionManager'originalIpDetectionExtensions :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                                        _HttpConnectionManager'internalAddressConfig :: !(Prelude.Maybe HttpConnectionManager'InternalAddressConfig),
                                        _HttpConnectionManager'skipXffAppend :: !Prelude.Bool,
                                        _HttpConnectionManager'via :: !Data.Text.Text,
                                        _HttpConnectionManager'generateRequestId :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                        _HttpConnectionManager'preserveExternalRequestId :: !Prelude.Bool,
                                        _HttpConnectionManager'alwaysSetRequestIdInResponse :: !Prelude.Bool,
                                        _HttpConnectionManager'forwardClientCertDetails :: !HttpConnectionManager'ForwardClientCertDetails,
                                        _HttpConnectionManager'setCurrentClientCertDetails :: !(Prelude.Maybe HttpConnectionManager'SetCurrentClientCertDetails),
                                        _HttpConnectionManager'proxy100Continue :: !Prelude.Bool,
                                        _HttpConnectionManager'representIpv4RemoteAddressAsIpv4MappedIpv6 :: !Prelude.Bool,
                                        _HttpConnectionManager'upgradeConfigs :: !(Data.Vector.Vector HttpConnectionManager'UpgradeConfig),
                                        _HttpConnectionManager'normalizePath :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                        _HttpConnectionManager'mergeSlashes :: !Prelude.Bool,
                                        _HttpConnectionManager'pathWithEscapedSlashesAction :: !HttpConnectionManager'PathWithEscapedSlashesAction,
                                        _HttpConnectionManager'requestIdExtension :: !(Prelude.Maybe RequestIDExtension),
                                        _HttpConnectionManager'localReplyConfig :: !(Prelude.Maybe LocalReplyConfig),
                                        _HttpConnectionManager'stripMatchingHostPort :: !Prelude.Bool,
                                        _HttpConnectionManager'streamErrorOnInvalidHttpMessage :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                        _HttpConnectionManager'pathNormalizationOptions :: !(Prelude.Maybe HttpConnectionManager'PathNormalizationOptions),
                                        _HttpConnectionManager'stripTrailingHostDot :: !Prelude.Bool,
                                        _HttpConnectionManager'routeSpecifier :: !(Prelude.Maybe HttpConnectionManager'RouteSpecifier),
                                        _HttpConnectionManager'stripPortMode :: !(Prelude.Maybe HttpConnectionManager'StripPortMode),
                                        _HttpConnectionManager'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpConnectionManager where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data HttpConnectionManager'RouteSpecifier
  = HttpConnectionManager'Rds !Rds |
    HttpConnectionManager'RouteConfig !Proto.Envoy.Config.Route.V3.Route.RouteConfiguration |
    HttpConnectionManager'ScopedRoutes !ScopedRoutes
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
data HttpConnectionManager'StripPortMode
  = HttpConnectionManager'StripAnyHostPort !Prelude.Bool
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "codecType" HttpConnectionManager'CodecType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'codecType
           (\ x__ y__ -> x__ {_HttpConnectionManager'codecType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'statPrefix
           (\ x__ y__ -> x__ {_HttpConnectionManager'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "httpFilters" [HttpFilter] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'httpFilters
           (\ x__ y__ -> x__ {_HttpConnectionManager'httpFilters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HttpConnectionManager "vec'httpFilters" (Data.Vector.Vector HttpFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'httpFilters
           (\ x__ y__ -> x__ {_HttpConnectionManager'httpFilters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "addUserAgent" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'addUserAgent
           (\ x__ y__ -> x__ {_HttpConnectionManager'addUserAgent = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'addUserAgent" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'addUserAgent
           (\ x__ y__ -> x__ {_HttpConnectionManager'addUserAgent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "tracing" HttpConnectionManager'Tracing where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'tracing
           (\ x__ y__ -> x__ {_HttpConnectionManager'tracing = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'tracing" (Prelude.Maybe HttpConnectionManager'Tracing) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'tracing
           (\ x__ y__ -> x__ {_HttpConnectionManager'tracing = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "commonHttpProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'commonHttpProtocolOptions
           (\ x__ y__
              -> x__ {_HttpConnectionManager'commonHttpProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'commonHttpProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'commonHttpProtocolOptions
           (\ x__ y__
              -> x__ {_HttpConnectionManager'commonHttpProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "httpProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'httpProtocolOptions
           (\ x__ y__
              -> x__ {_HttpConnectionManager'httpProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'httpProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'httpProtocolOptions
           (\ x__ y__
              -> x__ {_HttpConnectionManager'httpProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "http2ProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'http2ProtocolOptions
           (\ x__ y__
              -> x__ {_HttpConnectionManager'http2ProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'http2ProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'http2ProtocolOptions
           (\ x__ y__
              -> x__ {_HttpConnectionManager'http2ProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "http3ProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'http3ProtocolOptions
           (\ x__ y__
              -> x__ {_HttpConnectionManager'http3ProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'http3ProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'http3ProtocolOptions
           (\ x__ y__
              -> x__ {_HttpConnectionManager'http3ProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "serverName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'serverName
           (\ x__ y__ -> x__ {_HttpConnectionManager'serverName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "serverHeaderTransformation" HttpConnectionManager'ServerHeaderTransformation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'serverHeaderTransformation
           (\ x__ y__
              -> x__ {_HttpConnectionManager'serverHeaderTransformation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "schemeHeaderTransformation" Proto.Envoy.Config.Core.V3.Protocol.SchemeHeaderTransformation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'schemeHeaderTransformation
           (\ x__ y__
              -> x__ {_HttpConnectionManager'schemeHeaderTransformation = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'schemeHeaderTransformation" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.SchemeHeaderTransformation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'schemeHeaderTransformation
           (\ x__ y__
              -> x__ {_HttpConnectionManager'schemeHeaderTransformation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maxRequestHeadersKb" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'maxRequestHeadersKb
           (\ x__ y__
              -> x__ {_HttpConnectionManager'maxRequestHeadersKb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'maxRequestHeadersKb" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'maxRequestHeadersKb
           (\ x__ y__
              -> x__ {_HttpConnectionManager'maxRequestHeadersKb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "streamIdleTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'streamIdleTimeout
           (\ x__ y__
              -> x__ {_HttpConnectionManager'streamIdleTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'streamIdleTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'streamIdleTimeout
           (\ x__ y__
              -> x__ {_HttpConnectionManager'streamIdleTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "requestTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'requestTimeout
           (\ x__ y__ -> x__ {_HttpConnectionManager'requestTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'requestTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'requestTimeout
           (\ x__ y__ -> x__ {_HttpConnectionManager'requestTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "requestHeadersTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'requestHeadersTimeout
           (\ x__ y__
              -> x__ {_HttpConnectionManager'requestHeadersTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'requestHeadersTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'requestHeadersTimeout
           (\ x__ y__
              -> x__ {_HttpConnectionManager'requestHeadersTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "drainTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'drainTimeout
           (\ x__ y__ -> x__ {_HttpConnectionManager'drainTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'drainTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'drainTimeout
           (\ x__ y__ -> x__ {_HttpConnectionManager'drainTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "delayedCloseTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'delayedCloseTimeout
           (\ x__ y__
              -> x__ {_HttpConnectionManager'delayedCloseTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'delayedCloseTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'delayedCloseTimeout
           (\ x__ y__
              -> x__ {_HttpConnectionManager'delayedCloseTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "accessLog" [Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'accessLog
           (\ x__ y__ -> x__ {_HttpConnectionManager'accessLog = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HttpConnectionManager "vec'accessLog" (Data.Vector.Vector Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'accessLog
           (\ x__ y__ -> x__ {_HttpConnectionManager'accessLog = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "useRemoteAddress" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'useRemoteAddress
           (\ x__ y__ -> x__ {_HttpConnectionManager'useRemoteAddress = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'useRemoteAddress" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'useRemoteAddress
           (\ x__ y__ -> x__ {_HttpConnectionManager'useRemoteAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "xffNumTrustedHops" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'xffNumTrustedHops
           (\ x__ y__
              -> x__ {_HttpConnectionManager'xffNumTrustedHops = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "originalIpDetectionExtensions" [Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'originalIpDetectionExtensions
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'originalIpDetectionExtensions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HttpConnectionManager "vec'originalIpDetectionExtensions" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'originalIpDetectionExtensions
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'originalIpDetectionExtensions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "internalAddressConfig" HttpConnectionManager'InternalAddressConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'internalAddressConfig
           (\ x__ y__
              -> x__ {_HttpConnectionManager'internalAddressConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'internalAddressConfig" (Prelude.Maybe HttpConnectionManager'InternalAddressConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'internalAddressConfig
           (\ x__ y__
              -> x__ {_HttpConnectionManager'internalAddressConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "skipXffAppend" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'skipXffAppend
           (\ x__ y__ -> x__ {_HttpConnectionManager'skipXffAppend = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "via" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'via
           (\ x__ y__ -> x__ {_HttpConnectionManager'via = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "generateRequestId" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'generateRequestId
           (\ x__ y__
              -> x__ {_HttpConnectionManager'generateRequestId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'generateRequestId" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'generateRequestId
           (\ x__ y__
              -> x__ {_HttpConnectionManager'generateRequestId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "preserveExternalRequestId" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'preserveExternalRequestId
           (\ x__ y__
              -> x__ {_HttpConnectionManager'preserveExternalRequestId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "alwaysSetRequestIdInResponse" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'alwaysSetRequestIdInResponse
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'alwaysSetRequestIdInResponse = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "forwardClientCertDetails" HttpConnectionManager'ForwardClientCertDetails where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'forwardClientCertDetails
           (\ x__ y__
              -> x__ {_HttpConnectionManager'forwardClientCertDetails = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "setCurrentClientCertDetails" HttpConnectionManager'SetCurrentClientCertDetails where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'setCurrentClientCertDetails
           (\ x__ y__
              -> x__ {_HttpConnectionManager'setCurrentClientCertDetails = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'setCurrentClientCertDetails" (Prelude.Maybe HttpConnectionManager'SetCurrentClientCertDetails) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'setCurrentClientCertDetails
           (\ x__ y__
              -> x__ {_HttpConnectionManager'setCurrentClientCertDetails = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "proxy100Continue" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'proxy100Continue
           (\ x__ y__ -> x__ {_HttpConnectionManager'proxy100Continue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "representIpv4RemoteAddressAsIpv4MappedIpv6" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'representIpv4RemoteAddressAsIpv4MappedIpv6
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'representIpv4RemoteAddressAsIpv4MappedIpv6 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "upgradeConfigs" [HttpConnectionManager'UpgradeConfig] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'upgradeConfigs
           (\ x__ y__ -> x__ {_HttpConnectionManager'upgradeConfigs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HttpConnectionManager "vec'upgradeConfigs" (Data.Vector.Vector HttpConnectionManager'UpgradeConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'upgradeConfigs
           (\ x__ y__ -> x__ {_HttpConnectionManager'upgradeConfigs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "normalizePath" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'normalizePath
           (\ x__ y__ -> x__ {_HttpConnectionManager'normalizePath = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'normalizePath" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'normalizePath
           (\ x__ y__ -> x__ {_HttpConnectionManager'normalizePath = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "mergeSlashes" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'mergeSlashes
           (\ x__ y__ -> x__ {_HttpConnectionManager'mergeSlashes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "pathWithEscapedSlashesAction" HttpConnectionManager'PathWithEscapedSlashesAction where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'pathWithEscapedSlashesAction
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'pathWithEscapedSlashesAction = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "requestIdExtension" RequestIDExtension where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'requestIdExtension
           (\ x__ y__
              -> x__ {_HttpConnectionManager'requestIdExtension = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'requestIdExtension" (Prelude.Maybe RequestIDExtension) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'requestIdExtension
           (\ x__ y__
              -> x__ {_HttpConnectionManager'requestIdExtension = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "localReplyConfig" LocalReplyConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'localReplyConfig
           (\ x__ y__ -> x__ {_HttpConnectionManager'localReplyConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'localReplyConfig" (Prelude.Maybe LocalReplyConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'localReplyConfig
           (\ x__ y__ -> x__ {_HttpConnectionManager'localReplyConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "stripMatchingHostPort" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'stripMatchingHostPort
           (\ x__ y__
              -> x__ {_HttpConnectionManager'stripMatchingHostPort = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "streamErrorOnInvalidHttpMessage" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'streamErrorOnInvalidHttpMessage
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'streamErrorOnInvalidHttpMessage = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'streamErrorOnInvalidHttpMessage" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'streamErrorOnInvalidHttpMessage
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'streamErrorOnInvalidHttpMessage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "pathNormalizationOptions" HttpConnectionManager'PathNormalizationOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'pathNormalizationOptions
           (\ x__ y__
              -> x__ {_HttpConnectionManager'pathNormalizationOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'pathNormalizationOptions" (Prelude.Maybe HttpConnectionManager'PathNormalizationOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'pathNormalizationOptions
           (\ x__ y__
              -> x__ {_HttpConnectionManager'pathNormalizationOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "stripTrailingHostDot" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'stripTrailingHostDot
           (\ x__ y__
              -> x__ {_HttpConnectionManager'stripTrailingHostDot = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'routeSpecifier" (Prelude.Maybe HttpConnectionManager'RouteSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'routeSpecifier
           (\ x__ y__ -> x__ {_HttpConnectionManager'routeSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'rds" (Prelude.Maybe Rds) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'routeSpecifier
           (\ x__ y__ -> x__ {_HttpConnectionManager'routeSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpConnectionManager'Rds x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HttpConnectionManager'Rds y__))
instance Data.ProtoLens.Field.HasField HttpConnectionManager "rds" Rds where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'routeSpecifier
           (\ x__ y__ -> x__ {_HttpConnectionManager'routeSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpConnectionManager'Rds x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HttpConnectionManager'Rds y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'routeConfig" (Prelude.Maybe Proto.Envoy.Config.Route.V3.Route.RouteConfiguration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'routeSpecifier
           (\ x__ y__ -> x__ {_HttpConnectionManager'routeSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpConnectionManager'RouteConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HttpConnectionManager'RouteConfig y__))
instance Data.ProtoLens.Field.HasField HttpConnectionManager "routeConfig" Proto.Envoy.Config.Route.V3.Route.RouteConfiguration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'routeSpecifier
           (\ x__ y__ -> x__ {_HttpConnectionManager'routeSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpConnectionManager'RouteConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HttpConnectionManager'RouteConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'scopedRoutes" (Prelude.Maybe ScopedRoutes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'routeSpecifier
           (\ x__ y__ -> x__ {_HttpConnectionManager'routeSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpConnectionManager'ScopedRoutes x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HttpConnectionManager'ScopedRoutes y__))
instance Data.ProtoLens.Field.HasField HttpConnectionManager "scopedRoutes" ScopedRoutes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'routeSpecifier
           (\ x__ y__ -> x__ {_HttpConnectionManager'routeSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpConnectionManager'ScopedRoutes x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HttpConnectionManager'ScopedRoutes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'stripPortMode" (Prelude.Maybe HttpConnectionManager'StripPortMode) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'stripPortMode
           (\ x__ y__ -> x__ {_HttpConnectionManager'stripPortMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager "maybe'stripAnyHostPort" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'stripPortMode
           (\ x__ y__ -> x__ {_HttpConnectionManager'stripPortMode = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpConnectionManager'StripAnyHostPort x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap HttpConnectionManager'StripAnyHostPort y__))
instance Data.ProtoLens.Field.HasField HttpConnectionManager "stripAnyHostPort" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'stripPortMode
           (\ x__ y__ -> x__ {_HttpConnectionManager'stripPortMode = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpConnectionManager'StripAnyHostPort x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap HttpConnectionManager'StripAnyHostPort y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message HttpConnectionManager where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager"
  packedMessageDescriptor _
    = "\n\
      \\NAKHttpConnectionManager\DC2\133\SOH\n\
      \\n\
      \codec_type\CAN\SOH \SOH(\SO2\\.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.CodecTypeR\tcodecTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2(\n\
      \\vstat_prefix\CAN\STX \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2T\n\
      \\ETXrds\CAN\ETX \SOH(\v2@.envoy.extensions.filters.network.http_connection_manager.v3.RdsH\NULR\ETXrds\DC2N\n\
      \\froute_config\CAN\EOT \SOH(\v2).envoy.config.route.v3.RouteConfigurationH\NULR\vrouteConfig\DC2p\n\
      \\rscoped_routes\CAN\US \SOH(\v2I.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutesH\NULR\fscopedRoutes\DC2j\n\
      \\fhttp_filters\CAN\ENQ \ETX(\v2G.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilterR\vhttpFilters\DC2@\n\
      \\SOadd_user_agent\CAN\ACK \SOH(\v2\SUB.google.protobuf.BoolValueR\faddUserAgent\DC2t\n\
      \\atracing\CAN\a \SOH(\v2Z.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.TracingR\atracing\DC2s\n\
      \\FScommon_http_protocol_options\CAN# \SOH(\v2).envoy.config.core.v3.HttpProtocolOptionsR\EMcommonHttpProtocolOptionsB\a\138\147\183*\STX\b\SOH\DC2^\n\
      \\NAKhttp_protocol_options\CAN\b \SOH(\v2*.envoy.config.core.v3.Http1ProtocolOptionsR\DC3httpProtocolOptions\DC2i\n\
      \\SYNhttp2_protocol_options\CAN\t \SOH(\v2*.envoy.config.core.v3.Http2ProtocolOptionsR\DC4http2ProtocolOptionsB\a\138\147\183*\STX\b\SOH\DC2`\n\
      \\SYNhttp3_protocol_options\CAN, \SOH(\v2*.envoy.config.core.v3.Http3ProtocolOptionsR\DC4http3ProtocolOptions\DC2,\n\
      \\vserver_name\CAN\n\
      \ \SOH(\tR\n\
      \serverNameB\v\250B\br\ACK\192\SOH\STX\200\SOH\NUL\DC2\185\SOH\n\
      \\FSserver_header_transformation\CAN\" \SOH(\SO2m.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.ServerHeaderTransformationR\SUBserverHeaderTransformationB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2r\n\
      \\FSscheme_header_transformation\CAN0 \SOH(\v20.envoy.config.core.v3.SchemeHeaderTransformationR\SUBschemeHeaderTransformation\DC2]\n\
      \\SYNmax_request_headers_kb\CAN\GS \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC3maxRequestHeadersKbB\n\
      \\250B\a*\ENQ\CAN\128@ \NUL\DC2R\n\
      \\DC3stream_idle_timeout\CAN\CAN \SOH(\v2\EM.google.protobuf.DurationR\DC1streamIdleTimeoutB\a\138\147\183*\STX\b\SOH\DC2K\n\
      \\SIrequest_timeout\CAN\FS \SOH(\v2\EM.google.protobuf.DurationR\SOrequestTimeoutB\a\138\147\183*\STX\b\SOH\DC2b\n\
      \\ETBrequest_headers_timeout\CAN) \SOH(\v2\EM.google.protobuf.DurationR\NAKrequestHeadersTimeoutB\SI\250B\ENQ\170\SOH\STX2\NUL\138\147\183*\STX\b\SOH\DC2>\n\
      \\rdrain_timeout\CAN\f \SOH(\v2\EM.google.protobuf.DurationR\fdrainTimeout\DC2M\n\
      \\NAKdelayed_close_timeout\CAN\SUB \SOH(\v2\EM.google.protobuf.DurationR\DC3delayedCloseTimeout\DC2C\n\
      \\n\
      \access_log\CAN\r \ETX(\v2$.envoy.config.accesslog.v3.AccessLogR\taccessLog\DC2Q\n\
      \\DC2use_remote_address\CAN\SO \SOH(\v2\SUB.google.protobuf.BoolValueR\DLEuseRemoteAddressB\a\138\147\183*\STX\b\SOH\DC2<\n\
      \\DC4xff_num_trusted_hops\CAN\DC3 \SOH(\rR\DC1xffNumTrustedHopsB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2s\n\
      \ original_ip_detection_extensions\CAN. \ETX(\v2*.envoy.config.core.v3.TypedExtensionConfigR\GSoriginalIpDetectionExtensions\DC2\160\SOH\n\
      \\ETBinternal_address_config\CAN\EM \SOH(\v2h.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.InternalAddressConfigR\NAKinternalAddressConfig\DC2&\n\
      \\SIskip_xff_append\CAN\NAK \SOH(\bR\rskipXffAppend\DC2\GS\n\
      \\ETXvia\CAN\SYN \SOH(\tR\ETXviaB\v\250B\br\ACK\192\SOH\STX\200\SOH\NUL\DC2J\n\
      \\DC3generate_request_id\CAN\SI \SOH(\v2\SUB.google.protobuf.BoolValueR\DC1generateRequestId\DC2?\n\
      \\FSpreserve_external_request_id\CAN  \SOH(\bR\EMpreserveExternalRequestId\DC2G\n\
      \!always_set_request_id_in_response\CAN% \SOH(\bR\FSalwaysSetRequestIdInResponse\DC2\180\SOH\n\
      \\ESCforward_client_cert_details\CAN\DLE \SOH(\SO2k.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.ForwardClientCertDetailsR\CANforwardClientCertDetailsB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\180\SOH\n\
      \\USset_current_client_cert_details\CAN\DC1 \SOH(\v2n.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.SetCurrentClientCertDetailsR\ESCsetCurrentClientCertDetails\DC2,\n\
      \\DC2proxy_100_continue\CAN\DC2 \SOH(\bR\DLEproxy100Continue\DC2e\n\
      \1represent_ipv4_remote_address_as_ipv4_mapped_ipv6\CAN\DC4 \SOH(\bR*representIpv4RemoteAddressAsIpv4MappedIpv6\DC2\137\SOH\n\
      \\SIupgrade_configs\CAN\ETB \ETX(\v2`.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.UpgradeConfigR\SOupgradeConfigs\DC2A\n\
      \\SOnormalize_path\CAN\RS \SOH(\v2\SUB.google.protobuf.BoolValueR\rnormalizePath\DC2#\n\
      \\rmerge_slashes\CAN! \SOH(\bR\fmergeSlashes\DC2\183\SOH\n\
      \ path_with_escaped_slashes_action\CAN- \SOH(\SO2o.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.PathWithEscapedSlashesActionR\FSpathWithEscapedSlashesAction\DC2\129\SOH\n\
      \\DC4request_id_extension\CAN$ \SOH(\v2O.envoy.extensions.filters.network.http_connection_manager.v3.RequestIDExtensionR\DC2requestIdExtension\DC2{\n\
      \\DC2local_reply_config\CAN& \SOH(\v2M.envoy.extensions.filters.network.http_connection_manager.v3.LocalReplyConfigR\DLElocalReplyConfig\DC2P\n\
      \\CANstrip_matching_host_port\CAN' \SOH(\bR\NAKstripMatchingHostPortB\ETB\242\152\254\143\ENQ\DC1\DC2\SIstrip_port_mode\DC2/\n\
      \\DC3strip_any_host_port\CAN* \SOH(\bH\SOHR\DLEstripAnyHostPort\DC2i\n\
      \$stream_error_on_invalid_http_message\CAN( \SOH(\v2\SUB.google.protobuf.BoolValueR\USstreamErrorOnInvalidHttpMessage\DC2\169\SOH\n\
      \\SUBpath_normalization_options\CAN+ \SOH(\v2k.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.PathNormalizationOptionsR\CANpathNormalizationOptions\DC25\n\
      \\ETBstrip_trailing_host_dot\CAN/ \SOH(\bR\DC4stripTrailingHostDot\SUB\246\EOT\n\
      \\aTracing\DC2?\n\
      \\SIclient_sampling\CAN\ETX \SOH(\v2\SYN.envoy.type.v3.PercentR\SOclientSampling\DC2?\n\
      \\SIrandom_sampling\CAN\EOT \SOH(\v2\SYN.envoy.type.v3.PercentR\SOrandomSampling\DC2A\n\
      \\DLEoverall_sampling\CAN\ENQ \SOH(\v2\SYN.envoy.type.v3.PercentR\SIoverallSampling\DC2\CAN\n\
      \\averbose\CAN\ACK \SOH(\bR\averbose\DC2K\n\
      \\DC3max_path_tag_length\CAN\a \SOH(\v2\FS.google.protobuf.UInt32ValueR\DLEmaxPathTagLength\DC2A\n\
      \\vcustom_tags\CAN\b \ETX(\v2 .envoy.type.tracing.v3.CustomTagR\n\
      \customTags\DC2?\n\
      \\bprovider\CAN\t \SOH(\v2#.envoy.config.trace.v3.Tracing.HttpR\bprovider\"(\n\
      \\rOperationName\DC2\v\n\
      \\aINGRESS\DLE\NUL\DC2\n\
      \\n\
      \\ACKEGRESS\DLE\SOH:[\154\197\136\RSV\n\
      \Tenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.TracingJ\EOT\b\SOH\DLE\STXJ\EOT\b\STX\DLE\ETXR\SOoperation_nameR\CANrequest_headers_for_tags\SUB\165\SOH\n\
      \\NAKInternalAddressConfig\DC2!\n\
      \\funix_sockets\CAN\SOH \SOH(\bR\vunixSockets:i\154\197\136\RSd\n\
      \benvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.InternalAddressConfig\SUB\152\STX\n\
      \\ESCSetCurrentClientCertDetails\DC24\n\
      \\asubject\CAN\SOH \SOH(\v2\SUB.google.protobuf.BoolValueR\asubject\DC2\DC2\n\
      \\EOTcert\CAN\ETX \SOH(\bR\EOTcert\DC2\DC4\n\
      \\ENQchain\CAN\ACK \SOH(\bR\ENQchain\DC2\DLE\n\
      \\ETXdns\CAN\EOT \SOH(\bR\ETXdns\DC2\DLE\n\
      \\ETXuri\CAN\ENQ \SOH(\bR\ETXuri:o\154\197\136\RSj\n\
      \henvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.SetCurrentClientCertDetailsJ\EOT\b\STX\DLE\ETX\SUB\174\STX\n\
      \\rUpgradeConfig\DC2!\n\
      \\fupgrade_type\CAN\SOH \SOH(\tR\vupgradeType\DC2a\n\
      \\afilters\CAN\STX \ETX(\v2G.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilterR\afilters\DC24\n\
      \\aenabled\CAN\ETX \SOH(\v2\SUB.google.protobuf.BoolValueR\aenabled:a\154\197\136\RS\\\n\
      \Zenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.UpgradeConfig\SUB\229\SOH\n\
      \\CANPathNormalizationOptions\DC2c\n\
      \\EMforwarding_transformation\CAN\SOH \SOH(\v2&.envoy.type.http.v3.PathTransformationR\CANforwardingTransformation\DC2d\n\
      \\SUBhttp_filter_transformation\CAN\STX \SOH(\v2&.envoy.type.http.v3.PathTransformationR\CANhttpFilterTransformation\"6\n\
      \\tCodecType\DC2\b\n\
      \\EOTAUTO\DLE\NUL\DC2\t\n\
      \\ENQHTTP1\DLE\SOH\DC2\t\n\
      \\ENQHTTP2\DLE\STX\DC2\t\n\
      \\ENQHTTP3\DLE\ETX\"S\n\
      \\SUBServerHeaderTransformation\DC2\r\n\
      \\tOVERWRITE\DLE\NUL\DC2\DC4\n\
      \\DLEAPPEND_IF_ABSENT\DLE\SOH\DC2\DLE\n\
      \\fPASS_THROUGH\DLE\STX\"y\n\
      \\CANForwardClientCertDetails\DC2\f\n\
      \\bSANITIZE\DLE\NUL\DC2\DLE\n\
      \\fFORWARD_ONLY\DLE\SOH\DC2\DC2\n\
      \\SOAPPEND_FORWARD\DLE\STX\DC2\DLE\n\
      \\fSANITIZE_SET\DLE\ETX\DC2\ETB\n\
      \\DC3ALWAYS_FORWARD_ONLY\DLE\EOT\"\160\SOH\n\
      \\FSPathWithEscapedSlashesAction\DC2#\n\
      \\USIMPLEMENTATION_SPECIFIC_DEFAULT\DLE\NUL\DC2\DC2\n\
      \\SOKEEP_UNCHANGED\DLE\SOH\DC2\DC2\n\
      \\SOREJECT_REQUEST\DLE\STX\DC2\EM\n\
      \\NAKUNESCAPE_AND_REDIRECT\DLE\ETX\DC2\CAN\n\
      \\DC4UNESCAPE_AND_FORWARD\DLE\EOTB\SYN\n\
      \\SIroute_specifier\DC2\ETX\248B\SOHB\DC1\n\
      \\SIstrip_port_mode:S\154\197\136\RSN\n\
      \Lenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManagerJ\EOT\b\ESC\DLE\FSJ\EOT\b\v\DLE\fR\fidle_timeout"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        codecType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "codec_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor HttpConnectionManager'CodecType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"codecType")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        statPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"statPrefix")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        httpFilters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_filters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpFilter)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"httpFilters")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        addUserAgent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "add_user_agent"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'addUserAgent")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        tracing__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tracing"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpConnectionManager'Tracing)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tracing")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        commonHttpProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_http_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commonHttpProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        httpProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        http2ProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http2_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'http2ProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        http3ProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http3_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'http3ProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        serverName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "server_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"serverName")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        serverHeaderTransformation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "server_header_transformation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor HttpConnectionManager'ServerHeaderTransformation)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"serverHeaderTransformation")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        schemeHeaderTransformation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scheme_header_transformation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.SchemeHeaderTransformation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'schemeHeaderTransformation")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        maxRequestHeadersKb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_request_headers_kb"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxRequestHeadersKb")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        streamIdleTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_idle_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'streamIdleTimeout")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        requestTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestTimeout")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        requestHeadersTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_headers_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestHeadersTimeout")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        drainTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "drain_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'drainTimeout")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        delayedCloseTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delayed_close_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'delayedCloseTimeout")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        accessLog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "access_log"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"accessLog")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        useRemoteAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_remote_address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'useRemoteAddress")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        xffNumTrustedHops__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "xff_num_trusted_hops"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"xffNumTrustedHops")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        originalIpDetectionExtensions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "original_ip_detection_extensions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"originalIpDetectionExtensions")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        internalAddressConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "internal_address_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpConnectionManager'InternalAddressConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'internalAddressConfig")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        skipXffAppend__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "skip_xff_append"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"skipXffAppend")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        via__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "via"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"via")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        generateRequestId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "generate_request_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'generateRequestId")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        preserveExternalRequestId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "preserve_external_request_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"preserveExternalRequestId")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        alwaysSetRequestIdInResponse__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "always_set_request_id_in_response"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"alwaysSetRequestIdInResponse")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        forwardClientCertDetails__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "forward_client_cert_details"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor HttpConnectionManager'ForwardClientCertDetails)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"forwardClientCertDetails")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        setCurrentClientCertDetails__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "set_current_client_cert_details"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpConnectionManager'SetCurrentClientCertDetails)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'setCurrentClientCertDetails")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        proxy100Continue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proxy_100_continue"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proxy100Continue")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        representIpv4RemoteAddressAsIpv4MappedIpv6__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "represent_ipv4_remote_address_as_ipv4_mapped_ipv6"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"representIpv4RemoteAddressAsIpv4MappedIpv6")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        upgradeConfigs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upgrade_configs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpConnectionManager'UpgradeConfig)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"upgradeConfigs")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        normalizePath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "normalize_path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'normalizePath")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        mergeSlashes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "merge_slashes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"mergeSlashes")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        pathWithEscapedSlashesAction__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path_with_escaped_slashes_action"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor HttpConnectionManager'PathWithEscapedSlashesAction)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pathWithEscapedSlashesAction")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        requestIdExtension__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_id_extension"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestIDExtension)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestIdExtension")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        localReplyConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local_reply_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor LocalReplyConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'localReplyConfig")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        stripMatchingHostPort__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "strip_matching_host_port"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stripMatchingHostPort")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        streamErrorOnInvalidHttpMessage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_error_on_invalid_http_message"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'streamErrorOnInvalidHttpMessage")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        pathNormalizationOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path_normalization_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpConnectionManager'PathNormalizationOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pathNormalizationOptions")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        stripTrailingHostDot__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "strip_trailing_host_dot"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stripTrailingHostDot")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        rds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rds"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Rds)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rds")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        routeConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "route_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.Route.RouteConfiguration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'routeConfig")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        scopedRoutes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scoped_routes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScopedRoutes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scopedRoutes")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
        stripAnyHostPort__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "strip_any_host_port"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stripAnyHostPort")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, codecType__field_descriptor),
           (Data.ProtoLens.Tag 2, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 5, httpFilters__field_descriptor),
           (Data.ProtoLens.Tag 6, addUserAgent__field_descriptor),
           (Data.ProtoLens.Tag 7, tracing__field_descriptor),
           (Data.ProtoLens.Tag 35, 
            commonHttpProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 8, httpProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 9, http2ProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 44, http3ProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 10, serverName__field_descriptor),
           (Data.ProtoLens.Tag 34, 
            serverHeaderTransformation__field_descriptor),
           (Data.ProtoLens.Tag 48, 
            schemeHeaderTransformation__field_descriptor),
           (Data.ProtoLens.Tag 29, maxRequestHeadersKb__field_descriptor),
           (Data.ProtoLens.Tag 24, streamIdleTimeout__field_descriptor),
           (Data.ProtoLens.Tag 28, requestTimeout__field_descriptor),
           (Data.ProtoLens.Tag 41, requestHeadersTimeout__field_descriptor),
           (Data.ProtoLens.Tag 12, drainTimeout__field_descriptor),
           (Data.ProtoLens.Tag 26, delayedCloseTimeout__field_descriptor),
           (Data.ProtoLens.Tag 13, accessLog__field_descriptor),
           (Data.ProtoLens.Tag 14, useRemoteAddress__field_descriptor),
           (Data.ProtoLens.Tag 19, xffNumTrustedHops__field_descriptor),
           (Data.ProtoLens.Tag 46, 
            originalIpDetectionExtensions__field_descriptor),
           (Data.ProtoLens.Tag 25, internalAddressConfig__field_descriptor),
           (Data.ProtoLens.Tag 21, skipXffAppend__field_descriptor),
           (Data.ProtoLens.Tag 22, via__field_descriptor),
           (Data.ProtoLens.Tag 15, generateRequestId__field_descriptor),
           (Data.ProtoLens.Tag 32, 
            preserveExternalRequestId__field_descriptor),
           (Data.ProtoLens.Tag 37, 
            alwaysSetRequestIdInResponse__field_descriptor),
           (Data.ProtoLens.Tag 16, 
            forwardClientCertDetails__field_descriptor),
           (Data.ProtoLens.Tag 17, 
            setCurrentClientCertDetails__field_descriptor),
           (Data.ProtoLens.Tag 18, proxy100Continue__field_descriptor),
           (Data.ProtoLens.Tag 20, 
            representIpv4RemoteAddressAsIpv4MappedIpv6__field_descriptor),
           (Data.ProtoLens.Tag 23, upgradeConfigs__field_descriptor),
           (Data.ProtoLens.Tag 30, normalizePath__field_descriptor),
           (Data.ProtoLens.Tag 33, mergeSlashes__field_descriptor),
           (Data.ProtoLens.Tag 45, 
            pathWithEscapedSlashesAction__field_descriptor),
           (Data.ProtoLens.Tag 36, requestIdExtension__field_descriptor),
           (Data.ProtoLens.Tag 38, localReplyConfig__field_descriptor),
           (Data.ProtoLens.Tag 39, stripMatchingHostPort__field_descriptor),
           (Data.ProtoLens.Tag 40, 
            streamErrorOnInvalidHttpMessage__field_descriptor),
           (Data.ProtoLens.Tag 43, 
            pathNormalizationOptions__field_descriptor),
           (Data.ProtoLens.Tag 47, stripTrailingHostDot__field_descriptor),
           (Data.ProtoLens.Tag 3, rds__field_descriptor),
           (Data.ProtoLens.Tag 4, routeConfig__field_descriptor),
           (Data.ProtoLens.Tag 31, scopedRoutes__field_descriptor),
           (Data.ProtoLens.Tag 42, stripAnyHostPort__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpConnectionManager'_unknownFields
        (\ x__ y__ -> x__ {_HttpConnectionManager'_unknownFields = y__})
  defMessage
    = HttpConnectionManager'_constructor
        {_HttpConnectionManager'codecType = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'statPrefix = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'httpFilters = Data.Vector.Generic.empty,
         _HttpConnectionManager'addUserAgent = Prelude.Nothing,
         _HttpConnectionManager'tracing = Prelude.Nothing,
         _HttpConnectionManager'commonHttpProtocolOptions = Prelude.Nothing,
         _HttpConnectionManager'httpProtocolOptions = Prelude.Nothing,
         _HttpConnectionManager'http2ProtocolOptions = Prelude.Nothing,
         _HttpConnectionManager'http3ProtocolOptions = Prelude.Nothing,
         _HttpConnectionManager'serverName = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'serverHeaderTransformation = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'schemeHeaderTransformation = Prelude.Nothing,
         _HttpConnectionManager'maxRequestHeadersKb = Prelude.Nothing,
         _HttpConnectionManager'streamIdleTimeout = Prelude.Nothing,
         _HttpConnectionManager'requestTimeout = Prelude.Nothing,
         _HttpConnectionManager'requestHeadersTimeout = Prelude.Nothing,
         _HttpConnectionManager'drainTimeout = Prelude.Nothing,
         _HttpConnectionManager'delayedCloseTimeout = Prelude.Nothing,
         _HttpConnectionManager'accessLog = Data.Vector.Generic.empty,
         _HttpConnectionManager'useRemoteAddress = Prelude.Nothing,
         _HttpConnectionManager'xffNumTrustedHops = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'originalIpDetectionExtensions = Data.Vector.Generic.empty,
         _HttpConnectionManager'internalAddressConfig = Prelude.Nothing,
         _HttpConnectionManager'skipXffAppend = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'via = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'generateRequestId = Prelude.Nothing,
         _HttpConnectionManager'preserveExternalRequestId = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'alwaysSetRequestIdInResponse = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'forwardClientCertDetails = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'setCurrentClientCertDetails = Prelude.Nothing,
         _HttpConnectionManager'proxy100Continue = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'representIpv4RemoteAddressAsIpv4MappedIpv6 = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'upgradeConfigs = Data.Vector.Generic.empty,
         _HttpConnectionManager'normalizePath = Prelude.Nothing,
         _HttpConnectionManager'mergeSlashes = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'pathWithEscapedSlashesAction = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'requestIdExtension = Prelude.Nothing,
         _HttpConnectionManager'localReplyConfig = Prelude.Nothing,
         _HttpConnectionManager'stripMatchingHostPort = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'streamErrorOnInvalidHttpMessage = Prelude.Nothing,
         _HttpConnectionManager'pathNormalizationOptions = Prelude.Nothing,
         _HttpConnectionManager'stripTrailingHostDot = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'routeSpecifier = Prelude.Nothing,
         _HttpConnectionManager'stripPortMode = Prelude.Nothing,
         _HttpConnectionManager'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpConnectionManager
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld HttpFilter
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld HttpConnectionManager'UpgradeConfig
                      -> Data.ProtoLens.Encoding.Bytes.Parser HttpConnectionManager
        loop
          x
          mutable'accessLog
          mutable'httpFilters
          mutable'originalIpDetectionExtensions
          mutable'upgradeConfigs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'accessLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'accessLog)
                      frozen'httpFilters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'httpFilters)
                      frozen'originalIpDetectionExtensions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                   mutable'originalIpDetectionExtensions)
                      frozen'upgradeConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'upgradeConfigs)
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
                              (Data.ProtoLens.Field.field @"vec'accessLog")
                              frozen'accessLog
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'httpFilters")
                                 frozen'httpFilters
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field
                                       @"vec'originalIpDetectionExtensions")
                                    frozen'originalIpDetectionExtensions
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'upgradeConfigs")
                                       frozen'upgradeConfigs
                                       x)))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "codec_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"codecType") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
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
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "http_filters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'httpFilters y)
                                loop
                                  x
                                  mutable'accessLog
                                  v
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "add_user_agent"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"addUserAgent") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tracing"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tracing") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        282
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "common_http_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commonHttpProtocolOptions") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpProtocolOptions") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http2_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"http2ProtocolOptions") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        354
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http3_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"http3ProtocolOptions") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "server_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"serverName") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        272
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "server_header_transformation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"serverHeaderTransformation") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        386
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "scheme_header_transformation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"schemeHeaderTransformation") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        234
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_request_headers_kb"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxRequestHeadersKb") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        194
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stream_idle_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"streamIdleTimeout") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        226
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestTimeout") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        330
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_headers_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestHeadersTimeout") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "drain_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"drainTimeout") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        210
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "delayed_close_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delayedCloseTimeout") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        106
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "access_log"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'accessLog y)
                                loop
                                  x
                                  v
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "use_remote_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useRemoteAddress") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        152
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "xff_num_trusted_hops"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"xffNumTrustedHops") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        370
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "original_ip_detection_extensions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'originalIpDetectionExtensions y)
                                loop
                                  x mutable'accessLog mutable'httpFilters v mutable'upgradeConfigs
                        202
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "internal_address_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"internalAddressConfig") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        168
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "skip_xff_append"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"skipXffAppend") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        178
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "via"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"via") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "generate_request_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"generateRequestId") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        256
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "preserve_external_request_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"preserveExternalRequestId") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        296
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "always_set_request_id_in_response"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"alwaysSetRequestIdInResponse")
                                     y
                                     x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        128
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "forward_client_cert_details"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"forwardClientCertDetails") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "set_current_client_cert_details"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"setCurrentClientCertDetails")
                                     y
                                     x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        144
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "proxy_100_continue"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"proxy100Continue") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        160
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "represent_ipv4_remote_address_as_ipv4_mapped_ipv6"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"representIpv4RemoteAddressAsIpv4MappedIpv6")
                                     y
                                     x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        186
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "upgrade_configs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'upgradeConfigs y)
                                loop
                                  x
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  v
                        242
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "normalize_path"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"normalizePath") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        264
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "merge_slashes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"mergeSlashes") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        360
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "path_with_escaped_slashes_action"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pathWithEscapedSlashesAction")
                                     y
                                     x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        290
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_id_extension"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestIdExtension") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        306
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "local_reply_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"localReplyConfig") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        312
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "strip_matching_host_port"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stripMatchingHostPort") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        322
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stream_error_on_invalid_http_message"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"streamErrorOnInvalidHttpMessage")
                                     y
                                     x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        346
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "path_normalization_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pathNormalizationOptions") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        376
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "strip_trailing_host_dot"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stripTrailingHostDot") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "rds"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rds") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "route_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"routeConfig") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        250
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "scoped_routes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scopedRoutes") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        336
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "strip_any_host_port"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stripAnyHostPort") y x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'accessLog
                                  mutable'httpFilters
                                  mutable'originalIpDetectionExtensions
                                  mutable'upgradeConfigs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'accessLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'httpFilters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'originalIpDetectionExtensions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         Data.ProtoLens.Encoding.Growing.new
              mutable'upgradeConfigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'accessLog
                mutable'httpFilters
                mutable'originalIpDetectionExtensions
                mutable'upgradeConfigs)
          "HttpConnectionManager"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"codecType") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"statPrefix") _x
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
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'httpFilters") _x))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'addUserAgent") _x
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
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tracing") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
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
                                   (Data.ProtoLens.Field.field @"maybe'commonHttpProtocolOptions")
                                   _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 282)
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
                                      (Data.ProtoLens.Field.field @"maybe'httpProtocolOptions") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
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
                                            _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'http2ProtocolOptions")
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
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage
                                               _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field
                                               @"maybe'http3ProtocolOptions")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 354)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage
                                                  _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"serverName") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                 ((Prelude..)
                                                    (\ bs
                                                       -> (Data.Monoid.<>)
                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                               (Prelude.fromIntegral
                                                                  (Data.ByteString.length bs)))
                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                               bs))
                                                    Data.Text.Encoding.encodeUtf8
                                                    _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"serverHeaderTransformation")
                                                    _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 272)
                                                    ((Prelude..)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          Prelude.fromIntegral)
                                                       Prelude.fromEnum
                                                       _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'schemeHeaderTransformation")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           386)
                                                        ((Prelude..)
                                                           (\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                           Data.ProtoLens.encodeMessage
                                                           _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'maxRequestHeadersKb")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              234)
                                                           ((Prelude..)
                                                              (\ bs
                                                                 -> (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         (Prelude.fromIntegral
                                                                            (Data.ByteString.length
                                                                               bs)))
                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                         bs))
                                                              Data.ProtoLens.encodeMessage
                                                              _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'streamIdleTimeout")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 194)
                                                              ((Prelude..)
                                                                 (\ bs
                                                                    -> (Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            (Prelude.fromIntegral
                                                                               (Data.ByteString.length
                                                                                  bs)))
                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                            bs))
                                                                 Data.ProtoLens.encodeMessage
                                                                 _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'requestTimeout")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    226)
                                                                 ((Prelude..)
                                                                    (\ bs
                                                                       -> (Data.Monoid.<>)
                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               (Prelude.fromIntegral
                                                                                  (Data.ByteString.length
                                                                                     bs)))
                                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                               bs))
                                                                    Data.ProtoLens.encodeMessage
                                                                    _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'requestHeadersTimeout")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       330)
                                                                    ((Prelude..)
                                                                       (\ bs
                                                                          -> (Data.Monoid.<>)
                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                  (Prelude.fromIntegral
                                                                                     (Data.ByteString.length
                                                                                        bs)))
                                                                               (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                  bs))
                                                                       Data.ProtoLens.encodeMessage
                                                                       _v))
                                                          ((Data.Monoid.<>)
                                                             (case
                                                                  Lens.Family2.view
                                                                    (Data.ProtoLens.Field.field
                                                                       @"maybe'drainTimeout")
                                                                    _x
                                                              of
                                                                Prelude.Nothing
                                                                  -> Data.Monoid.mempty
                                                                (Prelude.Just _v)
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          98)
                                                                       ((Prelude..)
                                                                          (\ bs
                                                                             -> (Data.Monoid.<>)
                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     (Prelude.fromIntegral
                                                                                        (Data.ByteString.length
                                                                                           bs)))
                                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                     bs))
                                                                          Data.ProtoLens.encodeMessage
                                                                          _v))
                                                             ((Data.Monoid.<>)
                                                                (case
                                                                     Lens.Family2.view
                                                                       (Data.ProtoLens.Field.field
                                                                          @"maybe'delayedCloseTimeout")
                                                                       _x
                                                                 of
                                                                   Prelude.Nothing
                                                                     -> Data.Monoid.mempty
                                                                   (Prelude.Just _v)
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             210)
                                                                          ((Prelude..)
                                                                             (\ bs
                                                                                -> (Data.Monoid.<>)
                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                        (Prelude.fromIntegral
                                                                                           (Data.ByteString.length
                                                                                              bs)))
                                                                                     (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                        bs))
                                                                             Data.ProtoLens.encodeMessage
                                                                             _v))
                                                                ((Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                      (\ _v
                                                                         -> (Data.Monoid.<>)
                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                 106)
                                                                              ((Prelude..)
                                                                                 (\ bs
                                                                                    -> (Data.Monoid.<>)
                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                            (Prelude.fromIntegral
                                                                                               (Data.ByteString.length
                                                                                                  bs)))
                                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                            bs))
                                                                                 Data.ProtoLens.encodeMessage
                                                                                 _v))
                                                                      (Lens.Family2.view
                                                                         (Data.ProtoLens.Field.field
                                                                            @"vec'accessLog")
                                                                         _x))
                                                                   ((Data.Monoid.<>)
                                                                      (case
                                                                           Lens.Family2.view
                                                                             (Data.ProtoLens.Field.field
                                                                                @"maybe'useRemoteAddress")
                                                                             _x
                                                                       of
                                                                         Prelude.Nothing
                                                                           -> Data.Monoid.mempty
                                                                         (Prelude.Just _v)
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   114)
                                                                                ((Prelude..)
                                                                                   (\ bs
                                                                                      -> (Data.Monoid.<>)
                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                              (Prelude.fromIntegral
                                                                                                 (Data.ByteString.length
                                                                                                    bs)))
                                                                                           (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                              bs))
                                                                                   Data.ProtoLens.encodeMessage
                                                                                   _v))
                                                                      ((Data.Monoid.<>)
                                                                         (let
                                                                            _v
                                                                              = Lens.Family2.view
                                                                                  (Data.ProtoLens.Field.field
                                                                                     @"xffNumTrustedHops")
                                                                                  _x
                                                                          in
                                                                            if (Prelude.==)
                                                                                 _v
                                                                                 Data.ProtoLens.fieldDefault then
                                                                                Data.Monoid.mempty
                                                                            else
                                                                                (Data.Monoid.<>)
                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     152)
                                                                                  ((Prelude..)
                                                                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     Prelude.fromIntegral
                                                                                     _v))
                                                                         ((Data.Monoid.<>)
                                                                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                               (\ _v
                                                                                  -> (Data.Monoid.<>)
                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                          370)
                                                                                       ((Prelude..)
                                                                                          (\ bs
                                                                                             -> (Data.Monoid.<>)
                                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                     (Prelude.fromIntegral
                                                                                                        (Data.ByteString.length
                                                                                                           bs)))
                                                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                     bs))
                                                                                          Data.ProtoLens.encodeMessage
                                                                                          _v))
                                                                               (Lens.Family2.view
                                                                                  (Data.ProtoLens.Field.field
                                                                                     @"vec'originalIpDetectionExtensions")
                                                                                  _x))
                                                                            ((Data.Monoid.<>)
                                                                               (case
                                                                                    Lens.Family2.view
                                                                                      (Data.ProtoLens.Field.field
                                                                                         @"maybe'internalAddressConfig")
                                                                                      _x
                                                                                of
                                                                                  Prelude.Nothing
                                                                                    -> Data.Monoid.mempty
                                                                                  (Prelude.Just _v)
                                                                                    -> (Data.Monoid.<>)
                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                            202)
                                                                                         ((Prelude..)
                                                                                            (\ bs
                                                                                               -> (Data.Monoid.<>)
                                                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                       (Prelude.fromIntegral
                                                                                                          (Data.ByteString.length
                                                                                                             bs)))
                                                                                                    (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                       bs))
                                                                                            Data.ProtoLens.encodeMessage
                                                                                            _v))
                                                                               ((Data.Monoid.<>)
                                                                                  (let
                                                                                     _v
                                                                                       = Lens.Family2.view
                                                                                           (Data.ProtoLens.Field.field
                                                                                              @"skipXffAppend")
                                                                                           _x
                                                                                   in
                                                                                     if (Prelude.==)
                                                                                          _v
                                                                                          Data.ProtoLens.fieldDefault then
                                                                                         Data.Monoid.mempty
                                                                                     else
                                                                                         (Data.Monoid.<>)
                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                              168)
                                                                                           ((Prelude..)
                                                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                              (\ b
                                                                                                 -> if b then
                                                                                                        1
                                                                                                    else
                                                                                                        0)
                                                                                              _v))
                                                                                  ((Data.Monoid.<>)
                                                                                     (let
                                                                                        _v
                                                                                          = Lens.Family2.view
                                                                                              (Data.ProtoLens.Field.field
                                                                                                 @"via")
                                                                                              _x
                                                                                      in
                                                                                        if (Prelude.==)
                                                                                             _v
                                                                                             Data.ProtoLens.fieldDefault then
                                                                                            Data.Monoid.mempty
                                                                                        else
                                                                                            (Data.Monoid.<>)
                                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                 178)
                                                                                              ((Prelude..)
                                                                                                 (\ bs
                                                                                                    -> (Data.Monoid.<>)
                                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                            (Prelude.fromIntegral
                                                                                                               (Data.ByteString.length
                                                                                                                  bs)))
                                                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                            bs))
                                                                                                 Data.Text.Encoding.encodeUtf8
                                                                                                 _v))
                                                                                     ((Data.Monoid.<>)
                                                                                        (case
                                                                                             Lens.Family2.view
                                                                                               (Data.ProtoLens.Field.field
                                                                                                  @"maybe'generateRequestId")
                                                                                               _x
                                                                                         of
                                                                                           Prelude.Nothing
                                                                                             -> Data.Monoid.mempty
                                                                                           (Prelude.Just _v)
                                                                                             -> (Data.Monoid.<>)
                                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                     122)
                                                                                                  ((Prelude..)
                                                                                                     (\ bs
                                                                                                        -> (Data.Monoid.<>)
                                                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                (Prelude.fromIntegral
                                                                                                                   (Data.ByteString.length
                                                                                                                      bs)))
                                                                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                bs))
                                                                                                     Data.ProtoLens.encodeMessage
                                                                                                     _v))
                                                                                        ((Data.Monoid.<>)
                                                                                           (let
                                                                                              _v
                                                                                                = Lens.Family2.view
                                                                                                    (Data.ProtoLens.Field.field
                                                                                                       @"preserveExternalRequestId")
                                                                                                    _x
                                                                                            in
                                                                                              if (Prelude.==)
                                                                                                   _v
                                                                                                   Data.ProtoLens.fieldDefault then
                                                                                                  Data.Monoid.mempty
                                                                                              else
                                                                                                  (Data.Monoid.<>)
                                                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                       256)
                                                                                                    ((Prelude..)
                                                                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                       (\ b
                                                                                                          -> if b then
                                                                                                                 1
                                                                                                             else
                                                                                                                 0)
                                                                                                       _v))
                                                                                           ((Data.Monoid.<>)
                                                                                              (let
                                                                                                 _v
                                                                                                   = Lens.Family2.view
                                                                                                       (Data.ProtoLens.Field.field
                                                                                                          @"alwaysSetRequestIdInResponse")
                                                                                                       _x
                                                                                               in
                                                                                                 if (Prelude.==)
                                                                                                      _v
                                                                                                      Data.ProtoLens.fieldDefault then
                                                                                                     Data.Monoid.mempty
                                                                                                 else
                                                                                                     (Data.Monoid.<>)
                                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                          296)
                                                                                                       ((Prelude..)
                                                                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                          (\ b
                                                                                                             -> if b then
                                                                                                                    1
                                                                                                                else
                                                                                                                    0)
                                                                                                          _v))
                                                                                              ((Data.Monoid.<>)
                                                                                                 (let
                                                                                                    _v
                                                                                                      = Lens.Family2.view
                                                                                                          (Data.ProtoLens.Field.field
                                                                                                             @"forwardClientCertDetails")
                                                                                                          _x
                                                                                                  in
                                                                                                    if (Prelude.==)
                                                                                                         _v
                                                                                                         Data.ProtoLens.fieldDefault then
                                                                                                        Data.Monoid.mempty
                                                                                                    else
                                                                                                        (Data.Monoid.<>)
                                                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                             128)
                                                                                                          ((Prelude..)
                                                                                                             ((Prelude..)
                                                                                                                Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                Prelude.fromIntegral)
                                                                                                             Prelude.fromEnum
                                                                                                             _v))
                                                                                                 ((Data.Monoid.<>)
                                                                                                    (case
                                                                                                         Lens.Family2.view
                                                                                                           (Data.ProtoLens.Field.field
                                                                                                              @"maybe'setCurrentClientCertDetails")
                                                                                                           _x
                                                                                                     of
                                                                                                       Prelude.Nothing
                                                                                                         -> Data.Monoid.mempty
                                                                                                       (Prelude.Just _v)
                                                                                                         -> (Data.Monoid.<>)
                                                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                 138)
                                                                                                              ((Prelude..)
                                                                                                                 (\ bs
                                                                                                                    -> (Data.Monoid.<>)
                                                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                            (Prelude.fromIntegral
                                                                                                                               (Data.ByteString.length
                                                                                                                                  bs)))
                                                                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                            bs))
                                                                                                                 Data.ProtoLens.encodeMessage
                                                                                                                 _v))
                                                                                                    ((Data.Monoid.<>)
                                                                                                       (let
                                                                                                          _v
                                                                                                            = Lens.Family2.view
                                                                                                                (Data.ProtoLens.Field.field
                                                                                                                   @"proxy100Continue")
                                                                                                                _x
                                                                                                        in
                                                                                                          if (Prelude.==)
                                                                                                               _v
                                                                                                               Data.ProtoLens.fieldDefault then
                                                                                                              Data.Monoid.mempty
                                                                                                          else
                                                                                                              (Data.Monoid.<>)
                                                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                   144)
                                                                                                                ((Prelude..)
                                                                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                   (\ b
                                                                                                                      -> if b then
                                                                                                                             1
                                                                                                                         else
                                                                                                                             0)
                                                                                                                   _v))
                                                                                                       ((Data.Monoid.<>)
                                                                                                          (let
                                                                                                             _v
                                                                                                               = Lens.Family2.view
                                                                                                                   (Data.ProtoLens.Field.field
                                                                                                                      @"representIpv4RemoteAddressAsIpv4MappedIpv6")
                                                                                                                   _x
                                                                                                           in
                                                                                                             if (Prelude.==)
                                                                                                                  _v
                                                                                                                  Data.ProtoLens.fieldDefault then
                                                                                                                 Data.Monoid.mempty
                                                                                                             else
                                                                                                                 (Data.Monoid.<>)
                                                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                      160)
                                                                                                                   ((Prelude..)
                                                                                                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                      (\ b
                                                                                                                         -> if b then
                                                                                                                                1
                                                                                                                            else
                                                                                                                                0)
                                                                                                                      _v))
                                                                                                          ((Data.Monoid.<>)
                                                                                                             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                                                                (\ _v
                                                                                                                   -> (Data.Monoid.<>)
                                                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                           186)
                                                                                                                        ((Prelude..)
                                                                                                                           (\ bs
                                                                                                                              -> (Data.Monoid.<>)
                                                                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                      (Prelude.fromIntegral
                                                                                                                                         (Data.ByteString.length
                                                                                                                                            bs)))
                                                                                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                      bs))
                                                                                                                           Data.ProtoLens.encodeMessage
                                                                                                                           _v))
                                                                                                                (Lens.Family2.view
                                                                                                                   (Data.ProtoLens.Field.field
                                                                                                                      @"vec'upgradeConfigs")
                                                                                                                   _x))
                                                                                                             ((Data.Monoid.<>)
                                                                                                                (case
                                                                                                                     Lens.Family2.view
                                                                                                                       (Data.ProtoLens.Field.field
                                                                                                                          @"maybe'normalizePath")
                                                                                                                       _x
                                                                                                                 of
                                                                                                                   Prelude.Nothing
                                                                                                                     -> Data.Monoid.mempty
                                                                                                                   (Prelude.Just _v)
                                                                                                                     -> (Data.Monoid.<>)
                                                                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                             242)
                                                                                                                          ((Prelude..)
                                                                                                                             (\ bs
                                                                                                                                -> (Data.Monoid.<>)
                                                                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                        (Prelude.fromIntegral
                                                                                                                                           (Data.ByteString.length
                                                                                                                                              bs)))
                                                                                                                                     (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                        bs))
                                                                                                                             Data.ProtoLens.encodeMessage
                                                                                                                             _v))
                                                                                                                ((Data.Monoid.<>)
                                                                                                                   (let
                                                                                                                      _v
                                                                                                                        = Lens.Family2.view
                                                                                                                            (Data.ProtoLens.Field.field
                                                                                                                               @"mergeSlashes")
                                                                                                                            _x
                                                                                                                    in
                                                                                                                      if (Prelude.==)
                                                                                                                           _v
                                                                                                                           Data.ProtoLens.fieldDefault then
                                                                                                                          Data.Monoid.mempty
                                                                                                                      else
                                                                                                                          (Data.Monoid.<>)
                                                                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                               264)
                                                                                                                            ((Prelude..)
                                                                                                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                               (\ b
                                                                                                                                  -> if b then
                                                                                                                                         1
                                                                                                                                     else
                                                                                                                                         0)
                                                                                                                               _v))
                                                                                                                   ((Data.Monoid.<>)
                                                                                                                      (let
                                                                                                                         _v
                                                                                                                           = Lens.Family2.view
                                                                                                                               (Data.ProtoLens.Field.field
                                                                                                                                  @"pathWithEscapedSlashesAction")
                                                                                                                               _x
                                                                                                                       in
                                                                                                                         if (Prelude.==)
                                                                                                                              _v
                                                                                                                              Data.ProtoLens.fieldDefault then
                                                                                                                             Data.Monoid.mempty
                                                                                                                         else
                                                                                                                             (Data.Monoid.<>)
                                                                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                  360)
                                                                                                                               ((Prelude..)
                                                                                                                                  ((Prelude..)
                                                                                                                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                     Prelude.fromIntegral)
                                                                                                                                  Prelude.fromEnum
                                                                                                                                  _v))
                                                                                                                      ((Data.Monoid.<>)
                                                                                                                         (case
                                                                                                                              Lens.Family2.view
                                                                                                                                (Data.ProtoLens.Field.field
                                                                                                                                   @"maybe'requestIdExtension")
                                                                                                                                _x
                                                                                                                          of
                                                                                                                            Prelude.Nothing
                                                                                                                              -> Data.Monoid.mempty
                                                                                                                            (Prelude.Just _v)
                                                                                                                              -> (Data.Monoid.<>)
                                                                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                      290)
                                                                                                                                   ((Prelude..)
                                                                                                                                      (\ bs
                                                                                                                                         -> (Data.Monoid.<>)
                                                                                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                 (Prelude.fromIntegral
                                                                                                                                                    (Data.ByteString.length
                                                                                                                                                       bs)))
                                                                                                                                              (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                 bs))
                                                                                                                                      Data.ProtoLens.encodeMessage
                                                                                                                                      _v))
                                                                                                                         ((Data.Monoid.<>)
                                                                                                                            (case
                                                                                                                                 Lens.Family2.view
                                                                                                                                   (Data.ProtoLens.Field.field
                                                                                                                                      @"maybe'localReplyConfig")
                                                                                                                                   _x
                                                                                                                             of
                                                                                                                               Prelude.Nothing
                                                                                                                                 -> Data.Monoid.mempty
                                                                                                                               (Prelude.Just _v)
                                                                                                                                 -> (Data.Monoid.<>)
                                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                         306)
                                                                                                                                      ((Prelude..)
                                                                                                                                         (\ bs
                                                                                                                                            -> (Data.Monoid.<>)
                                                                                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                    (Prelude.fromIntegral
                                                                                                                                                       (Data.ByteString.length
                                                                                                                                                          bs)))
                                                                                                                                                 (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                    bs))
                                                                                                                                         Data.ProtoLens.encodeMessage
                                                                                                                                         _v))
                                                                                                                            ((Data.Monoid.<>)
                                                                                                                               (let
                                                                                                                                  _v
                                                                                                                                    = Lens.Family2.view
                                                                                                                                        (Data.ProtoLens.Field.field
                                                                                                                                           @"stripMatchingHostPort")
                                                                                                                                        _x
                                                                                                                                in
                                                                                                                                  if (Prelude.==)
                                                                                                                                       _v
                                                                                                                                       Data.ProtoLens.fieldDefault then
                                                                                                                                      Data.Monoid.mempty
                                                                                                                                  else
                                                                                                                                      (Data.Monoid.<>)
                                                                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                           312)
                                                                                                                                        ((Prelude..)
                                                                                                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                           (\ b
                                                                                                                                              -> if b then
                                                                                                                                                     1
                                                                                                                                                 else
                                                                                                                                                     0)
                                                                                                                                           _v))
                                                                                                                               ((Data.Monoid.<>)
                                                                                                                                  (case
                                                                                                                                       Lens.Family2.view
                                                                                                                                         (Data.ProtoLens.Field.field
                                                                                                                                            @"maybe'streamErrorOnInvalidHttpMessage")
                                                                                                                                         _x
                                                                                                                                   of
                                                                                                                                     Prelude.Nothing
                                                                                                                                       -> Data.Monoid.mempty
                                                                                                                                     (Prelude.Just _v)
                                                                                                                                       -> (Data.Monoid.<>)
                                                                                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                               322)
                                                                                                                                            ((Prelude..)
                                                                                                                                               (\ bs
                                                                                                                                                  -> (Data.Monoid.<>)
                                                                                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                          (Prelude.fromIntegral
                                                                                                                                                             (Data.ByteString.length
                                                                                                                                                                bs)))
                                                                                                                                                       (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                          bs))
                                                                                                                                               Data.ProtoLens.encodeMessage
                                                                                                                                               _v))
                                                                                                                                  ((Data.Monoid.<>)
                                                                                                                                     (case
                                                                                                                                          Lens.Family2.view
                                                                                                                                            (Data.ProtoLens.Field.field
                                                                                                                                               @"maybe'pathNormalizationOptions")
                                                                                                                                            _x
                                                                                                                                      of
                                                                                                                                        Prelude.Nothing
                                                                                                                                          -> Data.Monoid.mempty
                                                                                                                                        (Prelude.Just _v)
                                                                                                                                          -> (Data.Monoid.<>)
                                                                                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                  346)
                                                                                                                                               ((Prelude..)
                                                                                                                                                  (\ bs
                                                                                                                                                     -> (Data.Monoid.<>)
                                                                                                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                             (Prelude.fromIntegral
                                                                                                                                                                (Data.ByteString.length
                                                                                                                                                                   bs)))
                                                                                                                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                             bs))
                                                                                                                                                  Data.ProtoLens.encodeMessage
                                                                                                                                                  _v))
                                                                                                                                     ((Data.Monoid.<>)
                                                                                                                                        (let
                                                                                                                                           _v
                                                                                                                                             = Lens.Family2.view
                                                                                                                                                 (Data.ProtoLens.Field.field
                                                                                                                                                    @"stripTrailingHostDot")
                                                                                                                                                 _x
                                                                                                                                         in
                                                                                                                                           if (Prelude.==)
                                                                                                                                                _v
                                                                                                                                                Data.ProtoLens.fieldDefault then
                                                                                                                                               Data.Monoid.mempty
                                                                                                                                           else
                                                                                                                                               (Data.Monoid.<>)
                                                                                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                    376)
                                                                                                                                                 ((Prelude..)
                                                                                                                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                    (\ b
                                                                                                                                                       -> if b then
                                                                                                                                                              1
                                                                                                                                                          else
                                                                                                                                                              0)
                                                                                                                                                    _v))
                                                                                                                                        ((Data.Monoid.<>)
                                                                                                                                           (case
                                                                                                                                                Lens.Family2.view
                                                                                                                                                  (Data.ProtoLens.Field.field
                                                                                                                                                     @"maybe'routeSpecifier")
                                                                                                                                                  _x
                                                                                                                                            of
                                                                                                                                              Prelude.Nothing
                                                                                                                                                -> Data.Monoid.mempty
                                                                                                                                              (Prelude.Just (HttpConnectionManager'Rds v))
                                                                                                                                                -> (Data.Monoid.<>)
                                                                                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                        26)
                                                                                                                                                     ((Prelude..)
                                                                                                                                                        (\ bs
                                                                                                                                                           -> (Data.Monoid.<>)
                                                                                                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                                   (Prelude.fromIntegral
                                                                                                                                                                      (Data.ByteString.length
                                                                                                                                                                         bs)))
                                                                                                                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                                   bs))
                                                                                                                                                        Data.ProtoLens.encodeMessage
                                                                                                                                                        v)
                                                                                                                                              (Prelude.Just (HttpConnectionManager'RouteConfig v))
                                                                                                                                                -> (Data.Monoid.<>)
                                                                                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                        34)
                                                                                                                                                     ((Prelude..)
                                                                                                                                                        (\ bs
                                                                                                                                                           -> (Data.Monoid.<>)
                                                                                                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                                   (Prelude.fromIntegral
                                                                                                                                                                      (Data.ByteString.length
                                                                                                                                                                         bs)))
                                                                                                                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                                   bs))
                                                                                                                                                        Data.ProtoLens.encodeMessage
                                                                                                                                                        v)
                                                                                                                                              (Prelude.Just (HttpConnectionManager'ScopedRoutes v))
                                                                                                                                                -> (Data.Monoid.<>)
                                                                                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                        250)
                                                                                                                                                     ((Prelude..)
                                                                                                                                                        (\ bs
                                                                                                                                                           -> (Data.Monoid.<>)
                                                                                                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                                   (Prelude.fromIntegral
                                                                                                                                                                      (Data.ByteString.length
                                                                                                                                                                         bs)))
                                                                                                                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                                   bs))
                                                                                                                                                        Data.ProtoLens.encodeMessage
                                                                                                                                                        v))
                                                                                                                                           ((Data.Monoid.<>)
                                                                                                                                              (case
                                                                                                                                                   Lens.Family2.view
                                                                                                                                                     (Data.ProtoLens.Field.field
                                                                                                                                                        @"maybe'stripPortMode")
                                                                                                                                                     _x
                                                                                                                                               of
                                                                                                                                                 Prelude.Nothing
                                                                                                                                                   -> Data.Monoid.mempty
                                                                                                                                                 (Prelude.Just (HttpConnectionManager'StripAnyHostPort v))
                                                                                                                                                   -> (Data.Monoid.<>)
                                                                                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                           336)
                                                                                                                                                        ((Prelude..)
                                                                                                                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                           (\ b
                                                                                                                                                              -> if b then
                                                                                                                                                                     1
                                                                                                                                                                 else
                                                                                                                                                                     0)
                                                                                                                                                           v))
                                                                                                                                              (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                                                                                                 (Lens.Family2.view
                                                                                                                                                    Data.ProtoLens.unknownFields
                                                                                                                                                    _x)))))))))))))))))))))))))))))))))))))))))))))
instance Control.DeepSeq.NFData HttpConnectionManager where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpConnectionManager'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpConnectionManager'codecType x__)
                (Control.DeepSeq.deepseq
                   (_HttpConnectionManager'statPrefix x__)
                   (Control.DeepSeq.deepseq
                      (_HttpConnectionManager'httpFilters x__)
                      (Control.DeepSeq.deepseq
                         (_HttpConnectionManager'addUserAgent x__)
                         (Control.DeepSeq.deepseq
                            (_HttpConnectionManager'tracing x__)
                            (Control.DeepSeq.deepseq
                               (_HttpConnectionManager'commonHttpProtocolOptions x__)
                               (Control.DeepSeq.deepseq
                                  (_HttpConnectionManager'httpProtocolOptions x__)
                                  (Control.DeepSeq.deepseq
                                     (_HttpConnectionManager'http2ProtocolOptions x__)
                                     (Control.DeepSeq.deepseq
                                        (_HttpConnectionManager'http3ProtocolOptions x__)
                                        (Control.DeepSeq.deepseq
                                           (_HttpConnectionManager'serverName x__)
                                           (Control.DeepSeq.deepseq
                                              (_HttpConnectionManager'serverHeaderTransformation
                                                 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_HttpConnectionManager'schemeHeaderTransformation
                                                    x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_HttpConnectionManager'maxRequestHeadersKb x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_HttpConnectionManager'streamIdleTimeout
                                                          x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_HttpConnectionManager'requestTimeout
                                                             x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_HttpConnectionManager'requestHeadersTimeout
                                                                x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_HttpConnectionManager'drainTimeout
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_HttpConnectionManager'delayedCloseTimeout
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_HttpConnectionManager'accessLog
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_HttpConnectionManager'useRemoteAddress
                                                                            x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_HttpConnectionManager'xffNumTrustedHops
                                                                               x__)
                                                                            (Control.DeepSeq.deepseq
                                                                               (_HttpConnectionManager'originalIpDetectionExtensions
                                                                                  x__)
                                                                               (Control.DeepSeq.deepseq
                                                                                  (_HttpConnectionManager'internalAddressConfig
                                                                                     x__)
                                                                                  (Control.DeepSeq.deepseq
                                                                                     (_HttpConnectionManager'skipXffAppend
                                                                                        x__)
                                                                                     (Control.DeepSeq.deepseq
                                                                                        (_HttpConnectionManager'via
                                                                                           x__)
                                                                                        (Control.DeepSeq.deepseq
                                                                                           (_HttpConnectionManager'generateRequestId
                                                                                              x__)
                                                                                           (Control.DeepSeq.deepseq
                                                                                              (_HttpConnectionManager'preserveExternalRequestId
                                                                                                 x__)
                                                                                              (Control.DeepSeq.deepseq
                                                                                                 (_HttpConnectionManager'alwaysSetRequestIdInResponse
                                                                                                    x__)
                                                                                                 (Control.DeepSeq.deepseq
                                                                                                    (_HttpConnectionManager'forwardClientCertDetails
                                                                                                       x__)
                                                                                                    (Control.DeepSeq.deepseq
                                                                                                       (_HttpConnectionManager'setCurrentClientCertDetails
                                                                                                          x__)
                                                                                                       (Control.DeepSeq.deepseq
                                                                                                          (_HttpConnectionManager'proxy100Continue
                                                                                                             x__)
                                                                                                          (Control.DeepSeq.deepseq
                                                                                                             (_HttpConnectionManager'representIpv4RemoteAddressAsIpv4MappedIpv6
                                                                                                                x__)
                                                                                                             (Control.DeepSeq.deepseq
                                                                                                                (_HttpConnectionManager'upgradeConfigs
                                                                                                                   x__)
                                                                                                                (Control.DeepSeq.deepseq
                                                                                                                   (_HttpConnectionManager'normalizePath
                                                                                                                      x__)
                                                                                                                   (Control.DeepSeq.deepseq
                                                                                                                      (_HttpConnectionManager'mergeSlashes
                                                                                                                         x__)
                                                                                                                      (Control.DeepSeq.deepseq
                                                                                                                         (_HttpConnectionManager'pathWithEscapedSlashesAction
                                                                                                                            x__)
                                                                                                                         (Control.DeepSeq.deepseq
                                                                                                                            (_HttpConnectionManager'requestIdExtension
                                                                                                                               x__)
                                                                                                                            (Control.DeepSeq.deepseq
                                                                                                                               (_HttpConnectionManager'localReplyConfig
                                                                                                                                  x__)
                                                                                                                               (Control.DeepSeq.deepseq
                                                                                                                                  (_HttpConnectionManager'stripMatchingHostPort
                                                                                                                                     x__)
                                                                                                                                  (Control.DeepSeq.deepseq
                                                                                                                                     (_HttpConnectionManager'streamErrorOnInvalidHttpMessage
                                                                                                                                        x__)
                                                                                                                                     (Control.DeepSeq.deepseq
                                                                                                                                        (_HttpConnectionManager'pathNormalizationOptions
                                                                                                                                           x__)
                                                                                                                                        (Control.DeepSeq.deepseq
                                                                                                                                           (_HttpConnectionManager'stripTrailingHostDot
                                                                                                                                              x__)
                                                                                                                                           (Control.DeepSeq.deepseq
                                                                                                                                              (_HttpConnectionManager'routeSpecifier
                                                                                                                                                 x__)
                                                                                                                                              (Control.DeepSeq.deepseq
                                                                                                                                                 (_HttpConnectionManager'stripPortMode
                                                                                                                                                    x__)
                                                                                                                                                 ()))))))))))))))))))))))))))))))))))))))))))))
instance Control.DeepSeq.NFData HttpConnectionManager'RouteSpecifier where
  rnf (HttpConnectionManager'Rds x__) = Control.DeepSeq.rnf x__
  rnf (HttpConnectionManager'RouteConfig x__)
    = Control.DeepSeq.rnf x__
  rnf (HttpConnectionManager'ScopedRoutes x__)
    = Control.DeepSeq.rnf x__
instance Control.DeepSeq.NFData HttpConnectionManager'StripPortMode where
  rnf (HttpConnectionManager'StripAnyHostPort x__)
    = Control.DeepSeq.rnf x__
_HttpConnectionManager'Rds ::
  Data.ProtoLens.Prism.Prism' HttpConnectionManager'RouteSpecifier Rds
_HttpConnectionManager'Rds
  = Data.ProtoLens.Prism.prism'
      HttpConnectionManager'Rds
      (\ p__
         -> case p__ of
              (HttpConnectionManager'Rds p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpConnectionManager'RouteConfig ::
  Data.ProtoLens.Prism.Prism' HttpConnectionManager'RouteSpecifier Proto.Envoy.Config.Route.V3.Route.RouteConfiguration
_HttpConnectionManager'RouteConfig
  = Data.ProtoLens.Prism.prism'
      HttpConnectionManager'RouteConfig
      (\ p__
         -> case p__ of
              (HttpConnectionManager'RouteConfig p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpConnectionManager'ScopedRoutes ::
  Data.ProtoLens.Prism.Prism' HttpConnectionManager'RouteSpecifier ScopedRoutes
_HttpConnectionManager'ScopedRoutes
  = Data.ProtoLens.Prism.prism'
      HttpConnectionManager'ScopedRoutes
      (\ p__
         -> case p__ of
              (HttpConnectionManager'ScopedRoutes p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpConnectionManager'StripAnyHostPort ::
  Data.ProtoLens.Prism.Prism' HttpConnectionManager'StripPortMode Prelude.Bool
_HttpConnectionManager'StripAnyHostPort
  = Data.ProtoLens.Prism.prism'
      HttpConnectionManager'StripAnyHostPort
      (\ p__
         -> case p__ of {
              (HttpConnectionManager'StripAnyHostPort p__val)
                -> Prelude.Just p__val })
newtype HttpConnectionManager'CodecType'UnrecognizedValue
  = HttpConnectionManager'CodecType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data HttpConnectionManager'CodecType
  = HttpConnectionManager'AUTO |
    HttpConnectionManager'HTTP1 |
    HttpConnectionManager'HTTP2 |
    HttpConnectionManager'HTTP3 |
    HttpConnectionManager'CodecType'Unrecognized !HttpConnectionManager'CodecType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum HttpConnectionManager'CodecType where
  maybeToEnum 0 = Prelude.Just HttpConnectionManager'AUTO
  maybeToEnum 1 = Prelude.Just HttpConnectionManager'HTTP1
  maybeToEnum 2 = Prelude.Just HttpConnectionManager'HTTP2
  maybeToEnum 3 = Prelude.Just HttpConnectionManager'HTTP3
  maybeToEnum k
    = Prelude.Just
        (HttpConnectionManager'CodecType'Unrecognized
           (HttpConnectionManager'CodecType'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum HttpConnectionManager'AUTO = "AUTO"
  showEnum HttpConnectionManager'HTTP1 = "HTTP1"
  showEnum HttpConnectionManager'HTTP2 = "HTTP2"
  showEnum HttpConnectionManager'HTTP3 = "HTTP3"
  showEnum
    (HttpConnectionManager'CodecType'Unrecognized (HttpConnectionManager'CodecType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "AUTO" = Prelude.Just HttpConnectionManager'AUTO
    | (Prelude.==) k "HTTP1" = Prelude.Just HttpConnectionManager'HTTP1
    | (Prelude.==) k "HTTP2" = Prelude.Just HttpConnectionManager'HTTP2
    | (Prelude.==) k "HTTP3" = Prelude.Just HttpConnectionManager'HTTP3
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded HttpConnectionManager'CodecType where
  minBound = HttpConnectionManager'AUTO
  maxBound = HttpConnectionManager'HTTP3
instance Prelude.Enum HttpConnectionManager'CodecType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum CodecType: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum HttpConnectionManager'AUTO = 0
  fromEnum HttpConnectionManager'HTTP1 = 1
  fromEnum HttpConnectionManager'HTTP2 = 2
  fromEnum HttpConnectionManager'HTTP3 = 3
  fromEnum
    (HttpConnectionManager'CodecType'Unrecognized (HttpConnectionManager'CodecType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ HttpConnectionManager'HTTP3
    = Prelude.error
        "HttpConnectionManager'CodecType.succ: bad argument HttpConnectionManager'HTTP3. This value would be out of bounds."
  succ HttpConnectionManager'AUTO = HttpConnectionManager'HTTP1
  succ HttpConnectionManager'HTTP1 = HttpConnectionManager'HTTP2
  succ HttpConnectionManager'HTTP2 = HttpConnectionManager'HTTP3
  succ (HttpConnectionManager'CodecType'Unrecognized _)
    = Prelude.error
        "HttpConnectionManager'CodecType.succ: bad argument: unrecognized value"
  pred HttpConnectionManager'AUTO
    = Prelude.error
        "HttpConnectionManager'CodecType.pred: bad argument HttpConnectionManager'AUTO. This value would be out of bounds."
  pred HttpConnectionManager'HTTP1 = HttpConnectionManager'AUTO
  pred HttpConnectionManager'HTTP2 = HttpConnectionManager'HTTP1
  pred HttpConnectionManager'HTTP3 = HttpConnectionManager'HTTP2
  pred (HttpConnectionManager'CodecType'Unrecognized _)
    = Prelude.error
        "HttpConnectionManager'CodecType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault HttpConnectionManager'CodecType where
  fieldDefault = HttpConnectionManager'AUTO
instance Control.DeepSeq.NFData HttpConnectionManager'CodecType where
  rnf x__ = Prelude.seq x__ ()
newtype HttpConnectionManager'ForwardClientCertDetails'UnrecognizedValue
  = HttpConnectionManager'ForwardClientCertDetails'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data HttpConnectionManager'ForwardClientCertDetails
  = HttpConnectionManager'SANITIZE |
    HttpConnectionManager'FORWARD_ONLY |
    HttpConnectionManager'APPEND_FORWARD |
    HttpConnectionManager'SANITIZE_SET |
    HttpConnectionManager'ALWAYS_FORWARD_ONLY |
    HttpConnectionManager'ForwardClientCertDetails'Unrecognized !HttpConnectionManager'ForwardClientCertDetails'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum HttpConnectionManager'ForwardClientCertDetails where
  maybeToEnum 0 = Prelude.Just HttpConnectionManager'SANITIZE
  maybeToEnum 1 = Prelude.Just HttpConnectionManager'FORWARD_ONLY
  maybeToEnum 2 = Prelude.Just HttpConnectionManager'APPEND_FORWARD
  maybeToEnum 3 = Prelude.Just HttpConnectionManager'SANITIZE_SET
  maybeToEnum 4
    = Prelude.Just HttpConnectionManager'ALWAYS_FORWARD_ONLY
  maybeToEnum k
    = Prelude.Just
        (HttpConnectionManager'ForwardClientCertDetails'Unrecognized
           (HttpConnectionManager'ForwardClientCertDetails'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum HttpConnectionManager'SANITIZE = "SANITIZE"
  showEnum HttpConnectionManager'FORWARD_ONLY = "FORWARD_ONLY"
  showEnum HttpConnectionManager'APPEND_FORWARD = "APPEND_FORWARD"
  showEnum HttpConnectionManager'SANITIZE_SET = "SANITIZE_SET"
  showEnum HttpConnectionManager'ALWAYS_FORWARD_ONLY
    = "ALWAYS_FORWARD_ONLY"
  showEnum
    (HttpConnectionManager'ForwardClientCertDetails'Unrecognized (HttpConnectionManager'ForwardClientCertDetails'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "SANITIZE"
    = Prelude.Just HttpConnectionManager'SANITIZE
    | (Prelude.==) k "FORWARD_ONLY"
    = Prelude.Just HttpConnectionManager'FORWARD_ONLY
    | (Prelude.==) k "APPEND_FORWARD"
    = Prelude.Just HttpConnectionManager'APPEND_FORWARD
    | (Prelude.==) k "SANITIZE_SET"
    = Prelude.Just HttpConnectionManager'SANITIZE_SET
    | (Prelude.==) k "ALWAYS_FORWARD_ONLY"
    = Prelude.Just HttpConnectionManager'ALWAYS_FORWARD_ONLY
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded HttpConnectionManager'ForwardClientCertDetails where
  minBound = HttpConnectionManager'SANITIZE
  maxBound = HttpConnectionManager'ALWAYS_FORWARD_ONLY
instance Prelude.Enum HttpConnectionManager'ForwardClientCertDetails where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ForwardClientCertDetails: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum HttpConnectionManager'SANITIZE = 0
  fromEnum HttpConnectionManager'FORWARD_ONLY = 1
  fromEnum HttpConnectionManager'APPEND_FORWARD = 2
  fromEnum HttpConnectionManager'SANITIZE_SET = 3
  fromEnum HttpConnectionManager'ALWAYS_FORWARD_ONLY = 4
  fromEnum
    (HttpConnectionManager'ForwardClientCertDetails'Unrecognized (HttpConnectionManager'ForwardClientCertDetails'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ HttpConnectionManager'ALWAYS_FORWARD_ONLY
    = Prelude.error
        "HttpConnectionManager'ForwardClientCertDetails.succ: bad argument HttpConnectionManager'ALWAYS_FORWARD_ONLY. This value would be out of bounds."
  succ HttpConnectionManager'SANITIZE
    = HttpConnectionManager'FORWARD_ONLY
  succ HttpConnectionManager'FORWARD_ONLY
    = HttpConnectionManager'APPEND_FORWARD
  succ HttpConnectionManager'APPEND_FORWARD
    = HttpConnectionManager'SANITIZE_SET
  succ HttpConnectionManager'SANITIZE_SET
    = HttpConnectionManager'ALWAYS_FORWARD_ONLY
  succ
    (HttpConnectionManager'ForwardClientCertDetails'Unrecognized _)
    = Prelude.error
        "HttpConnectionManager'ForwardClientCertDetails.succ: bad argument: unrecognized value"
  pred HttpConnectionManager'SANITIZE
    = Prelude.error
        "HttpConnectionManager'ForwardClientCertDetails.pred: bad argument HttpConnectionManager'SANITIZE. This value would be out of bounds."
  pred HttpConnectionManager'FORWARD_ONLY
    = HttpConnectionManager'SANITIZE
  pred HttpConnectionManager'APPEND_FORWARD
    = HttpConnectionManager'FORWARD_ONLY
  pred HttpConnectionManager'SANITIZE_SET
    = HttpConnectionManager'APPEND_FORWARD
  pred HttpConnectionManager'ALWAYS_FORWARD_ONLY
    = HttpConnectionManager'SANITIZE_SET
  pred
    (HttpConnectionManager'ForwardClientCertDetails'Unrecognized _)
    = Prelude.error
        "HttpConnectionManager'ForwardClientCertDetails.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault HttpConnectionManager'ForwardClientCertDetails where
  fieldDefault = HttpConnectionManager'SANITIZE
instance Control.DeepSeq.NFData HttpConnectionManager'ForwardClientCertDetails where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.unixSockets' @:: Lens' HttpConnectionManager'InternalAddressConfig Prelude.Bool@ -}
data HttpConnectionManager'InternalAddressConfig
  = HttpConnectionManager'InternalAddressConfig'_constructor {_HttpConnectionManager'InternalAddressConfig'unixSockets :: !Prelude.Bool,
                                                              _HttpConnectionManager'InternalAddressConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpConnectionManager'InternalAddressConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpConnectionManager'InternalAddressConfig "unixSockets" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'InternalAddressConfig'unixSockets
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'InternalAddressConfig'unixSockets = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpConnectionManager'InternalAddressConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.InternalAddressConfig"
  packedMessageDescriptor _
    = "\n\
      \\NAKInternalAddressConfig\DC2!\n\
      \\funix_sockets\CAN\SOH \SOH(\bR\vunixSockets:i\154\197\136\RSd\n\
      \benvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.InternalAddressConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        unixSockets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unix_sockets"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"unixSockets")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'InternalAddressConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, unixSockets__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpConnectionManager'InternalAddressConfig'_unknownFields
        (\ x__ y__
           -> x__
                {_HttpConnectionManager'InternalAddressConfig'_unknownFields = y__})
  defMessage
    = HttpConnectionManager'InternalAddressConfig'_constructor
        {_HttpConnectionManager'InternalAddressConfig'unixSockets = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'InternalAddressConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpConnectionManager'InternalAddressConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser HttpConnectionManager'InternalAddressConfig
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "unix_sockets"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"unixSockets") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "InternalAddressConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"unixSockets") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt
                         (\ b -> if b then 1 else 0)
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HttpConnectionManager'InternalAddressConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpConnectionManager'InternalAddressConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpConnectionManager'InternalAddressConfig'unixSockets x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.forwardingTransformation' @:: Lens' HttpConnectionManager'PathNormalizationOptions Proto.Envoy.Type.Http.V3.PathTransformation.PathTransformation@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'forwardingTransformation' @:: Lens' HttpConnectionManager'PathNormalizationOptions (Prelude.Maybe Proto.Envoy.Type.Http.V3.PathTransformation.PathTransformation)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.httpFilterTransformation' @:: Lens' HttpConnectionManager'PathNormalizationOptions Proto.Envoy.Type.Http.V3.PathTransformation.PathTransformation@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'httpFilterTransformation' @:: Lens' HttpConnectionManager'PathNormalizationOptions (Prelude.Maybe Proto.Envoy.Type.Http.V3.PathTransformation.PathTransformation)@ -}
data HttpConnectionManager'PathNormalizationOptions
  = HttpConnectionManager'PathNormalizationOptions'_constructor {_HttpConnectionManager'PathNormalizationOptions'forwardingTransformation :: !(Prelude.Maybe Proto.Envoy.Type.Http.V3.PathTransformation.PathTransformation),
                                                                 _HttpConnectionManager'PathNormalizationOptions'httpFilterTransformation :: !(Prelude.Maybe Proto.Envoy.Type.Http.V3.PathTransformation.PathTransformation),
                                                                 _HttpConnectionManager'PathNormalizationOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpConnectionManager'PathNormalizationOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpConnectionManager'PathNormalizationOptions "forwardingTransformation" Proto.Envoy.Type.Http.V3.PathTransformation.PathTransformation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'PathNormalizationOptions'forwardingTransformation
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'PathNormalizationOptions'forwardingTransformation = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager'PathNormalizationOptions "maybe'forwardingTransformation" (Prelude.Maybe Proto.Envoy.Type.Http.V3.PathTransformation.PathTransformation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'PathNormalizationOptions'forwardingTransformation
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'PathNormalizationOptions'forwardingTransformation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager'PathNormalizationOptions "httpFilterTransformation" Proto.Envoy.Type.Http.V3.PathTransformation.PathTransformation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'PathNormalizationOptions'httpFilterTransformation
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'PathNormalizationOptions'httpFilterTransformation = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager'PathNormalizationOptions "maybe'httpFilterTransformation" (Prelude.Maybe Proto.Envoy.Type.Http.V3.PathTransformation.PathTransformation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'PathNormalizationOptions'httpFilterTransformation
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'PathNormalizationOptions'httpFilterTransformation = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpConnectionManager'PathNormalizationOptions where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.PathNormalizationOptions"
  packedMessageDescriptor _
    = "\n\
      \\CANPathNormalizationOptions\DC2c\n\
      \\EMforwarding_transformation\CAN\SOH \SOH(\v2&.envoy.type.http.v3.PathTransformationR\CANforwardingTransformation\DC2d\n\
      \\SUBhttp_filter_transformation\CAN\STX \SOH(\v2&.envoy.type.http.v3.PathTransformationR\CANhttpFilterTransformation"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        forwardingTransformation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "forwarding_transformation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Http.V3.PathTransformation.PathTransformation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'forwardingTransformation")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'PathNormalizationOptions
        httpFilterTransformation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_filter_transformation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Http.V3.PathTransformation.PathTransformation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpFilterTransformation")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'PathNormalizationOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            forwardingTransformation__field_descriptor),
           (Data.ProtoLens.Tag 2, httpFilterTransformation__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpConnectionManager'PathNormalizationOptions'_unknownFields
        (\ x__ y__
           -> x__
                {_HttpConnectionManager'PathNormalizationOptions'_unknownFields = y__})
  defMessage
    = HttpConnectionManager'PathNormalizationOptions'_constructor
        {_HttpConnectionManager'PathNormalizationOptions'forwardingTransformation = Prelude.Nothing,
         _HttpConnectionManager'PathNormalizationOptions'httpFilterTransformation = Prelude.Nothing,
         _HttpConnectionManager'PathNormalizationOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpConnectionManager'PathNormalizationOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser HttpConnectionManager'PathNormalizationOptions
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
                                       "forwarding_transformation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"forwardingTransformation") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_filter_transformation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpFilterTransformation") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PathNormalizationOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'forwardingTransformation") _x
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
                       (Data.ProtoLens.Field.field @"maybe'httpFilterTransformation") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData HttpConnectionManager'PathNormalizationOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpConnectionManager'PathNormalizationOptions'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_HttpConnectionManager'PathNormalizationOptions'forwardingTransformation
                   x__)
                (Control.DeepSeq.deepseq
                   (_HttpConnectionManager'PathNormalizationOptions'httpFilterTransformation
                      x__)
                   ()))
newtype HttpConnectionManager'PathWithEscapedSlashesAction'UnrecognizedValue
  = HttpConnectionManager'PathWithEscapedSlashesAction'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data HttpConnectionManager'PathWithEscapedSlashesAction
  = HttpConnectionManager'IMPLEMENTATION_SPECIFIC_DEFAULT |
    HttpConnectionManager'KEEP_UNCHANGED |
    HttpConnectionManager'REJECT_REQUEST |
    HttpConnectionManager'UNESCAPE_AND_REDIRECT |
    HttpConnectionManager'UNESCAPE_AND_FORWARD |
    HttpConnectionManager'PathWithEscapedSlashesAction'Unrecognized !HttpConnectionManager'PathWithEscapedSlashesAction'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum HttpConnectionManager'PathWithEscapedSlashesAction where
  maybeToEnum 0
    = Prelude.Just
        HttpConnectionManager'IMPLEMENTATION_SPECIFIC_DEFAULT
  maybeToEnum 1 = Prelude.Just HttpConnectionManager'KEEP_UNCHANGED
  maybeToEnum 2 = Prelude.Just HttpConnectionManager'REJECT_REQUEST
  maybeToEnum 3
    = Prelude.Just HttpConnectionManager'UNESCAPE_AND_REDIRECT
  maybeToEnum 4
    = Prelude.Just HttpConnectionManager'UNESCAPE_AND_FORWARD
  maybeToEnum k
    = Prelude.Just
        (HttpConnectionManager'PathWithEscapedSlashesAction'Unrecognized
           (HttpConnectionManager'PathWithEscapedSlashesAction'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum HttpConnectionManager'IMPLEMENTATION_SPECIFIC_DEFAULT
    = "IMPLEMENTATION_SPECIFIC_DEFAULT"
  showEnum HttpConnectionManager'KEEP_UNCHANGED = "KEEP_UNCHANGED"
  showEnum HttpConnectionManager'REJECT_REQUEST = "REJECT_REQUEST"
  showEnum HttpConnectionManager'UNESCAPE_AND_REDIRECT
    = "UNESCAPE_AND_REDIRECT"
  showEnum HttpConnectionManager'UNESCAPE_AND_FORWARD
    = "UNESCAPE_AND_FORWARD"
  showEnum
    (HttpConnectionManager'PathWithEscapedSlashesAction'Unrecognized (HttpConnectionManager'PathWithEscapedSlashesAction'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "IMPLEMENTATION_SPECIFIC_DEFAULT"
    = Prelude.Just
        HttpConnectionManager'IMPLEMENTATION_SPECIFIC_DEFAULT
    | (Prelude.==) k "KEEP_UNCHANGED"
    = Prelude.Just HttpConnectionManager'KEEP_UNCHANGED
    | (Prelude.==) k "REJECT_REQUEST"
    = Prelude.Just HttpConnectionManager'REJECT_REQUEST
    | (Prelude.==) k "UNESCAPE_AND_REDIRECT"
    = Prelude.Just HttpConnectionManager'UNESCAPE_AND_REDIRECT
    | (Prelude.==) k "UNESCAPE_AND_FORWARD"
    = Prelude.Just HttpConnectionManager'UNESCAPE_AND_FORWARD
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded HttpConnectionManager'PathWithEscapedSlashesAction where
  minBound = HttpConnectionManager'IMPLEMENTATION_SPECIFIC_DEFAULT
  maxBound = HttpConnectionManager'UNESCAPE_AND_FORWARD
instance Prelude.Enum HttpConnectionManager'PathWithEscapedSlashesAction where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum PathWithEscapedSlashesAction: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum HttpConnectionManager'IMPLEMENTATION_SPECIFIC_DEFAULT = 0
  fromEnum HttpConnectionManager'KEEP_UNCHANGED = 1
  fromEnum HttpConnectionManager'REJECT_REQUEST = 2
  fromEnum HttpConnectionManager'UNESCAPE_AND_REDIRECT = 3
  fromEnum HttpConnectionManager'UNESCAPE_AND_FORWARD = 4
  fromEnum
    (HttpConnectionManager'PathWithEscapedSlashesAction'Unrecognized (HttpConnectionManager'PathWithEscapedSlashesAction'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ HttpConnectionManager'UNESCAPE_AND_FORWARD
    = Prelude.error
        "HttpConnectionManager'PathWithEscapedSlashesAction.succ: bad argument HttpConnectionManager'UNESCAPE_AND_FORWARD. This value would be out of bounds."
  succ HttpConnectionManager'IMPLEMENTATION_SPECIFIC_DEFAULT
    = HttpConnectionManager'KEEP_UNCHANGED
  succ HttpConnectionManager'KEEP_UNCHANGED
    = HttpConnectionManager'REJECT_REQUEST
  succ HttpConnectionManager'REJECT_REQUEST
    = HttpConnectionManager'UNESCAPE_AND_REDIRECT
  succ HttpConnectionManager'UNESCAPE_AND_REDIRECT
    = HttpConnectionManager'UNESCAPE_AND_FORWARD
  succ
    (HttpConnectionManager'PathWithEscapedSlashesAction'Unrecognized _)
    = Prelude.error
        "HttpConnectionManager'PathWithEscapedSlashesAction.succ: bad argument: unrecognized value"
  pred HttpConnectionManager'IMPLEMENTATION_SPECIFIC_DEFAULT
    = Prelude.error
        "HttpConnectionManager'PathWithEscapedSlashesAction.pred: bad argument HttpConnectionManager'IMPLEMENTATION_SPECIFIC_DEFAULT. This value would be out of bounds."
  pred HttpConnectionManager'KEEP_UNCHANGED
    = HttpConnectionManager'IMPLEMENTATION_SPECIFIC_DEFAULT
  pred HttpConnectionManager'REJECT_REQUEST
    = HttpConnectionManager'KEEP_UNCHANGED
  pred HttpConnectionManager'UNESCAPE_AND_REDIRECT
    = HttpConnectionManager'REJECT_REQUEST
  pred HttpConnectionManager'UNESCAPE_AND_FORWARD
    = HttpConnectionManager'UNESCAPE_AND_REDIRECT
  pred
    (HttpConnectionManager'PathWithEscapedSlashesAction'Unrecognized _)
    = Prelude.error
        "HttpConnectionManager'PathWithEscapedSlashesAction.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault HttpConnectionManager'PathWithEscapedSlashesAction where
  fieldDefault
    = HttpConnectionManager'IMPLEMENTATION_SPECIFIC_DEFAULT
instance Control.DeepSeq.NFData HttpConnectionManager'PathWithEscapedSlashesAction where
  rnf x__ = Prelude.seq x__ ()
newtype HttpConnectionManager'ServerHeaderTransformation'UnrecognizedValue
  = HttpConnectionManager'ServerHeaderTransformation'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data HttpConnectionManager'ServerHeaderTransformation
  = HttpConnectionManager'OVERWRITE |
    HttpConnectionManager'APPEND_IF_ABSENT |
    HttpConnectionManager'PASS_THROUGH |
    HttpConnectionManager'ServerHeaderTransformation'Unrecognized !HttpConnectionManager'ServerHeaderTransformation'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum HttpConnectionManager'ServerHeaderTransformation where
  maybeToEnum 0 = Prelude.Just HttpConnectionManager'OVERWRITE
  maybeToEnum 1 = Prelude.Just HttpConnectionManager'APPEND_IF_ABSENT
  maybeToEnum 2 = Prelude.Just HttpConnectionManager'PASS_THROUGH
  maybeToEnum k
    = Prelude.Just
        (HttpConnectionManager'ServerHeaderTransformation'Unrecognized
           (HttpConnectionManager'ServerHeaderTransformation'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum HttpConnectionManager'OVERWRITE = "OVERWRITE"
  showEnum HttpConnectionManager'APPEND_IF_ABSENT
    = "APPEND_IF_ABSENT"
  showEnum HttpConnectionManager'PASS_THROUGH = "PASS_THROUGH"
  showEnum
    (HttpConnectionManager'ServerHeaderTransformation'Unrecognized (HttpConnectionManager'ServerHeaderTransformation'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "OVERWRITE"
    = Prelude.Just HttpConnectionManager'OVERWRITE
    | (Prelude.==) k "APPEND_IF_ABSENT"
    = Prelude.Just HttpConnectionManager'APPEND_IF_ABSENT
    | (Prelude.==) k "PASS_THROUGH"
    = Prelude.Just HttpConnectionManager'PASS_THROUGH
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded HttpConnectionManager'ServerHeaderTransformation where
  minBound = HttpConnectionManager'OVERWRITE
  maxBound = HttpConnectionManager'PASS_THROUGH
instance Prelude.Enum HttpConnectionManager'ServerHeaderTransformation where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ServerHeaderTransformation: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum HttpConnectionManager'OVERWRITE = 0
  fromEnum HttpConnectionManager'APPEND_IF_ABSENT = 1
  fromEnum HttpConnectionManager'PASS_THROUGH = 2
  fromEnum
    (HttpConnectionManager'ServerHeaderTransformation'Unrecognized (HttpConnectionManager'ServerHeaderTransformation'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ HttpConnectionManager'PASS_THROUGH
    = Prelude.error
        "HttpConnectionManager'ServerHeaderTransformation.succ: bad argument HttpConnectionManager'PASS_THROUGH. This value would be out of bounds."
  succ HttpConnectionManager'OVERWRITE
    = HttpConnectionManager'APPEND_IF_ABSENT
  succ HttpConnectionManager'APPEND_IF_ABSENT
    = HttpConnectionManager'PASS_THROUGH
  succ
    (HttpConnectionManager'ServerHeaderTransformation'Unrecognized _)
    = Prelude.error
        "HttpConnectionManager'ServerHeaderTransformation.succ: bad argument: unrecognized value"
  pred HttpConnectionManager'OVERWRITE
    = Prelude.error
        "HttpConnectionManager'ServerHeaderTransformation.pred: bad argument HttpConnectionManager'OVERWRITE. This value would be out of bounds."
  pred HttpConnectionManager'APPEND_IF_ABSENT
    = HttpConnectionManager'OVERWRITE
  pred HttpConnectionManager'PASS_THROUGH
    = HttpConnectionManager'APPEND_IF_ABSENT
  pred
    (HttpConnectionManager'ServerHeaderTransformation'Unrecognized _)
    = Prelude.error
        "HttpConnectionManager'ServerHeaderTransformation.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault HttpConnectionManager'ServerHeaderTransformation where
  fieldDefault = HttpConnectionManager'OVERWRITE
instance Control.DeepSeq.NFData HttpConnectionManager'ServerHeaderTransformation where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.subject' @:: Lens' HttpConnectionManager'SetCurrentClientCertDetails Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'subject' @:: Lens' HttpConnectionManager'SetCurrentClientCertDetails (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.cert' @:: Lens' HttpConnectionManager'SetCurrentClientCertDetails Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.chain' @:: Lens' HttpConnectionManager'SetCurrentClientCertDetails Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.dns' @:: Lens' HttpConnectionManager'SetCurrentClientCertDetails Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.uri' @:: Lens' HttpConnectionManager'SetCurrentClientCertDetails Prelude.Bool@ -}
data HttpConnectionManager'SetCurrentClientCertDetails
  = HttpConnectionManager'SetCurrentClientCertDetails'_constructor {_HttpConnectionManager'SetCurrentClientCertDetails'subject :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                                                    _HttpConnectionManager'SetCurrentClientCertDetails'cert :: !Prelude.Bool,
                                                                    _HttpConnectionManager'SetCurrentClientCertDetails'chain :: !Prelude.Bool,
                                                                    _HttpConnectionManager'SetCurrentClientCertDetails'dns :: !Prelude.Bool,
                                                                    _HttpConnectionManager'SetCurrentClientCertDetails'uri :: !Prelude.Bool,
                                                                    _HttpConnectionManager'SetCurrentClientCertDetails'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpConnectionManager'SetCurrentClientCertDetails where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpConnectionManager'SetCurrentClientCertDetails "subject" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'SetCurrentClientCertDetails'subject
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'SetCurrentClientCertDetails'subject = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager'SetCurrentClientCertDetails "maybe'subject" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'SetCurrentClientCertDetails'subject
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'SetCurrentClientCertDetails'subject = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager'SetCurrentClientCertDetails "cert" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'SetCurrentClientCertDetails'cert
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'SetCurrentClientCertDetails'cert = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager'SetCurrentClientCertDetails "chain" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'SetCurrentClientCertDetails'chain
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'SetCurrentClientCertDetails'chain = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager'SetCurrentClientCertDetails "dns" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'SetCurrentClientCertDetails'dns
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'SetCurrentClientCertDetails'dns = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager'SetCurrentClientCertDetails "uri" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'SetCurrentClientCertDetails'uri
           (\ x__ y__
              -> x__
                   {_HttpConnectionManager'SetCurrentClientCertDetails'uri = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpConnectionManager'SetCurrentClientCertDetails where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.SetCurrentClientCertDetails"
  packedMessageDescriptor _
    = "\n\
      \\ESCSetCurrentClientCertDetails\DC24\n\
      \\asubject\CAN\SOH \SOH(\v2\SUB.google.protobuf.BoolValueR\asubject\DC2\DC2\n\
      \\EOTcert\CAN\ETX \SOH(\bR\EOTcert\DC2\DC4\n\
      \\ENQchain\CAN\ACK \SOH(\bR\ENQchain\DC2\DLE\n\
      \\ETXdns\CAN\EOT \SOH(\bR\ETXdns\DC2\DLE\n\
      \\ETXuri\CAN\ENQ \SOH(\bR\ETXuri:o\154\197\136\RSj\n\
      \henvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.SetCurrentClientCertDetailsJ\EOT\b\STX\DLE\ETX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        subject__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "subject"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'subject")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'SetCurrentClientCertDetails
        cert__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cert"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"cert")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'SetCurrentClientCertDetails
        chain__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chain"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"chain")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'SetCurrentClientCertDetails
        dns__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"dns")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'SetCurrentClientCertDetails
        uri__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uri"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"uri")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'SetCurrentClientCertDetails
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, subject__field_descriptor),
           (Data.ProtoLens.Tag 3, cert__field_descriptor),
           (Data.ProtoLens.Tag 6, chain__field_descriptor),
           (Data.ProtoLens.Tag 4, dns__field_descriptor),
           (Data.ProtoLens.Tag 5, uri__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpConnectionManager'SetCurrentClientCertDetails'_unknownFields
        (\ x__ y__
           -> x__
                {_HttpConnectionManager'SetCurrentClientCertDetails'_unknownFields = y__})
  defMessage
    = HttpConnectionManager'SetCurrentClientCertDetails'_constructor
        {_HttpConnectionManager'SetCurrentClientCertDetails'subject = Prelude.Nothing,
         _HttpConnectionManager'SetCurrentClientCertDetails'cert = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'SetCurrentClientCertDetails'chain = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'SetCurrentClientCertDetails'dns = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'SetCurrentClientCertDetails'uri = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'SetCurrentClientCertDetails'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpConnectionManager'SetCurrentClientCertDetails
          -> Data.ProtoLens.Encoding.Bytes.Parser HttpConnectionManager'SetCurrentClientCertDetails
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
                                       "subject"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"subject") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "cert"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cert") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "chain"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chain") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dns"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dns") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "uri"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"uri") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SetCurrentClientCertDetails"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'subject") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"cert") _x
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
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"chain") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt
                               (\ b -> if b then 1 else 0)
                               _v))
                   ((Data.Monoid.<>)
                      (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"dns") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0)
                                  _v))
                      ((Data.Monoid.<>)
                         (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"uri") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (\ b -> if b then 1 else 0)
                                     _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData HttpConnectionManager'SetCurrentClientCertDetails where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpConnectionManager'SetCurrentClientCertDetails'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_HttpConnectionManager'SetCurrentClientCertDetails'subject x__)
                (Control.DeepSeq.deepseq
                   (_HttpConnectionManager'SetCurrentClientCertDetails'cert x__)
                   (Control.DeepSeq.deepseq
                      (_HttpConnectionManager'SetCurrentClientCertDetails'chain x__)
                      (Control.DeepSeq.deepseq
                         (_HttpConnectionManager'SetCurrentClientCertDetails'dns x__)
                         (Control.DeepSeq.deepseq
                            (_HttpConnectionManager'SetCurrentClientCertDetails'uri x__)
                            ())))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.clientSampling' @:: Lens' HttpConnectionManager'Tracing Proto.Envoy.Type.V3.Percent.Percent@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'clientSampling' @:: Lens' HttpConnectionManager'Tracing (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.randomSampling' @:: Lens' HttpConnectionManager'Tracing Proto.Envoy.Type.V3.Percent.Percent@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'randomSampling' @:: Lens' HttpConnectionManager'Tracing (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.overallSampling' @:: Lens' HttpConnectionManager'Tracing Proto.Envoy.Type.V3.Percent.Percent@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'overallSampling' @:: Lens' HttpConnectionManager'Tracing (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.verbose' @:: Lens' HttpConnectionManager'Tracing Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maxPathTagLength' @:: Lens' HttpConnectionManager'Tracing Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'maxPathTagLength' @:: Lens' HttpConnectionManager'Tracing (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.customTags' @:: Lens' HttpConnectionManager'Tracing [Proto.Envoy.Type.Tracing.V3.CustomTag.CustomTag]@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.vec'customTags' @:: Lens' HttpConnectionManager'Tracing (Data.Vector.Vector Proto.Envoy.Type.Tracing.V3.CustomTag.CustomTag)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.provider' @:: Lens' HttpConnectionManager'Tracing Proto.Envoy.Config.Trace.V3.HttpTracer.Tracing'Http@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'provider' @:: Lens' HttpConnectionManager'Tracing (Prelude.Maybe Proto.Envoy.Config.Trace.V3.HttpTracer.Tracing'Http)@ -}
data HttpConnectionManager'Tracing
  = HttpConnectionManager'Tracing'_constructor {_HttpConnectionManager'Tracing'clientSampling :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent),
                                                _HttpConnectionManager'Tracing'randomSampling :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent),
                                                _HttpConnectionManager'Tracing'overallSampling :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent),
                                                _HttpConnectionManager'Tracing'verbose :: !Prelude.Bool,
                                                _HttpConnectionManager'Tracing'maxPathTagLength :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                                _HttpConnectionManager'Tracing'customTags :: !(Data.Vector.Vector Proto.Envoy.Type.Tracing.V3.CustomTag.CustomTag),
                                                _HttpConnectionManager'Tracing'provider :: !(Prelude.Maybe Proto.Envoy.Config.Trace.V3.HttpTracer.Tracing'Http),
                                                _HttpConnectionManager'Tracing'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpConnectionManager'Tracing where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpConnectionManager'Tracing "clientSampling" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'Tracing'clientSampling
           (\ x__ y__
              -> x__ {_HttpConnectionManager'Tracing'clientSampling = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager'Tracing "maybe'clientSampling" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'Tracing'clientSampling
           (\ x__ y__
              -> x__ {_HttpConnectionManager'Tracing'clientSampling = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager'Tracing "randomSampling" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'Tracing'randomSampling
           (\ x__ y__
              -> x__ {_HttpConnectionManager'Tracing'randomSampling = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager'Tracing "maybe'randomSampling" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'Tracing'randomSampling
           (\ x__ y__
              -> x__ {_HttpConnectionManager'Tracing'randomSampling = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager'Tracing "overallSampling" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'Tracing'overallSampling
           (\ x__ y__
              -> x__ {_HttpConnectionManager'Tracing'overallSampling = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager'Tracing "maybe'overallSampling" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'Tracing'overallSampling
           (\ x__ y__
              -> x__ {_HttpConnectionManager'Tracing'overallSampling = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager'Tracing "verbose" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'Tracing'verbose
           (\ x__ y__ -> x__ {_HttpConnectionManager'Tracing'verbose = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager'Tracing "maxPathTagLength" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'Tracing'maxPathTagLength
           (\ x__ y__
              -> x__ {_HttpConnectionManager'Tracing'maxPathTagLength = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager'Tracing "maybe'maxPathTagLength" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'Tracing'maxPathTagLength
           (\ x__ y__
              -> x__ {_HttpConnectionManager'Tracing'maxPathTagLength = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager'Tracing "customTags" [Proto.Envoy.Type.Tracing.V3.CustomTag.CustomTag] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'Tracing'customTags
           (\ x__ y__
              -> x__ {_HttpConnectionManager'Tracing'customTags = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HttpConnectionManager'Tracing "vec'customTags" (Data.Vector.Vector Proto.Envoy.Type.Tracing.V3.CustomTag.CustomTag) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'Tracing'customTags
           (\ x__ y__
              -> x__ {_HttpConnectionManager'Tracing'customTags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager'Tracing "provider" Proto.Envoy.Config.Trace.V3.HttpTracer.Tracing'Http where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'Tracing'provider
           (\ x__ y__ -> x__ {_HttpConnectionManager'Tracing'provider = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager'Tracing "maybe'provider" (Prelude.Maybe Proto.Envoy.Config.Trace.V3.HttpTracer.Tracing'Http) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'Tracing'provider
           (\ x__ y__ -> x__ {_HttpConnectionManager'Tracing'provider = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpConnectionManager'Tracing where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.Tracing"
  packedMessageDescriptor _
    = "\n\
      \\aTracing\DC2?\n\
      \\SIclient_sampling\CAN\ETX \SOH(\v2\SYN.envoy.type.v3.PercentR\SOclientSampling\DC2?\n\
      \\SIrandom_sampling\CAN\EOT \SOH(\v2\SYN.envoy.type.v3.PercentR\SOrandomSampling\DC2A\n\
      \\DLEoverall_sampling\CAN\ENQ \SOH(\v2\SYN.envoy.type.v3.PercentR\SIoverallSampling\DC2\CAN\n\
      \\averbose\CAN\ACK \SOH(\bR\averbose\DC2K\n\
      \\DC3max_path_tag_length\CAN\a \SOH(\v2\FS.google.protobuf.UInt32ValueR\DLEmaxPathTagLength\DC2A\n\
      \\vcustom_tags\CAN\b \ETX(\v2 .envoy.type.tracing.v3.CustomTagR\n\
      \customTags\DC2?\n\
      \\bprovider\CAN\t \SOH(\v2#.envoy.config.trace.v3.Tracing.HttpR\bprovider\"(\n\
      \\rOperationName\DC2\v\n\
      \\aINGRESS\DLE\NUL\DC2\n\
      \\n\
      \\ACKEGRESS\DLE\SOH:[\154\197\136\RSV\n\
      \Tenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.TracingJ\EOT\b\SOH\DLE\STXJ\EOT\b\STX\DLE\ETXR\SOoperation_nameR\CANrequest_headers_for_tags"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clientSampling__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_sampling"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clientSampling")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'Tracing
        randomSampling__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "random_sampling"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'randomSampling")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'Tracing
        overallSampling__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "overall_sampling"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'overallSampling")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'Tracing
        verbose__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "verbose"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"verbose")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'Tracing
        maxPathTagLength__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_path_tag_length"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxPathTagLength")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'Tracing
        customTags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "custom_tags"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Tracing.V3.CustomTag.CustomTag)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"customTags")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'Tracing
        provider__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "provider"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Trace.V3.HttpTracer.Tracing'Http)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'provider")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'Tracing
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, clientSampling__field_descriptor),
           (Data.ProtoLens.Tag 4, randomSampling__field_descriptor),
           (Data.ProtoLens.Tag 5, overallSampling__field_descriptor),
           (Data.ProtoLens.Tag 6, verbose__field_descriptor),
           (Data.ProtoLens.Tag 7, maxPathTagLength__field_descriptor),
           (Data.ProtoLens.Tag 8, customTags__field_descriptor),
           (Data.ProtoLens.Tag 9, provider__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpConnectionManager'Tracing'_unknownFields
        (\ x__ y__
           -> x__ {_HttpConnectionManager'Tracing'_unknownFields = y__})
  defMessage
    = HttpConnectionManager'Tracing'_constructor
        {_HttpConnectionManager'Tracing'clientSampling = Prelude.Nothing,
         _HttpConnectionManager'Tracing'randomSampling = Prelude.Nothing,
         _HttpConnectionManager'Tracing'overallSampling = Prelude.Nothing,
         _HttpConnectionManager'Tracing'verbose = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'Tracing'maxPathTagLength = Prelude.Nothing,
         _HttpConnectionManager'Tracing'customTags = Data.Vector.Generic.empty,
         _HttpConnectionManager'Tracing'provider = Prelude.Nothing,
         _HttpConnectionManager'Tracing'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpConnectionManager'Tracing
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Type.Tracing.V3.CustomTag.CustomTag
             -> Data.ProtoLens.Encoding.Bytes.Parser HttpConnectionManager'Tracing
        loop x mutable'customTags
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'customTags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'customTags)
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
                              (Data.ProtoLens.Field.field @"vec'customTags")
                              frozen'customTags
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "client_sampling"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clientSampling") y x)
                                  mutable'customTags
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "random_sampling"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"randomSampling") y x)
                                  mutable'customTags
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "overall_sampling"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"overallSampling") y x)
                                  mutable'customTags
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "verbose"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"verbose") y x)
                                  mutable'customTags
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_path_tag_length"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxPathTagLength") y x)
                                  mutable'customTags
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "custom_tags"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'customTags y)
                                loop x v
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "provider"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"provider") y x)
                                  mutable'customTags
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'customTags
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'customTags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'customTags)
          "Tracing"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'clientSampling") _x
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
                       (Data.ProtoLens.Field.field @"maybe'randomSampling") _x
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
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'overallSampling") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"verbose") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0)
                                  _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'maxPathTagLength") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
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
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.ProtoLens.encodeMessage
                                          _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'customTags") _x))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'provider") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage
                                            _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData HttpConnectionManager'Tracing where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpConnectionManager'Tracing'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpConnectionManager'Tracing'clientSampling x__)
                (Control.DeepSeq.deepseq
                   (_HttpConnectionManager'Tracing'randomSampling x__)
                   (Control.DeepSeq.deepseq
                      (_HttpConnectionManager'Tracing'overallSampling x__)
                      (Control.DeepSeq.deepseq
                         (_HttpConnectionManager'Tracing'verbose x__)
                         (Control.DeepSeq.deepseq
                            (_HttpConnectionManager'Tracing'maxPathTagLength x__)
                            (Control.DeepSeq.deepseq
                               (_HttpConnectionManager'Tracing'customTags x__)
                               (Control.DeepSeq.deepseq
                                  (_HttpConnectionManager'Tracing'provider x__) ())))))))
newtype HttpConnectionManager'Tracing'OperationName'UnrecognizedValue
  = HttpConnectionManager'Tracing'OperationName'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data HttpConnectionManager'Tracing'OperationName
  = HttpConnectionManager'Tracing'INGRESS |
    HttpConnectionManager'Tracing'EGRESS |
    HttpConnectionManager'Tracing'OperationName'Unrecognized !HttpConnectionManager'Tracing'OperationName'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum HttpConnectionManager'Tracing'OperationName where
  maybeToEnum 0 = Prelude.Just HttpConnectionManager'Tracing'INGRESS
  maybeToEnum 1 = Prelude.Just HttpConnectionManager'Tracing'EGRESS
  maybeToEnum k
    = Prelude.Just
        (HttpConnectionManager'Tracing'OperationName'Unrecognized
           (HttpConnectionManager'Tracing'OperationName'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum HttpConnectionManager'Tracing'INGRESS = "INGRESS"
  showEnum HttpConnectionManager'Tracing'EGRESS = "EGRESS"
  showEnum
    (HttpConnectionManager'Tracing'OperationName'Unrecognized (HttpConnectionManager'Tracing'OperationName'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "INGRESS"
    = Prelude.Just HttpConnectionManager'Tracing'INGRESS
    | (Prelude.==) k "EGRESS"
    = Prelude.Just HttpConnectionManager'Tracing'EGRESS
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded HttpConnectionManager'Tracing'OperationName where
  minBound = HttpConnectionManager'Tracing'INGRESS
  maxBound = HttpConnectionManager'Tracing'EGRESS
instance Prelude.Enum HttpConnectionManager'Tracing'OperationName where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum OperationName: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum HttpConnectionManager'Tracing'INGRESS = 0
  fromEnum HttpConnectionManager'Tracing'EGRESS = 1
  fromEnum
    (HttpConnectionManager'Tracing'OperationName'Unrecognized (HttpConnectionManager'Tracing'OperationName'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ HttpConnectionManager'Tracing'EGRESS
    = Prelude.error
        "HttpConnectionManager'Tracing'OperationName.succ: bad argument HttpConnectionManager'Tracing'EGRESS. This value would be out of bounds."
  succ HttpConnectionManager'Tracing'INGRESS
    = HttpConnectionManager'Tracing'EGRESS
  succ (HttpConnectionManager'Tracing'OperationName'Unrecognized _)
    = Prelude.error
        "HttpConnectionManager'Tracing'OperationName.succ: bad argument: unrecognized value"
  pred HttpConnectionManager'Tracing'INGRESS
    = Prelude.error
        "HttpConnectionManager'Tracing'OperationName.pred: bad argument HttpConnectionManager'Tracing'INGRESS. This value would be out of bounds."
  pred HttpConnectionManager'Tracing'EGRESS
    = HttpConnectionManager'Tracing'INGRESS
  pred (HttpConnectionManager'Tracing'OperationName'Unrecognized _)
    = Prelude.error
        "HttpConnectionManager'Tracing'OperationName.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault HttpConnectionManager'Tracing'OperationName where
  fieldDefault = HttpConnectionManager'Tracing'INGRESS
instance Control.DeepSeq.NFData HttpConnectionManager'Tracing'OperationName where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.upgradeType' @:: Lens' HttpConnectionManager'UpgradeConfig Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.filters' @:: Lens' HttpConnectionManager'UpgradeConfig [HttpFilter]@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.vec'filters' @:: Lens' HttpConnectionManager'UpgradeConfig (Data.Vector.Vector HttpFilter)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.enabled' @:: Lens' HttpConnectionManager'UpgradeConfig Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'enabled' @:: Lens' HttpConnectionManager'UpgradeConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@ -}
data HttpConnectionManager'UpgradeConfig
  = HttpConnectionManager'UpgradeConfig'_constructor {_HttpConnectionManager'UpgradeConfig'upgradeType :: !Data.Text.Text,
                                                      _HttpConnectionManager'UpgradeConfig'filters :: !(Data.Vector.Vector HttpFilter),
                                                      _HttpConnectionManager'UpgradeConfig'enabled :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                                      _HttpConnectionManager'UpgradeConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpConnectionManager'UpgradeConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpConnectionManager'UpgradeConfig "upgradeType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'UpgradeConfig'upgradeType
           (\ x__ y__
              -> x__ {_HttpConnectionManager'UpgradeConfig'upgradeType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager'UpgradeConfig "filters" [HttpFilter] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'UpgradeConfig'filters
           (\ x__ y__
              -> x__ {_HttpConnectionManager'UpgradeConfig'filters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HttpConnectionManager'UpgradeConfig "vec'filters" (Data.Vector.Vector HttpFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'UpgradeConfig'filters
           (\ x__ y__
              -> x__ {_HttpConnectionManager'UpgradeConfig'filters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpConnectionManager'UpgradeConfig "enabled" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'UpgradeConfig'enabled
           (\ x__ y__
              -> x__ {_HttpConnectionManager'UpgradeConfig'enabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpConnectionManager'UpgradeConfig "maybe'enabled" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpConnectionManager'UpgradeConfig'enabled
           (\ x__ y__
              -> x__ {_HttpConnectionManager'UpgradeConfig'enabled = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpConnectionManager'UpgradeConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.UpgradeConfig"
  packedMessageDescriptor _
    = "\n\
      \\rUpgradeConfig\DC2!\n\
      \\fupgrade_type\CAN\SOH \SOH(\tR\vupgradeType\DC2a\n\
      \\afilters\CAN\STX \ETX(\v2G.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilterR\afilters\DC24\n\
      \\aenabled\CAN\ETX \SOH(\v2\SUB.google.protobuf.BoolValueR\aenabled:a\154\197\136\RS\\\n\
      \Zenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.UpgradeConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        upgradeType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upgrade_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"upgradeType")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'UpgradeConfig
        filters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpFilter)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"filters")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'UpgradeConfig
        enabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'enabled")) ::
              Data.ProtoLens.FieldDescriptor HttpConnectionManager'UpgradeConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, upgradeType__field_descriptor),
           (Data.ProtoLens.Tag 2, filters__field_descriptor),
           (Data.ProtoLens.Tag 3, enabled__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpConnectionManager'UpgradeConfig'_unknownFields
        (\ x__ y__
           -> x__ {_HttpConnectionManager'UpgradeConfig'_unknownFields = y__})
  defMessage
    = HttpConnectionManager'UpgradeConfig'_constructor
        {_HttpConnectionManager'UpgradeConfig'upgradeType = Data.ProtoLens.fieldDefault,
         _HttpConnectionManager'UpgradeConfig'filters = Data.Vector.Generic.empty,
         _HttpConnectionManager'UpgradeConfig'enabled = Prelude.Nothing,
         _HttpConnectionManager'UpgradeConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpConnectionManager'UpgradeConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld HttpFilter
             -> Data.ProtoLens.Encoding.Bytes.Parser HttpConnectionManager'UpgradeConfig
        loop x mutable'filters
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'filters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'filters)
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
                              (Data.ProtoLens.Field.field @"vec'filters") frozen'filters x))
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
                                       "upgrade_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"upgradeType") y x)
                                  mutable'filters
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "filters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'filters y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "enabled"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"enabled") y x)
                                  mutable'filters
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'filters
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'filters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'filters)
          "UpgradeConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"upgradeType") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'filters") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'enabled") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData HttpConnectionManager'UpgradeConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpConnectionManager'UpgradeConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpConnectionManager'UpgradeConfig'upgradeType x__)
                (Control.DeepSeq.deepseq
                   (_HttpConnectionManager'UpgradeConfig'filters x__)
                   (Control.DeepSeq.deepseq
                      (_HttpConnectionManager'UpgradeConfig'enabled x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.name' @:: Lens' HttpFilter Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.isOptional' @:: Lens' HttpFilter Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'configType' @:: Lens' HttpFilter (Prelude.Maybe HttpFilter'ConfigType)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'typedConfig' @:: Lens' HttpFilter (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.typedConfig' @:: Lens' HttpFilter Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'configDiscovery' @:: Lens' HttpFilter (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.ExtensionConfigSource)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.configDiscovery' @:: Lens' HttpFilter Proto.Envoy.Config.Core.V3.Extension.ExtensionConfigSource@ -}
data HttpFilter
  = HttpFilter'_constructor {_HttpFilter'name :: !Data.Text.Text,
                             _HttpFilter'isOptional :: !Prelude.Bool,
                             _HttpFilter'configType :: !(Prelude.Maybe HttpFilter'ConfigType),
                             _HttpFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data HttpFilter'ConfigType
  = HttpFilter'TypedConfig !Proto.Google.Protobuf.Any.Any |
    HttpFilter'ConfigDiscovery !Proto.Envoy.Config.Core.V3.Extension.ExtensionConfigSource
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField HttpFilter "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpFilter'name (\ x__ y__ -> x__ {_HttpFilter'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpFilter "isOptional" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpFilter'isOptional
           (\ x__ y__ -> x__ {_HttpFilter'isOptional = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpFilter "maybe'configType" (Prelude.Maybe HttpFilter'ConfigType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpFilter'configType
           (\ x__ y__ -> x__ {_HttpFilter'configType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpFilter "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpFilter'configType
           (\ x__ y__ -> x__ {_HttpFilter'configType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpFilter'TypedConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HttpFilter'TypedConfig y__))
instance Data.ProtoLens.Field.HasField HttpFilter "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpFilter'configType
           (\ x__ y__ -> x__ {_HttpFilter'configType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpFilter'TypedConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HttpFilter'TypedConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HttpFilter "maybe'configDiscovery" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.ExtensionConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpFilter'configType
           (\ x__ y__ -> x__ {_HttpFilter'configType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpFilter'ConfigDiscovery x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HttpFilter'ConfigDiscovery y__))
instance Data.ProtoLens.Field.HasField HttpFilter "configDiscovery" Proto.Envoy.Config.Core.V3.Extension.ExtensionConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpFilter'configType
           (\ x__ y__ -> x__ {_HttpFilter'configType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpFilter'ConfigDiscovery x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HttpFilter'ConfigDiscovery y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message HttpFilter where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.HttpFilter"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \HttpFilter\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
      \\ftyped_config\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfig\DC2X\n\
      \\DLEconfig_discovery\CAN\ENQ \SOH(\v2+.envoy.config.core.v3.ExtensionConfigSourceH\NULR\SIconfigDiscovery\DC2\US\n\
      \\vis_optional\CAN\ACK \SOH(\bR\n\
      \isOptionalB\r\n\
      \\vconfig_type:H\154\197\136\RSC\n\
      \Aenvoy.config.filter.network.http_connection_manager.v2.HttpFilterJ\EOT\b\ETX\DLE\EOTJ\EOT\b\STX\DLE\ETXR\ACKconfig"
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
              Data.ProtoLens.FieldDescriptor HttpFilter
        isOptional__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_optional"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"isOptional")) ::
              Data.ProtoLens.FieldDescriptor HttpFilter
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor HttpFilter
        configDiscovery__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config_discovery"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.ExtensionConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'configDiscovery")) ::
              Data.ProtoLens.FieldDescriptor HttpFilter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 6, isOptional__field_descriptor),
           (Data.ProtoLens.Tag 4, typedConfig__field_descriptor),
           (Data.ProtoLens.Tag 5, configDiscovery__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpFilter'_unknownFields
        (\ x__ y__ -> x__ {_HttpFilter'_unknownFields = y__})
  defMessage
    = HttpFilter'_constructor
        {_HttpFilter'name = Data.ProtoLens.fieldDefault,
         _HttpFilter'isOptional = Data.ProtoLens.fieldDefault,
         _HttpFilter'configType = Prelude.Nothing,
         _HttpFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpFilter -> Data.ProtoLens.Encoding.Bytes.Parser HttpFilter
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
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_optional"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"isOptional") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "typed_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typedConfig") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "config_discovery"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"configDiscovery") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HttpFilter"
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
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"isOptional") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt
                            (\ b -> if b then 1 else 0)
                            _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'configType") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (HttpFilter'TypedConfig v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                v)
                      (Prelude.Just (HttpFilter'ConfigDiscovery v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData HttpFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpFilter'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpFilter'name x__)
                (Control.DeepSeq.deepseq
                   (_HttpFilter'isOptional x__)
                   (Control.DeepSeq.deepseq (_HttpFilter'configType x__) ())))
instance Control.DeepSeq.NFData HttpFilter'ConfigType where
  rnf (HttpFilter'TypedConfig x__) = Control.DeepSeq.rnf x__
  rnf (HttpFilter'ConfigDiscovery x__) = Control.DeepSeq.rnf x__
_HttpFilter'TypedConfig ::
  Data.ProtoLens.Prism.Prism' HttpFilter'ConfigType Proto.Google.Protobuf.Any.Any
_HttpFilter'TypedConfig
  = Data.ProtoLens.Prism.prism'
      HttpFilter'TypedConfig
      (\ p__
         -> case p__ of
              (HttpFilter'TypedConfig p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpFilter'ConfigDiscovery ::
  Data.ProtoLens.Prism.Prism' HttpFilter'ConfigType Proto.Envoy.Config.Core.V3.Extension.ExtensionConfigSource
_HttpFilter'ConfigDiscovery
  = Data.ProtoLens.Prism.prism'
      HttpFilter'ConfigDiscovery
      (\ p__
         -> case p__ of
              (HttpFilter'ConfigDiscovery p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.mappers' @:: Lens' LocalReplyConfig [ResponseMapper]@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.vec'mappers' @:: Lens' LocalReplyConfig (Data.Vector.Vector ResponseMapper)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.bodyFormat' @:: Lens' LocalReplyConfig Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'bodyFormat' @:: Lens' LocalReplyConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString)@ -}
data LocalReplyConfig
  = LocalReplyConfig'_constructor {_LocalReplyConfig'mappers :: !(Data.Vector.Vector ResponseMapper),
                                   _LocalReplyConfig'bodyFormat :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString),
                                   _LocalReplyConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LocalReplyConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LocalReplyConfig "mappers" [ResponseMapper] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalReplyConfig'mappers
           (\ x__ y__ -> x__ {_LocalReplyConfig'mappers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField LocalReplyConfig "vec'mappers" (Data.Vector.Vector ResponseMapper) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalReplyConfig'mappers
           (\ x__ y__ -> x__ {_LocalReplyConfig'mappers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalReplyConfig "bodyFormat" Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalReplyConfig'bodyFormat
           (\ x__ y__ -> x__ {_LocalReplyConfig'bodyFormat = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LocalReplyConfig "maybe'bodyFormat" (Prelude.Maybe Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalReplyConfig'bodyFormat
           (\ x__ y__ -> x__ {_LocalReplyConfig'bodyFormat = y__}))
        Prelude.id
instance Data.ProtoLens.Message LocalReplyConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.LocalReplyConfig"
  packedMessageDescriptor _
    = "\n\
      \\DLELocalReplyConfig\DC2e\n\
      \\amappers\CAN\SOH \ETX(\v2K.envoy.extensions.filters.network.http_connection_manager.v3.ResponseMapperR\amappers\DC2O\n\
      \\vbody_format\CAN\STX \SOH(\v2..envoy.config.core.v3.SubstitutionFormatStringR\n\
      \bodyFormat"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        mappers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mappers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseMapper)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"mappers")) ::
              Data.ProtoLens.FieldDescriptor LocalReplyConfig
        bodyFormat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body_format"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bodyFormat")) ::
              Data.ProtoLens.FieldDescriptor LocalReplyConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, mappers__field_descriptor),
           (Data.ProtoLens.Tag 2, bodyFormat__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LocalReplyConfig'_unknownFields
        (\ x__ y__ -> x__ {_LocalReplyConfig'_unknownFields = y__})
  defMessage
    = LocalReplyConfig'_constructor
        {_LocalReplyConfig'mappers = Data.Vector.Generic.empty,
         _LocalReplyConfig'bodyFormat = Prelude.Nothing,
         _LocalReplyConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LocalReplyConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ResponseMapper
             -> Data.ProtoLens.Encoding.Bytes.Parser LocalReplyConfig
        loop x mutable'mappers
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'mappers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'mappers)
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
                              (Data.ProtoLens.Field.field @"vec'mappers") frozen'mappers x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "mappers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'mappers y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "body_format"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bodyFormat") y x)
                                  mutable'mappers
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'mappers
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'mappers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'mappers)
          "LocalReplyConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'mappers") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'bodyFormat") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData LocalReplyConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LocalReplyConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LocalReplyConfig'mappers x__)
                (Control.DeepSeq.deepseq (_LocalReplyConfig'bodyFormat x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.configSource' @:: Lens' Rds Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'configSource' @:: Lens' Rds (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.routeConfigName' @:: Lens' Rds Data.Text.Text@ -}
data Rds
  = Rds'_constructor {_Rds'configSource :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource),
                      _Rds'routeConfigName :: !Data.Text.Text,
                      _Rds'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Rds where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Rds "configSource" Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Rds'configSource (\ x__ y__ -> x__ {_Rds'configSource = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Rds "maybe'configSource" (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Rds'configSource (\ x__ y__ -> x__ {_Rds'configSource = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Rds "routeConfigName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Rds'routeConfigName
           (\ x__ y__ -> x__ {_Rds'routeConfigName = y__}))
        Prelude.id
instance Data.ProtoLens.Message Rds where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.Rds"
  packedMessageDescriptor _
    = "\n\
      \\ETXRds\DC2Q\n\
      \\rconfig_source\CAN\SOH \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\fconfigSourceB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2*\n\
      \\DC1route_config_name\CAN\STX \SOH(\tR\SIrouteConfigName:A\154\197\136\RS<\n\
      \:envoy.config.filter.network.http_connection_manager.v2.Rds"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        configSource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config_source"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'configSource")) ::
              Data.ProtoLens.FieldDescriptor Rds
        routeConfigName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "route_config_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"routeConfigName")) ::
              Data.ProtoLens.FieldDescriptor Rds
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, configSource__field_descriptor),
           (Data.ProtoLens.Tag 2, routeConfigName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Rds'_unknownFields (\ x__ y__ -> x__ {_Rds'_unknownFields = y__})
  defMessage
    = Rds'_constructor
        {_Rds'configSource = Prelude.Nothing,
         _Rds'routeConfigName = Data.ProtoLens.fieldDefault,
         _Rds'_unknownFields = []}
  parseMessage
    = let
        loop :: Rds -> Data.ProtoLens.Encoding.Bytes.Parser Rds
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
                                       "config_source"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"configSource") y x)
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
                                       "route_config_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"routeConfigName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Rds"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'configSource") _x
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
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"routeConfigName") _x
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
instance Control.DeepSeq.NFData Rds where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Rds'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Rds'configSource x__)
                (Control.DeepSeq.deepseq (_Rds'routeConfigName x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.typedConfig' @:: Lens' RequestIDExtension Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'typedConfig' @:: Lens' RequestIDExtension (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data RequestIDExtension
  = RequestIDExtension'_constructor {_RequestIDExtension'typedConfig :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                     _RequestIDExtension'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestIDExtension where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestIDExtension "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestIDExtension'typedConfig
           (\ x__ y__ -> x__ {_RequestIDExtension'typedConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RequestIDExtension "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestIDExtension'typedConfig
           (\ x__ y__ -> x__ {_RequestIDExtension'typedConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestIDExtension where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.RequestIDExtension"
  packedMessageDescriptor _
    = "\n\
      \\DC2RequestIDExtension\DC27\n\
      \\ftyped_config\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\vtypedConfig:P\154\197\136\RSK\n\
      \Ienvoy.config.filter.network.http_connection_manager.v2.RequestIDExtension"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor RequestIDExtension
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestIDExtension'_unknownFields
        (\ x__ y__ -> x__ {_RequestIDExtension'_unknownFields = y__})
  defMessage
    = RequestIDExtension'_constructor
        {_RequestIDExtension'typedConfig = Prelude.Nothing,
         _RequestIDExtension'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestIDExtension
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestIDExtension
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
          (do loop Data.ProtoLens.defMessage) "RequestIDExtension"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'typedConfig") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RequestIDExtension where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestIDExtension'_unknownFields x__)
             (Control.DeepSeq.deepseq (_RequestIDExtension'typedConfig x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.filter' @:: Lens' ResponseMapper Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLogFilter@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'filter' @:: Lens' ResponseMapper (Prelude.Maybe Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLogFilter)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.statusCode' @:: Lens' ResponseMapper Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'statusCode' @:: Lens' ResponseMapper (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.body' @:: Lens' ResponseMapper Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'body' @:: Lens' ResponseMapper (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.bodyFormatOverride' @:: Lens' ResponseMapper Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'bodyFormatOverride' @:: Lens' ResponseMapper (Prelude.Maybe Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.headersToAdd' @:: Lens' ResponseMapper [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption]@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.vec'headersToAdd' @:: Lens' ResponseMapper (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)@ -}
data ResponseMapper
  = ResponseMapper'_constructor {_ResponseMapper'filter :: !(Prelude.Maybe Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLogFilter),
                                 _ResponseMapper'statusCode :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                 _ResponseMapper'body :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                                 _ResponseMapper'bodyFormatOverride :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString),
                                 _ResponseMapper'headersToAdd :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption),
                                 _ResponseMapper'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseMapper where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseMapper "filter" Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLogFilter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseMapper'filter
           (\ x__ y__ -> x__ {_ResponseMapper'filter = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ResponseMapper "maybe'filter" (Prelude.Maybe Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLogFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseMapper'filter
           (\ x__ y__ -> x__ {_ResponseMapper'filter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseMapper "statusCode" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseMapper'statusCode
           (\ x__ y__ -> x__ {_ResponseMapper'statusCode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ResponseMapper "maybe'statusCode" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseMapper'statusCode
           (\ x__ y__ -> x__ {_ResponseMapper'statusCode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseMapper "body" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseMapper'body
           (\ x__ y__ -> x__ {_ResponseMapper'body = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ResponseMapper "maybe'body" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseMapper'body
           (\ x__ y__ -> x__ {_ResponseMapper'body = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseMapper "bodyFormatOverride" Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseMapper'bodyFormatOverride
           (\ x__ y__ -> x__ {_ResponseMapper'bodyFormatOverride = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ResponseMapper "maybe'bodyFormatOverride" (Prelude.Maybe Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseMapper'bodyFormatOverride
           (\ x__ y__ -> x__ {_ResponseMapper'bodyFormatOverride = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseMapper "headersToAdd" [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseMapper'headersToAdd
           (\ x__ y__ -> x__ {_ResponseMapper'headersToAdd = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ResponseMapper "vec'headersToAdd" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseMapper'headersToAdd
           (\ x__ y__ -> x__ {_ResponseMapper'headersToAdd = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseMapper where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.ResponseMapper"
  packedMessageDescriptor _
    = "\n\
      \\SOResponseMapper\DC2L\n\
      \\ACKfilter\CAN\SOH \SOH(\v2*.envoy.config.accesslog.v3.AccessLogFilterR\ACKfilterB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2J\n\
      \\vstatus_code\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
      \statusCodeB\v\250B\b*\ACK\DLE\216\EOT(\200\SOH\DC24\n\
      \\EOTbody\CAN\ETX \SOH(\v2 .envoy.config.core.v3.DataSourceR\EOTbody\DC2`\n\
      \\DC4body_format_override\CAN\EOT \SOH(\v2..envoy.config.core.v3.SubstitutionFormatStringR\DC2bodyFormatOverride\DC2X\n\
      \\SOheaders_to_add\CAN\ENQ \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\fheadersToAddB\t\250B\ACK\146\SOH\ETX\DLE\232\a"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        filter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLogFilter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'filter")) ::
              Data.ProtoLens.FieldDescriptor ResponseMapper
        statusCode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status_code"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'statusCode")) ::
              Data.ProtoLens.FieldDescriptor ResponseMapper
        body__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'body")) ::
              Data.ProtoLens.FieldDescriptor ResponseMapper
        bodyFormatOverride__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body_format_override"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bodyFormatOverride")) ::
              Data.ProtoLens.FieldDescriptor ResponseMapper
        headersToAdd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers_to_add"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"headersToAdd")) ::
              Data.ProtoLens.FieldDescriptor ResponseMapper
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, filter__field_descriptor),
           (Data.ProtoLens.Tag 2, statusCode__field_descriptor),
           (Data.ProtoLens.Tag 3, body__field_descriptor),
           (Data.ProtoLens.Tag 4, bodyFormatOverride__field_descriptor),
           (Data.ProtoLens.Tag 5, headersToAdd__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseMapper'_unknownFields
        (\ x__ y__ -> x__ {_ResponseMapper'_unknownFields = y__})
  defMessage
    = ResponseMapper'_constructor
        {_ResponseMapper'filter = Prelude.Nothing,
         _ResponseMapper'statusCode = Prelude.Nothing,
         _ResponseMapper'body = Prelude.Nothing,
         _ResponseMapper'bodyFormatOverride = Prelude.Nothing,
         _ResponseMapper'headersToAdd = Data.Vector.Generic.empty,
         _ResponseMapper'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseMapper
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.HeaderValueOption
             -> Data.ProtoLens.Encoding.Bytes.Parser ResponseMapper
        loop x mutable'headersToAdd
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'headersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'headersToAdd)
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
                              (Data.ProtoLens.Field.field @"vec'headersToAdd")
                              frozen'headersToAdd
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "filter"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"filter") y x)
                                  mutable'headersToAdd
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "status_code"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statusCode") y x)
                                  mutable'headersToAdd
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "body"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"body") y x)
                                  mutable'headersToAdd
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "body_format_override"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bodyFormatOverride") y x)
                                  mutable'headersToAdd
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "headers_to_add"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'headersToAdd y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'headersToAdd
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'headersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'headersToAdd)
          "ResponseMapper"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'filter") _x
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
                       (Data.ProtoLens.Field.field @"maybe'statusCode") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'body") _x
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
                             (Data.ProtoLens.Field.field @"maybe'bodyFormatOverride") _x
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
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
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
                                       _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'headersToAdd") _x))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData ResponseMapper where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseMapper'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResponseMapper'filter x__)
                (Control.DeepSeq.deepseq
                   (_ResponseMapper'statusCode x__)
                   (Control.DeepSeq.deepseq
                      (_ResponseMapper'body x__)
                      (Control.DeepSeq.deepseq
                         (_ResponseMapper'bodyFormatOverride x__)
                         (Control.DeepSeq.deepseq (_ResponseMapper'headersToAdd x__) ())))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.scopedRdsConfigSource' @:: Lens' ScopedRds Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'scopedRdsConfigSource' @:: Lens' ScopedRds (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.srdsResourcesLocator' @:: Lens' ScopedRds Data.Text.Text@ -}
data ScopedRds
  = ScopedRds'_constructor {_ScopedRds'scopedRdsConfigSource :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource),
                            _ScopedRds'srdsResourcesLocator :: !Data.Text.Text,
                            _ScopedRds'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScopedRds where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScopedRds "scopedRdsConfigSource" Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRds'scopedRdsConfigSource
           (\ x__ y__ -> x__ {_ScopedRds'scopedRdsConfigSource = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScopedRds "maybe'scopedRdsConfigSource" (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRds'scopedRdsConfigSource
           (\ x__ y__ -> x__ {_ScopedRds'scopedRdsConfigSource = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRds "srdsResourcesLocator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRds'srdsResourcesLocator
           (\ x__ y__ -> x__ {_ScopedRds'srdsResourcesLocator = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScopedRds where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.ScopedRds"
  packedMessageDescriptor _
    = "\n\
      \\tScopedRds\DC2e\n\
      \\CANscoped_rds_config_source\CAN\SOH \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\NAKscopedRdsConfigSourceB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC24\n\
      \\SYNsrds_resources_locator\CAN\STX \SOH(\tR\DC4srdsResourcesLocator:G\154\197\136\RSB\n\
      \@envoy.config.filter.network.http_connection_manager.v2.ScopedRds"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        scopedRdsConfigSource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scoped_rds_config_source"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scopedRdsConfigSource")) ::
              Data.ProtoLens.FieldDescriptor ScopedRds
        srdsResourcesLocator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "srds_resources_locator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"srdsResourcesLocator")) ::
              Data.ProtoLens.FieldDescriptor ScopedRds
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, scopedRdsConfigSource__field_descriptor),
           (Data.ProtoLens.Tag 2, srdsResourcesLocator__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScopedRds'_unknownFields
        (\ x__ y__ -> x__ {_ScopedRds'_unknownFields = y__})
  defMessage
    = ScopedRds'_constructor
        {_ScopedRds'scopedRdsConfigSource = Prelude.Nothing,
         _ScopedRds'srdsResourcesLocator = Data.ProtoLens.fieldDefault,
         _ScopedRds'_unknownFields = []}
  parseMessage
    = let
        loop :: ScopedRds -> Data.ProtoLens.Encoding.Bytes.Parser ScopedRds
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
                                       "scoped_rds_config_source"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scopedRdsConfigSource") y x)
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
                                       "srds_resources_locator"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"srdsResourcesLocator") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ScopedRds"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'scopedRdsConfigSource") _x
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
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"srdsResourcesLocator") _x
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
instance Control.DeepSeq.NFData ScopedRds where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScopedRds'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScopedRds'scopedRdsConfigSource x__)
                (Control.DeepSeq.deepseq (_ScopedRds'srdsResourcesLocator x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.scopedRouteConfigurations' @:: Lens' ScopedRouteConfigurationsList [Proto.Envoy.Config.Route.V3.ScopedRoute.ScopedRouteConfiguration]@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.vec'scopedRouteConfigurations' @:: Lens' ScopedRouteConfigurationsList (Data.Vector.Vector Proto.Envoy.Config.Route.V3.ScopedRoute.ScopedRouteConfiguration)@ -}
data ScopedRouteConfigurationsList
  = ScopedRouteConfigurationsList'_constructor {_ScopedRouteConfigurationsList'scopedRouteConfigurations :: !(Data.Vector.Vector Proto.Envoy.Config.Route.V3.ScopedRoute.ScopedRouteConfiguration),
                                                _ScopedRouteConfigurationsList'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScopedRouteConfigurationsList where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScopedRouteConfigurationsList "scopedRouteConfigurations" [Proto.Envoy.Config.Route.V3.ScopedRoute.ScopedRouteConfiguration] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRouteConfigurationsList'scopedRouteConfigurations
           (\ x__ y__
              -> x__
                   {_ScopedRouteConfigurationsList'scopedRouteConfigurations = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScopedRouteConfigurationsList "vec'scopedRouteConfigurations" (Data.Vector.Vector Proto.Envoy.Config.Route.V3.ScopedRoute.ScopedRouteConfiguration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRouteConfigurationsList'scopedRouteConfigurations
           (\ x__ y__
              -> x__
                   {_ScopedRouteConfigurationsList'scopedRouteConfigurations = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScopedRouteConfigurationsList where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.ScopedRouteConfigurationsList"
  packedMessageDescriptor _
    = "\n\
      \\GSScopedRouteConfigurationsList\DC2y\n\
      \\ESCscoped_route_configurations\CAN\SOH \ETX(\v2/.envoy.config.route.v3.ScopedRouteConfigurationR\EMscopedRouteConfigurationsB\b\250B\ENQ\146\SOH\STX\b\SOH:[\154\197\136\RSV\n\
      \Tenvoy.config.filter.network.http_connection_manager.v2.ScopedRouteConfigurationsList"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        scopedRouteConfigurations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scoped_route_configurations"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.ScopedRoute.ScopedRouteConfiguration)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"scopedRouteConfigurations")) ::
              Data.ProtoLens.FieldDescriptor ScopedRouteConfigurationsList
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            scopedRouteConfigurations__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScopedRouteConfigurationsList'_unknownFields
        (\ x__ y__
           -> x__ {_ScopedRouteConfigurationsList'_unknownFields = y__})
  defMessage
    = ScopedRouteConfigurationsList'_constructor
        {_ScopedRouteConfigurationsList'scopedRouteConfigurations = Data.Vector.Generic.empty,
         _ScopedRouteConfigurationsList'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScopedRouteConfigurationsList
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Route.V3.ScopedRoute.ScopedRouteConfiguration
             -> Data.ProtoLens.Encoding.Bytes.Parser ScopedRouteConfigurationsList
        loop x mutable'scopedRouteConfigurations
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'scopedRouteConfigurations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                               mutable'scopedRouteConfigurations)
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
                              (Data.ProtoLens.Field.field @"vec'scopedRouteConfigurations")
                              frozen'scopedRouteConfigurations
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "scoped_route_configurations"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'scopedRouteConfigurations y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'scopedRouteConfigurations
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'scopedRouteConfigurations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'scopedRouteConfigurations)
          "ScopedRouteConfigurationsList"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'scopedRouteConfigurations") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ScopedRouteConfigurationsList where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScopedRouteConfigurationsList'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScopedRouteConfigurationsList'scopedRouteConfigurations x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.name' @:: Lens' ScopedRoutes Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.scopeKeyBuilder' @:: Lens' ScopedRoutes ScopedRoutes'ScopeKeyBuilder@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'scopeKeyBuilder' @:: Lens' ScopedRoutes (Prelude.Maybe ScopedRoutes'ScopeKeyBuilder)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.rdsConfigSource' @:: Lens' ScopedRoutes Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'rdsConfigSource' @:: Lens' ScopedRoutes (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'configSpecifier' @:: Lens' ScopedRoutes (Prelude.Maybe ScopedRoutes'ConfigSpecifier)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'scopedRouteConfigurationsList' @:: Lens' ScopedRoutes (Prelude.Maybe ScopedRouteConfigurationsList)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.scopedRouteConfigurationsList' @:: Lens' ScopedRoutes ScopedRouteConfigurationsList@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'scopedRds' @:: Lens' ScopedRoutes (Prelude.Maybe ScopedRds)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.scopedRds' @:: Lens' ScopedRoutes ScopedRds@ -}
data ScopedRoutes
  = ScopedRoutes'_constructor {_ScopedRoutes'name :: !Data.Text.Text,
                               _ScopedRoutes'scopeKeyBuilder :: !(Prelude.Maybe ScopedRoutes'ScopeKeyBuilder),
                               _ScopedRoutes'rdsConfigSource :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource),
                               _ScopedRoutes'configSpecifier :: !(Prelude.Maybe ScopedRoutes'ConfigSpecifier),
                               _ScopedRoutes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScopedRoutes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ScopedRoutes'ConfigSpecifier
  = ScopedRoutes'ScopedRouteConfigurationsList !ScopedRouteConfigurationsList |
    ScopedRoutes'ScopedRds !ScopedRds
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ScopedRoutes "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'name (\ x__ y__ -> x__ {_ScopedRoutes'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRoutes "scopeKeyBuilder" ScopedRoutes'ScopeKeyBuilder where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'scopeKeyBuilder
           (\ x__ y__ -> x__ {_ScopedRoutes'scopeKeyBuilder = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScopedRoutes "maybe'scopeKeyBuilder" (Prelude.Maybe ScopedRoutes'ScopeKeyBuilder) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'scopeKeyBuilder
           (\ x__ y__ -> x__ {_ScopedRoutes'scopeKeyBuilder = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRoutes "rdsConfigSource" Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'rdsConfigSource
           (\ x__ y__ -> x__ {_ScopedRoutes'rdsConfigSource = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ScopedRoutes "maybe'rdsConfigSource" (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'rdsConfigSource
           (\ x__ y__ -> x__ {_ScopedRoutes'rdsConfigSource = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRoutes "maybe'configSpecifier" (Prelude.Maybe ScopedRoutes'ConfigSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'configSpecifier
           (\ x__ y__ -> x__ {_ScopedRoutes'configSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRoutes "maybe'scopedRouteConfigurationsList" (Prelude.Maybe ScopedRouteConfigurationsList) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'configSpecifier
           (\ x__ y__ -> x__ {_ScopedRoutes'configSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ScopedRoutes'ScopedRouteConfigurationsList x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap ScopedRoutes'ScopedRouteConfigurationsList y__))
instance Data.ProtoLens.Field.HasField ScopedRoutes "scopedRouteConfigurationsList" ScopedRouteConfigurationsList where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'configSpecifier
           (\ x__ y__ -> x__ {_ScopedRoutes'configSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ScopedRoutes'ScopedRouteConfigurationsList x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap ScopedRoutes'ScopedRouteConfigurationsList y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ScopedRoutes "maybe'scopedRds" (Prelude.Maybe ScopedRds) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'configSpecifier
           (\ x__ y__ -> x__ {_ScopedRoutes'configSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ScopedRoutes'ScopedRds x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ScopedRoutes'ScopedRds y__))
instance Data.ProtoLens.Field.HasField ScopedRoutes "scopedRds" ScopedRds where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'configSpecifier
           (\ x__ y__ -> x__ {_ScopedRoutes'configSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ScopedRoutes'ScopedRds x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ScopedRoutes'ScopedRds y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ScopedRoutes where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes"
  packedMessageDescriptor _
    = "\n\
      \\fScopedRoutes\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2\143\SOH\n\
      \\DC1scope_key_builder\CAN\STX \SOH(\v2Y.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilderR\SIscopeKeyBuilderB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2X\n\
      \\DC1rds_config_source\CAN\ETX \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\SIrdsConfigSourceB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\165\SOH\n\
      \ scoped_route_configurations_list\CAN\EOT \SOH(\v2Z.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRouteConfigurationsListH\NULR\GSscopedRouteConfigurationsList\DC2g\n\
      \\n\
      \scoped_rds\CAN\ENQ \SOH(\v2F.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRdsH\NULR\tscopedRds\SUB\217\t\n\
      \\SIScopeKeyBuilder\DC2\145\SOH\n\
      \\tfragments\CAN\SOH \ETX(\v2i.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilderR\tfragmentsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\213\a\n\
      \\SIFragmentBuilder\DC2\182\SOH\n\
      \\SYNheader_value_extractor\CAN\SOH \SOH(\v2~.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractorH\NULR\DC4headerValueExtractor\SUB\143\ENQ\n\
      \\DC4HeaderValueExtractor\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2+\n\
      \\DC1element_separator\CAN\STX \SOH(\tR\DLEelementSeparator\DC2\SYN\n\
      \\ENQindex\CAN\ETX \SOH(\rH\NULR\ENQindex\DC2\165\SOH\n\
      \\aelement\CAN\EOT \SOH(\v2\136\SOH.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElementH\NULR\aelement\SUB\219\SOH\n\
      \\tKvElement\DC2%\n\
      \\tseparator\CAN\SOH \SOH(\tR\tseparatorB\a\250B\EOTr\STX\DLE\SOH\DC2\EM\n\
      \\ETXkey\CAN\STX \SOH(\tR\ETXkeyB\a\250B\EOTr\STX\DLE\SOH:\139\SOH\154\197\136\RS\133\SOH\n\
      \\130\SOHenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElementB\SO\n\
      \\fextract_type:\DEL\154\197\136\RSz\n\
      \xenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractorB\v\n\
      \\EOTtype\DC2\ETX\248B\SOH:j\154\197\136\RSe\n\
      \cenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder:Z\154\197\136\RSU\n\
      \Senvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilderB\ETB\n\
      \\DLEconfig_specifier\DC2\ETX\248B\SOH:J\154\197\136\RSE\n\
      \Cenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes"
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
              Data.ProtoLens.FieldDescriptor ScopedRoutes
        scopeKeyBuilder__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scope_key_builder"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScopedRoutes'ScopeKeyBuilder)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scopeKeyBuilder")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutes
        rdsConfigSource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rds_config_source"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rdsConfigSource")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutes
        scopedRouteConfigurationsList__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scoped_route_configurations_list"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScopedRouteConfigurationsList)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'scopedRouteConfigurationsList")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutes
        scopedRds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scoped_rds"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScopedRds)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scopedRds")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, scopeKeyBuilder__field_descriptor),
           (Data.ProtoLens.Tag 3, rdsConfigSource__field_descriptor),
           (Data.ProtoLens.Tag 4, 
            scopedRouteConfigurationsList__field_descriptor),
           (Data.ProtoLens.Tag 5, scopedRds__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScopedRoutes'_unknownFields
        (\ x__ y__ -> x__ {_ScopedRoutes'_unknownFields = y__})
  defMessage
    = ScopedRoutes'_constructor
        {_ScopedRoutes'name = Data.ProtoLens.fieldDefault,
         _ScopedRoutes'scopeKeyBuilder = Prelude.Nothing,
         _ScopedRoutes'rdsConfigSource = Prelude.Nothing,
         _ScopedRoutes'configSpecifier = Prelude.Nothing,
         _ScopedRoutes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScopedRoutes -> Data.ProtoLens.Encoding.Bytes.Parser ScopedRoutes
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
                                       "scope_key_builder"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scopeKeyBuilder") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "rds_config_source"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rdsConfigSource") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "scoped_route_configurations_list"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scopedRouteConfigurationsList")
                                     y
                                     x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "scoped_rds"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"scopedRds") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ScopedRoutes"
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'scopeKeyBuilder") _x
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
                          (Data.ProtoLens.Field.field @"maybe'rdsConfigSource") _x
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
                             (Data.ProtoLens.Field.field @"maybe'configSpecifier") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just (ScopedRoutes'ScopedRouteConfigurationsList v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage
                                   v)
                         (Prelude.Just (ScopedRoutes'ScopedRds v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage
                                   v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ScopedRoutes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScopedRoutes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScopedRoutes'name x__)
                (Control.DeepSeq.deepseq
                   (_ScopedRoutes'scopeKeyBuilder x__)
                   (Control.DeepSeq.deepseq
                      (_ScopedRoutes'rdsConfigSource x__)
                      (Control.DeepSeq.deepseq (_ScopedRoutes'configSpecifier x__) ()))))
instance Control.DeepSeq.NFData ScopedRoutes'ConfigSpecifier where
  rnf (ScopedRoutes'ScopedRouteConfigurationsList x__)
    = Control.DeepSeq.rnf x__
  rnf (ScopedRoutes'ScopedRds x__) = Control.DeepSeq.rnf x__
_ScopedRoutes'ScopedRouteConfigurationsList ::
  Data.ProtoLens.Prism.Prism' ScopedRoutes'ConfigSpecifier ScopedRouteConfigurationsList
_ScopedRoutes'ScopedRouteConfigurationsList
  = Data.ProtoLens.Prism.prism'
      ScopedRoutes'ScopedRouteConfigurationsList
      (\ p__
         -> case p__ of
              (ScopedRoutes'ScopedRouteConfigurationsList p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ScopedRoutes'ScopedRds ::
  Data.ProtoLens.Prism.Prism' ScopedRoutes'ConfigSpecifier ScopedRds
_ScopedRoutes'ScopedRds
  = Data.ProtoLens.Prism.prism'
      ScopedRoutes'ScopedRds
      (\ p__
         -> case p__ of
              (ScopedRoutes'ScopedRds p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.fragments' @:: Lens' ScopedRoutes'ScopeKeyBuilder [ScopedRoutes'ScopeKeyBuilder'FragmentBuilder]@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.vec'fragments' @:: Lens' ScopedRoutes'ScopeKeyBuilder (Data.Vector.Vector ScopedRoutes'ScopeKeyBuilder'FragmentBuilder)@ -}
data ScopedRoutes'ScopeKeyBuilder
  = ScopedRoutes'ScopeKeyBuilder'_constructor {_ScopedRoutes'ScopeKeyBuilder'fragments :: !(Data.Vector.Vector ScopedRoutes'ScopeKeyBuilder'FragmentBuilder),
                                               _ScopedRoutes'ScopeKeyBuilder'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScopedRoutes'ScopeKeyBuilder where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScopedRoutes'ScopeKeyBuilder "fragments" [ScopedRoutes'ScopeKeyBuilder'FragmentBuilder] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'ScopeKeyBuilder'fragments
           (\ x__ y__ -> x__ {_ScopedRoutes'ScopeKeyBuilder'fragments = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScopedRoutes'ScopeKeyBuilder "vec'fragments" (Data.Vector.Vector ScopedRoutes'ScopeKeyBuilder'FragmentBuilder) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'ScopeKeyBuilder'fragments
           (\ x__ y__ -> x__ {_ScopedRoutes'ScopeKeyBuilder'fragments = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScopedRoutes'ScopeKeyBuilder where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder"
  packedMessageDescriptor _
    = "\n\
      \\SIScopeKeyBuilder\DC2\145\SOH\n\
      \\tfragments\CAN\SOH \ETX(\v2i.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilderR\tfragmentsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\213\a\n\
      \\SIFragmentBuilder\DC2\182\SOH\n\
      \\SYNheader_value_extractor\CAN\SOH \SOH(\v2~.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractorH\NULR\DC4headerValueExtractor\SUB\143\ENQ\n\
      \\DC4HeaderValueExtractor\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2+\n\
      \\DC1element_separator\CAN\STX \SOH(\tR\DLEelementSeparator\DC2\SYN\n\
      \\ENQindex\CAN\ETX \SOH(\rH\NULR\ENQindex\DC2\165\SOH\n\
      \\aelement\CAN\EOT \SOH(\v2\136\SOH.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElementH\NULR\aelement\SUB\219\SOH\n\
      \\tKvElement\DC2%\n\
      \\tseparator\CAN\SOH \SOH(\tR\tseparatorB\a\250B\EOTr\STX\DLE\SOH\DC2\EM\n\
      \\ETXkey\CAN\STX \SOH(\tR\ETXkeyB\a\250B\EOTr\STX\DLE\SOH:\139\SOH\154\197\136\RS\133\SOH\n\
      \\130\SOHenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElementB\SO\n\
      \\fextract_type:\DEL\154\197\136\RSz\n\
      \xenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractorB\v\n\
      \\EOTtype\DC2\ETX\248B\SOH:j\154\197\136\RSe\n\
      \cenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder:Z\154\197\136\RSU\n\
      \Senvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fragments__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fragments"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScopedRoutes'ScopeKeyBuilder'FragmentBuilder)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"fragments")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutes'ScopeKeyBuilder
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fragments__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScopedRoutes'ScopeKeyBuilder'_unknownFields
        (\ x__ y__
           -> x__ {_ScopedRoutes'ScopeKeyBuilder'_unknownFields = y__})
  defMessage
    = ScopedRoutes'ScopeKeyBuilder'_constructor
        {_ScopedRoutes'ScopeKeyBuilder'fragments = Data.Vector.Generic.empty,
         _ScopedRoutes'ScopeKeyBuilder'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScopedRoutes'ScopeKeyBuilder
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ScopedRoutes'ScopeKeyBuilder'FragmentBuilder
             -> Data.ProtoLens.Encoding.Bytes.Parser ScopedRoutes'ScopeKeyBuilder
        loop x mutable'fragments
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'fragments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'fragments)
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
                              (Data.ProtoLens.Field.field @"vec'fragments") frozen'fragments x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "fragments"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'fragments y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'fragments
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'fragments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'fragments)
          "ScopeKeyBuilder"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'fragments") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ScopedRoutes'ScopeKeyBuilder where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScopedRoutes'ScopeKeyBuilder'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScopedRoutes'ScopeKeyBuilder'fragments x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'type'' @:: Lens' ScopedRoutes'ScopeKeyBuilder'FragmentBuilder (Prelude.Maybe ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'Type)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'headerValueExtractor' @:: Lens' ScopedRoutes'ScopeKeyBuilder'FragmentBuilder (Prelude.Maybe ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.headerValueExtractor' @:: Lens' ScopedRoutes'ScopeKeyBuilder'FragmentBuilder ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor@ -}
data ScopedRoutes'ScopeKeyBuilder'FragmentBuilder
  = ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'_constructor {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'type' :: !(Prelude.Maybe ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'Type),
                                                               _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScopedRoutes'ScopeKeyBuilder'FragmentBuilder where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'Type
  = ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor' !ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ScopedRoutes'ScopeKeyBuilder'FragmentBuilder "maybe'type'" (Prelude.Maybe ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'type'
           (\ x__ y__
              -> x__
                   {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRoutes'ScopeKeyBuilder'FragmentBuilder "maybe'headerValueExtractor" (Prelude.Maybe ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'type'
           (\ x__ y__
              -> x__
                   {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'
                   y__))
instance Data.ProtoLens.Field.HasField ScopedRoutes'ScopeKeyBuilder'FragmentBuilder "headerValueExtractor" ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'type'
           (\ x__ y__
              -> x__
                   {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'
                      y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ScopedRoutes'ScopeKeyBuilder'FragmentBuilder where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder"
  packedMessageDescriptor _
    = "\n\
      \\SIFragmentBuilder\DC2\182\SOH\n\
      \\SYNheader_value_extractor\CAN\SOH \SOH(\v2~.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractorH\NULR\DC4headerValueExtractor\SUB\143\ENQ\n\
      \\DC4HeaderValueExtractor\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2+\n\
      \\DC1element_separator\CAN\STX \SOH(\tR\DLEelementSeparator\DC2\SYN\n\
      \\ENQindex\CAN\ETX \SOH(\rH\NULR\ENQindex\DC2\165\SOH\n\
      \\aelement\CAN\EOT \SOH(\v2\136\SOH.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElementH\NULR\aelement\SUB\219\SOH\n\
      \\tKvElement\DC2%\n\
      \\tseparator\CAN\SOH \SOH(\tR\tseparatorB\a\250B\EOTr\STX\DLE\SOH\DC2\EM\n\
      \\ETXkey\CAN\STX \SOH(\tR\ETXkeyB\a\250B\EOTr\STX\DLE\SOH:\139\SOH\154\197\136\RS\133\SOH\n\
      \\130\SOHenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElementB\SO\n\
      \\fextract_type:\DEL\154\197\136\RSz\n\
      \xenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractorB\v\n\
      \\EOTtype\DC2\ETX\248B\SOH:j\154\197\136\RSe\n\
      \cenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        headerValueExtractor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header_value_extractor"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'headerValueExtractor")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutes'ScopeKeyBuilder'FragmentBuilder
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, headerValueExtractor__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'_unknownFields
        (\ x__ y__
           -> x__
                {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'_unknownFields = y__})
  defMessage
    = ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'_constructor
        {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'type' = Prelude.Nothing,
         _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScopedRoutes'ScopeKeyBuilder'FragmentBuilder
          -> Data.ProtoLens.Encoding.Bytes.Parser ScopedRoutes'ScopeKeyBuilder'FragmentBuilder
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
                                       "header_value_extractor"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"headerValueExtractor") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FragmentBuilder"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ScopedRoutes'ScopeKeyBuilder'FragmentBuilder where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'type' x__) ())
instance Control.DeepSeq.NFData ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'Type where
  rnf
    (ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor' x__)
    = Control.DeepSeq.rnf x__
_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor' ::
  Data.ProtoLens.Prism.Prism' ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'Type ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor
_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'
  = Data.ProtoLens.Prism.prism'
      ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'
      (\ p__
         -> case p__ of {
              (ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor' p__val)
                -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.name' @:: Lens' ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.elementSeparator' @:: Lens' ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'extractType' @:: Lens' ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor (Prelude.Maybe ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'ExtractType)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'index' @:: Lens' ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.index' @:: Lens' ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor Data.Word.Word32@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.maybe'element' @:: Lens' ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor (Prelude.Maybe ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement)@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.element' @:: Lens' ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement@ -}
data ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor
  = ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'_constructor {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'name :: !Data.Text.Text,
                                                                                    _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'elementSeparator :: !Data.Text.Text,
                                                                                    _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'extractType :: !(Prelude.Maybe ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'ExtractType),
                                                                                    _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'ExtractType
  = ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Index !Data.Word.Word32 |
    ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Element !ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'name
           (\ x__ y__
              -> x__
                   {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor "elementSeparator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'elementSeparator
           (\ x__ y__
              -> x__
                   {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'elementSeparator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor "maybe'extractType" (Prelude.Maybe ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'ExtractType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'extractType
           (\ x__ y__
              -> x__
                   {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'extractType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor "maybe'index" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'extractType
           (\ x__ y__
              -> x__
                   {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'extractType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Index x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Index
                   y__))
instance Data.ProtoLens.Field.HasField ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor "index" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'extractType
           (\ x__ y__
              -> x__
                   {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'extractType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Index x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Index
                      y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor "maybe'element" (Prelude.Maybe ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'extractType
           (\ x__ y__
              -> x__
                   {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'extractType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Element x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Element
                   y__))
instance Data.ProtoLens.Field.HasField ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor "element" ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'extractType
           (\ x__ y__
              -> x__
                   {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'extractType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Element x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Element
                      y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor"
  packedMessageDescriptor _
    = "\n\
      \\DC4HeaderValueExtractor\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2+\n\
      \\DC1element_separator\CAN\STX \SOH(\tR\DLEelementSeparator\DC2\SYN\n\
      \\ENQindex\CAN\ETX \SOH(\rH\NULR\ENQindex\DC2\165\SOH\n\
      \\aelement\CAN\EOT \SOH(\v2\136\SOH.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElementH\NULR\aelement\SUB\219\SOH\n\
      \\tKvElement\DC2%\n\
      \\tseparator\CAN\SOH \SOH(\tR\tseparatorB\a\250B\EOTr\STX\DLE\SOH\DC2\EM\n\
      \\ETXkey\CAN\STX \SOH(\tR\ETXkeyB\a\250B\EOTr\STX\DLE\SOH:\139\SOH\154\197\136\RS\133\SOH\n\
      \\130\SOHenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElementB\SO\n\
      \\fextract_type:\DEL\154\197\136\RSz\n\
      \xenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor"
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
              Data.ProtoLens.FieldDescriptor ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor
        elementSeparator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "element_separator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"elementSeparator")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'index")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor
        element__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "element"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'element")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, elementSeparator__field_descriptor),
           (Data.ProtoLens.Tag 3, index__field_descriptor),
           (Data.ProtoLens.Tag 4, element__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'_unknownFields
        (\ x__ y__
           -> x__
                {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'_unknownFields = y__})
  defMessage
    = ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'_constructor
        {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'name = Data.ProtoLens.fieldDefault,
         _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'elementSeparator = Data.ProtoLens.fieldDefault,
         _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'extractType = Prelude.Nothing,
         _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor
          -> Data.ProtoLens.Encoding.Bytes.Parser ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "element_separator"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"elementSeparator") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "element"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"element") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HeaderValueExtractor"
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
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"elementSeparator") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'extractType") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Index v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral v)
                      (Prelude.Just (ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Element v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'name
                   x__)
                (Control.DeepSeq.deepseq
                   (_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'elementSeparator
                      x__)
                   (Control.DeepSeq.deepseq
                      (_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'extractType
                         x__)
                      ())))
instance Control.DeepSeq.NFData ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'ExtractType where
  rnf
    (ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Index x__)
    = Control.DeepSeq.rnf x__
  rnf
    (ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Element x__)
    = Control.DeepSeq.rnf x__
_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Index ::
  Data.ProtoLens.Prism.Prism' ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'ExtractType Data.Word.Word32
_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Index
  = Data.ProtoLens.Prism.prism'
      ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Index
      (\ p__
         -> case p__ of
              (ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Index p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Element ::
  Data.ProtoLens.Prism.Prism' ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'ExtractType ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement
_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Element
  = Data.ProtoLens.Prism.prism'
      ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Element
      (\ p__
         -> case p__ of
              (ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'Element p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.separator' @:: Lens' ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields.key' @:: Lens' ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement Data.Text.Text@ -}
data ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement
  = ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement'_constructor {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement'separator :: !Data.Text.Text,
                                                                                              _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement'key :: !Data.Text.Text,
                                                                                              _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement "separator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement'separator
           (\ x__ y__
              -> x__
                   {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement'separator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement'key
           (\ x__ y__
              -> x__
                   {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement'key = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElement"
  packedMessageDescriptor _
    = "\n\
      \\tKvElement\DC2%\n\
      \\tseparator\CAN\SOH \SOH(\tR\tseparatorB\a\250B\EOTr\STX\DLE\SOH\DC2\EM\n\
      \\ETXkey\CAN\STX \SOH(\tR\ETXkeyB\a\250B\EOTr\STX\DLE\SOH:\139\SOH\154\197\136\RS\133\SOH\n\
      \\130\SOHenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElement"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        separator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "separator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"separator")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, separator__field_descriptor),
           (Data.ProtoLens.Tag 2, key__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement'_unknownFields
        (\ x__ y__
           -> x__
                {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement'_unknownFields = y__})
  defMessage
    = ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement'_constructor
        {_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement'separator = Data.ProtoLens.fieldDefault,
         _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement'key = Data.ProtoLens.fieldDefault,
         _ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement
          -> Data.ProtoLens.Encoding.Bytes.Parser ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement
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
                                       "separator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"separator") y x)
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvElement"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"separator") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
instance Control.DeepSeq.NFData ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement'separator
                   x__)
                (Control.DeepSeq.deepseq
                   (_ScopedRoutes'ScopeKeyBuilder'FragmentBuilder'HeaderValueExtractor'KvElement'key
                      x__)
                   ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Yenvoy/extensions/filters/network/http_connection_manager/v3/http_connection_manager.proto\DC2;envoy.extensions.filters.network.http_connection_manager.v3\SUB)envoy/config/accesslog/v3/accesslog.proto\SUB\USenvoy/config/core/v3/base.proto\SUB(envoy/config/core/v3/config_source.proto\SUB$envoy/config/core/v3/extension.proto\SUB#envoy/config/core/v3/protocol.proto\SUB5envoy/config/core/v3/substitution_format_string.proto\SUB!envoy/config/route/v3/route.proto\SUB(envoy/config/route/v3/scoped_route.proto\SUB'envoy/config/trace/v3/http_tracer.proto\SUB,envoy/type/http/v3/path_transformation.proto\SUB&envoy/type/tracing/v3/custom_tag.proto\SUB\ESCenvoy/type/v3/percent.proto\SUB\EMgoogle/protobuf/any.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB#envoy/annotations/deprecation.proto\SUB\RSudpa/annotations/migrate.proto\SUB\USudpa/annotations/security.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\160\&4\n\
    \\NAKHttpConnectionManager\DC2\133\SOH\n\
    \\n\
    \codec_type\CAN\SOH \SOH(\SO2\\.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.CodecTypeR\tcodecTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2(\n\
    \\vstat_prefix\CAN\STX \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2T\n\
    \\ETXrds\CAN\ETX \SOH(\v2@.envoy.extensions.filters.network.http_connection_manager.v3.RdsH\NULR\ETXrds\DC2N\n\
    \\froute_config\CAN\EOT \SOH(\v2).envoy.config.route.v3.RouteConfigurationH\NULR\vrouteConfig\DC2p\n\
    \\rscoped_routes\CAN\US \SOH(\v2I.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutesH\NULR\fscopedRoutes\DC2j\n\
    \\fhttp_filters\CAN\ENQ \ETX(\v2G.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilterR\vhttpFilters\DC2@\n\
    \\SOadd_user_agent\CAN\ACK \SOH(\v2\SUB.google.protobuf.BoolValueR\faddUserAgent\DC2t\n\
    \\atracing\CAN\a \SOH(\v2Z.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.TracingR\atracing\DC2s\n\
    \\FScommon_http_protocol_options\CAN# \SOH(\v2).envoy.config.core.v3.HttpProtocolOptionsR\EMcommonHttpProtocolOptionsB\a\138\147\183*\STX\b\SOH\DC2^\n\
    \\NAKhttp_protocol_options\CAN\b \SOH(\v2*.envoy.config.core.v3.Http1ProtocolOptionsR\DC3httpProtocolOptions\DC2i\n\
    \\SYNhttp2_protocol_options\CAN\t \SOH(\v2*.envoy.config.core.v3.Http2ProtocolOptionsR\DC4http2ProtocolOptionsB\a\138\147\183*\STX\b\SOH\DC2`\n\
    \\SYNhttp3_protocol_options\CAN, \SOH(\v2*.envoy.config.core.v3.Http3ProtocolOptionsR\DC4http3ProtocolOptions\DC2,\n\
    \\vserver_name\CAN\n\
    \ \SOH(\tR\n\
    \serverNameB\v\250B\br\ACK\192\SOH\STX\200\SOH\NUL\DC2\185\SOH\n\
    \\FSserver_header_transformation\CAN\" \SOH(\SO2m.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.ServerHeaderTransformationR\SUBserverHeaderTransformationB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2r\n\
    \\FSscheme_header_transformation\CAN0 \SOH(\v20.envoy.config.core.v3.SchemeHeaderTransformationR\SUBschemeHeaderTransformation\DC2]\n\
    \\SYNmax_request_headers_kb\CAN\GS \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC3maxRequestHeadersKbB\n\
    \\250B\a*\ENQ\CAN\128@ \NUL\DC2R\n\
    \\DC3stream_idle_timeout\CAN\CAN \SOH(\v2\EM.google.protobuf.DurationR\DC1streamIdleTimeoutB\a\138\147\183*\STX\b\SOH\DC2K\n\
    \\SIrequest_timeout\CAN\FS \SOH(\v2\EM.google.protobuf.DurationR\SOrequestTimeoutB\a\138\147\183*\STX\b\SOH\DC2b\n\
    \\ETBrequest_headers_timeout\CAN) \SOH(\v2\EM.google.protobuf.DurationR\NAKrequestHeadersTimeoutB\SI\250B\ENQ\170\SOH\STX2\NUL\138\147\183*\STX\b\SOH\DC2>\n\
    \\rdrain_timeout\CAN\f \SOH(\v2\EM.google.protobuf.DurationR\fdrainTimeout\DC2M\n\
    \\NAKdelayed_close_timeout\CAN\SUB \SOH(\v2\EM.google.protobuf.DurationR\DC3delayedCloseTimeout\DC2C\n\
    \\n\
    \access_log\CAN\r \ETX(\v2$.envoy.config.accesslog.v3.AccessLogR\taccessLog\DC2Q\n\
    \\DC2use_remote_address\CAN\SO \SOH(\v2\SUB.google.protobuf.BoolValueR\DLEuseRemoteAddressB\a\138\147\183*\STX\b\SOH\DC2<\n\
    \\DC4xff_num_trusted_hops\CAN\DC3 \SOH(\rR\DC1xffNumTrustedHopsB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2s\n\
    \ original_ip_detection_extensions\CAN. \ETX(\v2*.envoy.config.core.v3.TypedExtensionConfigR\GSoriginalIpDetectionExtensions\DC2\160\SOH\n\
    \\ETBinternal_address_config\CAN\EM \SOH(\v2h.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.InternalAddressConfigR\NAKinternalAddressConfig\DC2&\n\
    \\SIskip_xff_append\CAN\NAK \SOH(\bR\rskipXffAppend\DC2\GS\n\
    \\ETXvia\CAN\SYN \SOH(\tR\ETXviaB\v\250B\br\ACK\192\SOH\STX\200\SOH\NUL\DC2J\n\
    \\DC3generate_request_id\CAN\SI \SOH(\v2\SUB.google.protobuf.BoolValueR\DC1generateRequestId\DC2?\n\
    \\FSpreserve_external_request_id\CAN  \SOH(\bR\EMpreserveExternalRequestId\DC2G\n\
    \!always_set_request_id_in_response\CAN% \SOH(\bR\FSalwaysSetRequestIdInResponse\DC2\180\SOH\n\
    \\ESCforward_client_cert_details\CAN\DLE \SOH(\SO2k.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.ForwardClientCertDetailsR\CANforwardClientCertDetailsB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\180\SOH\n\
    \\USset_current_client_cert_details\CAN\DC1 \SOH(\v2n.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.SetCurrentClientCertDetailsR\ESCsetCurrentClientCertDetails\DC2,\n\
    \\DC2proxy_100_continue\CAN\DC2 \SOH(\bR\DLEproxy100Continue\DC2e\n\
    \1represent_ipv4_remote_address_as_ipv4_mapped_ipv6\CAN\DC4 \SOH(\bR*representIpv4RemoteAddressAsIpv4MappedIpv6\DC2\137\SOH\n\
    \\SIupgrade_configs\CAN\ETB \ETX(\v2`.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.UpgradeConfigR\SOupgradeConfigs\DC2A\n\
    \\SOnormalize_path\CAN\RS \SOH(\v2\SUB.google.protobuf.BoolValueR\rnormalizePath\DC2#\n\
    \\rmerge_slashes\CAN! \SOH(\bR\fmergeSlashes\DC2\183\SOH\n\
    \ path_with_escaped_slashes_action\CAN- \SOH(\SO2o.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.PathWithEscapedSlashesActionR\FSpathWithEscapedSlashesAction\DC2\129\SOH\n\
    \\DC4request_id_extension\CAN$ \SOH(\v2O.envoy.extensions.filters.network.http_connection_manager.v3.RequestIDExtensionR\DC2requestIdExtension\DC2{\n\
    \\DC2local_reply_config\CAN& \SOH(\v2M.envoy.extensions.filters.network.http_connection_manager.v3.LocalReplyConfigR\DLElocalReplyConfig\DC2P\n\
    \\CANstrip_matching_host_port\CAN' \SOH(\bR\NAKstripMatchingHostPortB\ETB\242\152\254\143\ENQ\DC1\DC2\SIstrip_port_mode\DC2/\n\
    \\DC3strip_any_host_port\CAN* \SOH(\bH\SOHR\DLEstripAnyHostPort\DC2i\n\
    \$stream_error_on_invalid_http_message\CAN( \SOH(\v2\SUB.google.protobuf.BoolValueR\USstreamErrorOnInvalidHttpMessage\DC2\169\SOH\n\
    \\SUBpath_normalization_options\CAN+ \SOH(\v2k.envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.PathNormalizationOptionsR\CANpathNormalizationOptions\DC25\n\
    \\ETBstrip_trailing_host_dot\CAN/ \SOH(\bR\DC4stripTrailingHostDot\SUB\246\EOT\n\
    \\aTracing\DC2?\n\
    \\SIclient_sampling\CAN\ETX \SOH(\v2\SYN.envoy.type.v3.PercentR\SOclientSampling\DC2?\n\
    \\SIrandom_sampling\CAN\EOT \SOH(\v2\SYN.envoy.type.v3.PercentR\SOrandomSampling\DC2A\n\
    \\DLEoverall_sampling\CAN\ENQ \SOH(\v2\SYN.envoy.type.v3.PercentR\SIoverallSampling\DC2\CAN\n\
    \\averbose\CAN\ACK \SOH(\bR\averbose\DC2K\n\
    \\DC3max_path_tag_length\CAN\a \SOH(\v2\FS.google.protobuf.UInt32ValueR\DLEmaxPathTagLength\DC2A\n\
    \\vcustom_tags\CAN\b \ETX(\v2 .envoy.type.tracing.v3.CustomTagR\n\
    \customTags\DC2?\n\
    \\bprovider\CAN\t \SOH(\v2#.envoy.config.trace.v3.Tracing.HttpR\bprovider\"(\n\
    \\rOperationName\DC2\v\n\
    \\aINGRESS\DLE\NUL\DC2\n\
    \\n\
    \\ACKEGRESS\DLE\SOH:[\154\197\136\RSV\n\
    \Tenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.TracingJ\EOT\b\SOH\DLE\STXJ\EOT\b\STX\DLE\ETXR\SOoperation_nameR\CANrequest_headers_for_tags\SUB\165\SOH\n\
    \\NAKInternalAddressConfig\DC2!\n\
    \\funix_sockets\CAN\SOH \SOH(\bR\vunixSockets:i\154\197\136\RSd\n\
    \benvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.InternalAddressConfig\SUB\152\STX\n\
    \\ESCSetCurrentClientCertDetails\DC24\n\
    \\asubject\CAN\SOH \SOH(\v2\SUB.google.protobuf.BoolValueR\asubject\DC2\DC2\n\
    \\EOTcert\CAN\ETX \SOH(\bR\EOTcert\DC2\DC4\n\
    \\ENQchain\CAN\ACK \SOH(\bR\ENQchain\DC2\DLE\n\
    \\ETXdns\CAN\EOT \SOH(\bR\ETXdns\DC2\DLE\n\
    \\ETXuri\CAN\ENQ \SOH(\bR\ETXuri:o\154\197\136\RSj\n\
    \henvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.SetCurrentClientCertDetailsJ\EOT\b\STX\DLE\ETX\SUB\174\STX\n\
    \\rUpgradeConfig\DC2!\n\
    \\fupgrade_type\CAN\SOH \SOH(\tR\vupgradeType\DC2a\n\
    \\afilters\CAN\STX \ETX(\v2G.envoy.extensions.filters.network.http_connection_manager.v3.HttpFilterR\afilters\DC24\n\
    \\aenabled\CAN\ETX \SOH(\v2\SUB.google.protobuf.BoolValueR\aenabled:a\154\197\136\RS\\\n\
    \Zenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager.UpgradeConfig\SUB\229\SOH\n\
    \\CANPathNormalizationOptions\DC2c\n\
    \\EMforwarding_transformation\CAN\SOH \SOH(\v2&.envoy.type.http.v3.PathTransformationR\CANforwardingTransformation\DC2d\n\
    \\SUBhttp_filter_transformation\CAN\STX \SOH(\v2&.envoy.type.http.v3.PathTransformationR\CANhttpFilterTransformation\"6\n\
    \\tCodecType\DC2\b\n\
    \\EOTAUTO\DLE\NUL\DC2\t\n\
    \\ENQHTTP1\DLE\SOH\DC2\t\n\
    \\ENQHTTP2\DLE\STX\DC2\t\n\
    \\ENQHTTP3\DLE\ETX\"S\n\
    \\SUBServerHeaderTransformation\DC2\r\n\
    \\tOVERWRITE\DLE\NUL\DC2\DC4\n\
    \\DLEAPPEND_IF_ABSENT\DLE\SOH\DC2\DLE\n\
    \\fPASS_THROUGH\DLE\STX\"y\n\
    \\CANForwardClientCertDetails\DC2\f\n\
    \\bSANITIZE\DLE\NUL\DC2\DLE\n\
    \\fFORWARD_ONLY\DLE\SOH\DC2\DC2\n\
    \\SOAPPEND_FORWARD\DLE\STX\DC2\DLE\n\
    \\fSANITIZE_SET\DLE\ETX\DC2\ETB\n\
    \\DC3ALWAYS_FORWARD_ONLY\DLE\EOT\"\160\SOH\n\
    \\FSPathWithEscapedSlashesAction\DC2#\n\
    \\USIMPLEMENTATION_SPECIFIC_DEFAULT\DLE\NUL\DC2\DC2\n\
    \\SOKEEP_UNCHANGED\DLE\SOH\DC2\DC2\n\
    \\SOREJECT_REQUEST\DLE\STX\DC2\EM\n\
    \\NAKUNESCAPE_AND_REDIRECT\DLE\ETX\DC2\CAN\n\
    \\DC4UNESCAPE_AND_FORWARD\DLE\EOTB\SYN\n\
    \\SIroute_specifier\DC2\ETX\248B\SOHB\DC1\n\
    \\SIstrip_port_mode:S\154\197\136\RSN\n\
    \Lenvoy.config.filter.network.http_connection_manager.v2.HttpConnectionManagerJ\EOT\b\ESC\DLE\FSJ\EOT\b\v\DLE\fR\fidle_timeout\"\202\SOH\n\
    \\DLELocalReplyConfig\DC2e\n\
    \\amappers\CAN\SOH \ETX(\v2K.envoy.extensions.filters.network.http_connection_manager.v3.ResponseMapperR\amappers\DC2O\n\
    \\vbody_format\CAN\STX \SOH(\v2..envoy.config.core.v3.SubstitutionFormatStringR\n\
    \bodyFormat\"\156\ETX\n\
    \\SOResponseMapper\DC2L\n\
    \\ACKfilter\CAN\SOH \SOH(\v2*.envoy.config.accesslog.v3.AccessLogFilterR\ACKfilterB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2J\n\
    \\vstatus_code\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
    \statusCodeB\v\250B\b*\ACK\DLE\216\EOT(\200\SOH\DC24\n\
    \\EOTbody\CAN\ETX \SOH(\v2 .envoy.config.core.v3.DataSourceR\EOTbody\DC2`\n\
    \\DC4body_format_override\CAN\EOT \SOH(\v2..envoy.config.core.v3.SubstitutionFormatStringR\DC2bodyFormatOverride\DC2X\n\
    \\SOheaders_to_add\CAN\ENQ \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\fheadersToAddB\t\250B\ACK\146\SOH\ETX\DLE\232\a\"\199\SOH\n\
    \\ETXRds\DC2Q\n\
    \\rconfig_source\CAN\SOH \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\fconfigSourceB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2*\n\
    \\DC1route_config_name\CAN\STX \SOH(\tR\SIrouteConfigName:A\154\197\136\RS<\n\
    \:envoy.config.filter.network.http_connection_manager.v2.Rds\"\247\SOH\n\
    \\GSScopedRouteConfigurationsList\DC2y\n\
    \\ESCscoped_route_configurations\CAN\SOH \ETX(\v2/.envoy.config.route.v3.ScopedRouteConfigurationR\EMscopedRouteConfigurationsB\b\250B\ENQ\146\SOH\STX\b\SOH:[\154\197\136\RSV\n\
    \Tenvoy.config.filter.network.http_connection_manager.v2.ScopedRouteConfigurationsList\"\233\SO\n\
    \\fScopedRoutes\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2\143\SOH\n\
    \\DC1scope_key_builder\CAN\STX \SOH(\v2Y.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilderR\SIscopeKeyBuilderB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2X\n\
    \\DC1rds_config_source\CAN\ETX \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\SIrdsConfigSourceB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\165\SOH\n\
    \ scoped_route_configurations_list\CAN\EOT \SOH(\v2Z.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRouteConfigurationsListH\NULR\GSscopedRouteConfigurationsList\DC2g\n\
    \\n\
    \scoped_rds\CAN\ENQ \SOH(\v2F.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRdsH\NULR\tscopedRds\SUB\217\t\n\
    \\SIScopeKeyBuilder\DC2\145\SOH\n\
    \\tfragments\CAN\SOH \ETX(\v2i.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilderR\tfragmentsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\213\a\n\
    \\SIFragmentBuilder\DC2\182\SOH\n\
    \\SYNheader_value_extractor\CAN\SOH \SOH(\v2~.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractorH\NULR\DC4headerValueExtractor\SUB\143\ENQ\n\
    \\DC4HeaderValueExtractor\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2+\n\
    \\DC1element_separator\CAN\STX \SOH(\tR\DLEelementSeparator\DC2\SYN\n\
    \\ENQindex\CAN\ETX \SOH(\rH\NULR\ENQindex\DC2\165\SOH\n\
    \\aelement\CAN\EOT \SOH(\v2\136\SOH.envoy.extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElementH\NULR\aelement\SUB\219\SOH\n\
    \\tKvElement\DC2%\n\
    \\tseparator\CAN\SOH \SOH(\tR\tseparatorB\a\250B\EOTr\STX\DLE\SOH\DC2\EM\n\
    \\ETXkey\CAN\STX \SOH(\tR\ETXkeyB\a\250B\EOTr\STX\DLE\SOH:\139\SOH\154\197\136\RS\133\SOH\n\
    \\130\SOHenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractor.KvElementB\SO\n\
    \\fextract_type:\DEL\154\197\136\RSz\n\
    \xenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder.HeaderValueExtractorB\v\n\
    \\EOTtype\DC2\ETX\248B\SOH:j\154\197\136\RSe\n\
    \cenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilder.FragmentBuilder:Z\154\197\136\RSU\n\
    \Senvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes.ScopeKeyBuilderB\ETB\n\
    \\DLEconfig_specifier\DC2\ETX\248B\SOH:J\154\197\136\RSE\n\
    \Cenvoy.config.filter.network.http_connection_manager.v2.ScopedRoutes\"\241\SOH\n\
    \\tScopedRds\DC2e\n\
    \\CANscoped_rds_config_source\CAN\SOH \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\NAKscopedRdsConfigSourceB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC24\n\
    \\SYNsrds_resources_locator\CAN\STX \SOH(\tR\DC4srdsResourcesLocator:G\154\197\136\RSB\n\
    \@envoy.config.filter.network.http_connection_manager.v2.ScopedRds\"\204\STX\n\
    \\n\
    \HttpFilter\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
    \\ftyped_config\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfig\DC2X\n\
    \\DLEconfig_discovery\CAN\ENQ \SOH(\v2+.envoy.config.core.v3.ExtensionConfigSourceH\NULR\SIconfigDiscovery\DC2\US\n\
    \\vis_optional\CAN\ACK \SOH(\bR\n\
    \isOptionalB\r\n\
    \\vconfig_type:H\154\197\136\RSC\n\
    \Aenvoy.config.filter.network.http_connection_manager.v2.HttpFilterJ\EOT\b\ETX\DLE\EOTJ\EOT\b\STX\DLE\ETXR\ACKconfig\"\159\SOH\n\
    \\DC2RequestIDExtension\DC27\n\
    \\ftyped_config\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\vtypedConfig:P\154\197\136\RSK\n\
    \Ienvoy.config.filter.network.http_connection_manager.v2.RequestIDExtensionBq\n\
    \Iio.envoyproxy.envoy.extensions.filters.network.http_connection_manager.v3B\SUBHttpConnectionManagerProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\135\131\ETX\n\
    \\a\DC2\ENQ\NUL\NUL\238\a\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NULD\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL3\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL2\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL.\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL-\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\t\NUL?\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\n\
    \\NUL+\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\v\NUL2\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\f\NUL1\n\
    \\t\n\
    \\STX\ETX\t\DC2\ETX\r\NUL6\n\
    \\t\n\
    \\STX\ETX\n\
    \\DC2\ETX\SO\NUL0\n\
    \\t\n\
    \\STX\ETX\v\DC2\ETX\SI\NUL%\n\
    \\t\n\
    \\STX\ETX\f\DC2\ETX\DC1\NUL#\n\
    \\t\n\
    \\STX\ETX\r\DC2\ETX\DC2\NUL(\n\
    \\t\n\
    \\STX\ETX\SO\DC2\ETX\DC3\NUL(\n\
    \\t\n\
    \\STX\ETX\SI\DC2\ETX\NAK\NUL-\n\
    \\t\n\
    \\STX\ETX\DLE\DC2\ETX\SYN\NUL(\n\
    \\t\n\
    \\STX\ETX\DC1\DC2\ETX\ETB\NUL)\n\
    \\t\n\
    \\STX\ETX\DC2\DC2\ETX\CAN\NUL'\n\
    \\t\n\
    \\STX\ETX\DC3\DC2\ETX\EM\NUL+\n\
    \\t\n\
    \\STX\ETX\DC4\DC2\ETX\SUB\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\FS\NULb\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\FS\NULb\n\
    \\b\n\
    \\SOH\b\DC2\ETX\GS\NUL;\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\GS\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\RS\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\RS\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\US\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\US\NULF\n\
    \\224\SOH\n\
    \\STX\EOT\NUL\DC2\ENQ&\NUL\207\ENQ\SOH\SUB\CAN [#next-free-field: 49]\n\
    \2\184\SOH [#protodoc-title: HTTP connection manager]\n\
    \ HTTP connection manager :ref:`configuration overview <config_http_conn_man>`.\n\
    \ [#extension: envoy.filters.network.http_connection_manager]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX&\b\GS\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT'\STX(U\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT'\STX(U\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT*\STX>\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX*\a\DLE\n\
    \\235\STX\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX0\EOT\r\SUB\219\STX For every new connection, the connection manager will determine which\n\
    \ codec to use. This mode supports both ALPN for TLS listeners as well as\n\
    \ protocol inference for plaintext listeners. If ALPN data is available, it\n\
    \ is preferred, otherwise protocol inference is used. In almost all cases,\n\
    \ this is the right option to choose for this setting.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX0\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX0\v\f\n\
    \Y\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX3\EOT\SO\SUBJ The connection manager will assume that the client is speaking HTTP/1.1.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX3\EOT\t\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX3\f\r\n\
    \\188\SOH\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX8\EOT\SO\SUB\172\SOH The connection manager will assume that the client is speaking HTTP/2\n\
    \ (Envoy does not require HTTP/2 to take place over TLS or to use ALPN.\n\
    \ Prior knowledge is allowed).\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX8\EOT\t\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX8\f\r\n\
    \\246\SOH\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ETX\DC2\ETX=\EOT\SO\SUB\230\SOH [#not-implemented-hide:] QUIC implementation is not production ready yet. Use this enum with\n\
    \ caution to prevent accidental execution of QUIC code. I.e. `!= HTTP2` is no longer sufficient\n\
    \ to distinguish HTTP1 and HTTP2 traffic.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETX=\EOT\t\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\STX\DC2\ETX=\f\r\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\SOH\DC2\EOT@\STXK\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\SOH\SOH\DC2\ETX@\a!\n\
    \N\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\NUL\DC2\ETXB\EOT\DC2\SUB? Overwrite any Server header with the contents of server_name.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\NUL\SOH\DC2\ETXB\EOT\r\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\NUL\STX\DC2\ETXB\DLE\DC1\n\
    \{\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\SOH\DC2\ETXF\EOT\EM\SUBl If no Server header is present, append Server server_name\n\
    \ If a Server header is present, pass it through.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\SOH\SOH\DC2\ETXF\EOT\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\SOH\STX\DC2\ETXF\ETB\CAN\n\
    \m\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\STX\DC2\ETXJ\EOT\NAK\SUB^ Pass through the value of the server header, and do not append a header\n\
    \ if none is present.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\STX\SOH\DC2\ETXJ\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\STX\STX\DC2\ETXJ\DC3\DC4\n\
    \r\n\
    \\EOT\EOT\NUL\EOT\STX\DC2\EOTO\STXb\ETX\SUBd How to handle the :ref:`config_http_conn_man_headers_x-forwarded-client-cert` (XFCC) HTTP\n\
    \ header.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\STX\SOH\DC2\ETXO\a\US\n\
    \X\n\
    \\ACK\EOT\NUL\EOT\STX\STX\NUL\DC2\ETXQ\EOT\DC1\SUBI Do not send the XFCC header to the next hop. This is the default value.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\STX\STX\NUL\SOH\DC2\ETXQ\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\STX\STX\NUL\STX\DC2\ETXQ\SI\DLE\n\
    \j\n\
    \\ACK\EOT\NUL\EOT\STX\STX\SOH\DC2\ETXU\EOT\NAK\SUB[ When the client connection is mTLS (Mutual TLS), forward the XFCC header\n\
    \ in the request.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\STX\STX\SOH\SOH\DC2\ETXU\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\STX\STX\SOH\STX\DC2\ETXU\DC3\DC4\n\
    \\142\SOH\n\
    \\ACK\EOT\NUL\EOT\STX\STX\STX\DC2\ETXY\EOT\ETB\SUB\DEL When the client connection is mTLS, append the client certificate\n\
    \ information to the request\226\128\153s XFCC header and forward it.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\STX\STX\STX\SOH\DC2\ETXY\EOT\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\STX\STX\STX\STX\DC2\ETXY\NAK\SYN\n\
    \\145\SOH\n\
    \\ACK\EOT\NUL\EOT\STX\STX\ETX\DC2\ETX]\EOT\NAK\SUB\129\SOH When the client connection is mTLS, reset the XFCC header with the client\n\
    \ certificate information and send it to the next hop.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\STX\STX\ETX\SOH\DC2\ETX]\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\STX\STX\ETX\STX\DC2\ETX]\DC3\DC4\n\
    \u\n\
    \\ACK\EOT\NUL\EOT\STX\STX\EOT\DC2\ETXa\EOT\FS\SUBf Always forward the XFCC header in the request, regardless of whether the\n\
    \ client connection is mTLS.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\STX\STX\EOT\SOH\DC2\ETXa\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\STX\STX\EOT\STX\DC2\ETXa\SUB\ESC\n\
    \\220\SOH\n\
    \\EOT\EOT\NUL\EOT\ETX\DC2\ENQf\STX\128\SOH\ETX\SUB\204\SOH Determines the action for request that contain %2F, %2f, %5C or %5c sequences in the URI path.\n\
    \ This operation occurs before URL normalization and the merge slashes transformations if they were enabled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\ETX\SOH\DC2\ETXf\a#\n\
    \\224\SOH\n\
    \\ACK\EOT\NUL\EOT\ETX\STX\NUL\DC2\ETXj\EOT(\SUB\208\SOH Default behavior specific to implementation (i.e. Envoy) of this configuration option.\n\
    \ Envoy, by default, takes the KEEP_UNCHANGED action.\n\
    \ NOTE: the implementation may change the default behavior at-will.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\ETX\STX\NUL\SOH\DC2\ETXj\EOT#\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\ETX\STX\NUL\STX\DC2\ETXj&'\n\
    \&\n\
    \\ACK\EOT\NUL\EOT\ETX\STX\SOH\DC2\ETXm\EOT\ETB\SUB\ETB Keep escaped slashes.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\ETX\STX\SOH\SOH\DC2\ETXm\EOT\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\ETX\STX\SOH\STX\DC2\ETXm\NAK\SYN\n\
    \\229\SOH\n\
    \\ACK\EOT\NUL\EOT\ETX\STX\STX\DC2\ETXq\EOT\ETB\SUB\213\SOH Reject client request with the 400 status. gRPC requests will be rejected with the INTERNAL (13) error code.\n\
    \ The \"httpN.downstream_rq_failed_path_normalization\" counter is incremented for each rejected request.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\ETX\STX\STX\SOH\DC2\ETXq\EOT\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\ETX\STX\STX\STX\DC2\ETXq\NAK\SYN\n\
    \\218\EOT\n\
    \\ACK\EOT\NUL\EOT\ETX\STX\ETX\DC2\ETXz\EOT\RS\SUB\202\EOT Unescape %2F and %5C sequences and redirect request to the new path if these sequences were present.\n\
    \ Redirect occurs after path normalization and merge slashes transformations if they were configured.\n\
    \ NOTE: gRPC requests will be rejected with the INTERNAL (13) error code.\n\
    \ This option minimizes possibility of path confusion exploits by forcing request with unescaped slashes to\n\
    \ traverse all parties: downstream client, intermediate proxies, Envoy and upstream server.\n\
    \ The \"httpN.downstream_rq_redirected_with_normalized_path\" counter is incremented for each\n\
    \ redirected request.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\ETX\STX\ETX\SOH\DC2\ETXz\EOT\EM\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\ETX\STX\ETX\STX\DC2\ETXz\FS\GS\n\
    \\193\SOH\n\
    \\ACK\EOT\NUL\EOT\ETX\STX\EOT\DC2\ETX\DEL\EOT\GS\SUB\177\SOH Unescape %2F and %5C sequences.\n\
    \ Note: this option should not be enabled if intermediaries perform path based access control as\n\
    \ it may lead to path confusion vulnerabilities.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\ETX\STX\EOT\SOH\DC2\ETX\DEL\EOT\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\ETX\STX\EOT\STX\DC2\ETX\DEL\ESC\FS\n\
    \(\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\ACK\131\SOH\STX\195\SOH\ETX\SUB\CAN [#next-free-field: 10]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\EOT\131\SOH\n\
    \\DC1\n\
    \\SI\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\ACK\132\SOH\EOT\133\SOH_\n\
    \\DC4\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\132\SOH\EOT\133\SOH_\n\
    \\DLE\n\
    \\ACK\EOT\NUL\ETX\NUL\EOT\NUL\DC2\ACK\135\SOH\EOT\141\SOH\ENQ\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\EOT\NUL\SOH\DC2\EOT\135\SOH\t\SYN\n\
    \L\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\DC2\EOT\137\SOH\ACK\DC2\SUB: The HTTP listener is used for ingress/incoming requests.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\SOH\DC2\EOT\137\SOH\ACK\r\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\STX\DC2\EOT\137\SOH\DLE\DC1\n\
    \K\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\DC2\EOT\140\SOH\ACK\DC1\SUB9 The HTTP listener is used for egress/outgoing requests.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\SOH\DC2\EOT\140\SOH\ACK\f\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\STX\DC2\EOT\140\SOH\SI\DLE\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\t\DC2\EOT\143\SOH\EOT\DC2\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\t\NUL\DC2\EOT\143\SOH\r\SO\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\t\NUL\SOH\DC2\EOT\143\SOH\r\SO\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\t\NUL\STX\DC2\EOT\143\SOH\r\SO\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\t\SOH\DC2\EOT\143\SOH\DLE\DC1\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\t\SOH\SOH\DC2\EOT\143\SOH\DLE\DC1\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\t\SOH\STX\DC2\EOT\143\SOH\DLE\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\n\
    \\DC2\EOT\145\SOH\EOT:\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\n\
    \\NUL\DC2\EOT\145\SOH\r\GS\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\n\
    \\SOH\DC2\EOT\145\SOH\US9\n\
    \\252\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\EOT\153\SOH\EOT(\SUB\235\STX Target percentage of requests managed by this HTTP connection manager that will be force\n\
    \ traced if the :ref:`x-client-trace-id <config_http_conn_man_headers_x-client-trace-id>`\n\
    \ header is set. This field is a direct analog for the runtime variable\n\
    \ 'tracing.client_sampling' in the :ref:`HTTP Connection Manager\n\
    \ <config_http_conn_man_runtime>`.\n\
    \ Default: 100%\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\EOT\153\SOH\EOT\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\EOT\153\SOH\DC4#\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\EOT\153\SOH&'\n\
    \\228\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\EOT\160\SOH\EOT(\SUB\211\STX Target percentage of requests managed by this HTTP connection manager that will be randomly\n\
    \ selected for trace generation, if not requested by the client or not forced. This field is\n\
    \ a direct analog for the runtime variable 'tracing.random_sampling' in the\n\
    \ :ref:`HTTP Connection Manager <config_http_conn_man_runtime>`.\n\
    \ Default: 100%\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\EOT\160\SOH\EOT\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\EOT\160\SOH\DC4#\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\EOT\160\SOH&'\n\
    \\238\EOT\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\EOT\170\SOH\EOT)\SUB\221\EOT Target percentage of requests managed by this HTTP connection manager that will be traced\n\
    \ after all other sampling checks have been applied (client-directed, force tracing, random\n\
    \ sampling). This field functions as an upper limit on the total configured sampling rate. For\n\
    \ instance, setting client_sampling to 100% but overall_sampling to 1% will result in only 1%\n\
    \ of client requests with the appropriate headers to be force traced. This field is a direct\n\
    \ analog for the runtime variable 'tracing.global_enabled' in the\n\
    \ :ref:`HTTP Connection Manager <config_http_conn_man_runtime>`.\n\
    \ Default: 100%\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ACK\DC2\EOT\170\SOH\EOT\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\EOT\170\SOH\DC4$\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\EOT\170\SOH'(\n\
    \v\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\EOT\174\SOH\EOT\NAK\SUBf Whether to annotate spans with additional data. If true, spans will include logs for stream\n\
    \ events.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ENQ\DC2\EOT\174\SOH\EOT\b\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\EOT\174\SOH\t\DLE\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\EOT\174\SOH\DC3\DC4\n\
    \\190\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\EOT\DC2\EOT\179\SOH\EOT8\SUB\173\SOH Maximum length of the request path to extract and include in the HttpUrl tag. Used to\n\
    \ truncate lengthy request paths to meet the needs of a tracing backend.\n\
    \ Default: 256\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ACK\DC2\EOT\179\SOH\EOT\US\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\SOH\DC2\EOT\179\SOH 3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ETX\DC2\EOT\179\SOH67\n\
    \`\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ENQ\DC2\EOT\182\SOH\EOT7\SUBP A list of custom tags with unique tag name to create tags for the active span.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\EOT\DC2\EOT\182\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ACK\DC2\EOT\182\SOH\r&\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\SOH\DC2\EOT\182\SOH'2\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ETX\DC2\EOT\182\SOH56\n\
    \\218\ETX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ACK\DC2\EOT\194\SOH\EOT.\SUB\201\ETX Configuration for an external tracing provider.\n\
    \ If not specified, no tracing will be performed.\n\
    \\n\
    \ .. attention::\n\
    \   Please be aware that *envoy.tracers.opencensus* provider can only be configured once\n\
    \   in Envoy lifetime.\n\
    \   Any attempts to reconfigure it or to use different configurations for different HCM filters\n\
    \   will be rejected.\n\
    \   Such a constraint is inherent to OpenCensus itself. It cannot be overcome without changes\n\
    \   on OpenCensus side.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ACK\DC2\EOT\194\SOH\EOT \n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\SOH\DC2\EOT\194\SOH!)\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ETX\DC2\EOT\194\SOH,-\n\
    \\SO\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\ACK\197\SOH\STX\204\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\EOT\197\SOH\n\
    \\US\n\
    \\SI\n\
    \\ENQ\EOT\NUL\ETX\SOH\a\DC2\ACK\198\SOH\EOT\200\SOH \n\
    \\DC4\n\
    \\n\
    \\EOT\NUL\ETX\SOH\a\211\136\225\ETX\SOH\DC2\ACK\198\SOH\EOT\200\SOH \n\
    \N\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\EOT\203\SOH\EOT\SUB\SUB> Whether unix socket addresses should be considered internal.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ENQ\DC2\EOT\203\SOH\EOT\b\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\EOT\203\SOH\t\NAK\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\EOT\203\SOH\CAN\EM\n\
    \'\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\ACK\207\SOH\STX\235\SOH\ETX\SUB\ETB [#next-free-field: 7]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\EOT\207\SOH\n\
    \%\n\
    \\SI\n\
    \\ENQ\EOT\NUL\ETX\STX\a\DC2\ACK\208\SOH\EOT\210\SOH&\n\
    \\DC4\n\
    \\n\
    \\EOT\NUL\ETX\STX\a\211\136\225\ETX\SOH\DC2\ACK\208\SOH\EOT\210\SOH&\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\STX\t\DC2\EOT\212\SOH\EOT\SI\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\STX\t\NUL\DC2\EOT\212\SOH\r\SO\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\t\NUL\SOH\DC2\EOT\212\SOH\r\SO\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\t\NUL\STX\DC2\EOT\212\SOH\r\SO\n\
    \W\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\EOT\215\SOH\EOT*\SUBG Whether to forward the subject of the client cert. Defaults to false.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ACK\DC2\EOT\215\SOH\EOT\GS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\EOT\215\SOH\RS%\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\EOT\215\SOH()\n\
    \\205\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SOH\DC2\EOT\220\SOH\EOT\DC2\SUB\188\SOH Whether to forward the entire client cert in URL encoded PEM format. This will appear in the\n\
    \ XFCC header comma separated from other values with the value Cert=\"PEM\".\n\
    \ Defaults to false.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ENQ\DC2\EOT\220\SOH\EOT\b\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\SOH\DC2\EOT\220\SOH\t\r\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ETX\DC2\EOT\220\SOH\DLE\DC1\n\
    \\239\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\STX\STX\DC2\EOT\226\SOH\EOT\DC3\SUB\222\SOH Whether to forward the entire client cert chain (including the leaf cert) in URL encoded PEM\n\
    \ format. This will appear in the XFCC header comma separated from other values with the value\n\
    \ Chain=\"PEM\".\n\
    \ Defaults to false.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ENQ\DC2\EOT\226\SOH\EOT\b\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\SOH\DC2\EOT\226\SOH\t\SO\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ETX\DC2\EOT\226\SOH\DC1\DC2\n\
    \s\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ETX\DC2\EOT\230\SOH\EOT\DC1\SUBc Whether to forward the DNS type Subject Alternative Names of the client cert.\n\
    \ Defaults to false.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ENQ\DC2\EOT\230\SOH\EOT\b\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\SOH\DC2\EOT\230\SOH\t\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ETX\DC2\EOT\230\SOH\SI\DLE\n\
    \r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\EOT\DC2\EOT\234\SOH\EOT\DC1\SUBb Whether to forward the URI type Subject Alternative Name of the client cert. Defaults to\n\
    \ false.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\ENQ\DC2\EOT\234\SOH\EOT\b\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\SOH\DC2\EOT\234\SOH\t\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\ETX\DC2\EOT\234\SOH\SI\DLE\n\
    \\160\ETX\n\
    \\EOT\EOT\NUL\ETX\ETX\DC2\ACK\249\SOH\STX\142\STX\ETX\SUB\143\ETX The configuration for HTTP upgrades.\n\
    \ For each upgrade type desired, an UpgradeConfig must be added.\n\
    \\n\
    \ .. warning::\n\
    \\n\
    \    The current implementation of upgrade headers does not handle\n\
    \    multi-valued upgrade headers. Support for multi-valued headers may be\n\
    \    added in the future if needed.\n\
    \\n\
    \ .. warning::\n\
    \    The current implementation of upgrade headers does not work with HTTP/2\n\
    \    upstreams.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\ETX\SOH\DC2\EOT\249\SOH\n\
    \\ETB\n\
    \\SI\n\
    \\ENQ\EOT\NUL\ETX\ETX\a\DC2\ACK\250\SOH\EOT\252\SOH\CAN\n\
    \\DC4\n\
    \\n\
    \\EOT\NUL\ETX\ETX\a\211\136\225\ETX\SOH\DC2\ACK\250\SOH\EOT\252\SOH\CAN\n\
    \\196\SOH\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\NUL\DC2\EOT\130\STX\EOT\FS\SUB\179\SOH The case-insensitive name of this upgrade, e.g. \"websocket\".\n\
    \ For each upgrade type present in upgrade_configs, requests with\n\
    \ Upgrade: [upgrade_type]\n\
    \ will be proxied upstream.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\ENQ\DC2\EOT\130\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\SOH\DC2\EOT\130\STX\v\ETB\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\ETX\DC2\EOT\130\STX\SUB\ESC\n\
    \\214\SOH\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\SOH\DC2\EOT\135\STX\EOT$\SUB\197\SOH If present, this represents the filter chain which will be created for\n\
    \ this type of upgrade. If no filters are present, the filter chain for\n\
    \ HTTP connections will be used for this upgrade type.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\EOT\DC2\EOT\135\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\ACK\DC2\EOT\135\STX\r\ETB\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\SOH\DC2\EOT\135\STX\CAN\US\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\ETX\DC2\EOT\135\STX\"#\n\
    \\175\STX\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\STX\DC2\EOT\141\STX\EOT*\SUB\158\STX Determines if upgrades are enabled or disabled by default. Defaults to true.\n\
    \ This can be overridden on a per-route basis with :ref:`cluster\n\
    \ <envoy_v3_api_field_config.route.v3.RouteAction.upgrade_configs>` as documented in the\n\
    \ :ref:`upgrade documentation <arch_overview_upgrades>`.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\STX\ACK\DC2\EOT\141\STX\EOT\GS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\STX\SOH\DC2\EOT\141\STX\RS%\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\STX\ETX\DC2\EOT\141\STX()\n\
    \\252\EOT\n\
    \\EOT\EOT\NUL\ETX\EOT\DC2\ACK\153\STX\STX\174\STX\ETX\SUB\235\EOT [#not-implemented-hide:] Transformations that apply to path headers. Transformations are applied\n\
    \ before any processing of requests by HTTP filters, routing, and matching. Only the normalized\n\
    \ path will be visible internally if a transformation is enabled. Any path rewrites that the\n\
    \ router performs (e.g. :ref:`regex_rewrite\n\
    \ <envoy_v3_api_field_config.route.v3.RouteAction.regex_rewrite>` or :ref:`prefix_rewrite\n\
    \ <envoy_v3_api_field_config.route.v3.RouteAction.prefix_rewrite>`) will apply to the *:path* header\n\
    \ destined for the upstream.\n\
    \\n\
    \ Note: access logging and tracing will show the original *:path* header.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\EOT\SOH\DC2\EOT\153\STX\n\
    \\"\n\
    \\244\EOT\n\
    \\ACK\EOT\NUL\ETX\EOT\STX\NUL\DC2\EOT\162\STX\EOTB\SUB\227\EOT [#not-implemented-hide:] Normalization applies internally before any processing of requests by\n\
    \ HTTP filters, routing, and matching *and* will affect the forwarded *:path* header. Defaults\n\
    \ to :ref:`NormalizePathRFC3986\n\
    \ <envoy_v3_api_msg_type.http.v3.PathTransformation.Operation.NormalizePathRFC3986>`. When not\n\
    \ specified, this value may be overridden by the runtime variable\n\
    \ :ref:`http_connection_manager.normalize_path<config_http_conn_man_runtime_normalize_path>`.\n\
    \ Envoy will respond with 400 to paths that are malformed (e.g. for paths that fail RFC 3986\n\
    \ normalization due to disallowed characters.)\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\ACK\DC2\EOT\162\STX\EOT#\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\SOH\DC2\EOT\162\STX$=\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\ETX\DC2\EOT\162\STX@A\n\
    \\176\ENQ\n\
    \\ACK\EOT\NUL\ETX\EOT\STX\SOH\DC2\EOT\173\STX\EOTC\SUB\159\ENQ [#not-implemented-hide:] Normalization only applies internally before any processing of\n\
    \ requests by HTTP filters, routing, and matching. These will be applied after full\n\
    \ transformation is applied. The *:path* header before this transformation will be restored in\n\
    \ the router filter and sent upstream unless it was mutated by a filter. Defaults to no\n\
    \ transformations.\n\
    \ Multiple actions can be applied in the same Transformation, forming a sequential\n\
    \ pipeline. The transformations will be performed in the order that they appear. Envoy will\n\
    \ respond with 400 to paths that are malformed (e.g. for paths that fail RFC 3986\n\
    \ normalization due to disallowed characters.)\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\SOH\ACK\DC2\EOT\173\STX\EOT#\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\SOH\SOH\DC2\EOT\173\STX$>\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\SOH\ETX\DC2\EOT\173\STXAB\n\
    \\v\n\
    \\ETX\EOT\NUL\t\DC2\EOT\176\STX\STX\DC2\n\
    \\f\n\
    \\EOT\EOT\NUL\t\NUL\DC2\EOT\176\STX\v\r\n\
    \\r\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\EOT\176\STX\v\r\n\
    \\r\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\EOT\176\STX\v\r\n\
    \\f\n\
    \\EOT\EOT\NUL\t\SOH\DC2\EOT\176\STX\SI\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\t\SOH\SOH\DC2\EOT\176\STX\SI\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\t\SOH\STX\DC2\EOT\176\STX\SI\DC1\n\
    \\v\n\
    \\ETX\EOT\NUL\n\
    \\DC2\EOT\178\STX\STX\SUB\n\
    \\f\n\
    \\EOT\EOT\NUL\n\
    \\NUL\DC2\EOT\178\STX\v\EM\n\
    \R\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\181\STX\STXJ\SUBD Supplies the type of codec that the connection manager should use.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\EOT\181\STX\STX\v\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\EOT\181\STX\f\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\EOT\181\STX\EM\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\EOT\181\STX\ESCI\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DLE\DC2\EOT\181\STX\FSH\n\
    \\195\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\186\STX\STXB\SUB\180\SOH The human readable prefix to use when emitting statistics for the\n\
    \ connection manager. See the :ref:`statistics documentation <config_http_conn_man_stats>` for\n\
    \ more information.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\EOT\186\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\186\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\EOT\186\STX\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\EOT\186\STX\EMA\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\SO\DC2\EOT\186\STX\SUB@\n\
    \\SO\n\
    \\EOT\EOT\NUL\b\NUL\DC2\ACK\188\STX\STX\201\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\EOT\188\STX\b\ETB\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\EOT\189\STX\EOT&\n\
    \\SI\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\EOT\189\STX\EOT&\n\
    \b\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT\192\STX\EOT\DLE\SUBT The connection manager\226\128\153s route table will be dynamically loaded via the RDS API.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\EOT\192\STX\EOT\a\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\EOT\192\STX\b\v\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\EOT\192\STX\SO\SI\n\
    \g\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\195\STX\EOT8\SUBY The route table for the connection manager is static and is specified in this property.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\EOT\195\STX\EOT&\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\EOT\195\STX'3\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\EOT\195\STX67\n\
    \\226\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT\200\STX\EOT$\SUB\211\SOH A route table will be dynamically assigned to each request based on request attributes\n\
    \ (e.g., the value of a header). The \"routing scopes\" (i.e., route tables) and \"scope keys\" are\n\
    \ specified in this message.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\EOT\200\STX\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\EOT\200\STX\DC1\RS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\EOT\200\STX!#\n\
    \\254\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOT\206\STX\STX'\SUB\239\SOH A list of individual HTTP filters that make up the filter chain for\n\
    \ requests made to the connection manager. :ref:`Order matters <arch_overview_http_filters_ordering>`\n\
    \ as the filters are processed sequentially as request events happen.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\EOT\206\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\EOT\206\STX\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\EOT\206\STX\SYN\"\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\EOT\206\STX%&\n\
    \\130\STX\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOT\211\STX\STX/\SUB\243\SOH Whether the connection manager manipulates the :ref:`config_http_conn_man_headers_user-agent`\n\
    \ and :ref:`config_http_conn_man_headers_downstream-service-cluster` headers. See the linked\n\
    \ documentation for more information. Defaults to false.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\EOT\211\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\EOT\211\STX\FS*\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\EOT\211\STX-.\n\
    \\216\SOH\n\
    \\EOT\EOT\NUL\STX\a\DC2\EOT\216\STX\STX\SYN\SUB\201\SOH Presence of the object defines whether the connection manager\n\
    \ emits :ref:`tracing <arch_overview_tracing>` data to the :ref:`configured tracing provider\n\
    \ <envoy_v3_api_msg_config.trace.v3.Tracing>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\EOT\216\STX\STX\t\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\EOT\216\STX\n\
    \\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\EOT\216\STX\DC4\NAK\n\
    \\151\SOH\n\
    \\EOT\EOT\NUL\STX\b\DC2\ACK\220\STX\STX\221\STXN\SUB\134\SOH Additional settings for HTTP requests handled by the connection manager. These will be\n\
    \ applicable to both HTTP1 and HTTP2 requests.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\EOT\220\STX\STX$\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\EOT\220\STX%A\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\EOT\220\STXDF\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\b\DC2\EOT\221\STX\ACKM\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\STX\b\b\177\242\166\ENQ\SOH\DC2\EOT\221\STX\aL\n\
    \O\n\
    \\EOT\EOT\NUL\STX\t\DC2\EOT\224\STX\STX@\SUBA Additional HTTP/1 settings that are passed to the HTTP/1 codec.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\EOT\224\STX\STX%\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\EOT\224\STX&;\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\EOT\224\STX>?\n\
    \Z\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ACK\227\STX\STX\228\STXN\SUBJ Additional HTTP/2 settings that are passed directly to the HTTP/2 codec.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\EOT\227\STX\STX%\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\EOT\227\STX&<\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\EOT\227\STX?@\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\b\DC2\EOT\228\STX\ACKM\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\STX\n\
    \\b\177\242\166\ENQ\SOH\DC2\EOT\228\STX\aL\n\
    \r\n\
    \\EOT\EOT\NUL\STX\v\DC2\EOT\232\STX\STXB\SUBd Additional HTTP/3 settings that are passed directly to the HTTP/3 codec.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\ACK\DC2\EOT\232\STX\STX%\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\EOT\232\STX&<\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\EOT\232\STX?A\n\
    \\150\SOH\n\
    \\EOT\EOT\NUL\STX\f\DC2\ACK\236\STX\STX\237\STXV\SUB\133\SOH An optional override that the connection manager will write to the server\n\
    \ header in responses. If not set, the default is *envoy*.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ENQ\DC2\EOT\236\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\EOT\236\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\EOT\236\STX\ETB\EM\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\b\DC2\EOT\237\STX\ACKU\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\f\b\175\b\SO\DC2\EOT\237\STX\aT\n\
    \\181\SOH\n\
    \\EOT\EOT\NUL\STX\r\DC2\ACK\242\STX\STX\243\STX5\SUB\164\SOH Defines the action to be applied to the Server header on the response path.\n\
    \ By default, Envoy will overwrite the header with the value specified in\n\
    \ server_name.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\ACK\DC2\EOT\242\STX\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\SOH\DC2\EOT\242\STX\GS9\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\ETX\DC2\EOT\242\STX<>\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\b\DC2\EOT\243\STX\ACK4\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\r\b\175\b\DLE\DC2\EOT\243\STX\a3\n\
    \\195\SOH\n\
    \\EOT\EOT\NUL\STX\SO\DC2\EOT\248\STX\STXN\SUB\180\SOH Allows for explicit transformation of the :scheme header on the request path.\n\
    \ If not set, Envoy's default :ref:`scheme  <config_http_conn_man_headers_scheme>`\n\
    \ handling applies.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\ACK\DC2\EOT\248\STX\STX+\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\SOH\DC2\EOT\248\STX,H\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\ETX\DC2\EOT\248\STXKM\n\
    \\208\SOH\n\
    \\EOT\EOT\NUL\STX\SI\DC2\ACK\253\STX\STX\254\STX4\SUB\191\SOH The maximum request headers size for incoming connections.\n\
    \ If unconfigured, the default max request headers allowed is 60 KiB.\n\
    \ Requests that exceed this limit will receive a 431 response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\ACK\DC2\EOT\253\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\SOH\DC2\EOT\253\STX\RS4\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\ETX\DC2\EOT\253\STX79\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\b\DC2\EOT\254\STX\ACK3\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\SI\b\175\b\ENQ\DC2\EOT\254\STX\a2\n\
    \\167\NAK\n\
    \\EOT\EOT\NUL\STX\DLE\DC2\ACK\167\ETX\STX\168\ETXN\SUB\150\NAK The stream idle timeout for connections managed by the connection manager.\n\
    \ If not specified, this defaults to 5 minutes. The default value was selected\n\
    \ so as not to interfere with any smaller configured timeouts that may have\n\
    \ existed in configurations prior to the introduction of this feature, while\n\
    \ introducing robustness to TCP connections that terminate without a FIN.\n\
    \\n\
    \ This idle timeout applies to new streams and is overridable by the\n\
    \ :ref:`route-level idle_timeout\n\
    \ <envoy_v3_api_field_config.route.v3.RouteAction.idle_timeout>`. Even on a stream in\n\
    \ which the override applies, prior to receipt of the initial request\n\
    \ headers, the :ref:`stream_idle_timeout\n\
    \ <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.stream_idle_timeout>`\n\
    \ applies. Each time an encode/decode event for headers or data is processed\n\
    \ for the stream, the timer will be reset. If the timeout fires, the stream\n\
    \ is terminated with a 408 Request Timeout error code if no upstream response\n\
    \ header has been received, otherwise a stream reset occurs.\n\
    \\n\
    \ This timeout also specifies the amount of time that Envoy will wait for the peer to open enough\n\
    \ window to write any remaining stream data once the entirety of stream data (local end stream is\n\
    \ true) has been buffered pending available window. In other words, this timeout defends against\n\
    \ a peer that does not release enough window to completely write the stream, even though all\n\
    \ data has been proxied within available flow control windows. If the timeout is hit in this\n\
    \ case, the :ref:`tx_flush_timeout <config_http_conn_man_stats_per_codec>` counter will be\n\
    \ incremented. Note that :ref:`max_stream_duration\n\
    \ <envoy_v3_api_field_config.core.v3.HttpProtocolOptions.max_stream_duration>` does not apply to\n\
    \ this corner case.\n\
    \\n\
    \ If the :ref:`overload action <config_overload_manager_overload_actions>` \"envoy.overload_actions.reduce_timeouts\"\n\
    \ is configured, this timeout is scaled according to the value for\n\
    \ :ref:`HTTP_DOWNSTREAM_STREAM_IDLE <envoy_v3_api_enum_value_config.overload.v3.ScaleTimersOverloadActionConfig.TimerType.HTTP_DOWNSTREAM_STREAM_IDLE>`.\n\
    \\n\
    \ Note that it is possible to idle timeout even if the wire traffic for a stream is non-idle, due\n\
    \ to the granularity of events presented to the connection manager. For example, while receiving\n\
    \ very large request headers, it may be the case that there is traffic regularly arriving on the\n\
    \ wire while the connection manage is only able to observe the end-of-headers event, hence the\n\
    \ stream may still idle timeout.\n\
    \\n\
    \ A value of 0 will completely disable the connection manager stream idle\n\
    \ timeout, although per-route idle timeout overrides will continue to apply.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\ACK\DC2\EOT\167\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\SOH\DC2\EOT\167\ETX\ESC.\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\ETX\DC2\EOT\167\ETX13\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\b\DC2\EOT\168\ETX\ACKM\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\STX\DLE\b\177\242\166\ENQ\SOH\DC2\EOT\168\ETX\aL\n\
    \\240\STX\n\
    \\EOT\EOT\NUL\STX\DC1\DC2\ACK\174\ETX\STX\175\ETXN\SUB\223\STX The amount of time that Envoy will wait for the entire request to be received.\n\
    \ The timer is activated when the request is initiated, and is disarmed when the last byte of the\n\
    \ request is sent upstream (i.e. all decoding filters have processed the request), OR when the\n\
    \ response is initiated. If not specified or set to 0, this timeout is disabled.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\ACK\DC2\EOT\174\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\SOH\DC2\EOT\174\ETX\ESC*\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\ETX\DC2\EOT\174\ETX-/\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\b\DC2\EOT\175\ETX\ACKM\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\STX\DC1\b\177\242\166\ENQ\SOH\DC2\EOT\175\ETX\aL\n\
    \\168\STX\n\
    \\EOT\EOT\NUL\STX\DC2\DC2\ACK\180\ETX\STX\183\ETX\EOT\SUB\151\STX The amount of time that Envoy will wait for the request headers to be received. The timer is\n\
    \ activated when the first byte of the headers is received, and is disarmed when the last byte of\n\
    \ the headers has been received. If not specified or set to 0, this timeout is disabled.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\ACK\DC2\EOT\180\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\SOH\DC2\EOT\180\ETX\ESC2\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\ETX\DC2\EOT\180\ETX57\n\
    \\SI\n\
    \\ENQ\EOT\NUL\STX\DC2\b\DC2\ACK\180\ETX8\183\ETX\ETX\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\DC2\b\175\b\NAK\DC2\EOT\181\ETX\EOT(\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\STX\DC2\b\177\242\166\ENQ\SOH\DC2\EOT\182\ETX\EOTI\n\
    \\242\EOT\n\
    \\EOT\EOT\NUL\STX\DC3\DC2\EOT\194\ETX\STX.\SUB\227\EOT The time that Envoy will wait between sending an HTTP/2 \226\128\156shutdown\n\
    \ notification\226\128\157 (GOAWAY frame with max stream ID) and a final GOAWAY frame.\n\
    \ This is used so that Envoy provides a grace period for new streams that\n\
    \ race with the final GOAWAY frame. During this grace period, Envoy will\n\
    \ continue to accept new streams. After the grace period, a final GOAWAY\n\
    \ frame is sent and Envoy will start refusing new streams. Draining occurs\n\
    \ both when a connection hits the idle timeout or during general server\n\
    \ draining. The default grace period is 5000 milliseconds (5 seconds) if this\n\
    \ option is not specified.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\ACK\DC2\EOT\194\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\SOH\DC2\EOT\194\ETX\ESC(\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\ETX\DC2\EOT\194\ETX+-\n\
    \\242\SO\n\
    \\EOT\EOT\NUL\STX\DC4\DC2\EOT\226\ETX\STX6\SUB\227\SO The delayed close timeout is for downstream connections managed by the HTTP connection manager.\n\
    \ It is defined as a grace period after connection close processing has been locally initiated\n\
    \ during which Envoy will wait for the peer to close (i.e., a TCP FIN/RST is received by Envoy\n\
    \ from the downstream connection) prior to Envoy closing the socket associated with that\n\
    \ connection.\n\
    \ NOTE: This timeout is enforced even when the socket associated with the downstream connection\n\
    \ is pending a flush of the write buffer. However, any progress made writing data to the socket\n\
    \ will restart the timer associated with this timeout. This means that the total grace period for\n\
    \ a socket in this state will be\n\
    \ <total_time_waiting_for_write_buffer_flushes>+<delayed_close_timeout>.\n\
    \\n\
    \ Delaying Envoy's connection close and giving the peer the opportunity to initiate the close\n\
    \ sequence mitigates a race condition that exists when downstream clients do not drain/process\n\
    \ data in a connection's receive buffer after a remote close has been detected via a socket\n\
    \ write(). This race leads to such clients failing to process the response code sent by Envoy,\n\
    \ which could result in erroneous downstream processing.\n\
    \\n\
    \ If the timeout triggers, Envoy will close the connection's socket.\n\
    \\n\
    \ The default timeout is 1000 ms if this option is not specified.\n\
    \\n\
    \ .. NOTE::\n\
    \    To be useful in avoiding the race condition described above, this timeout must be set\n\
    \    to *at least* <max round trip time expected between clients and Envoy>+<100ms to account for\n\
    \    a reasonable \"worst\" case processing time for a full iteration of Envoy's event loop>.\n\
    \\n\
    \ .. WARNING::\n\
    \    A value of 0 will completely disable delayed close processing. When disabled, the downstream\n\
    \    connection's socket will be closed immediately after the write flush is completed or will\n\
    \    never close if the write flush does not complete.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\ACK\DC2\EOT\226\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\SOH\DC2\EOT\226\ETX\ESC0\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\ETX\DC2\EOT\226\ETX35\n\
    \y\n\
    \\EOT\EOT\NUL\STX\NAK\DC2\EOT\230\ETX\STX9\SUBk Configuration for :ref:`HTTP access logs <arch_overview_access_logs>`\n\
    \ emitted by the connection manager.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NAK\EOT\DC2\EOT\230\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NAK\ACK\DC2\EOT\230\ETX\v(\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NAK\SOH\DC2\EOT\230\ETX)3\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NAK\ETX\DC2\EOT\230\ETX68\n\
    \\168\EOT\n\
    \\EOT\EOT\NUL\STX\SYN\DC2\ACK\239\ETX\STX\240\ETXN\SUB\151\EOT If set to true, the connection manager will use the real remote address\n\
    \ of the client connection when determining internal versus external origin and manipulating\n\
    \ various headers. If set to false or absent, the connection manager will use the\n\
    \ :ref:`config_http_conn_man_headers_x-forwarded-for` HTTP header. See the documentation for\n\
    \ :ref:`config_http_conn_man_headers_x-forwarded-for`,\n\
    \ :ref:`config_http_conn_man_headers_x-envoy-internal`, and\n\
    \ :ref:`config_http_conn_man_headers_x-envoy-external-address` for more information.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\ACK\DC2\EOT\239\ETX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\SOH\DC2\EOT\239\ETX\FS.\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\ETX\DC2\EOT\239\ETX13\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\b\DC2\EOT\240\ETX\ACKM\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\STX\SYN\b\177\242\166\ENQ\SOH\DC2\EOT\240\ETX\aL\n\
    \\202\b\n\
    \\EOT\EOT\NUL\STX\ETB\DC2\ACK\134\EOT\STX\135\EOTS\SUB\185\b The number of additional ingress proxy hops from the right side of the\n\
    \ :ref:`config_http_conn_man_headers_x-forwarded-for` HTTP header to trust when\n\
    \ determining the origin client's IP address. The default is zero if this option\n\
    \ is not specified. See the documentation for\n\
    \ :ref:`config_http_conn_man_headers_x-forwarded-for` for more information.\n\
    \\n\
    \ .. note::\n\
    \    This field is deprecated and instead :ref:`original_ip_detection_extensions\n\
    \    <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.original_ip_detection_extensions>`\n\
    \    should be used to configure the :ref:`xff extension <envoy_v3_api_msg_extensions.http.original_ip_detection.xff.v3.XffConfig>`\n\
    \    to configure IP detection using the :ref:`config_http_conn_man_headers_x-forwarded-for` header. To replace\n\
    \    this field use a config like the following:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    original_ip_detection_extensions:\n\
    \      typed_config:\n\
    \        \"@type\": type.googleapis.com/envoy.extensions.http.original_ip_detection.xff.v3.XffConfig\n\
    \        xff_num_trusted_hops: 1\n\
    \\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETB\ENQ\DC2\EOT\134\EOT\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETB\SOH\DC2\EOT\134\EOT\t\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETB\ETX\DC2\EOT\134\EOT \"\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETB\b\DC2\EOT\135\EOT\ACKR\n\
    \\SO\n\
    \\ACK\EOT\NUL\STX\ETB\b\ETX\DC2\EOT\135\EOT\a\CAN\n\
    \\DC1\n\
    \\t\EOT\NUL\STX\ETB\b\242\232\128K\DC2\EOT\135\EOT\SUBQ\n\
    \\186\ENQ\n\
    \\EOT\EOT\NUL\STX\CAN\DC2\EOT\148\EOT\STXU\SUB\171\ENQ The configuration for the original IP detection extensions.\n\
    \\n\
    \ When configured the extensions will be called along with the request headers\n\
    \ and information about the downstream connection, such as the directly connected address.\n\
    \ Each extension will then use these parameters to decide the request's effective remote address.\n\
    \ If an extension fails to detect the original IP address and isn't configured to reject\n\
    \ the request, the HCM will try the remaining extensions until one succeeds or rejects\n\
    \ the request. If the request isn't rejected nor any extension succeeds, the HCM will\n\
    \ fallback to using the remote address.\n\
    \\n\
    \ [#extension-category: envoy.http.original_ip_detection]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\CAN\EOT\DC2\EOT\148\EOT\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\CAN\ACK\DC2\EOT\148\EOT\v.\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\CAN\SOH\DC2\EOT\148\EOT/O\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\CAN\ETX\DC2\EOT\148\EOTRT\n\
    \\197\STX\n\
    \\EOT\EOT\NUL\STX\EM\DC2\EOT\154\EOT\STX5\SUB\182\STX Configures what network addresses are considered internal for stats and header sanitation\n\
    \ purposes. If unspecified, only RFC1918 IP addresses will be considered internal.\n\
    \ See the documentation for :ref:`config_http_conn_man_headers_x-envoy-internal` for more\n\
    \ information about internal/external addresses.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EM\ACK\DC2\EOT\154\EOT\STX\ETB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EM\SOH\DC2\EOT\154\EOT\CAN/\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EM\ETX\DC2\EOT\154\EOT24\n\
    \\251\EOT\n\
    \\EOT\EOT\NUL\STX\SUB\DC2\EOT\164\EOT\STX\FS\SUB\236\EOT If set, Envoy will not append the remote address to the\n\
    \ :ref:`config_http_conn_man_headers_x-forwarded-for` HTTP header. This may be used in\n\
    \ conjunction with HTTP filters that explicitly manipulate XFF after the HTTP connection manager\n\
    \ has mutated the request headers. While :ref:`use_remote_address\n\
    \ <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.use_remote_address>`\n\
    \ will also suppress XFF addition, it has consequences for logging and other\n\
    \ Envoy uses of the remote address, so *skip_xff_append* should be used\n\
    \ when only an elision of XFF addition is intended.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SUB\ENQ\DC2\EOT\164\EOT\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SUB\SOH\DC2\EOT\164\EOT\a\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SUB\ETX\DC2\EOT\164\EOT\EM\ESC\n\
    \~\n\
    \\EOT\EOT\NUL\STX\ESC\DC2\EOT\168\EOT\STXb\SUBp Via header value to append to request and response headers. If this is\n\
    \ empty, no via header will be appended.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ESC\ENQ\DC2\EOT\168\EOT\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ESC\SOH\DC2\EOT\168\EOT\t\f\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ESC\ETX\DC2\EOT\168\EOT\SI\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ESC\b\DC2\EOT\168\EOT\DC2a\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\ESC\b\175\b\SO\DC2\EOT\168\EOT\DC3`\n\
    \\181\STX\n\
    \\EOT\EOT\NUL\STX\FS\DC2\EOT\174\EOT\STX5\SUB\166\STX Whether the connection manager will generate the :ref:`x-request-id\n\
    \ <config_http_conn_man_headers_x-request-id>` header if it does not exist. This defaults to\n\
    \ true. Generating a random UUID4 is expensive so in high throughput scenarios where this feature\n\
    \ is not desired it can be disabled.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\FS\ACK\DC2\EOT\174\EOT\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\FS\SOH\DC2\EOT\174\EOT\FS/\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\FS\ETX\DC2\EOT\174\EOT24\n\
    \\191\STX\n\
    \\EOT\EOT\NUL\STX\GS\DC2\EOT\180\EOT\STX)\SUB\176\STX Whether the connection manager will keep the :ref:`x-request-id\n\
    \ <config_http_conn_man_headers_x-request-id>` header if passed for a request that is edge\n\
    \ (Edge request is the request from external clients to front Envoy) and not reset it, which\n\
    \ is the current Envoy behaviour. This defaults to false.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\GS\ENQ\DC2\EOT\180\EOT\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\GS\SOH\DC2\EOT\180\EOT\a#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\GS\ETX\DC2\EOT\180\EOT&(\n\
    \\191\STX\n\
    \\EOT\EOT\NUL\STX\RS\DC2\EOT\185\EOT\STX.\SUB\176\STX If set, Envoy will always set :ref:`x-request-id <config_http_conn_man_headers_x-request-id>` header in response.\n\
    \ If this is false or not set, the request ID is returned in responses only if tracing is forced using\n\
    \ :ref:`x-envoy-force-trace <config_http_conn_man_headers_x-envoy-force-trace>` header.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\RS\ENQ\DC2\EOT\185\EOT\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\RS\SOH\DC2\EOT\185\EOT\a(\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\RS\ETX\DC2\EOT\185\EOT+-\n\
    \t\n\
    \\EOT\EOT\NUL\STX\US\DC2\ACK\189\EOT\STX\190\EOT5\SUBd How to handle the :ref:`config_http_conn_man_headers_x-forwarded-client-cert` (XFCC) HTTP\n\
    \ header.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\US\ACK\DC2\EOT\189\EOT\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\US\SOH\DC2\EOT\189\EOT\ESC6\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\US\ETX\DC2\EOT\189\EOT9;\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\US\b\DC2\EOT\190\EOT\ACK4\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\US\b\175\b\DLE\DC2\EOT\190\EOT\a3\n\
    \\176\EOT\n\
    \\EOT\EOT\NUL\STX \DC2\EOT\199\EOT\STXC\SUB\161\EOT This field is valid only when :ref:`forward_client_cert_details\n\
    \ <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.forward_client_cert_details>`\n\
    \ is APPEND_FORWARD or SANITIZE_SET and the client connection is mTLS. It specifies the fields in\n\
    \ the client certificate to be forwarded. Note that in the\n\
    \ :ref:`config_http_conn_man_headers_x-forwarded-client-cert` header, *Hash* is always set, and\n\
    \ *By* is always set when the client certificate presents the URI type Subject Alternative Name\n\
    \ value.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX \ACK\DC2\EOT\199\EOT\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX \SOH\DC2\EOT\199\EOT\RS=\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX \ETX\DC2\EOT\199\EOT@B\n\
    \\170\STX\n\
    \\EOT\EOT\NUL\STX!\DC2\EOT\205\EOT\STX\US\SUB\155\STX If proxy_100_continue is true, Envoy will proxy incoming \"Expect:\n\
    \ 100-continue\" headers upstream, and forward \"100 Continue\" responses\n\
    \ downstream. If this is false or not set, Envoy will instead strip the\n\
    \ \"Expect: 100-continue\" header, and send a \"100 Continue\" response itself.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX!\ENQ\DC2\EOT\205\EOT\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX!\SOH\DC2\EOT\205\EOT\a\EM\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX!\ETX\DC2\EOT\205\EOT\FS\RS\n\
    \\153\a\n\
    \\EOT\EOT\NUL\STX\"\DC2\EOT\220\EOT\STX>\SUB\138\a If\n\
    \ :ref:`use_remote_address\n\
    \ <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.use_remote_address>`\n\
    \ is true and represent_ipv4_remote_address_as_ipv4_mapped_ipv6 is true and the remote address is\n\
    \ an IPv4 address, the address will be mapped to IPv6 before it is appended to *x-forwarded-for*.\n\
    \ This is useful for testing compatibility of upstream services that parse the header value. For\n\
    \ example, 50.0.0.1 is represented as ::FFFF:50.0.0.1. See `IPv4-Mapped IPv6 Addresses\n\
    \ <https://tools.ietf.org/html/rfc4291#section-2.5.5.2>`_ for details. This will also affect the\n\
    \ :ref:`config_http_conn_man_headers_x-envoy-external-address` header. See\n\
    \ :ref:`http_connection_manager.represent_ipv4_remote_address_as_ipv4_mapped_ipv6\n\
    \ <config_http_conn_man_runtime_represent_ipv4_remote_address_as_ipv4_mapped_ipv6>` for runtime\n\
    \ control.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\"\ENQ\DC2\EOT\220\EOT\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\"\SOH\DC2\EOT\220\EOT\a8\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\"\ETX\DC2\EOT\220\EOT;=\n\
    \\f\n\
    \\EOT\EOT\NUL\STX#\DC2\EOT\222\EOT\STX.\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX#\EOT\DC2\EOT\222\EOT\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX#\ACK\DC2\EOT\222\EOT\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX#\SOH\DC2\EOT\222\EOT\EM(\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX#\ETX\DC2\EOT\222\EOT+-\n\
    \\222\ENQ\n\
    \\EOT\EOT\NUL\STX$\DC2\EOT\235\EOT\STX0\SUB\207\ENQ Should paths be normalized according to RFC 3986 before any processing of\n\
    \ requests by HTTP filters or routing? This affects the upstream *:path* header\n\
    \ as well. For paths that fail this check, Envoy will respond with 400 to\n\
    \ paths that are malformed. This defaults to false currently but will default\n\
    \ true in the future. When not specified, this value may be overridden by the\n\
    \ runtime variable\n\
    \ :ref:`http_connection_manager.normalize_path<config_http_conn_man_runtime_normalize_path>`.\n\
    \ See `Normalization and Comparison <https://tools.ietf.org/html/rfc3986#section-6>`_\n\
    \ for details of normalization.\n\
    \ Note that Envoy does not perform\n\
    \ `case normalization <https://tools.ietf.org/html/rfc3986#section-6.2.2.1>`_\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX$\ACK\DC2\EOT\235\EOT\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX$\SOH\DC2\EOT\235\EOT\FS*\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX$\ETX\DC2\EOT\235\EOT-/\n\
    \\219\ETX\n\
    \\EOT\EOT\NUL\STX%\DC2\EOT\242\EOT\STX\SUB\SUB\204\ETX Determines if adjacent slashes in the path are merged into one before any processing of\n\
    \ requests by HTTP filters or routing. This affects the upstream *:path* header as well. Without\n\
    \ setting this option, incoming requests with path `//dir///file` will not match against route\n\
    \ with `prefix` match set to `/dir`. Defaults to `false`. Note that slash merging is not part of\n\
    \ `HTTP spec <https://tools.ietf.org/html/rfc3986>`_ and is provided for convenience.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX%\ENQ\DC2\EOT\242\EOT\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX%\SOH\DC2\EOT\242\EOT\a\DC4\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX%\ETX\DC2\EOT\242\EOT\ETB\EM\n\
    \\146\EOT\n\
    \\EOT\EOT\NUL\STX&\DC2\EOT\249\EOT\STXE\SUB\131\EOT Action to take when request URL path contains escaped slash sequences (%2F, %2f, %5C and %5c).\n\
    \ The default value can be overridden by the :ref:`http_connection_manager.path_with_escaped_slashes_action<config_http_conn_man_runtime_path_with_escaped_slashes_action>`\n\
    \ runtime variable.\n\
    \ The :ref:`http_connection_manager.path_with_escaped_slashes_action_sampling<config_http_conn_man_runtime_path_with_escaped_slashes_action_enabled>` runtime\n\
    \ variable can be used to apply the action to a portion of all requests.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX&\ACK\DC2\EOT\249\EOT\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX&\SOH\DC2\EOT\249\EOT\US?\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX&\ETX\DC2\EOT\249\EOTBD\n\
    \\253\ACK\n\
    \\EOT\EOT\NUL\STX'\DC2\EOT\139\ENQ\STX/\SUB\238\ACK The configuration of the request ID extension. This includes operations such as\n\
    \ generation, validation, and associated tracing operations. If empty, the\n\
    \ :ref:`UuidRequestIdConfig <envoy_v3_api_msg_extensions.request_id.uuid.v3.UuidRequestIdConfig>`\n\
    \ default extension is used with default parameters. See the documentation for that extension\n\
    \ for details on what it does. Customizing the configuration for the default extension can be\n\
    \ achieved by configuring it explicitly here. For example, to disable trace reason packing,\n\
    \ the following configuration can be used:\n\
    \\n\
    \ .. validated-code-block:: yaml\n\
    \   :type-name: envoy.extensions.filters.network.http_connection_manager.v3.RequestIDExtension\n\
    \\n\
    \   typed_config:\n\
    \     \"@type\": type.googleapis.com/envoy.extensions.request_id.uuid.v3.UuidRequestIdConfig\n\
    \     pack_trace_reason: false\n\
    \\n\
    \ [#extension-category: envoy.request_id]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX'\ACK\DC2\EOT\139\ENQ\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX'\SOH\DC2\EOT\139\ENQ\NAK)\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX'\ETX\DC2\EOT\139\ENQ,.\n\
    \\129\STX\n\
    \\EOT\EOT\NUL\STX(\DC2\EOT\144\ENQ\STX+\SUB\242\SOH The configuration to customize local reply returned by Envoy. It can customize status code,\n\
    \ body text and response content type. If not specified, status code and text body are hard\n\
    \ coded in Envoy, the response content type is plain text.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX(\ACK\DC2\EOT\144\ENQ\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX(\SOH\DC2\EOT\144\ENQ\DC3%\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX(\ETX\DC2\EOT\144\ENQ(*\n\
    \\253\ACK\n\
    \\EOT\EOT\NUL\STX)\DC2\ACK\155\ENQ\STX\156\ENQM\SUB\236\ACK Determines if the port part should be removed from host/authority header before any processing\n\
    \ of request by HTTP filters or routing. The port would be removed only if it is equal to the :ref:`listener's<envoy_v3_api_field_config.listener.v3.Listener.address>`\n\
    \ local port. This affects the upstream host header unless the method is\n\
    \ CONNECT in which case if no filter adds a port the original port will be restored before headers are\n\
    \ sent upstream.\n\
    \ Without setting this option, incoming requests with host `example:443` will not match against\n\
    \ route with :ref:`domains<envoy_v3_api_field_config.route.v3.VirtualHost.domains>` match set to `example`. Defaults to `false`. Note that port removal is not part\n\
    \ of `HTTP spec <https://tools.ietf.org/html/rfc3986>`_ and is provided for convenience.\n\
    \ Only one of `strip_matching_host_port` or `strip_any_host_port` can be set.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX)\ENQ\DC2\EOT\155\ENQ\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX)\SOH\DC2\EOT\155\ENQ\a\US\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX)\ETX\DC2\EOT\155\ENQ\"$\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX)\b\DC2\EOT\156\ENQ\ACKL\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\STX)\b\142\227\255Q\STX\DC2\EOT\156\ENQ\aK\n\
    \\SO\n\
    \\EOT\EOT\NUL\b\SOH\DC2\ACK\158\ENQ\STX\168\ENQ\ETX\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\SOH\SOH\DC2\EOT\158\ENQ\b\ETB\n\
    \\239\ENQ\n\
    \\EOT\EOT\NUL\STX*\DC2\EOT\167\ENQ\EOT\"\SUB\224\ENQ Determines if the port part should be removed from host/authority header before any processing\n\
    \ of request by HTTP filters or routing.\n\
    \ This affects the upstream host header unless the method is CONNECT in\n\
    \ which case if no filter adds a port the original port will be restored before headers are sent upstream.\n\
    \ Without setting this option, incoming requests with host `example:443` will not match against\n\
    \ route with :ref:`domains<envoy_v3_api_field_config.route.v3.VirtualHost.domains>` match set to `example`. Defaults to `false`. Note that port removal is not part\n\
    \ of `HTTP spec <https://tools.ietf.org/html/rfc3986>`_ and is provided for convenience.\n\
    \ Only one of `strip_matching_host_port` or `strip_any_host_port` can be set.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX*\ENQ\DC2\EOT\167\ENQ\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX*\SOH\DC2\EOT\167\ENQ\t\FS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX*\ETX\DC2\EOT\167\ENQ\US!\n\
    \\151\n\
    \\n\
    \\EOT\EOT\NUL\STX+\DC2\EOT\186\ENQ\STXF\SUB\136\n\
    \ Governs Envoy's behavior when receiving invalid HTTP from downstream.\n\
    \ If this option is false (default), Envoy will err on the conservative side handling HTTP\n\
    \ errors, terminating both HTTP/1.1 and HTTP/2 connections when receiving an invalid request.\n\
    \ If this option is set to true, Envoy will be more permissive, only resetting the invalid\n\
    \ stream in the case of HTTP/2 and leaving the connection open where possible (if the entire\n\
    \ request is read for HTTP/1.1)\n\
    \ In general this should be true for deployments receiving trusted traffic (L2 Envoys,\n\
    \ company-internal mesh) and false when receiving untrusted traffic (edge deployments).\n\
    \\n\
    \ If different behaviors for invalid_http_message for HTTP/1 and HTTP/2 are\n\
    \ desired, one should use the new HTTP/1 option :ref:`override_stream_error_on_invalid_http_message\n\
    \ <envoy_v3_api_field_config.core.v3.Http1ProtocolOptions.override_stream_error_on_invalid_http_message>` or the new HTTP/2 option\n\
    \ :ref:`override_stream_error_on_invalid_http_message\n\
    \ <envoy_v3_api_field_config.core.v3.Http2ProtocolOptions.override_stream_error_on_invalid_http_message>`\n\
    \ *not* the deprecated but similarly named :ref:`stream_error_on_invalid_http_messaging\n\
    \ <envoy_v3_api_field_config.core.v3.Http2ProtocolOptions.stream_error_on_invalid_http_messaging>`\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX+\ACK\DC2\EOT\186\ENQ\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX+\SOH\DC2\EOT\186\ENQ\FS@\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX+\ETX\DC2\EOT\186\ENQCE\n\
    \\185\EOT\n\
    \\EOT\EOT\NUL\STX,\DC2\EOT\196\ENQ\STX;\SUB\170\EOT [#not-implemented-hide:] Path normalization configuration. This includes\n\
    \ configurations for transformations (e.g. RFC 3986 normalization or merge\n\
    \ adjacent slashes) and the policy to apply them. The policy determines\n\
    \ whether transformations affect the forwarded *:path* header. RFC 3986 path\n\
    \ normalization is enabled by default and the default policy is that the\n\
    \ normalized header will be forwarded. See :ref:`PathNormalizationOptions\n\
    \ <envoy_v3_api_msg_extensions.filters.network.http_connection_manager.v3.PathNormalizationOptions>`\n\
    \ for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX,\ACK\DC2\EOT\196\ENQ\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX,\SOH\DC2\EOT\196\ENQ\ESC5\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX,\ETX\DC2\EOT\196\ENQ8:\n\
    \\189\ENQ\n\
    \\EOT\EOT\NUL\STX-\DC2\EOT\206\ENQ\STX$\SUB\174\ENQ Determines if trailing dot of the host should be removed from host/authority header before any\n\
    \ processing of request by HTTP filters or routing.\n\
    \ This affects the upstream host header.\n\
    \ Without setting this option, incoming requests with host `example.com.` will not match against\n\
    \ route with :ref:`domains<envoy_v3_api_field_config.route.v3.VirtualHost.domains>` match set to `example.com`. Defaults to `false`.\n\
    \ When the incoming request contains a host/authority header that includes a port number,\n\
    \ setting this option will strip a trailing dot, if present, from the host section,\n\
    \ leaving the port as is (e.g. host value `example.com.:443` will be updated to `example.com:443`).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX-\ENQ\DC2\EOT\206\ENQ\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX-\SOH\DC2\EOT\206\ENQ\a\RS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX-\ETX\DC2\EOT\206\ENQ!#\n\
    \M\n\
    \\STX\EOT\SOH\DC2\ACK\210\ENQ\NUL\254\ENQ\SOH\SUB? The configuration to customize local reply returned by Envoy.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SOH\SOH\DC2\EOT\210\ENQ\b\CAN\n\
    \\173\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\213\ENQ\STX&\SUB\158\SOH Configuration of list of mappers which allows to filter and change local response.\n\
    \ The mappers will be checked by the specified order until one is matched.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\EOT\213\ENQ\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\EOT\213\ENQ\v\EM\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\213\ENQ\SUB!\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\213\ENQ$%\n\
    \\184\t\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\253\ENQ\STX:\SUB\169\t The configuration to form response body from the :ref:`command operators <config_access_log_command_operators>`\n\
    \ and to specify response content type as one of: plain/text or application/json.\n\
    \\n\
    \ Example one: \"plain/text\" ``body_format``.\n\
    \\n\
    \ .. validated-code-block:: yaml\n\
    \   :type-name: envoy.config.core.v3.SubstitutionFormatString\n\
    \\n\
    \   text_format: \"%LOCAL_REPLY_BODY%:%RESPONSE_CODE%:path=%REQ(:path)%\\n\"\n\
    \\n\
    \ The following response body in \"plain/text\" format will be generated for a request with\n\
    \ local reply body of \"upstream connection error\", response_code=503 and path=/foo.\n\
    \\n\
    \ .. code-block:: text\n\
    \\n\
    \   upstream connect error:503:path=/foo\n\
    \\n\
    \ Example two: \"application/json\" ``body_format``.\n\
    \\n\
    \ .. validated-code-block:: yaml\n\
    \   :type-name: envoy.config.core.v3.SubstitutionFormatString\n\
    \\n\
    \   json_format:\n\
    \     status: \"%RESPONSE_CODE%\"\n\
    \     message: \"%LOCAL_REPLY_BODY%\"\n\
    \     path: \"%REQ(:path)%\"\n\
    \\n\
    \ The following response body in \"application/json\" format would be generated for a request with\n\
    \ local reply body of \"upstream connection error\", response_code=503 and path=/foo.\n\
    \\n\
    \ .. code-block:: json\n\
    \\n\
    \  {\n\
    \    \"status\": 503,\n\
    \    \"message\": \"upstream connection error\",\n\
    \    \"path\": \"/foo\"\n\
    \  }\n\
    \\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\EOT\253\ENQ\STX)\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\253\ENQ*5\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\253\ENQ89\n\
    \]\n\
    \\STX\EOT\STX\DC2\ACK\130\ACK\NUL\149\ACK\SOH\SUBO The configuration to filter and change local response.\n\
    \ [#next-free-field: 6]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\130\ACK\b\SYN\n\
    \@\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\132\ACK\STX_\SUB2 Filter to determine if this mapper should apply.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\EOT\132\ACK\STX%\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\132\ACK&,\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\132\ACK/0\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\EOT\132\ACK1^\n\
    \\DLE\n\
    \\b\EOT\STX\STX\NUL\b\175\b\DC1\DC2\EOT\132\ACK2]\n\
    \:\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\135\ACK\STX]\SUB, The new response status code if specified.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\EOT\135\ACK\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\135\ACK\RS)\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\135\ACK,-\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\EOT\135\ACK.\\\n\
    \\DLE\n\
    \\b\EOT\STX\STX\SOH\b\175\b\ENQ\DC2\EOT\135\ACK/[\n\
    \\144\SOH\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\139\ACK\STX%\SUB\129\SOH The new local reply body text if specified. It will be used in the `%LOCAL_REPLY_BODY%`\n\
    \ command operator in the `body_format`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\EOT\139\ACK\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\139\ACK\FS \n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\139\ACK#$\n\
    \\229\SOH\n\
    \\EOT\EOT\STX\STX\ETX\DC2\EOT\143\ACK\STXC\SUB\214\SOH A per mapper `body_format` to override the :ref:`body_format <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.LocalReplyConfig.body_format>`.\n\
    \ It will be used when this mapper is matched.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\EOT\143\ACK\STX)\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\EOT\143\ACK*>\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\EOT\143\ACKAB\n\
    \\191\SOH\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ACK\147\ACK\STX\148\ACK6\SUB\174\SOH HTTP headers to add to a local reply. This allows the response mapper to append, to add\n\
    \ or to override headers of any local reply before it is sent to a downstream client.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\EOT\DC2\EOT\147\ACK\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\EOT\147\ACK\v+\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\EOT\147\ACK,:\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\EOT\147\ACK=>\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\b\DC2\EOT\148\ACK\ACK5\n\
    \\DLE\n\
    \\b\EOT\STX\STX\EOT\b\175\b\DC2\DC2\EOT\148\ACK\a4\n\
    \\f\n\
    \\STX\EOT\ETX\DC2\ACK\151\ACK\NUL\163\ACK\SOH\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\151\ACK\b\v\n\
    \\r\n\
    \\ETX\EOT\ETX\a\DC2\ACK\152\ACK\STX\153\ACKC\n\
    \\DC2\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\ACK\152\ACK\STX\153\ACKC\n\
    \7\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\156\ACK\STX^\SUB) Configuration source specifier for RDS.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\EOT\156\ACK\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\156\ACK\RS+\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\156\ACK./\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\EOT\156\ACK0]\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\NUL\b\175\b\DC1\DC2\EOT\156\ACK1\\\n\
    \\249\SOH\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\162\ACK\STX\US\SUB\234\SOH The name of the route configuration. This name will be passed to the RDS\n\
    \ API. This allows an Envoy configuration with multiple HTTP listeners (and\n\
    \ associated HTTP connection manager filters) to use different route\n\
    \ configurations.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\EOT\162\ACK\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\162\ACK\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\162\ACK\GS\RS\n\
    \e\n\
    \\STX\EOT\EOT\DC2\ACK\166\ACK\NUL\172\ACK\SOH\SUBW This message is used to work around the limitations with 'oneof' and repeated fields.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\166\ACK\b%\n\
    \\r\n\
    \\ETX\EOT\EOT\a\DC2\ACK\167\ACK\STX\168\ACK]\n\
    \\DC2\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\ACK\167\ACK\STX\168\ACK]\n\
    \\SO\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ACK\170\ACK\STX\171\ACK3\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\EOT\170\ACK\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\170\ACK\v3\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\170\ACK4O\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\170\ACKRS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\EOT\171\ACK\ACK2\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\NUL\b\175\b\DC2\DC2\EOT\171\ACK\a1\n\
    \%\n\
    \\STX\EOT\ENQ\DC2\ACK\175\ACK\NUL\175\a\SOH\SUB\ETB [#next-free-field: 6]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\175\ACK\b\DC4\n\
    \\r\n\
    \\ETX\EOT\ENQ\a\DC2\ACK\176\ACK\STX\177\ACKL\n\
    \\DC2\n\
    \\b\EOT\ENQ\a\211\136\225\ETX\SOH\DC2\ACK\176\ACK\STX\177\ACKL\n\
    \\234\ACK\n\
    \\EOT\EOT\ENQ\ETX\NUL\DC2\ACK\188\ACK\STX\145\a\ETX\SUB\217\ACK Specifies the mechanism for constructing \"scope keys\" based on HTTP request attributes. These\n\
    \ keys are matched against a set of :ref:`Key<envoy_v3_api_msg_config.route.v3.ScopedRouteConfiguration.Key>`\n\
    \ objects assembled from :ref:`ScopedRouteConfiguration<envoy_v3_api_msg_config.route.v3.ScopedRouteConfiguration>`\n\
    \ messages distributed via SRDS (the Scoped Route Discovery Service) or assigned statically via\n\
    \ :ref:`scoped_route_configurations_list<envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.ScopedRoutes.scoped_route_configurations_list>`.\n\
    \\n\
    \ Upon receiving a request's headers, the Router will build a key using the algorithm specified\n\
    \ by this message. This key will be used to look up the routing table (i.e., the\n\
    \ :ref:`RouteConfiguration<envoy_v3_api_msg_config.route.v3.RouteConfiguration>`) to use for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\ETX\NUL\SOH\DC2\EOT\188\ACK\n\
    \\EM\n\
    \\SI\n\
    \\ENQ\EOT\ENQ\ETX\NUL\a\DC2\ACK\189\ACK\EOT\190\ACK^\n\
    \\DC4\n\
    \\n\
    \\EOT\ENQ\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\189\ACK\EOT\190\ACK^\n\
    \n\n\
    \\ACK\EOT\ENQ\ETX\NUL\ETX\NUL\DC2\ACK\193\ACK\EOT\139\a\ENQ\SUB\\ Specifies the mechanism for constructing key fragments which are composed into scope keys.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\ETX\NUL\SOH\DC2\EOT\193\ACK\f\ESC\n\
    \\DC1\n\
    \\a\EOT\ENQ\ETX\NUL\ETX\NUL\a\DC2\ACK\194\ACK\ACK\196\ACK\FS\n\
    \\SYN\n\
    \\f\EOT\ENQ\ETX\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\194\ACK\ACK\196\ACK\FS\n\
    \\251\ETX\n\
    \\b\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\DC2\ACK\215\ACK\ACK\131\a\a\SUB\230\ETX Specifies how the value of a header should be extracted.\n\
    \ The following example maps the structure of a header to the fields in this message.\n\
    \\n\
    \ .. code::\n\
    \\n\
    \              <0> <1>   <-- index\n\
    \    X-Header: a=b;c=d\n\
    \    |         || |\n\
    \    |         || \\----> <element_separator>\n\
    \    |         ||\n\
    \    |         |\\----> <element.separator>\n\
    \    |         |\n\
    \    |         \\----> <element.key>\n\
    \    |\n\
    \    \\----> <name>\n\
    \\n\
    \    Each 'a=b' key-value pair constitutes an 'element' of the header field.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\SOH\DC2\EOT\215\ACK\SO\"\n\
    \\DC3\n\
    \\t\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\a\DC2\ACK\216\ACK\b\218\ACK3\n\
    \\CAN\n\
    \\SO\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\216\ACK\b\218\ACK3\n\
    \N\n\
    \\n\
    \\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\ETX\NUL\DC2\ACK\221\ACK\b\235\ACK\t\SUB8 Specifies a header field's key value pair to match on.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\ETX\NUL\SOH\DC2\EOT\221\ACK\DLE\EM\n\
    \\NAK\n\
    \\v\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\ETX\NUL\a\DC2\ACK\222\ACK\n\
    \\224\ACK?\n\
    \\SUB\n\
    \\DLE\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\222\ACK\n\
    \\224\ACK?\n\
    \\219\STX\n\
    \\f\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\ETX\NUL\STX\NUL\DC2\EOT\231\ACK\n\
    \H\SUB\196\STX The separator between key and value (e.g., '=' separates 'k=v;...').\n\
    \ If an element is an empty string, the element is ignored.\n\
    \ If an element contains no separator, the whole element is parsed as key and the\n\
    \ fragment value is an empty string.\n\
    \ If there are multiple values for a matched key, the first value is returned.\n\
    \\n\
    \\NAK\n\
    \\r\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\ETX\NUL\STX\NUL\ENQ\DC2\EOT\231\ACK\n\
    \\DLE\n\
    \\NAK\n\
    \\r\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\ETX\NUL\STX\NUL\SOH\DC2\EOT\231\ACK\DC1\SUB\n\
    \\NAK\n\
    \\r\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\ETX\NUL\STX\NUL\ETX\DC2\EOT\231\ACK\GS\RS\n\
    \\NAK\n\
    \\r\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\ETX\NUL\STX\NUL\b\DC2\EOT\231\ACK\USG\n\
    \\CAN\n\
    \\DLE\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\ETX\NUL\STX\NUL\b\175\b\SO\DC2\EOT\231\ACK F\n\
    \,\n\
    \\f\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\ETX\NUL\STX\SOH\DC2\EOT\234\ACK\n\
    \B\SUB\SYN The key to match on.\n\
    \\n\
    \\NAK\n\
    \\r\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\ETX\NUL\STX\SOH\ENQ\DC2\EOT\234\ACK\n\
    \\DLE\n\
    \\NAK\n\
    \\r\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\ETX\NUL\STX\SOH\SOH\DC2\EOT\234\ACK\DC1\DC4\n\
    \\NAK\n\
    \\r\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\ETX\NUL\STX\SOH\ETX\DC2\EOT\234\ACK\ETB\CAN\n\
    \\NAK\n\
    \\r\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\ETX\NUL\STX\SOH\b\DC2\EOT\234\ACK\EMA\n\
    \\CAN\n\
    \\DLE\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\ETX\NUL\STX\SOH\b\175\b\SO\DC2\EOT\234\ACK\SUB@\n\
    \\161\SOH\n\
    \\n\
    \\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\NUL\DC2\EOT\242\ACK\bA\SUB\140\SOH The name of the header field to extract the value from.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \   If the header appears multiple times only the first value is used.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\NUL\ENQ\DC2\EOT\242\ACK\b\SO\n\
    \\DC3\n\
    \\v\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\NUL\SOH\DC2\EOT\242\ACK\SI\DC3\n\
    \\DC3\n\
    \\v\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\NUL\ETX\DC2\EOT\242\ACK\SYN\ETB\n\
    \\DC3\n\
    \\v\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\NUL\b\DC2\EOT\242\ACK\CAN@\n\
    \\SYN\n\
    \\SO\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\NUL\b\175\b\SO\DC2\EOT\242\ACK\EM?\n\
    \\143\STX\n\
    \\n\
    \\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\SOH\DC2\EOT\248\ACK\b%\SUB\250\SOH The element separator (e.g., ';' separates 'a;b;c;d').\n\
    \ Default: empty string. This causes the entirety of the header field to be extracted.\n\
    \ If this field is set to an empty string and 'index' is used in the oneof below, 'index'\n\
    \ must be set to 0.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\SOH\ENQ\DC2\EOT\248\ACK\b\SO\n\
    \\DC3\n\
    \\v\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\SOH\SOH\DC2\EOT\248\ACK\SI \n\
    \\DC3\n\
    \\v\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\SOH\ETX\DC2\EOT\248\ACK#$\n\
    \\DC4\n\
    \\n\
    \\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\b\NUL\DC2\ACK\250\ACK\b\130\a\t\n\
    \\DC3\n\
    \\v\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\b\NUL\SOH\DC2\EOT\250\ACK\SO\SUB\n\
    \\230\SOH\n\
    \\n\
    \\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\STX\DC2\EOT\254\ACK\n\
    \\ESC\SUB\209\SOH Specifies the zero based index of the element to extract.\n\
    \ Note Envoy concatenates multiple values of the same header key into a comma separated\n\
    \ string, the splitting always happens after the concatenation.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\STX\ENQ\DC2\EOT\254\ACK\n\
    \\DLE\n\
    \\DC3\n\
    \\v\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\STX\SOH\DC2\EOT\254\ACK\DC1\SYN\n\
    \\DC3\n\
    \\v\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\STX\ETX\DC2\EOT\254\ACK\EM\SUB\n\
    \M\n\
    \\n\
    \\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\ETX\DC2\EOT\129\a\n\
    \ \SUB9 Specifies the key value pair to extract the value from.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\ETX\ACK\DC2\EOT\129\a\n\
    \\DC3\n\
    \\DC3\n\
    \\v\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\ETX\SOH\DC2\EOT\129\a\DC4\ESC\n\
    \\DC3\n\
    \\v\EOT\ENQ\ETX\NUL\ETX\NUL\ETX\NUL\STX\ETX\ETX\DC2\EOT\129\a\RS\US\n\
    \\DC2\n\
    \\b\EOT\ENQ\ETX\NUL\ETX\NUL\b\NUL\DC2\ACK\133\a\ACK\138\a\a\n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\ETX\NUL\b\NUL\SOH\DC2\EOT\133\a\f\DLE\n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\ETX\NUL\b\NUL\STX\DC2\EOT\134\a\b*\n\
    \\DC3\n\
    \\v\EOT\ENQ\ETX\NUL\ETX\NUL\b\NUL\STX\175\b\DC2\EOT\134\a\b*\n\
    \M\n\
    \\b\EOT\ENQ\ETX\NUL\ETX\NUL\STX\NUL\DC2\EOT\137\a\b8\SUB; Specifies how a header field's value should be extracted.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\ETX\NUL\STX\NUL\ACK\DC2\EOT\137\a\b\FS\n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\ETX\NUL\STX\NUL\SOH\DC2\EOT\137\a\GS3\n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\ETX\NUL\STX\NUL\ETX\DC2\EOT\137\a67\n\
    \\223\STX\n\
    \\ACK\EOT\ENQ\ETX\NUL\STX\NUL\DC2\EOT\144\a\EOTX\SUB\206\STX The final(built) scope key consists of the ordered union of these fragments, which are compared in order with the\n\
    \ fragments of a :ref:`ScopedRouteConfiguration<envoy_v3_api_msg_config.route.v3.ScopedRouteConfiguration>`.\n\
    \ A missing fragment during comparison will make the key invalid, i.e., the computed key doesn't match any key.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\EOT\DC2\EOT\144\a\EOT\f\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\ACK\DC2\EOT\144\a\r\FS\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\SOH\DC2\EOT\144\a\GS&\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\ETX\DC2\EOT\144\a)*\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\b\DC2\EOT\144\a+W\n\
    \\DC2\n\
    \\n\
    \\EOT\ENQ\ETX\NUL\STX\NUL\b\175\b\DC2\DC2\EOT\144\a,V\n\
    \F\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\148\a\STX;\SUB8 The name assigned to the scoped routing configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\148\a\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\148\a\t\r\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\148\a\DLE\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\EOT\148\a\DC2:\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\NUL\b\175\b\SO\DC2\EOT\148\a\DC39\n\
    \S\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\151\a\STXV\SUBE The algorithm to use for constructing a scope key for each request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\EOT\151\a\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\151\a\DC2#\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\151\a&'\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\b\DC2\EOT\151\a(U\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\SOH\b\175\b\DC1\DC2\EOT\151\a)T\n\
    \\178\SOH\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\156\a\STXb\SUB\163\SOH Configuration source specifier for RDS.\n\
    \ This config source is used to subscribe to RouteConfiguration resources specified in\n\
    \ ScopedRouteConfiguration messages.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ACK\DC2\EOT\156\a\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\156\a\RS/\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\156\a23\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\b\DC2\EOT\156\a4a\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\STX\b\175\b\DC1\DC2\EOT\156\a5`\n\
    \\SO\n\
    \\EOT\EOT\ENQ\b\NUL\DC2\ACK\158\a\STX\174\a\ETX\n\
    \\r\n\
    \\ENQ\EOT\ENQ\b\NUL\SOH\DC2\EOT\158\a\b\CAN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\b\NUL\STX\DC2\EOT\159\a\EOT&\n\
    \\SI\n\
    \\a\EOT\ENQ\b\NUL\STX\175\b\DC2\EOT\159\a\EOT&\n\
    \\222\STX\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\EOT\166\a\EOTG\SUB\207\STX The set of routing scopes corresponding to the HCM. A scope is assigned to a request by\n\
    \ matching a key constructed from the request's attributes according to the algorithm specified\n\
    \ by the\n\
    \ :ref:`ScopeKeyBuilder<envoy_v3_api_msg_extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder>`\n\
    \ in this message.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ACK\DC2\EOT\166\a\EOT!\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\EOT\166\a\"B\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\EOT\166\aEF\n\
    \\137\ETX\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\EOT\173\a\EOT\GS\SUB\250\STX The set of routing scopes associated with the HCM will be dynamically loaded via the SRDS\n\
    \ API. A scope is assigned to a request by matching a key constructed from the request's\n\
    \ attributes according to the algorithm specified by the\n\
    \ :ref:`ScopeKeyBuilder<envoy_v3_api_msg_extensions.filters.network.http_connection_manager.v3.ScopedRoutes.ScopeKeyBuilder>`\n\
    \ in this message.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ACK\DC2\EOT\173\a\EOT\r\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\EOT\173\a\SO\CAN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\EOT\173\a\ESC\FS\n\
    \\f\n\
    \\STX\EOT\ACK\DC2\ACK\177\a\NUL\188\a\SOH\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\177\a\b\DC1\n\
    \\r\n\
    \\ETX\EOT\ACK\a\DC2\ACK\178\a\STX\179\aI\n\
    \\DC2\n\
    \\b\EOT\ACK\a\211\136\225\ETX\SOH\DC2\ACK\178\a\STX\179\aI\n\
    \@\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ACK\182\a\STX\183\a4\SUB0 Configuration source specifier for scoped RDS.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\182\a\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\182\a\RS6\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\182\a9:\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\EOT\183\a\ACK3\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\175\b\DC1\DC2\EOT\183\a\a2\n\
    \^\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\187\a\STX$\SUBP xdstp:// resource locator for scoped RDS collection.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\EOT\187\a\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\187\a\t\US\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\187\a\"#\n\
    \%\n\
    \\STX\EOT\a\DC2\ACK\191\a\NUL\230\a\SOH\SUB\ETB [#next-free-field: 7]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\191\a\b\DC2\n\
    \\r\n\
    \\ETX\EOT\a\a\DC2\ACK\192\a\STX\193\aJ\n\
    \\DC2\n\
    \\b\EOT\a\a\211\136\225\ETX\SOH\DC2\ACK\192\a\STX\193\aJ\n\
    \\v\n\
    \\ETX\EOT\a\t\DC2\EOT\195\a\STX\DLE\n\
    \\f\n\
    \\EOT\EOT\a\t\NUL\DC2\EOT\195\a\v\f\n\
    \\r\n\
    \\ENQ\EOT\a\t\NUL\SOH\DC2\EOT\195\a\v\f\n\
    \\r\n\
    \\ENQ\EOT\a\t\NUL\STX\DC2\EOT\195\a\v\f\n\
    \\f\n\
    \\EOT\EOT\a\t\SOH\DC2\EOT\195\a\SO\SI\n\
    \\r\n\
    \\ENQ\EOT\a\t\SOH\SOH\DC2\EOT\195\a\SO\SI\n\
    \\r\n\
    \\ENQ\EOT\a\t\SOH\STX\DC2\EOT\195\a\SO\SI\n\
    \\v\n\
    \\ETX\EOT\a\n\
    \\DC2\EOT\197\a\STX\DC4\n\
    \\f\n\
    \\EOT\EOT\a\n\
    \\NUL\DC2\EOT\197\a\v\DC3\n\
    \\224\SOH\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\202\a\STX;\SUB\209\SOH The name of the filter configuration. The name is used as a fallback to\n\
    \ select an extension if the type of the configuration proto is not\n\
    \ sufficient. It also serves as a resource name in ExtensionConfigDS.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\202\a\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\202\a\t\r\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\202\a\DLE\DC1\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\EOT\202\a\DC2:\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\175\b\SO\DC2\EOT\202\a\DC39\n\
    \\SO\n\
    \\EOT\EOT\a\b\NUL\DC2\ACK\204\a\STX\223\a\ETX\n\
    \\r\n\
    \\ENQ\EOT\a\b\NUL\SOH\DC2\EOT\204\a\b\DC3\n\
    \\147\ETX\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\212\a\EOT)\SUB\132\ETX Filter specific configuration which depends on the filter being instantiated. See the supported\n\
    \ filters for further documentation.\n\
    \\n\
    \ To support configuring a :ref:`match tree <arch_overview_matching_api>`, use an\n\
    \ :ref:`ExtensionWithMatcher <envoy_v3_api_msg_extensions.common.matching.v3.ExtensionWithMatcher>`\n\
    \ with the desired HTTP filter.\n\
    \ [#extension-category: envoy.filters.http]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\EOT\212\a\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\212\a\CAN$\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\212\a'(\n\
    \\143\ENQ\n\
    \\EOT\EOT\a\STX\STX\DC2\EOT\222\a\EOT>\SUB\128\ENQ Configuration source specifier for an extension configuration discovery service.\n\
    \ In case of a failure and without the default configuration, the HTTP listener responds with code 500.\n\
    \ Extension configs delivered through this mechanism are not expected to require warming (see https://github.com/envoyproxy/envoy/issues/12061).\n\
    \\n\
    \ To support configuring a :ref:`match tree <arch_overview_matching_api>`, use an\n\
    \ :ref:`ExtensionWithMatcher <envoy_v3_api_msg_extensions.common.matching.v3.ExtensionWithMatcher>`\n\
    \ with the desired HTTP filter. This works for both the default filter configuration as well\n\
    \ as for filters provided via the API.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ACK\DC2\EOT\222\a\EOT(\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\EOT\222\a)9\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\EOT\222\a<=\n\
    \\246\SOH\n\
    \\EOT\EOT\a\STX\ETX\DC2\EOT\229\a\STX\ETB\SUB\231\SOH If true, clients that do not support this filter may ignore the\n\
    \ filter but otherwise accept the config.\n\
    \ Otherwise, clients that do not support this filter must reject the config.\n\
    \ This is also same with typed per filter config.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ENQ\DC2\EOT\229\a\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\EOT\229\a\a\DC2\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\EOT\229\a\NAK\SYN\n\
    \\f\n\
    \\STX\EOT\b\DC2\ACK\232\a\NUL\238\a\SOH\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\232\a\b\SUB\n\
    \\r\n\
    \\ETX\EOT\b\a\DC2\ACK\233\a\STX\234\aR\n\
    \\DC2\n\
    \\b\EOT\b\a\211\136\225\ETX\SOH\DC2\ACK\233\a\STX\234\aR\n\
    \<\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\237\a\STX'\SUB. Request ID extension specific configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\EOT\237\a\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\237\a\SYN\"\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\237\a%&b\ACKproto3"