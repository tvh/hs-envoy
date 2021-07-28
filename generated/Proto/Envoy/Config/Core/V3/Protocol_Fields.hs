{- This file was auto-generated from envoy/config/core/v3/protocol.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.Protocol_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
acceptHttp10 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "acceptHttp10" a) =>
  Lens.Family2.LensLike' f s a
acceptHttp10 = Data.ProtoLens.Field.field @"acceptHttp10"
allowAbsoluteUrl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowAbsoluteUrl" a) =>
  Lens.Family2.LensLike' f s a
allowAbsoluteUrl = Data.ProtoLens.Field.field @"allowAbsoluteUrl"
allowChunkedLength ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowChunkedLength" a) =>
  Lens.Family2.LensLike' f s a
allowChunkedLength
  = Data.ProtoLens.Field.field @"allowChunkedLength"
allowConnect ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowConnect" a) =>
  Lens.Family2.LensLike' f s a
allowConnect = Data.ProtoLens.Field.field @"allowConnect"
allowMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowMetadata" a) =>
  Lens.Family2.LensLike' f s a
allowMetadata = Data.ProtoLens.Field.field @"allowMetadata"
autoSanValidation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "autoSanValidation" a) =>
  Lens.Family2.LensLike' f s a
autoSanValidation = Data.ProtoLens.Field.field @"autoSanValidation"
autoSni ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "autoSni" a) =>
  Lens.Family2.LensLike' f s a
autoSni = Data.ProtoLens.Field.field @"autoSni"
connectionIdleInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "connectionIdleInterval" a) =>
  Lens.Family2.LensLike' f s a
connectionIdleInterval
  = Data.ProtoLens.Field.field @"connectionIdleInterval"
connectionKeepalive ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "connectionKeepalive" a) =>
  Lens.Family2.LensLike' f s a
connectionKeepalive
  = Data.ProtoLens.Field.field @"connectionKeepalive"
customSettingsParameters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "customSettingsParameters" a) =>
  Lens.Family2.LensLike' f s a
customSettingsParameters
  = Data.ProtoLens.Field.field @"customSettingsParameters"
defaultHostForHttp10 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "defaultHostForHttp10" a) =>
  Lens.Family2.LensLike' f s a
defaultHostForHttp10
  = Data.ProtoLens.Field.field @"defaultHostForHttp10"
enableTrailers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enableTrailers" a) =>
  Lens.Family2.LensLike' f s a
enableTrailers = Data.ProtoLens.Field.field @"enableTrailers"
headerKeyFormat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "headerKeyFormat" a) =>
  Lens.Family2.LensLike' f s a
headerKeyFormat = Data.ProtoLens.Field.field @"headerKeyFormat"
headersWithUnderscoresAction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "headersWithUnderscoresAction" a) =>
  Lens.Family2.LensLike' f s a
headersWithUnderscoresAction
  = Data.ProtoLens.Field.field @"headersWithUnderscoresAction"
hpackTableSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hpackTableSize" a) =>
  Lens.Family2.LensLike' f s a
hpackTableSize = Data.ProtoLens.Field.field @"hpackTableSize"
http2ProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "http2ProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
http2ProtocolOptions
  = Data.ProtoLens.Field.field @"http2ProtocolOptions"
identifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "identifier" a) =>
  Lens.Family2.LensLike' f s a
identifier = Data.ProtoLens.Field.field @"identifier"
idleTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "idleTimeout" a) =>
  Lens.Family2.LensLike' f s a
idleTimeout = Data.ProtoLens.Field.field @"idleTimeout"
initialConnectionWindowSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initialConnectionWindowSize" a) =>
  Lens.Family2.LensLike' f s a
initialConnectionWindowSize
  = Data.ProtoLens.Field.field @"initialConnectionWindowSize"
initialStreamWindowSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initialStreamWindowSize" a) =>
  Lens.Family2.LensLike' f s a
initialStreamWindowSize
  = Data.ProtoLens.Field.field @"initialStreamWindowSize"
interval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "interval" a) =>
  Lens.Family2.LensLike' f s a
interval = Data.ProtoLens.Field.field @"interval"
intervalJitter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "intervalJitter" a) =>
  Lens.Family2.LensLike' f s a
intervalJitter = Data.ProtoLens.Field.field @"intervalJitter"
maxConcurrentStreams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxConcurrentStreams" a) =>
  Lens.Family2.LensLike' f s a
maxConcurrentStreams
  = Data.ProtoLens.Field.field @"maxConcurrentStreams"
maxConnectionDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxConnectionDuration" a) =>
  Lens.Family2.LensLike' f s a
maxConnectionDuration
  = Data.ProtoLens.Field.field @"maxConnectionDuration"
maxConsecutiveInboundFramesWithEmptyPayload ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxConsecutiveInboundFramesWithEmptyPayload" a) =>
  Lens.Family2.LensLike' f s a
maxConsecutiveInboundFramesWithEmptyPayload
  = Data.ProtoLens.Field.field
      @"maxConsecutiveInboundFramesWithEmptyPayload"
maxEntries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxEntries" a) =>
  Lens.Family2.LensLike' f s a
maxEntries = Data.ProtoLens.Field.field @"maxEntries"
maxHeadersCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxHeadersCount" a) =>
  Lens.Family2.LensLike' f s a
maxHeadersCount = Data.ProtoLens.Field.field @"maxHeadersCount"
maxInboundPriorityFramesPerStream ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxInboundPriorityFramesPerStream" a) =>
  Lens.Family2.LensLike' f s a
maxInboundPriorityFramesPerStream
  = Data.ProtoLens.Field.field @"maxInboundPriorityFramesPerStream"
maxInboundWindowUpdateFramesPerDataFrameSent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxInboundWindowUpdateFramesPerDataFrameSent" a) =>
  Lens.Family2.LensLike' f s a
maxInboundWindowUpdateFramesPerDataFrameSent
  = Data.ProtoLens.Field.field
      @"maxInboundWindowUpdateFramesPerDataFrameSent"
maxOutboundControlFrames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxOutboundControlFrames" a) =>
  Lens.Family2.LensLike' f s a
maxOutboundControlFrames
  = Data.ProtoLens.Field.field @"maxOutboundControlFrames"
maxOutboundFrames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxOutboundFrames" a) =>
  Lens.Family2.LensLike' f s a
maxOutboundFrames = Data.ProtoLens.Field.field @"maxOutboundFrames"
maxStreamDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxStreamDuration" a) =>
  Lens.Family2.LensLike' f s a
maxStreamDuration = Data.ProtoLens.Field.field @"maxStreamDuration"
maybe'allowAbsoluteUrl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allowAbsoluteUrl" a) =>
  Lens.Family2.LensLike' f s a
maybe'allowAbsoluteUrl
  = Data.ProtoLens.Field.field @"maybe'allowAbsoluteUrl"
maybe'connectionIdleInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'connectionIdleInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'connectionIdleInterval
  = Data.ProtoLens.Field.field @"maybe'connectionIdleInterval"
maybe'connectionKeepalive ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'connectionKeepalive" a) =>
  Lens.Family2.LensLike' f s a
maybe'connectionKeepalive
  = Data.ProtoLens.Field.field @"maybe'connectionKeepalive"
maybe'headerFormat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'headerFormat" a) =>
  Lens.Family2.LensLike' f s a
maybe'headerFormat
  = Data.ProtoLens.Field.field @"maybe'headerFormat"
maybe'headerKeyFormat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'headerKeyFormat" a) =>
  Lens.Family2.LensLike' f s a
maybe'headerKeyFormat
  = Data.ProtoLens.Field.field @"maybe'headerKeyFormat"
maybe'hpackTableSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hpackTableSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'hpackTableSize
  = Data.ProtoLens.Field.field @"maybe'hpackTableSize"
maybe'http2ProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'http2ProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'http2ProtocolOptions
  = Data.ProtoLens.Field.field @"maybe'http2ProtocolOptions"
maybe'identifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'identifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'identifier = Data.ProtoLens.Field.field @"maybe'identifier"
maybe'idleTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'idleTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'idleTimeout = Data.ProtoLens.Field.field @"maybe'idleTimeout"
maybe'initialConnectionWindowSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'initialConnectionWindowSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'initialConnectionWindowSize
  = Data.ProtoLens.Field.field @"maybe'initialConnectionWindowSize"
maybe'initialStreamWindowSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'initialStreamWindowSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'initialStreamWindowSize
  = Data.ProtoLens.Field.field @"maybe'initialStreamWindowSize"
maybe'interval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'interval" a) =>
  Lens.Family2.LensLike' f s a
maybe'interval = Data.ProtoLens.Field.field @"maybe'interval"
maybe'intervalJitter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'intervalJitter" a) =>
  Lens.Family2.LensLike' f s a
maybe'intervalJitter
  = Data.ProtoLens.Field.field @"maybe'intervalJitter"
maybe'maxConcurrentStreams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxConcurrentStreams" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxConcurrentStreams
  = Data.ProtoLens.Field.field @"maybe'maxConcurrentStreams"
maybe'maxConnectionDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxConnectionDuration" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxConnectionDuration
  = Data.ProtoLens.Field.field @"maybe'maxConnectionDuration"
maybe'maxConsecutiveInboundFramesWithEmptyPayload ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxConsecutiveInboundFramesWithEmptyPayload" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxConsecutiveInboundFramesWithEmptyPayload
  = Data.ProtoLens.Field.field
      @"maybe'maxConsecutiveInboundFramesWithEmptyPayload"
maybe'maxEntries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxEntries" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxEntries = Data.ProtoLens.Field.field @"maybe'maxEntries"
maybe'maxHeadersCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxHeadersCount" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxHeadersCount
  = Data.ProtoLens.Field.field @"maybe'maxHeadersCount"
maybe'maxInboundPriorityFramesPerStream ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxInboundPriorityFramesPerStream" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxInboundPriorityFramesPerStream
  = Data.ProtoLens.Field.field
      @"maybe'maxInboundPriorityFramesPerStream"
maybe'maxInboundWindowUpdateFramesPerDataFrameSent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxInboundWindowUpdateFramesPerDataFrameSent" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxInboundWindowUpdateFramesPerDataFrameSent
  = Data.ProtoLens.Field.field
      @"maybe'maxInboundWindowUpdateFramesPerDataFrameSent"
maybe'maxOutboundControlFrames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxOutboundControlFrames" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxOutboundControlFrames
  = Data.ProtoLens.Field.field @"maybe'maxOutboundControlFrames"
maybe'maxOutboundFrames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxOutboundFrames" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxOutboundFrames
  = Data.ProtoLens.Field.field @"maybe'maxOutboundFrames"
maybe'maxStreamDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxStreamDuration" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxStreamDuration
  = Data.ProtoLens.Field.field @"maybe'maxStreamDuration"
maybe'overrideStreamErrorOnInvalidHttpMessage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'overrideStreamErrorOnInvalidHttpMessage" a) =>
  Lens.Family2.LensLike' f s a
maybe'overrideStreamErrorOnInvalidHttpMessage
  = Data.ProtoLens.Field.field
      @"maybe'overrideStreamErrorOnInvalidHttpMessage"
maybe'properCaseWords ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'properCaseWords" a) =>
  Lens.Family2.LensLike' f s a
maybe'properCaseWords
  = Data.ProtoLens.Field.field @"maybe'properCaseWords"
maybe'quicProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'quicProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'quicProtocolOptions
  = Data.ProtoLens.Field.field @"maybe'quicProtocolOptions"
maybe'schemeToOverwrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schemeToOverwrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'schemeToOverwrite
  = Data.ProtoLens.Field.field @"maybe'schemeToOverwrite"
maybe'statefulFormatter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'statefulFormatter" a) =>
  Lens.Family2.LensLike' f s a
maybe'statefulFormatter
  = Data.ProtoLens.Field.field @"maybe'statefulFormatter"
maybe'timeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'timeout = Data.ProtoLens.Field.field @"maybe'timeout"
maybe'transformation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'transformation" a) =>
  Lens.Family2.LensLike' f s a
maybe'transformation
  = Data.ProtoLens.Field.field @"maybe'transformation"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
overrideStreamErrorOnInvalidHttpMessage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "overrideStreamErrorOnInvalidHttpMessage" a) =>
  Lens.Family2.LensLike' f s a
overrideStreamErrorOnInvalidHttpMessage
  = Data.ProtoLens.Field.field
      @"overrideStreamErrorOnInvalidHttpMessage"
properCaseWords ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "properCaseWords" a) =>
  Lens.Family2.LensLike' f s a
properCaseWords = Data.ProtoLens.Field.field @"properCaseWords"
quicProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "quicProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
quicProtocolOptions
  = Data.ProtoLens.Field.field @"quicProtocolOptions"
schemeToOverwrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "schemeToOverwrite" a) =>
  Lens.Family2.LensLike' f s a
schemeToOverwrite = Data.ProtoLens.Field.field @"schemeToOverwrite"
statefulFormatter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statefulFormatter" a) =>
  Lens.Family2.LensLike' f s a
statefulFormatter = Data.ProtoLens.Field.field @"statefulFormatter"
streamErrorOnInvalidHttpMessaging ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "streamErrorOnInvalidHttpMessaging" a) =>
  Lens.Family2.LensLike' f s a
streamErrorOnInvalidHttpMessaging
  = Data.ProtoLens.Field.field @"streamErrorOnInvalidHttpMessaging"
timeout ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "timeout" a) =>
  Lens.Family2.LensLike' f s a
timeout = Data.ProtoLens.Field.field @"timeout"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'customSettingsParameters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'customSettingsParameters" a) =>
  Lens.Family2.LensLike' f s a
vec'customSettingsParameters
  = Data.ProtoLens.Field.field @"vec'customSettingsParameters"