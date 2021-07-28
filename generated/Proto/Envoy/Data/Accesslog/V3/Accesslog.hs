{- This file was auto-generated from envoy/data/accesslog/v3/accesslog.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Data.Accesslog.V3.Accesslog (
        AccessLogCommon(), AccessLogCommon'FilterStateObjectsEntry(),
        ConnectionProperties(), HTTPAccessLogEntry(),
        HTTPAccessLogEntry'HTTPVersion(..),
        HTTPAccessLogEntry'HTTPVersion(),
        HTTPAccessLogEntry'HTTPVersion'UnrecognizedValue,
        HTTPRequestProperties(),
        HTTPRequestProperties'RequestHeadersEntry(),
        HTTPResponseProperties(),
        HTTPResponseProperties'ResponseHeadersEntry(),
        HTTPResponseProperties'ResponseTrailersEntry(), ResponseFlags(),
        ResponseFlags'Unauthorized(),
        ResponseFlags'Unauthorized'Reason(..),
        ResponseFlags'Unauthorized'Reason(),
        ResponseFlags'Unauthorized'Reason'UnrecognizedValue,
        TCPAccessLogEntry(), TLSProperties(),
        TLSProperties'CertificateProperties(),
        TLSProperties'CertificateProperties'SubjectAltName(),
        TLSProperties'CertificateProperties'SubjectAltName'San(..),
        _TLSProperties'CertificateProperties'SubjectAltName'Uri,
        _TLSProperties'CertificateProperties'SubjectAltName'Dns,
        TLSProperties'TLSVersion(..), TLSProperties'TLSVersion(),
        TLSProperties'TLSVersion'UnrecognizedValue
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
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.sampleRate' @:: Lens' AccessLogCommon Prelude.Double@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.downstreamRemoteAddress' @:: Lens' AccessLogCommon Proto.Envoy.Config.Core.V3.Address.Address@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'downstreamRemoteAddress' @:: Lens' AccessLogCommon (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.downstreamLocalAddress' @:: Lens' AccessLogCommon Proto.Envoy.Config.Core.V3.Address.Address@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'downstreamLocalAddress' @:: Lens' AccessLogCommon (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.tlsProperties' @:: Lens' AccessLogCommon TLSProperties@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'tlsProperties' @:: Lens' AccessLogCommon (Prelude.Maybe TLSProperties)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.startTime' @:: Lens' AccessLogCommon Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'startTime' @:: Lens' AccessLogCommon (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.timeToLastRxByte' @:: Lens' AccessLogCommon Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'timeToLastRxByte' @:: Lens' AccessLogCommon (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.timeToFirstUpstreamTxByte' @:: Lens' AccessLogCommon Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'timeToFirstUpstreamTxByte' @:: Lens' AccessLogCommon (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.timeToLastUpstreamTxByte' @:: Lens' AccessLogCommon Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'timeToLastUpstreamTxByte' @:: Lens' AccessLogCommon (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.timeToFirstUpstreamRxByte' @:: Lens' AccessLogCommon Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'timeToFirstUpstreamRxByte' @:: Lens' AccessLogCommon (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.timeToLastUpstreamRxByte' @:: Lens' AccessLogCommon Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'timeToLastUpstreamRxByte' @:: Lens' AccessLogCommon (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.timeToFirstDownstreamTxByte' @:: Lens' AccessLogCommon Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'timeToFirstDownstreamTxByte' @:: Lens' AccessLogCommon (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.timeToLastDownstreamTxByte' @:: Lens' AccessLogCommon Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'timeToLastDownstreamTxByte' @:: Lens' AccessLogCommon (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.upstreamRemoteAddress' @:: Lens' AccessLogCommon Proto.Envoy.Config.Core.V3.Address.Address@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'upstreamRemoteAddress' @:: Lens' AccessLogCommon (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.upstreamLocalAddress' @:: Lens' AccessLogCommon Proto.Envoy.Config.Core.V3.Address.Address@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'upstreamLocalAddress' @:: Lens' AccessLogCommon (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.upstreamCluster' @:: Lens' AccessLogCommon Data.Text.Text@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.responseFlags' @:: Lens' AccessLogCommon ResponseFlags@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'responseFlags' @:: Lens' AccessLogCommon (Prelude.Maybe ResponseFlags)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.metadata' @:: Lens' AccessLogCommon Proto.Envoy.Config.Core.V3.Base.Metadata@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'metadata' @:: Lens' AccessLogCommon (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.upstreamTransportFailureReason' @:: Lens' AccessLogCommon Data.Text.Text@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.routeName' @:: Lens' AccessLogCommon Data.Text.Text@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.downstreamDirectRemoteAddress' @:: Lens' AccessLogCommon Proto.Envoy.Config.Core.V3.Address.Address@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'downstreamDirectRemoteAddress' @:: Lens' AccessLogCommon (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.filterStateObjects' @:: Lens' AccessLogCommon (Data.Map.Map Data.Text.Text Proto.Google.Protobuf.Any.Any)@ -}
data AccessLogCommon
  = AccessLogCommon'_constructor {_AccessLogCommon'sampleRate :: !Prelude.Double,
                                  _AccessLogCommon'downstreamRemoteAddress :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address),
                                  _AccessLogCommon'downstreamLocalAddress :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address),
                                  _AccessLogCommon'tlsProperties :: !(Prelude.Maybe TLSProperties),
                                  _AccessLogCommon'startTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                  _AccessLogCommon'timeToLastRxByte :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _AccessLogCommon'timeToFirstUpstreamTxByte :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _AccessLogCommon'timeToLastUpstreamTxByte :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _AccessLogCommon'timeToFirstUpstreamRxByte :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _AccessLogCommon'timeToLastUpstreamRxByte :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _AccessLogCommon'timeToFirstDownstreamTxByte :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _AccessLogCommon'timeToLastDownstreamTxByte :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _AccessLogCommon'upstreamRemoteAddress :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address),
                                  _AccessLogCommon'upstreamLocalAddress :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address),
                                  _AccessLogCommon'upstreamCluster :: !Data.Text.Text,
                                  _AccessLogCommon'responseFlags :: !(Prelude.Maybe ResponseFlags),
                                  _AccessLogCommon'metadata :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata),
                                  _AccessLogCommon'upstreamTransportFailureReason :: !Data.Text.Text,
                                  _AccessLogCommon'routeName :: !Data.Text.Text,
                                  _AccessLogCommon'downstreamDirectRemoteAddress :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address),
                                  _AccessLogCommon'filterStateObjects :: !(Data.Map.Map Data.Text.Text Proto.Google.Protobuf.Any.Any),
                                  _AccessLogCommon'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AccessLogCommon where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AccessLogCommon "sampleRate" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'sampleRate
           (\ x__ y__ -> x__ {_AccessLogCommon'sampleRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "downstreamRemoteAddress" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'downstreamRemoteAddress
           (\ x__ y__
              -> x__ {_AccessLogCommon'downstreamRemoteAddress = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLogCommon "maybe'downstreamRemoteAddress" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'downstreamRemoteAddress
           (\ x__ y__
              -> x__ {_AccessLogCommon'downstreamRemoteAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "downstreamLocalAddress" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'downstreamLocalAddress
           (\ x__ y__ -> x__ {_AccessLogCommon'downstreamLocalAddress = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLogCommon "maybe'downstreamLocalAddress" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'downstreamLocalAddress
           (\ x__ y__ -> x__ {_AccessLogCommon'downstreamLocalAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "tlsProperties" TLSProperties where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'tlsProperties
           (\ x__ y__ -> x__ {_AccessLogCommon'tlsProperties = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLogCommon "maybe'tlsProperties" (Prelude.Maybe TLSProperties) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'tlsProperties
           (\ x__ y__ -> x__ {_AccessLogCommon'tlsProperties = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "startTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'startTime
           (\ x__ y__ -> x__ {_AccessLogCommon'startTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLogCommon "maybe'startTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'startTime
           (\ x__ y__ -> x__ {_AccessLogCommon'startTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "timeToLastRxByte" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'timeToLastRxByte
           (\ x__ y__ -> x__ {_AccessLogCommon'timeToLastRxByte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLogCommon "maybe'timeToLastRxByte" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'timeToLastRxByte
           (\ x__ y__ -> x__ {_AccessLogCommon'timeToLastRxByte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "timeToFirstUpstreamTxByte" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'timeToFirstUpstreamTxByte
           (\ x__ y__
              -> x__ {_AccessLogCommon'timeToFirstUpstreamTxByte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLogCommon "maybe'timeToFirstUpstreamTxByte" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'timeToFirstUpstreamTxByte
           (\ x__ y__
              -> x__ {_AccessLogCommon'timeToFirstUpstreamTxByte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "timeToLastUpstreamTxByte" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'timeToLastUpstreamTxByte
           (\ x__ y__
              -> x__ {_AccessLogCommon'timeToLastUpstreamTxByte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLogCommon "maybe'timeToLastUpstreamTxByte" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'timeToLastUpstreamTxByte
           (\ x__ y__
              -> x__ {_AccessLogCommon'timeToLastUpstreamTxByte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "timeToFirstUpstreamRxByte" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'timeToFirstUpstreamRxByte
           (\ x__ y__
              -> x__ {_AccessLogCommon'timeToFirstUpstreamRxByte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLogCommon "maybe'timeToFirstUpstreamRxByte" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'timeToFirstUpstreamRxByte
           (\ x__ y__
              -> x__ {_AccessLogCommon'timeToFirstUpstreamRxByte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "timeToLastUpstreamRxByte" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'timeToLastUpstreamRxByte
           (\ x__ y__
              -> x__ {_AccessLogCommon'timeToLastUpstreamRxByte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLogCommon "maybe'timeToLastUpstreamRxByte" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'timeToLastUpstreamRxByte
           (\ x__ y__
              -> x__ {_AccessLogCommon'timeToLastUpstreamRxByte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "timeToFirstDownstreamTxByte" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'timeToFirstDownstreamTxByte
           (\ x__ y__
              -> x__ {_AccessLogCommon'timeToFirstDownstreamTxByte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLogCommon "maybe'timeToFirstDownstreamTxByte" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'timeToFirstDownstreamTxByte
           (\ x__ y__
              -> x__ {_AccessLogCommon'timeToFirstDownstreamTxByte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "timeToLastDownstreamTxByte" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'timeToLastDownstreamTxByte
           (\ x__ y__
              -> x__ {_AccessLogCommon'timeToLastDownstreamTxByte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLogCommon "maybe'timeToLastDownstreamTxByte" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'timeToLastDownstreamTxByte
           (\ x__ y__
              -> x__ {_AccessLogCommon'timeToLastDownstreamTxByte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "upstreamRemoteAddress" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'upstreamRemoteAddress
           (\ x__ y__ -> x__ {_AccessLogCommon'upstreamRemoteAddress = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLogCommon "maybe'upstreamRemoteAddress" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'upstreamRemoteAddress
           (\ x__ y__ -> x__ {_AccessLogCommon'upstreamRemoteAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "upstreamLocalAddress" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'upstreamLocalAddress
           (\ x__ y__ -> x__ {_AccessLogCommon'upstreamLocalAddress = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLogCommon "maybe'upstreamLocalAddress" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'upstreamLocalAddress
           (\ x__ y__ -> x__ {_AccessLogCommon'upstreamLocalAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "upstreamCluster" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'upstreamCluster
           (\ x__ y__ -> x__ {_AccessLogCommon'upstreamCluster = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "responseFlags" ResponseFlags where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'responseFlags
           (\ x__ y__ -> x__ {_AccessLogCommon'responseFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLogCommon "maybe'responseFlags" (Prelude.Maybe ResponseFlags) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'responseFlags
           (\ x__ y__ -> x__ {_AccessLogCommon'responseFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "metadata" Proto.Envoy.Config.Core.V3.Base.Metadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'metadata
           (\ x__ y__ -> x__ {_AccessLogCommon'metadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLogCommon "maybe'metadata" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'metadata
           (\ x__ y__ -> x__ {_AccessLogCommon'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "upstreamTransportFailureReason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'upstreamTransportFailureReason
           (\ x__ y__
              -> x__ {_AccessLogCommon'upstreamTransportFailureReason = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "routeName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'routeName
           (\ x__ y__ -> x__ {_AccessLogCommon'routeName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "downstreamDirectRemoteAddress" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'downstreamDirectRemoteAddress
           (\ x__ y__
              -> x__ {_AccessLogCommon'downstreamDirectRemoteAddress = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLogCommon "maybe'downstreamDirectRemoteAddress" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'downstreamDirectRemoteAddress
           (\ x__ y__
              -> x__ {_AccessLogCommon'downstreamDirectRemoteAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon "filterStateObjects" (Data.Map.Map Data.Text.Text Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'filterStateObjects
           (\ x__ y__ -> x__ {_AccessLogCommon'filterStateObjects = y__}))
        Prelude.id
instance Data.ProtoLens.Message AccessLogCommon where
  messageName _
    = Data.Text.pack "envoy.data.accesslog.v3.AccessLogCommon"
  packedMessageDescriptor _
    = "\n\
      \\SIAccessLogCommon\DC28\n\
      \\vsample_rate\CAN\SOH \SOH(\SOHR\n\
      \sampleRateB\ETB\250B\DC4\DC2\DC2\EM\NUL\NUL\NUL\NUL\NUL\NUL\240?!\NUL\NUL\NUL\NUL\NUL\NUL\NUL\NUL\DC2Y\n\
      \\EMdownstream_remote_address\CAN\STX \SOH(\v2\GS.envoy.config.core.v3.AddressR\ETBdownstreamRemoteAddress\DC2W\n\
      \\CANdownstream_local_address\CAN\ETX \SOH(\v2\GS.envoy.config.core.v3.AddressR\SYNdownstreamLocalAddress\DC2M\n\
      \\SOtls_properties\CAN\EOT \SOH(\v2&.envoy.data.accesslog.v3.TLSPropertiesR\rtlsProperties\DC29\n\
      \\n\
      \start_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\tstartTime\DC2I\n\
      \\DC4time_to_last_rx_byte\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\DLEtimeToLastRxByte\DC2\\\n\
      \\RStime_to_first_upstream_tx_byte\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\EMtimeToFirstUpstreamTxByte\DC2Z\n\
      \\GStime_to_last_upstream_tx_byte\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\CANtimeToLastUpstreamTxByte\DC2\\\n\
      \\RStime_to_first_upstream_rx_byte\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\EMtimeToFirstUpstreamRxByte\DC2Z\n\
      \\GStime_to_last_upstream_rx_byte\CAN\n\
      \ \SOH(\v2\EM.google.protobuf.DurationR\CANtimeToLastUpstreamRxByte\DC2`\n\
      \ time_to_first_downstream_tx_byte\CAN\v \SOH(\v2\EM.google.protobuf.DurationR\ESCtimeToFirstDownstreamTxByte\DC2^\n\
      \\UStime_to_last_downstream_tx_byte\CAN\f \SOH(\v2\EM.google.protobuf.DurationR\SUBtimeToLastDownstreamTxByte\DC2U\n\
      \\ETBupstream_remote_address\CAN\r \SOH(\v2\GS.envoy.config.core.v3.AddressR\NAKupstreamRemoteAddress\DC2S\n\
      \\SYNupstream_local_address\CAN\SO \SOH(\v2\GS.envoy.config.core.v3.AddressR\DC4upstreamLocalAddress\DC2)\n\
      \\DLEupstream_cluster\CAN\SI \SOH(\tR\SIupstreamCluster\DC2M\n\
      \\SOresponse_flags\CAN\DLE \SOH(\v2&.envoy.data.accesslog.v3.ResponseFlagsR\rresponseFlags\DC2:\n\
      \\bmetadata\CAN\DC1 \SOH(\v2\RS.envoy.config.core.v3.MetadataR\bmetadata\DC2I\n\
      \!upstream_transport_failure_reason\CAN\DC2 \SOH(\tR\RSupstreamTransportFailureReason\DC2\GS\n\
      \\n\
      \route_name\CAN\DC3 \SOH(\tR\trouteName\DC2f\n\
      \ downstream_direct_remote_address\CAN\DC4 \SOH(\v2\GS.envoy.config.core.v3.AddressR\GSdownstreamDirectRemoteAddress\DC2r\n\
      \\DC4filter_state_objects\CAN\NAK \ETX(\v2@.envoy.data.accesslog.v3.AccessLogCommon.FilterStateObjectsEntryR\DC2filterStateObjects\SUB[\n\
      \\ETBFilterStateObjectsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2*\n\
      \\ENQvalue\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ENQvalue:\STX8\SOH:.\154\197\136\RS)\n\
      \'envoy.data.accesslog.v2.AccessLogCommon"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sampleRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sample_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sampleRate")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        downstreamRemoteAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "downstream_remote_address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'downstreamRemoteAddress")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        downstreamLocalAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "downstream_local_address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'downstreamLocalAddress")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        tlsProperties__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tls_properties"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TLSProperties)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tlsProperties")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        startTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startTime")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        timeToLastRxByte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time_to_last_rx_byte"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeToLastRxByte")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        timeToFirstUpstreamTxByte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time_to_first_upstream_tx_byte"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeToFirstUpstreamTxByte")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        timeToLastUpstreamTxByte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time_to_last_upstream_tx_byte"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeToLastUpstreamTxByte")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        timeToFirstUpstreamRxByte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time_to_first_upstream_rx_byte"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeToFirstUpstreamRxByte")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        timeToLastUpstreamRxByte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time_to_last_upstream_rx_byte"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeToLastUpstreamRxByte")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        timeToFirstDownstreamTxByte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time_to_first_downstream_tx_byte"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'timeToFirstDownstreamTxByte")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        timeToLastDownstreamTxByte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time_to_last_downstream_tx_byte"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'timeToLastDownstreamTxByte")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        upstreamRemoteAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_remote_address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'upstreamRemoteAddress")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        upstreamLocalAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_local_address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'upstreamLocalAddress")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        upstreamCluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_cluster"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"upstreamCluster")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        responseFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_flags"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseFlags)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'responseFlags")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Metadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        upstreamTransportFailureReason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_transport_failure_reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"upstreamTransportFailureReason")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        routeName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "route_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"routeName")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        downstreamDirectRemoteAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "downstream_direct_remote_address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'downstreamDirectRemoteAddress")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
        filterStateObjects__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter_state_objects"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AccessLogCommon'FilterStateObjectsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"filterStateObjects")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sampleRate__field_descriptor),
           (Data.ProtoLens.Tag 2, downstreamRemoteAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, downstreamLocalAddress__field_descriptor),
           (Data.ProtoLens.Tag 4, tlsProperties__field_descriptor),
           (Data.ProtoLens.Tag 5, startTime__field_descriptor),
           (Data.ProtoLens.Tag 6, timeToLastRxByte__field_descriptor),
           (Data.ProtoLens.Tag 7, 
            timeToFirstUpstreamTxByte__field_descriptor),
           (Data.ProtoLens.Tag 8, timeToLastUpstreamTxByte__field_descriptor),
           (Data.ProtoLens.Tag 9, 
            timeToFirstUpstreamRxByte__field_descriptor),
           (Data.ProtoLens.Tag 10, 
            timeToLastUpstreamRxByte__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            timeToFirstDownstreamTxByte__field_descriptor),
           (Data.ProtoLens.Tag 12, 
            timeToLastDownstreamTxByte__field_descriptor),
           (Data.ProtoLens.Tag 13, upstreamRemoteAddress__field_descriptor),
           (Data.ProtoLens.Tag 14, upstreamLocalAddress__field_descriptor),
           (Data.ProtoLens.Tag 15, upstreamCluster__field_descriptor),
           (Data.ProtoLens.Tag 16, responseFlags__field_descriptor),
           (Data.ProtoLens.Tag 17, metadata__field_descriptor),
           (Data.ProtoLens.Tag 18, 
            upstreamTransportFailureReason__field_descriptor),
           (Data.ProtoLens.Tag 19, routeName__field_descriptor),
           (Data.ProtoLens.Tag 20, 
            downstreamDirectRemoteAddress__field_descriptor),
           (Data.ProtoLens.Tag 21, filterStateObjects__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AccessLogCommon'_unknownFields
        (\ x__ y__ -> x__ {_AccessLogCommon'_unknownFields = y__})
  defMessage
    = AccessLogCommon'_constructor
        {_AccessLogCommon'sampleRate = Data.ProtoLens.fieldDefault,
         _AccessLogCommon'downstreamRemoteAddress = Prelude.Nothing,
         _AccessLogCommon'downstreamLocalAddress = Prelude.Nothing,
         _AccessLogCommon'tlsProperties = Prelude.Nothing,
         _AccessLogCommon'startTime = Prelude.Nothing,
         _AccessLogCommon'timeToLastRxByte = Prelude.Nothing,
         _AccessLogCommon'timeToFirstUpstreamTxByte = Prelude.Nothing,
         _AccessLogCommon'timeToLastUpstreamTxByte = Prelude.Nothing,
         _AccessLogCommon'timeToFirstUpstreamRxByte = Prelude.Nothing,
         _AccessLogCommon'timeToLastUpstreamRxByte = Prelude.Nothing,
         _AccessLogCommon'timeToFirstDownstreamTxByte = Prelude.Nothing,
         _AccessLogCommon'timeToLastDownstreamTxByte = Prelude.Nothing,
         _AccessLogCommon'upstreamRemoteAddress = Prelude.Nothing,
         _AccessLogCommon'upstreamLocalAddress = Prelude.Nothing,
         _AccessLogCommon'upstreamCluster = Data.ProtoLens.fieldDefault,
         _AccessLogCommon'responseFlags = Prelude.Nothing,
         _AccessLogCommon'metadata = Prelude.Nothing,
         _AccessLogCommon'upstreamTransportFailureReason = Data.ProtoLens.fieldDefault,
         _AccessLogCommon'routeName = Data.ProtoLens.fieldDefault,
         _AccessLogCommon'downstreamDirectRemoteAddress = Prelude.Nothing,
         _AccessLogCommon'filterStateObjects = Data.Map.empty,
         _AccessLogCommon'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AccessLogCommon
          -> Data.ProtoLens.Encoding.Bytes.Parser AccessLogCommon
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
                        9 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "sample_rate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sampleRate") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "downstream_remote_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"downstreamRemoteAddress") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "downstream_local_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"downstreamLocalAddress") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tls_properties"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tlsProperties") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startTime") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "time_to_last_rx_byte"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timeToLastRxByte") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "time_to_first_upstream_tx_byte"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timeToFirstUpstreamTxByte") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "time_to_last_upstream_tx_byte"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timeToLastUpstreamTxByte") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "time_to_first_upstream_rx_byte"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timeToFirstUpstreamRxByte") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "time_to_last_upstream_rx_byte"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timeToLastUpstreamRxByte") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "time_to_first_downstream_tx_byte"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timeToFirstDownstreamTxByte")
                                     y
                                     x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "time_to_last_downstream_tx_byte"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timeToLastDownstreamTxByte") y x)
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "upstream_remote_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamRemoteAddress") y x)
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "upstream_local_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamLocalAddress") y x)
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "upstream_cluster"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamCluster") y x)
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response_flags"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseFlags") y x)
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "upstream_transport_failure_reason"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamTransportFailureReason")
                                     y
                                     x)
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "route_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"routeName") y x)
                        162
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "downstream_direct_remote_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"downstreamDirectRemoteAddress")
                                     y
                                     x)
                        170
                          -> do !(entry :: AccessLogCommon'FilterStateObjectsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                         (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                             Data.ProtoLens.Encoding.Bytes.isolate
                                                                                               (Prelude.fromIntegral
                                                                                                  len)
                                                                                               Data.ProtoLens.parseMessage)
                                                                                         "filter_state_objects"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"filterStateObjects")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AccessLogCommon"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"sampleRate") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 9)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putFixed64
                         Data.ProtoLens.Encoding.Bytes.doubleToWord
                         _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'downstreamRemoteAddress") _x
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
                          (Data.ProtoLens.Field.field @"maybe'downstreamLocalAddress") _x
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
                             (Data.ProtoLens.Field.field @"maybe'tlsProperties") _x
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
                                (Data.ProtoLens.Field.field @"maybe'startTime") _x
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
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'timeToLastRxByte") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
                                         @"maybe'timeToFirstUpstreamTxByte")
                                      _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
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
                                            _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field
                                            @"maybe'timeToLastUpstreamTxByte")
                                         _x
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
                                            (Data.ProtoLens.Field.field
                                               @"maybe'timeToFirstUpstreamRxByte")
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
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage
                                                  _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'timeToLastUpstreamRxByte")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
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
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'timeToFirstDownstreamTxByte")
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
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                        Data.ProtoLens.encodeMessage
                                                        _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'timeToLastDownstreamTxByte")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
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
                                                           @"maybe'upstreamRemoteAddress")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
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
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'upstreamLocalAddress")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
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
                                                                   @"upstreamCluster")
                                                                _x
                                                        in
                                                          if (Prelude.==)
                                                               _v Data.ProtoLens.fieldDefault then
                                                              Data.Monoid.mempty
                                                          else
                                                              (Data.Monoid.<>)
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
                                                                   Data.Text.Encoding.encodeUtf8
                                                                   _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'responseFlags")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       130)
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
                                                                       @"maybe'metadata")
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
                                                                            @"upstreamTransportFailureReason")
                                                                         _x
                                                                 in
                                                                   if (Prelude.==)
                                                                        _v
                                                                        Data.ProtoLens.fieldDefault then
                                                                       Data.Monoid.mempty
                                                                   else
                                                                       (Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            146)
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
                                                                   (let
                                                                      _v
                                                                        = Lens.Family2.view
                                                                            (Data.ProtoLens.Field.field
                                                                               @"routeName")
                                                                            _x
                                                                    in
                                                                      if (Prelude.==)
                                                                           _v
                                                                           Data.ProtoLens.fieldDefault then
                                                                          Data.Monoid.mempty
                                                                      else
                                                                          (Data.Monoid.<>)
                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               154)
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
                                                                                @"maybe'downstreamDirectRemoteAddress")
                                                                             _x
                                                                       of
                                                                         Prelude.Nothing
                                                                           -> Data.Monoid.mempty
                                                                         (Prelude.Just _v)
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   162)
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
                                                                         (Data.Monoid.mconcat
                                                                            (Prelude.map
                                                                               (\ _v
                                                                                  -> (Data.Monoid.<>)
                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                          170)
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
                                                                                          (Lens.Family2.set
                                                                                             (Data.ProtoLens.Field.field
                                                                                                @"key")
                                                                                             (Prelude.fst
                                                                                                _v)
                                                                                             (Lens.Family2.set
                                                                                                (Data.ProtoLens.Field.field
                                                                                                   @"value")
                                                                                                (Prelude.snd
                                                                                                   _v)
                                                                                                (Data.ProtoLens.defMessage ::
                                                                                                   AccessLogCommon'FilterStateObjectsEntry)))))
                                                                               (Data.Map.toList
                                                                                  (Lens.Family2.view
                                                                                     (Data.ProtoLens.Field.field
                                                                                        @"filterStateObjects")
                                                                                     _x))))
                                                                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                            (Lens.Family2.view
                                                                               Data.ProtoLens.unknownFields
                                                                               _x))))))))))))))))))))))
instance Control.DeepSeq.NFData AccessLogCommon where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AccessLogCommon'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AccessLogCommon'sampleRate x__)
                (Control.DeepSeq.deepseq
                   (_AccessLogCommon'downstreamRemoteAddress x__)
                   (Control.DeepSeq.deepseq
                      (_AccessLogCommon'downstreamLocalAddress x__)
                      (Control.DeepSeq.deepseq
                         (_AccessLogCommon'tlsProperties x__)
                         (Control.DeepSeq.deepseq
                            (_AccessLogCommon'startTime x__)
                            (Control.DeepSeq.deepseq
                               (_AccessLogCommon'timeToLastRxByte x__)
                               (Control.DeepSeq.deepseq
                                  (_AccessLogCommon'timeToFirstUpstreamTxByte x__)
                                  (Control.DeepSeq.deepseq
                                     (_AccessLogCommon'timeToLastUpstreamTxByte x__)
                                     (Control.DeepSeq.deepseq
                                        (_AccessLogCommon'timeToFirstUpstreamRxByte x__)
                                        (Control.DeepSeq.deepseq
                                           (_AccessLogCommon'timeToLastUpstreamRxByte x__)
                                           (Control.DeepSeq.deepseq
                                              (_AccessLogCommon'timeToFirstDownstreamTxByte x__)
                                              (Control.DeepSeq.deepseq
                                                 (_AccessLogCommon'timeToLastDownstreamTxByte x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_AccessLogCommon'upstreamRemoteAddress x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_AccessLogCommon'upstreamLocalAddress x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_AccessLogCommon'upstreamCluster x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_AccessLogCommon'responseFlags x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_AccessLogCommon'metadata x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_AccessLogCommon'upstreamTransportFailureReason
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_AccessLogCommon'routeName
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_AccessLogCommon'downstreamDirectRemoteAddress
                                                                            x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_AccessLogCommon'filterStateObjects
                                                                               x__)
                                                                            ())))))))))))))))))))))
{- | Fields :
     
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.key' @:: Lens' AccessLogCommon'FilterStateObjectsEntry Data.Text.Text@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.value' @:: Lens' AccessLogCommon'FilterStateObjectsEntry Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'value' @:: Lens' AccessLogCommon'FilterStateObjectsEntry (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data AccessLogCommon'FilterStateObjectsEntry
  = AccessLogCommon'FilterStateObjectsEntry'_constructor {_AccessLogCommon'FilterStateObjectsEntry'key :: !Data.Text.Text,
                                                          _AccessLogCommon'FilterStateObjectsEntry'value :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                                          _AccessLogCommon'FilterStateObjectsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AccessLogCommon'FilterStateObjectsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AccessLogCommon'FilterStateObjectsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'FilterStateObjectsEntry'key
           (\ x__ y__
              -> x__ {_AccessLogCommon'FilterStateObjectsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccessLogCommon'FilterStateObjectsEntry "value" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'FilterStateObjectsEntry'value
           (\ x__ y__
              -> x__ {_AccessLogCommon'FilterStateObjectsEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccessLogCommon'FilterStateObjectsEntry "maybe'value" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccessLogCommon'FilterStateObjectsEntry'value
           (\ x__ y__
              -> x__ {_AccessLogCommon'FilterStateObjectsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message AccessLogCommon'FilterStateObjectsEntry where
  messageName _
    = Data.Text.pack
        "envoy.data.accesslog.v3.AccessLogCommon.FilterStateObjectsEntry"
  packedMessageDescriptor _
    = "\n\
      \\ETBFilterStateObjectsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2*\n\
      \\ENQvalue\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon'FilterStateObjectsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor AccessLogCommon'FilterStateObjectsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AccessLogCommon'FilterStateObjectsEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_AccessLogCommon'FilterStateObjectsEntry'_unknownFields = y__})
  defMessage
    = AccessLogCommon'FilterStateObjectsEntry'_constructor
        {_AccessLogCommon'FilterStateObjectsEntry'key = Data.ProtoLens.fieldDefault,
         _AccessLogCommon'FilterStateObjectsEntry'value = Prelude.Nothing,
         _AccessLogCommon'FilterStateObjectsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AccessLogCommon'FilterStateObjectsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser AccessLogCommon'FilterStateObjectsEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FilterStateObjectsEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
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
instance Control.DeepSeq.NFData AccessLogCommon'FilterStateObjectsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AccessLogCommon'FilterStateObjectsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AccessLogCommon'FilterStateObjectsEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_AccessLogCommon'FilterStateObjectsEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.receivedBytes' @:: Lens' ConnectionProperties Data.Word.Word64@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.sentBytes' @:: Lens' ConnectionProperties Data.Word.Word64@ -}
data ConnectionProperties
  = ConnectionProperties'_constructor {_ConnectionProperties'receivedBytes :: !Data.Word.Word64,
                                       _ConnectionProperties'sentBytes :: !Data.Word.Word64,
                                       _ConnectionProperties'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConnectionProperties where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConnectionProperties "receivedBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConnectionProperties'receivedBytes
           (\ x__ y__ -> x__ {_ConnectionProperties'receivedBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConnectionProperties "sentBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConnectionProperties'sentBytes
           (\ x__ y__ -> x__ {_ConnectionProperties'sentBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message ConnectionProperties where
  messageName _
    = Data.Text.pack "envoy.data.accesslog.v3.ConnectionProperties"
  packedMessageDescriptor _
    = "\n\
      \\DC4ConnectionProperties\DC2%\n\
      \\SOreceived_bytes\CAN\SOH \SOH(\EOTR\rreceivedBytes\DC2\GS\n\
      \\n\
      \sent_bytes\CAN\STX \SOH(\EOTR\tsentBytes:3\154\197\136\RS.\n\
      \,envoy.data.accesslog.v2.ConnectionProperties"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        receivedBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "received_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"receivedBytes")) ::
              Data.ProtoLens.FieldDescriptor ConnectionProperties
        sentBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sent_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sentBytes")) ::
              Data.ProtoLens.FieldDescriptor ConnectionProperties
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, receivedBytes__field_descriptor),
           (Data.ProtoLens.Tag 2, sentBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConnectionProperties'_unknownFields
        (\ x__ y__ -> x__ {_ConnectionProperties'_unknownFields = y__})
  defMessage
    = ConnectionProperties'_constructor
        {_ConnectionProperties'receivedBytes = Data.ProtoLens.fieldDefault,
         _ConnectionProperties'sentBytes = Data.ProtoLens.fieldDefault,
         _ConnectionProperties'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConnectionProperties
          -> Data.ProtoLens.Encoding.Bytes.Parser ConnectionProperties
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "received_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"receivedBytes") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sent_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sentBytes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ConnectionProperties"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"receivedBytes") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sentBytes") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ConnectionProperties where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConnectionProperties'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ConnectionProperties'receivedBytes x__)
                (Control.DeepSeq.deepseq (_ConnectionProperties'sentBytes x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.commonProperties' @:: Lens' HTTPAccessLogEntry AccessLogCommon@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'commonProperties' @:: Lens' HTTPAccessLogEntry (Prelude.Maybe AccessLogCommon)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.protocolVersion' @:: Lens' HTTPAccessLogEntry HTTPAccessLogEntry'HTTPVersion@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.request' @:: Lens' HTTPAccessLogEntry HTTPRequestProperties@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'request' @:: Lens' HTTPAccessLogEntry (Prelude.Maybe HTTPRequestProperties)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.response' @:: Lens' HTTPAccessLogEntry HTTPResponseProperties@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'response' @:: Lens' HTTPAccessLogEntry (Prelude.Maybe HTTPResponseProperties)@ -}
data HTTPAccessLogEntry
  = HTTPAccessLogEntry'_constructor {_HTTPAccessLogEntry'commonProperties :: !(Prelude.Maybe AccessLogCommon),
                                     _HTTPAccessLogEntry'protocolVersion :: !HTTPAccessLogEntry'HTTPVersion,
                                     _HTTPAccessLogEntry'request :: !(Prelude.Maybe HTTPRequestProperties),
                                     _HTTPAccessLogEntry'response :: !(Prelude.Maybe HTTPResponseProperties),
                                     _HTTPAccessLogEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HTTPAccessLogEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HTTPAccessLogEntry "commonProperties" AccessLogCommon where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPAccessLogEntry'commonProperties
           (\ x__ y__ -> x__ {_HTTPAccessLogEntry'commonProperties = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HTTPAccessLogEntry "maybe'commonProperties" (Prelude.Maybe AccessLogCommon) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPAccessLogEntry'commonProperties
           (\ x__ y__ -> x__ {_HTTPAccessLogEntry'commonProperties = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPAccessLogEntry "protocolVersion" HTTPAccessLogEntry'HTTPVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPAccessLogEntry'protocolVersion
           (\ x__ y__ -> x__ {_HTTPAccessLogEntry'protocolVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPAccessLogEntry "request" HTTPRequestProperties where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPAccessLogEntry'request
           (\ x__ y__ -> x__ {_HTTPAccessLogEntry'request = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HTTPAccessLogEntry "maybe'request" (Prelude.Maybe HTTPRequestProperties) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPAccessLogEntry'request
           (\ x__ y__ -> x__ {_HTTPAccessLogEntry'request = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPAccessLogEntry "response" HTTPResponseProperties where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPAccessLogEntry'response
           (\ x__ y__ -> x__ {_HTTPAccessLogEntry'response = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HTTPAccessLogEntry "maybe'response" (Prelude.Maybe HTTPResponseProperties) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPAccessLogEntry'response
           (\ x__ y__ -> x__ {_HTTPAccessLogEntry'response = y__}))
        Prelude.id
instance Data.ProtoLens.Message HTTPAccessLogEntry where
  messageName _
    = Data.Text.pack "envoy.data.accesslog.v3.HTTPAccessLogEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC2HTTPAccessLogEntry\DC2U\n\
      \\DC1common_properties\CAN\SOH \SOH(\v2(.envoy.data.accesslog.v3.AccessLogCommonR\DLEcommonProperties\DC2b\n\
      \\DLEprotocol_version\CAN\STX \SOH(\SO27.envoy.data.accesslog.v3.HTTPAccessLogEntry.HTTPVersionR\SIprotocolVersion\DC2H\n\
      \\arequest\CAN\ETX \SOH(\v2..envoy.data.accesslog.v3.HTTPRequestPropertiesR\arequest\DC2K\n\
      \\bresponse\CAN\EOT \SOH(\v2/.envoy.data.accesslog.v3.HTTPResponsePropertiesR\bresponse\"U\n\
      \\vHTTPVersion\DC2\CAN\n\
      \\DC4PROTOCOL_UNSPECIFIED\DLE\NUL\DC2\n\
      \\n\
      \\ACKHTTP10\DLE\SOH\DC2\n\
      \\n\
      \\ACKHTTP11\DLE\STX\DC2\t\n\
      \\ENQHTTP2\DLE\ETX\DC2\t\n\
      \\ENQHTTP3\DLE\EOT:1\154\197\136\RS,\n\
      \*envoy.data.accesslog.v2.HTTPAccessLogEntry"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commonProperties__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_properties"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AccessLogCommon)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commonProperties")) ::
              Data.ProtoLens.FieldDescriptor HTTPAccessLogEntry
        protocolVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor HTTPAccessLogEntry'HTTPVersion)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"protocolVersion")) ::
              Data.ProtoLens.FieldDescriptor HTTPAccessLogEntry
        request__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HTTPRequestProperties)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'request")) ::
              Data.ProtoLens.FieldDescriptor HTTPAccessLogEntry
        response__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HTTPResponseProperties)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'response")) ::
              Data.ProtoLens.FieldDescriptor HTTPAccessLogEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commonProperties__field_descriptor),
           (Data.ProtoLens.Tag 2, protocolVersion__field_descriptor),
           (Data.ProtoLens.Tag 3, request__field_descriptor),
           (Data.ProtoLens.Tag 4, response__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HTTPAccessLogEntry'_unknownFields
        (\ x__ y__ -> x__ {_HTTPAccessLogEntry'_unknownFields = y__})
  defMessage
    = HTTPAccessLogEntry'_constructor
        {_HTTPAccessLogEntry'commonProperties = Prelude.Nothing,
         _HTTPAccessLogEntry'protocolVersion = Data.ProtoLens.fieldDefault,
         _HTTPAccessLogEntry'request = Prelude.Nothing,
         _HTTPAccessLogEntry'response = Prelude.Nothing,
         _HTTPAccessLogEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HTTPAccessLogEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser HTTPAccessLogEntry
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
                                       "common_properties"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commonProperties") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "protocol_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"protocolVersion") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"request") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"response") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HTTPAccessLogEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'commonProperties") _x
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
                         (Data.ProtoLens.Field.field @"protocolVersion") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum
                            _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'request") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'response") _x
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
instance Control.DeepSeq.NFData HTTPAccessLogEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HTTPAccessLogEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HTTPAccessLogEntry'commonProperties x__)
                (Control.DeepSeq.deepseq
                   (_HTTPAccessLogEntry'protocolVersion x__)
                   (Control.DeepSeq.deepseq
                      (_HTTPAccessLogEntry'request x__)
                      (Control.DeepSeq.deepseq (_HTTPAccessLogEntry'response x__) ()))))
newtype HTTPAccessLogEntry'HTTPVersion'UnrecognizedValue
  = HTTPAccessLogEntry'HTTPVersion'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data HTTPAccessLogEntry'HTTPVersion
  = HTTPAccessLogEntry'PROTOCOL_UNSPECIFIED |
    HTTPAccessLogEntry'HTTP10 |
    HTTPAccessLogEntry'HTTP11 |
    HTTPAccessLogEntry'HTTP2 |
    HTTPAccessLogEntry'HTTP3 |
    HTTPAccessLogEntry'HTTPVersion'Unrecognized !HTTPAccessLogEntry'HTTPVersion'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum HTTPAccessLogEntry'HTTPVersion where
  maybeToEnum 0
    = Prelude.Just HTTPAccessLogEntry'PROTOCOL_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just HTTPAccessLogEntry'HTTP10
  maybeToEnum 2 = Prelude.Just HTTPAccessLogEntry'HTTP11
  maybeToEnum 3 = Prelude.Just HTTPAccessLogEntry'HTTP2
  maybeToEnum 4 = Prelude.Just HTTPAccessLogEntry'HTTP3
  maybeToEnum k
    = Prelude.Just
        (HTTPAccessLogEntry'HTTPVersion'Unrecognized
           (HTTPAccessLogEntry'HTTPVersion'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum HTTPAccessLogEntry'PROTOCOL_UNSPECIFIED
    = "PROTOCOL_UNSPECIFIED"
  showEnum HTTPAccessLogEntry'HTTP10 = "HTTP10"
  showEnum HTTPAccessLogEntry'HTTP11 = "HTTP11"
  showEnum HTTPAccessLogEntry'HTTP2 = "HTTP2"
  showEnum HTTPAccessLogEntry'HTTP3 = "HTTP3"
  showEnum
    (HTTPAccessLogEntry'HTTPVersion'Unrecognized (HTTPAccessLogEntry'HTTPVersion'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "PROTOCOL_UNSPECIFIED"
    = Prelude.Just HTTPAccessLogEntry'PROTOCOL_UNSPECIFIED
    | (Prelude.==) k "HTTP10" = Prelude.Just HTTPAccessLogEntry'HTTP10
    | (Prelude.==) k "HTTP11" = Prelude.Just HTTPAccessLogEntry'HTTP11
    | (Prelude.==) k "HTTP2" = Prelude.Just HTTPAccessLogEntry'HTTP2
    | (Prelude.==) k "HTTP3" = Prelude.Just HTTPAccessLogEntry'HTTP3
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded HTTPAccessLogEntry'HTTPVersion where
  minBound = HTTPAccessLogEntry'PROTOCOL_UNSPECIFIED
  maxBound = HTTPAccessLogEntry'HTTP3
instance Prelude.Enum HTTPAccessLogEntry'HTTPVersion where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum HTTPVersion: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum HTTPAccessLogEntry'PROTOCOL_UNSPECIFIED = 0
  fromEnum HTTPAccessLogEntry'HTTP10 = 1
  fromEnum HTTPAccessLogEntry'HTTP11 = 2
  fromEnum HTTPAccessLogEntry'HTTP2 = 3
  fromEnum HTTPAccessLogEntry'HTTP3 = 4
  fromEnum
    (HTTPAccessLogEntry'HTTPVersion'Unrecognized (HTTPAccessLogEntry'HTTPVersion'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ HTTPAccessLogEntry'HTTP3
    = Prelude.error
        "HTTPAccessLogEntry'HTTPVersion.succ: bad argument HTTPAccessLogEntry'HTTP3. This value would be out of bounds."
  succ HTTPAccessLogEntry'PROTOCOL_UNSPECIFIED
    = HTTPAccessLogEntry'HTTP10
  succ HTTPAccessLogEntry'HTTP10 = HTTPAccessLogEntry'HTTP11
  succ HTTPAccessLogEntry'HTTP11 = HTTPAccessLogEntry'HTTP2
  succ HTTPAccessLogEntry'HTTP2 = HTTPAccessLogEntry'HTTP3
  succ (HTTPAccessLogEntry'HTTPVersion'Unrecognized _)
    = Prelude.error
        "HTTPAccessLogEntry'HTTPVersion.succ: bad argument: unrecognized value"
  pred HTTPAccessLogEntry'PROTOCOL_UNSPECIFIED
    = Prelude.error
        "HTTPAccessLogEntry'HTTPVersion.pred: bad argument HTTPAccessLogEntry'PROTOCOL_UNSPECIFIED. This value would be out of bounds."
  pred HTTPAccessLogEntry'HTTP10
    = HTTPAccessLogEntry'PROTOCOL_UNSPECIFIED
  pred HTTPAccessLogEntry'HTTP11 = HTTPAccessLogEntry'HTTP10
  pred HTTPAccessLogEntry'HTTP2 = HTTPAccessLogEntry'HTTP11
  pred HTTPAccessLogEntry'HTTP3 = HTTPAccessLogEntry'HTTP2
  pred (HTTPAccessLogEntry'HTTPVersion'Unrecognized _)
    = Prelude.error
        "HTTPAccessLogEntry'HTTPVersion.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault HTTPAccessLogEntry'HTTPVersion where
  fieldDefault = HTTPAccessLogEntry'PROTOCOL_UNSPECIFIED
instance Control.DeepSeq.NFData HTTPAccessLogEntry'HTTPVersion where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.requestMethod' @:: Lens' HTTPRequestProperties Proto.Envoy.Config.Core.V3.Base.RequestMethod@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.scheme' @:: Lens' HTTPRequestProperties Data.Text.Text@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.authority' @:: Lens' HTTPRequestProperties Data.Text.Text@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.port' @:: Lens' HTTPRequestProperties Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'port' @:: Lens' HTTPRequestProperties (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.path' @:: Lens' HTTPRequestProperties Data.Text.Text@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.userAgent' @:: Lens' HTTPRequestProperties Data.Text.Text@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.referer' @:: Lens' HTTPRequestProperties Data.Text.Text@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.forwardedFor' @:: Lens' HTTPRequestProperties Data.Text.Text@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.requestId' @:: Lens' HTTPRequestProperties Data.Text.Text@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.originalPath' @:: Lens' HTTPRequestProperties Data.Text.Text@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.requestHeadersBytes' @:: Lens' HTTPRequestProperties Data.Word.Word64@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.requestBodyBytes' @:: Lens' HTTPRequestProperties Data.Word.Word64@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.requestHeaders' @:: Lens' HTTPRequestProperties (Data.Map.Map Data.Text.Text Data.Text.Text)@ -}
data HTTPRequestProperties
  = HTTPRequestProperties'_constructor {_HTTPRequestProperties'requestMethod :: !Proto.Envoy.Config.Core.V3.Base.RequestMethod,
                                        _HTTPRequestProperties'scheme :: !Data.Text.Text,
                                        _HTTPRequestProperties'authority :: !Data.Text.Text,
                                        _HTTPRequestProperties'port :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                        _HTTPRequestProperties'path :: !Data.Text.Text,
                                        _HTTPRequestProperties'userAgent :: !Data.Text.Text,
                                        _HTTPRequestProperties'referer :: !Data.Text.Text,
                                        _HTTPRequestProperties'forwardedFor :: !Data.Text.Text,
                                        _HTTPRequestProperties'requestId :: !Data.Text.Text,
                                        _HTTPRequestProperties'originalPath :: !Data.Text.Text,
                                        _HTTPRequestProperties'requestHeadersBytes :: !Data.Word.Word64,
                                        _HTTPRequestProperties'requestBodyBytes :: !Data.Word.Word64,
                                        _HTTPRequestProperties'requestHeaders :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                        _HTTPRequestProperties'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HTTPRequestProperties where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HTTPRequestProperties "requestMethod" Proto.Envoy.Config.Core.V3.Base.RequestMethod where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPRequestProperties'requestMethod
           (\ x__ y__ -> x__ {_HTTPRequestProperties'requestMethod = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPRequestProperties "scheme" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPRequestProperties'scheme
           (\ x__ y__ -> x__ {_HTTPRequestProperties'scheme = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPRequestProperties "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPRequestProperties'authority
           (\ x__ y__ -> x__ {_HTTPRequestProperties'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPRequestProperties "port" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPRequestProperties'port
           (\ x__ y__ -> x__ {_HTTPRequestProperties'port = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HTTPRequestProperties "maybe'port" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPRequestProperties'port
           (\ x__ y__ -> x__ {_HTTPRequestProperties'port = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPRequestProperties "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPRequestProperties'path
           (\ x__ y__ -> x__ {_HTTPRequestProperties'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPRequestProperties "userAgent" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPRequestProperties'userAgent
           (\ x__ y__ -> x__ {_HTTPRequestProperties'userAgent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPRequestProperties "referer" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPRequestProperties'referer
           (\ x__ y__ -> x__ {_HTTPRequestProperties'referer = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPRequestProperties "forwardedFor" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPRequestProperties'forwardedFor
           (\ x__ y__ -> x__ {_HTTPRequestProperties'forwardedFor = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPRequestProperties "requestId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPRequestProperties'requestId
           (\ x__ y__ -> x__ {_HTTPRequestProperties'requestId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPRequestProperties "originalPath" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPRequestProperties'originalPath
           (\ x__ y__ -> x__ {_HTTPRequestProperties'originalPath = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPRequestProperties "requestHeadersBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPRequestProperties'requestHeadersBytes
           (\ x__ y__
              -> x__ {_HTTPRequestProperties'requestHeadersBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPRequestProperties "requestBodyBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPRequestProperties'requestBodyBytes
           (\ x__ y__ -> x__ {_HTTPRequestProperties'requestBodyBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPRequestProperties "requestHeaders" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPRequestProperties'requestHeaders
           (\ x__ y__ -> x__ {_HTTPRequestProperties'requestHeaders = y__}))
        Prelude.id
instance Data.ProtoLens.Message HTTPRequestProperties where
  messageName _
    = Data.Text.pack "envoy.data.accesslog.v3.HTTPRequestProperties"
  packedMessageDescriptor _
    = "\n\
      \\NAKHTTPRequestProperties\DC2T\n\
      \\SOrequest_method\CAN\SOH \SOH(\SO2#.envoy.config.core.v3.RequestMethodR\rrequestMethodB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\SYN\n\
      \\ACKscheme\CAN\STX \SOH(\tR\ACKscheme\DC2\FS\n\
      \\tauthority\CAN\ETX \SOH(\tR\tauthority\DC20\n\
      \\EOTport\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\EOTport\DC2\DC2\n\
      \\EOTpath\CAN\ENQ \SOH(\tR\EOTpath\DC2\GS\n\
      \\n\
      \user_agent\CAN\ACK \SOH(\tR\tuserAgent\DC2\CAN\n\
      \\areferer\CAN\a \SOH(\tR\areferer\DC2#\n\
      \\rforwarded_for\CAN\b \SOH(\tR\fforwardedFor\DC2\GS\n\
      \\n\
      \request_id\CAN\t \SOH(\tR\trequestId\DC2#\n\
      \\roriginal_path\CAN\n\
      \ \SOH(\tR\foriginalPath\DC22\n\
      \\NAKrequest_headers_bytes\CAN\v \SOH(\EOTR\DC3requestHeadersBytes\DC2,\n\
      \\DC2request_body_bytes\CAN\f \SOH(\EOTR\DLErequestBodyBytes\DC2k\n\
      \\SIrequest_headers\CAN\r \ETX(\v2B.envoy.data.accesslog.v3.HTTPRequestProperties.RequestHeadersEntryR\SOrequestHeaders\SUBA\n\
      \\DC3RequestHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH:4\154\197\136\RS/\n\
      \-envoy.data.accesslog.v2.HTTPRequestProperties"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        requestMethod__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_method"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RequestMethod)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestMethod")) ::
              Data.ProtoLens.FieldDescriptor HTTPRequestProperties
        scheme__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scheme"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"scheme")) ::
              Data.ProtoLens.FieldDescriptor HTTPRequestProperties
        authority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authority")) ::
              Data.ProtoLens.FieldDescriptor HTTPRequestProperties
        port__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "port"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'port")) ::
              Data.ProtoLens.FieldDescriptor HTTPRequestProperties
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"path")) ::
              Data.ProtoLens.FieldDescriptor HTTPRequestProperties
        userAgent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "user_agent"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"userAgent")) ::
              Data.ProtoLens.FieldDescriptor HTTPRequestProperties
        referer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "referer"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"referer")) ::
              Data.ProtoLens.FieldDescriptor HTTPRequestProperties
        forwardedFor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "forwarded_for"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"forwardedFor")) ::
              Data.ProtoLens.FieldDescriptor HTTPRequestProperties
        requestId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestId")) ::
              Data.ProtoLens.FieldDescriptor HTTPRequestProperties
        originalPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "original_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"originalPath")) ::
              Data.ProtoLens.FieldDescriptor HTTPRequestProperties
        requestHeadersBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_headers_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestHeadersBytes")) ::
              Data.ProtoLens.FieldDescriptor HTTPRequestProperties
        requestBodyBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_body_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestBodyBytes")) ::
              Data.ProtoLens.FieldDescriptor HTTPRequestProperties
        requestHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HTTPRequestProperties'RequestHeadersEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"requestHeaders")) ::
              Data.ProtoLens.FieldDescriptor HTTPRequestProperties
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, requestMethod__field_descriptor),
           (Data.ProtoLens.Tag 2, scheme__field_descriptor),
           (Data.ProtoLens.Tag 3, authority__field_descriptor),
           (Data.ProtoLens.Tag 4, port__field_descriptor),
           (Data.ProtoLens.Tag 5, path__field_descriptor),
           (Data.ProtoLens.Tag 6, userAgent__field_descriptor),
           (Data.ProtoLens.Tag 7, referer__field_descriptor),
           (Data.ProtoLens.Tag 8, forwardedFor__field_descriptor),
           (Data.ProtoLens.Tag 9, requestId__field_descriptor),
           (Data.ProtoLens.Tag 10, originalPath__field_descriptor),
           (Data.ProtoLens.Tag 11, requestHeadersBytes__field_descriptor),
           (Data.ProtoLens.Tag 12, requestBodyBytes__field_descriptor),
           (Data.ProtoLens.Tag 13, requestHeaders__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HTTPRequestProperties'_unknownFields
        (\ x__ y__ -> x__ {_HTTPRequestProperties'_unknownFields = y__})
  defMessage
    = HTTPRequestProperties'_constructor
        {_HTTPRequestProperties'requestMethod = Data.ProtoLens.fieldDefault,
         _HTTPRequestProperties'scheme = Data.ProtoLens.fieldDefault,
         _HTTPRequestProperties'authority = Data.ProtoLens.fieldDefault,
         _HTTPRequestProperties'port = Prelude.Nothing,
         _HTTPRequestProperties'path = Data.ProtoLens.fieldDefault,
         _HTTPRequestProperties'userAgent = Data.ProtoLens.fieldDefault,
         _HTTPRequestProperties'referer = Data.ProtoLens.fieldDefault,
         _HTTPRequestProperties'forwardedFor = Data.ProtoLens.fieldDefault,
         _HTTPRequestProperties'requestId = Data.ProtoLens.fieldDefault,
         _HTTPRequestProperties'originalPath = Data.ProtoLens.fieldDefault,
         _HTTPRequestProperties'requestHeadersBytes = Data.ProtoLens.fieldDefault,
         _HTTPRequestProperties'requestBodyBytes = Data.ProtoLens.fieldDefault,
         _HTTPRequestProperties'requestHeaders = Data.Map.empty,
         _HTTPRequestProperties'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HTTPRequestProperties
          -> Data.ProtoLens.Encoding.Bytes.Parser HTTPRequestProperties
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "request_method"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestMethod") y x)
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
                                       "scheme"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"scheme") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "authority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"authority") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "port"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"port") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "user_agent"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"userAgent") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "referer"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"referer") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "forwarded_for"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"forwardedFor") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "request_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"requestId") y x)
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
                                       "original_path"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"originalPath") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "request_headers_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestHeadersBytes") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "request_body_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestBodyBytes") y x)
                        106
                          -> do !(entry :: HTTPRequestProperties'RequestHeadersEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                           (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                               Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                 (Prelude.fromIntegral
                                                                                                    len)
                                                                                                 Data.ProtoLens.parseMessage)
                                                                                           "request_headers"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"requestHeaders")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HTTPRequestProperties"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"requestMethod") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"scheme") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"authority") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'port") _x
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
                         (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"path") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"userAgent") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8
                                        _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v = Lens.Family2.view (Data.ProtoLens.Field.field @"referer") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((Prelude..)
                                           (\ bs
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           Data.Text.Encoding.encodeUtf8
                                           _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"forwardedFor") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((Prelude..)
                                              (\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Data.Text.Encoding.encodeUtf8
                                              _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"requestId") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
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
                                                 (Data.ProtoLens.Field.field @"originalPath") _x
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
                                                       @"requestHeadersBytes")
                                                    _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"requestBodyBytes")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                              ((Data.Monoid.<>)
                                                 (Data.Monoid.mconcat
                                                    (Prelude.map
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
                                                                  (Lens.Family2.set
                                                                     (Data.ProtoLens.Field.field
                                                                        @"key")
                                                                     (Prelude.fst _v)
                                                                     (Lens.Family2.set
                                                                        (Data.ProtoLens.Field.field
                                                                           @"value")
                                                                        (Prelude.snd _v)
                                                                        (Data.ProtoLens.defMessage ::
                                                                           HTTPRequestProperties'RequestHeadersEntry)))))
                                                       (Data.Map.toList
                                                          (Lens.Family2.view
                                                             (Data.ProtoLens.Field.field
                                                                @"requestHeaders")
                                                             _x))))
                                                 (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                    (Lens.Family2.view
                                                       Data.ProtoLens.unknownFields _x))))))))))))))
instance Control.DeepSeq.NFData HTTPRequestProperties where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HTTPRequestProperties'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HTTPRequestProperties'requestMethod x__)
                (Control.DeepSeq.deepseq
                   (_HTTPRequestProperties'scheme x__)
                   (Control.DeepSeq.deepseq
                      (_HTTPRequestProperties'authority x__)
                      (Control.DeepSeq.deepseq
                         (_HTTPRequestProperties'port x__)
                         (Control.DeepSeq.deepseq
                            (_HTTPRequestProperties'path x__)
                            (Control.DeepSeq.deepseq
                               (_HTTPRequestProperties'userAgent x__)
                               (Control.DeepSeq.deepseq
                                  (_HTTPRequestProperties'referer x__)
                                  (Control.DeepSeq.deepseq
                                     (_HTTPRequestProperties'forwardedFor x__)
                                     (Control.DeepSeq.deepseq
                                        (_HTTPRequestProperties'requestId x__)
                                        (Control.DeepSeq.deepseq
                                           (_HTTPRequestProperties'originalPath x__)
                                           (Control.DeepSeq.deepseq
                                              (_HTTPRequestProperties'requestHeadersBytes x__)
                                              (Control.DeepSeq.deepseq
                                                 (_HTTPRequestProperties'requestBodyBytes x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_HTTPRequestProperties'requestHeaders x__)
                                                    ())))))))))))))
{- | Fields :
     
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.key' @:: Lens' HTTPRequestProperties'RequestHeadersEntry Data.Text.Text@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.value' @:: Lens' HTTPRequestProperties'RequestHeadersEntry Data.Text.Text@ -}
data HTTPRequestProperties'RequestHeadersEntry
  = HTTPRequestProperties'RequestHeadersEntry'_constructor {_HTTPRequestProperties'RequestHeadersEntry'key :: !Data.Text.Text,
                                                            _HTTPRequestProperties'RequestHeadersEntry'value :: !Data.Text.Text,
                                                            _HTTPRequestProperties'RequestHeadersEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HTTPRequestProperties'RequestHeadersEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HTTPRequestProperties'RequestHeadersEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPRequestProperties'RequestHeadersEntry'key
           (\ x__ y__
              -> x__ {_HTTPRequestProperties'RequestHeadersEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPRequestProperties'RequestHeadersEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPRequestProperties'RequestHeadersEntry'value
           (\ x__ y__
              -> x__ {_HTTPRequestProperties'RequestHeadersEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message HTTPRequestProperties'RequestHeadersEntry where
  messageName _
    = Data.Text.pack
        "envoy.data.accesslog.v3.HTTPRequestProperties.RequestHeadersEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC3RequestHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor HTTPRequestProperties'RequestHeadersEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor HTTPRequestProperties'RequestHeadersEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HTTPRequestProperties'RequestHeadersEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_HTTPRequestProperties'RequestHeadersEntry'_unknownFields = y__})
  defMessage
    = HTTPRequestProperties'RequestHeadersEntry'_constructor
        {_HTTPRequestProperties'RequestHeadersEntry'key = Data.ProtoLens.fieldDefault,
         _HTTPRequestProperties'RequestHeadersEntry'value = Data.ProtoLens.fieldDefault,
         _HTTPRequestProperties'RequestHeadersEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HTTPRequestProperties'RequestHeadersEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser HTTPRequestProperties'RequestHeadersEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
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
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequestHeadersEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
instance Control.DeepSeq.NFData HTTPRequestProperties'RequestHeadersEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HTTPRequestProperties'RequestHeadersEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HTTPRequestProperties'RequestHeadersEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_HTTPRequestProperties'RequestHeadersEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.responseCode' @:: Lens' HTTPResponseProperties Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'responseCode' @:: Lens' HTTPResponseProperties (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.responseHeadersBytes' @:: Lens' HTTPResponseProperties Data.Word.Word64@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.responseBodyBytes' @:: Lens' HTTPResponseProperties Data.Word.Word64@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.responseHeaders' @:: Lens' HTTPResponseProperties (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.responseTrailers' @:: Lens' HTTPResponseProperties (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.responseCodeDetails' @:: Lens' HTTPResponseProperties Data.Text.Text@ -}
data HTTPResponseProperties
  = HTTPResponseProperties'_constructor {_HTTPResponseProperties'responseCode :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                         _HTTPResponseProperties'responseHeadersBytes :: !Data.Word.Word64,
                                         _HTTPResponseProperties'responseBodyBytes :: !Data.Word.Word64,
                                         _HTTPResponseProperties'responseHeaders :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                         _HTTPResponseProperties'responseTrailers :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                         _HTTPResponseProperties'responseCodeDetails :: !Data.Text.Text,
                                         _HTTPResponseProperties'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HTTPResponseProperties where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HTTPResponseProperties "responseCode" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPResponseProperties'responseCode
           (\ x__ y__ -> x__ {_HTTPResponseProperties'responseCode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HTTPResponseProperties "maybe'responseCode" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPResponseProperties'responseCode
           (\ x__ y__ -> x__ {_HTTPResponseProperties'responseCode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPResponseProperties "responseHeadersBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPResponseProperties'responseHeadersBytes
           (\ x__ y__
              -> x__ {_HTTPResponseProperties'responseHeadersBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPResponseProperties "responseBodyBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPResponseProperties'responseBodyBytes
           (\ x__ y__
              -> x__ {_HTTPResponseProperties'responseBodyBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPResponseProperties "responseHeaders" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPResponseProperties'responseHeaders
           (\ x__ y__ -> x__ {_HTTPResponseProperties'responseHeaders = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPResponseProperties "responseTrailers" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPResponseProperties'responseTrailers
           (\ x__ y__
              -> x__ {_HTTPResponseProperties'responseTrailers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPResponseProperties "responseCodeDetails" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPResponseProperties'responseCodeDetails
           (\ x__ y__
              -> x__ {_HTTPResponseProperties'responseCodeDetails = y__}))
        Prelude.id
instance Data.ProtoLens.Message HTTPResponseProperties where
  messageName _
    = Data.Text.pack "envoy.data.accesslog.v3.HTTPResponseProperties"
  packedMessageDescriptor _
    = "\n\
      \\SYNHTTPResponseProperties\DC2A\n\
      \\rresponse_code\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\fresponseCode\DC24\n\
      \\SYNresponse_headers_bytes\CAN\STX \SOH(\EOTR\DC4responseHeadersBytes\DC2.\n\
      \\DC3response_body_bytes\CAN\ETX \SOH(\EOTR\DC1responseBodyBytes\DC2o\n\
      \\DLEresponse_headers\CAN\EOT \ETX(\v2D.envoy.data.accesslog.v3.HTTPResponseProperties.ResponseHeadersEntryR\SIresponseHeaders\DC2r\n\
      \\DC1response_trailers\CAN\ENQ \ETX(\v2E.envoy.data.accesslog.v3.HTTPResponseProperties.ResponseTrailersEntryR\DLEresponseTrailers\DC22\n\
      \\NAKresponse_code_details\CAN\ACK \SOH(\tR\DC3responseCodeDetails\SUBB\n\
      \\DC4ResponseHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH\SUBC\n\
      \\NAKResponseTrailersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH:5\154\197\136\RS0\n\
      \.envoy.data.accesslog.v2.HTTPResponseProperties"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        responseCode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_code"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'responseCode")) ::
              Data.ProtoLens.FieldDescriptor HTTPResponseProperties
        responseHeadersBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_headers_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"responseHeadersBytes")) ::
              Data.ProtoLens.FieldDescriptor HTTPResponseProperties
        responseBodyBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_body_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"responseBodyBytes")) ::
              Data.ProtoLens.FieldDescriptor HTTPResponseProperties
        responseHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HTTPResponseProperties'ResponseHeadersEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"responseHeaders")) ::
              Data.ProtoLens.FieldDescriptor HTTPResponseProperties
        responseTrailers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_trailers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HTTPResponseProperties'ResponseTrailersEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"responseTrailers")) ::
              Data.ProtoLens.FieldDescriptor HTTPResponseProperties
        responseCodeDetails__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_code_details"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"responseCodeDetails")) ::
              Data.ProtoLens.FieldDescriptor HTTPResponseProperties
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, responseCode__field_descriptor),
           (Data.ProtoLens.Tag 2, responseHeadersBytes__field_descriptor),
           (Data.ProtoLens.Tag 3, responseBodyBytes__field_descriptor),
           (Data.ProtoLens.Tag 4, responseHeaders__field_descriptor),
           (Data.ProtoLens.Tag 5, responseTrailers__field_descriptor),
           (Data.ProtoLens.Tag 6, responseCodeDetails__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HTTPResponseProperties'_unknownFields
        (\ x__ y__ -> x__ {_HTTPResponseProperties'_unknownFields = y__})
  defMessage
    = HTTPResponseProperties'_constructor
        {_HTTPResponseProperties'responseCode = Prelude.Nothing,
         _HTTPResponseProperties'responseHeadersBytes = Data.ProtoLens.fieldDefault,
         _HTTPResponseProperties'responseBodyBytes = Data.ProtoLens.fieldDefault,
         _HTTPResponseProperties'responseHeaders = Data.Map.empty,
         _HTTPResponseProperties'responseTrailers = Data.Map.empty,
         _HTTPResponseProperties'responseCodeDetails = Data.ProtoLens.fieldDefault,
         _HTTPResponseProperties'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HTTPResponseProperties
          -> Data.ProtoLens.Encoding.Bytes.Parser HTTPResponseProperties
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
                                       "response_code"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseCode") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "response_headers_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseHeadersBytes") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "response_body_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseBodyBytes") y x)
                        34
                          -> do !(entry :: HTTPResponseProperties'ResponseHeadersEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                             (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                                 Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                   (Prelude.fromIntegral
                                                                                                      len)
                                                                                                   Data.ProtoLens.parseMessage)
                                                                                             "response_headers"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"responseHeaders")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        42
                          -> do !(entry :: HTTPResponseProperties'ResponseTrailersEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                              (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                    (Prelude.fromIntegral
                                                                                                       len)
                                                                                                    Data.ProtoLens.parseMessage)
                                                                                              "response_trailers"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"responseTrailers")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "response_code_details"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseCodeDetails") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HTTPResponseProperties"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'responseCode") _x
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
                         (Data.ProtoLens.Field.field @"responseHeadersBytes") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"responseBodyBytes") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (Data.Monoid.mconcat
                         (Prelude.map
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
                                       Data.ProtoLens.encodeMessage
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"key")
                                          (Prelude.fst _v)
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"value")
                                             (Prelude.snd _v)
                                             (Data.ProtoLens.defMessage ::
                                                HTTPResponseProperties'ResponseHeadersEntry)))))
                            (Data.Map.toList
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"responseHeaders") _x))))
                      ((Data.Monoid.<>)
                         (Data.Monoid.mconcat
                            (Prelude.map
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
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"key")
                                             (Prelude.fst _v)
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"value")
                                                (Prelude.snd _v)
                                                (Data.ProtoLens.defMessage ::
                                                   HTTPResponseProperties'ResponseTrailersEntry)))))
                               (Data.Map.toList
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"responseTrailers") _x))))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"responseCodeDetails") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8
                                        _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData HTTPResponseProperties where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HTTPResponseProperties'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HTTPResponseProperties'responseCode x__)
                (Control.DeepSeq.deepseq
                   (_HTTPResponseProperties'responseHeadersBytes x__)
                   (Control.DeepSeq.deepseq
                      (_HTTPResponseProperties'responseBodyBytes x__)
                      (Control.DeepSeq.deepseq
                         (_HTTPResponseProperties'responseHeaders x__)
                         (Control.DeepSeq.deepseq
                            (_HTTPResponseProperties'responseTrailers x__)
                            (Control.DeepSeq.deepseq
                               (_HTTPResponseProperties'responseCodeDetails x__) ()))))))
{- | Fields :
     
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.key' @:: Lens' HTTPResponseProperties'ResponseHeadersEntry Data.Text.Text@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.value' @:: Lens' HTTPResponseProperties'ResponseHeadersEntry Data.Text.Text@ -}
data HTTPResponseProperties'ResponseHeadersEntry
  = HTTPResponseProperties'ResponseHeadersEntry'_constructor {_HTTPResponseProperties'ResponseHeadersEntry'key :: !Data.Text.Text,
                                                              _HTTPResponseProperties'ResponseHeadersEntry'value :: !Data.Text.Text,
                                                              _HTTPResponseProperties'ResponseHeadersEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HTTPResponseProperties'ResponseHeadersEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HTTPResponseProperties'ResponseHeadersEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPResponseProperties'ResponseHeadersEntry'key
           (\ x__ y__
              -> x__ {_HTTPResponseProperties'ResponseHeadersEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPResponseProperties'ResponseHeadersEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPResponseProperties'ResponseHeadersEntry'value
           (\ x__ y__
              -> x__ {_HTTPResponseProperties'ResponseHeadersEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message HTTPResponseProperties'ResponseHeadersEntry where
  messageName _
    = Data.Text.pack
        "envoy.data.accesslog.v3.HTTPResponseProperties.ResponseHeadersEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC4ResponseHeadersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor HTTPResponseProperties'ResponseHeadersEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor HTTPResponseProperties'ResponseHeadersEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HTTPResponseProperties'ResponseHeadersEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_HTTPResponseProperties'ResponseHeadersEntry'_unknownFields = y__})
  defMessage
    = HTTPResponseProperties'ResponseHeadersEntry'_constructor
        {_HTTPResponseProperties'ResponseHeadersEntry'key = Data.ProtoLens.fieldDefault,
         _HTTPResponseProperties'ResponseHeadersEntry'value = Data.ProtoLens.fieldDefault,
         _HTTPResponseProperties'ResponseHeadersEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HTTPResponseProperties'ResponseHeadersEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser HTTPResponseProperties'ResponseHeadersEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
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
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ResponseHeadersEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
instance Control.DeepSeq.NFData HTTPResponseProperties'ResponseHeadersEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HTTPResponseProperties'ResponseHeadersEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HTTPResponseProperties'ResponseHeadersEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_HTTPResponseProperties'ResponseHeadersEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.key' @:: Lens' HTTPResponseProperties'ResponseTrailersEntry Data.Text.Text@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.value' @:: Lens' HTTPResponseProperties'ResponseTrailersEntry Data.Text.Text@ -}
data HTTPResponseProperties'ResponseTrailersEntry
  = HTTPResponseProperties'ResponseTrailersEntry'_constructor {_HTTPResponseProperties'ResponseTrailersEntry'key :: !Data.Text.Text,
                                                               _HTTPResponseProperties'ResponseTrailersEntry'value :: !Data.Text.Text,
                                                               _HTTPResponseProperties'ResponseTrailersEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HTTPResponseProperties'ResponseTrailersEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HTTPResponseProperties'ResponseTrailersEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPResponseProperties'ResponseTrailersEntry'key
           (\ x__ y__
              -> x__ {_HTTPResponseProperties'ResponseTrailersEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPResponseProperties'ResponseTrailersEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPResponseProperties'ResponseTrailersEntry'value
           (\ x__ y__
              -> x__
                   {_HTTPResponseProperties'ResponseTrailersEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message HTTPResponseProperties'ResponseTrailersEntry where
  messageName _
    = Data.Text.pack
        "envoy.data.accesslog.v3.HTTPResponseProperties.ResponseTrailersEntry"
  packedMessageDescriptor _
    = "\n\
      \\NAKResponseTrailersEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor HTTPResponseProperties'ResponseTrailersEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor HTTPResponseProperties'ResponseTrailersEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HTTPResponseProperties'ResponseTrailersEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_HTTPResponseProperties'ResponseTrailersEntry'_unknownFields = y__})
  defMessage
    = HTTPResponseProperties'ResponseTrailersEntry'_constructor
        {_HTTPResponseProperties'ResponseTrailersEntry'key = Data.ProtoLens.fieldDefault,
         _HTTPResponseProperties'ResponseTrailersEntry'value = Data.ProtoLens.fieldDefault,
         _HTTPResponseProperties'ResponseTrailersEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HTTPResponseProperties'ResponseTrailersEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser HTTPResponseProperties'ResponseTrailersEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
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
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ResponseTrailersEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
instance Control.DeepSeq.NFData HTTPResponseProperties'ResponseTrailersEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HTTPResponseProperties'ResponseTrailersEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HTTPResponseProperties'ResponseTrailersEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_HTTPResponseProperties'ResponseTrailersEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.failedLocalHealthcheck' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.noHealthyUpstream' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.upstreamRequestTimeout' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.localReset' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.upstreamRemoteReset' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.upstreamConnectionFailure' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.upstreamConnectionTermination' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.upstreamOverflow' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.noRouteFound' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.delayInjected' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.faultInjected' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.rateLimited' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.unauthorizedDetails' @:: Lens' ResponseFlags ResponseFlags'Unauthorized@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'unauthorizedDetails' @:: Lens' ResponseFlags (Prelude.Maybe ResponseFlags'Unauthorized)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.rateLimitServiceError' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.downstreamConnectionTermination' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.upstreamRetryLimitExceeded' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.streamIdleTimeout' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.invalidEnvoyRequestHeaders' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.downstreamProtocolError' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.upstreamMaxStreamDurationReached' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.responseFromCacheFilter' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.noFilterConfigFound' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.durationTimeout' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.upstreamProtocolError' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.noClusterFound' @:: Lens' ResponseFlags Prelude.Bool@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.overloadManager' @:: Lens' ResponseFlags Prelude.Bool@ -}
data ResponseFlags
  = ResponseFlags'_constructor {_ResponseFlags'failedLocalHealthcheck :: !Prelude.Bool,
                                _ResponseFlags'noHealthyUpstream :: !Prelude.Bool,
                                _ResponseFlags'upstreamRequestTimeout :: !Prelude.Bool,
                                _ResponseFlags'localReset :: !Prelude.Bool,
                                _ResponseFlags'upstreamRemoteReset :: !Prelude.Bool,
                                _ResponseFlags'upstreamConnectionFailure :: !Prelude.Bool,
                                _ResponseFlags'upstreamConnectionTermination :: !Prelude.Bool,
                                _ResponseFlags'upstreamOverflow :: !Prelude.Bool,
                                _ResponseFlags'noRouteFound :: !Prelude.Bool,
                                _ResponseFlags'delayInjected :: !Prelude.Bool,
                                _ResponseFlags'faultInjected :: !Prelude.Bool,
                                _ResponseFlags'rateLimited :: !Prelude.Bool,
                                _ResponseFlags'unauthorizedDetails :: !(Prelude.Maybe ResponseFlags'Unauthorized),
                                _ResponseFlags'rateLimitServiceError :: !Prelude.Bool,
                                _ResponseFlags'downstreamConnectionTermination :: !Prelude.Bool,
                                _ResponseFlags'upstreamRetryLimitExceeded :: !Prelude.Bool,
                                _ResponseFlags'streamIdleTimeout :: !Prelude.Bool,
                                _ResponseFlags'invalidEnvoyRequestHeaders :: !Prelude.Bool,
                                _ResponseFlags'downstreamProtocolError :: !Prelude.Bool,
                                _ResponseFlags'upstreamMaxStreamDurationReached :: !Prelude.Bool,
                                _ResponseFlags'responseFromCacheFilter :: !Prelude.Bool,
                                _ResponseFlags'noFilterConfigFound :: !Prelude.Bool,
                                _ResponseFlags'durationTimeout :: !Prelude.Bool,
                                _ResponseFlags'upstreamProtocolError :: !Prelude.Bool,
                                _ResponseFlags'noClusterFound :: !Prelude.Bool,
                                _ResponseFlags'overloadManager :: !Prelude.Bool,
                                _ResponseFlags'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseFlags where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseFlags "failedLocalHealthcheck" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'failedLocalHealthcheck
           (\ x__ y__ -> x__ {_ResponseFlags'failedLocalHealthcheck = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "noHealthyUpstream" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'noHealthyUpstream
           (\ x__ y__ -> x__ {_ResponseFlags'noHealthyUpstream = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "upstreamRequestTimeout" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'upstreamRequestTimeout
           (\ x__ y__ -> x__ {_ResponseFlags'upstreamRequestTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "localReset" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'localReset
           (\ x__ y__ -> x__ {_ResponseFlags'localReset = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "upstreamRemoteReset" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'upstreamRemoteReset
           (\ x__ y__ -> x__ {_ResponseFlags'upstreamRemoteReset = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "upstreamConnectionFailure" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'upstreamConnectionFailure
           (\ x__ y__
              -> x__ {_ResponseFlags'upstreamConnectionFailure = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "upstreamConnectionTermination" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'upstreamConnectionTermination
           (\ x__ y__
              -> x__ {_ResponseFlags'upstreamConnectionTermination = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "upstreamOverflow" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'upstreamOverflow
           (\ x__ y__ -> x__ {_ResponseFlags'upstreamOverflow = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "noRouteFound" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'noRouteFound
           (\ x__ y__ -> x__ {_ResponseFlags'noRouteFound = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "delayInjected" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'delayInjected
           (\ x__ y__ -> x__ {_ResponseFlags'delayInjected = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "faultInjected" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'faultInjected
           (\ x__ y__ -> x__ {_ResponseFlags'faultInjected = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "rateLimited" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'rateLimited
           (\ x__ y__ -> x__ {_ResponseFlags'rateLimited = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "unauthorizedDetails" ResponseFlags'Unauthorized where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'unauthorizedDetails
           (\ x__ y__ -> x__ {_ResponseFlags'unauthorizedDetails = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ResponseFlags "maybe'unauthorizedDetails" (Prelude.Maybe ResponseFlags'Unauthorized) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'unauthorizedDetails
           (\ x__ y__ -> x__ {_ResponseFlags'unauthorizedDetails = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "rateLimitServiceError" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'rateLimitServiceError
           (\ x__ y__ -> x__ {_ResponseFlags'rateLimitServiceError = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "downstreamConnectionTermination" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'downstreamConnectionTermination
           (\ x__ y__
              -> x__ {_ResponseFlags'downstreamConnectionTermination = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "upstreamRetryLimitExceeded" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'upstreamRetryLimitExceeded
           (\ x__ y__
              -> x__ {_ResponseFlags'upstreamRetryLimitExceeded = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "streamIdleTimeout" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'streamIdleTimeout
           (\ x__ y__ -> x__ {_ResponseFlags'streamIdleTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "invalidEnvoyRequestHeaders" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'invalidEnvoyRequestHeaders
           (\ x__ y__
              -> x__ {_ResponseFlags'invalidEnvoyRequestHeaders = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "downstreamProtocolError" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'downstreamProtocolError
           (\ x__ y__ -> x__ {_ResponseFlags'downstreamProtocolError = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "upstreamMaxStreamDurationReached" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'upstreamMaxStreamDurationReached
           (\ x__ y__
              -> x__ {_ResponseFlags'upstreamMaxStreamDurationReached = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "responseFromCacheFilter" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'responseFromCacheFilter
           (\ x__ y__ -> x__ {_ResponseFlags'responseFromCacheFilter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "noFilterConfigFound" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'noFilterConfigFound
           (\ x__ y__ -> x__ {_ResponseFlags'noFilterConfigFound = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "durationTimeout" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'durationTimeout
           (\ x__ y__ -> x__ {_ResponseFlags'durationTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "upstreamProtocolError" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'upstreamProtocolError
           (\ x__ y__ -> x__ {_ResponseFlags'upstreamProtocolError = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "noClusterFound" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'noClusterFound
           (\ x__ y__ -> x__ {_ResponseFlags'noClusterFound = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFlags "overloadManager" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'overloadManager
           (\ x__ y__ -> x__ {_ResponseFlags'overloadManager = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseFlags where
  messageName _
    = Data.Text.pack "envoy.data.accesslog.v3.ResponseFlags"
  packedMessageDescriptor _
    = "\n\
      \\rResponseFlags\DC28\n\
      \\CANfailed_local_healthcheck\CAN\SOH \SOH(\bR\SYNfailedLocalHealthcheck\DC2.\n\
      \\DC3no_healthy_upstream\CAN\STX \SOH(\bR\DC1noHealthyUpstream\DC28\n\
      \\CANupstream_request_timeout\CAN\ETX \SOH(\bR\SYNupstreamRequestTimeout\DC2\US\n\
      \\vlocal_reset\CAN\EOT \SOH(\bR\n\
      \localReset\DC22\n\
      \\NAKupstream_remote_reset\CAN\ENQ \SOH(\bR\DC3upstreamRemoteReset\DC2>\n\
      \\ESCupstream_connection_failure\CAN\ACK \SOH(\bR\EMupstreamConnectionFailure\DC2F\n\
      \\USupstream_connection_termination\CAN\a \SOH(\bR\GSupstreamConnectionTermination\DC2+\n\
      \\DC1upstream_overflow\CAN\b \SOH(\bR\DLEupstreamOverflow\DC2$\n\
      \\SOno_route_found\CAN\t \SOH(\bR\fnoRouteFound\DC2%\n\
      \\SOdelay_injected\CAN\n\
      \ \SOH(\bR\rdelayInjected\DC2%\n\
      \\SOfault_injected\CAN\v \SOH(\bR\rfaultInjected\DC2!\n\
      \\frate_limited\CAN\f \SOH(\bR\vrateLimited\DC2f\n\
      \\DC4unauthorized_details\CAN\r \SOH(\v23.envoy.data.accesslog.v3.ResponseFlags.UnauthorizedR\DC3unauthorizedDetails\DC27\n\
      \\CANrate_limit_service_error\CAN\SO \SOH(\bR\NAKrateLimitServiceError\DC2J\n\
      \!downstream_connection_termination\CAN\SI \SOH(\bR\USdownstreamConnectionTermination\DC2A\n\
      \\GSupstream_retry_limit_exceeded\CAN\DLE \SOH(\bR\SUBupstreamRetryLimitExceeded\DC2.\n\
      \\DC3stream_idle_timeout\CAN\DC1 \SOH(\bR\DC1streamIdleTimeout\DC2A\n\
      \\GSinvalid_envoy_request_headers\CAN\DC2 \SOH(\bR\SUBinvalidEnvoyRequestHeaders\DC2:\n\
      \\EMdownstream_protocol_error\CAN\DC3 \SOH(\bR\ETBdownstreamProtocolError\DC2N\n\
      \$upstream_max_stream_duration_reached\CAN\DC4 \SOH(\bR upstreamMaxStreamDurationReached\DC2;\n\
      \\SUBresponse_from_cache_filter\CAN\NAK \SOH(\bR\ETBresponseFromCacheFilter\DC23\n\
      \\SYNno_filter_config_found\CAN\SYN \SOH(\bR\DC3noFilterConfigFound\DC2)\n\
      \\DLEduration_timeout\CAN\ETB \SOH(\bR\SIdurationTimeout\DC26\n\
      \\ETBupstream_protocol_error\CAN\CAN \SOH(\bR\NAKupstreamProtocolError\DC2(\n\
      \\DLEno_cluster_found\CAN\EM \SOH(\bR\SOnoClusterFound\DC2)\n\
      \\DLEoverload_manager\CAN\SUB \SOH(\bR\SIoverloadManager\SUB\213\SOH\n\
      \\fUnauthorized\DC2R\n\
      \\ACKreason\CAN\SOH \SOH(\SO2:.envoy.data.accesslog.v3.ResponseFlags.Unauthorized.ReasonR\ACKreason\"6\n\
      \\ACKReason\DC2\SYN\n\
      \\DC2REASON_UNSPECIFIED\DLE\NUL\DC2\DC4\n\
      \\DLEEXTERNAL_SERVICE\DLE\SOH:9\154\197\136\RS4\n\
      \2envoy.data.accesslog.v2.ResponseFlags.Unauthorized:,\154\197\136\RS'\n\
      \%envoy.data.accesslog.v2.ResponseFlags"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        failedLocalHealthcheck__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failed_local_healthcheck"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"failedLocalHealthcheck")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        noHealthyUpstream__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no_healthy_upstream"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"noHealthyUpstream")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        upstreamRequestTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_request_timeout"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"upstreamRequestTimeout")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        localReset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local_reset"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"localReset")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        upstreamRemoteReset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_remote_reset"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"upstreamRemoteReset")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        upstreamConnectionFailure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_connection_failure"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"upstreamConnectionFailure")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        upstreamConnectionTermination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_connection_termination"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"upstreamConnectionTermination")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        upstreamOverflow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_overflow"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"upstreamOverflow")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        noRouteFound__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no_route_found"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"noRouteFound")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        delayInjected__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delay_injected"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delayInjected")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        faultInjected__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fault_injected"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"faultInjected")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        rateLimited__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rate_limited"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rateLimited")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        unauthorizedDetails__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unauthorized_details"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseFlags'Unauthorized)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unauthorizedDetails")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        rateLimitServiceError__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rate_limit_service_error"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rateLimitServiceError")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        downstreamConnectionTermination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "downstream_connection_termination"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"downstreamConnectionTermination")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        upstreamRetryLimitExceeded__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_retry_limit_exceeded"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"upstreamRetryLimitExceeded")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        streamIdleTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_idle_timeout"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"streamIdleTimeout")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        invalidEnvoyRequestHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "invalid_envoy_request_headers"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"invalidEnvoyRequestHeaders")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        downstreamProtocolError__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "downstream_protocol_error"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"downstreamProtocolError")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        upstreamMaxStreamDurationReached__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_max_stream_duration_reached"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"upstreamMaxStreamDurationReached")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        responseFromCacheFilter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_from_cache_filter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"responseFromCacheFilter")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        noFilterConfigFound__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no_filter_config_found"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"noFilterConfigFound")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        durationTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "duration_timeout"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"durationTimeout")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        upstreamProtocolError__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_protocol_error"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"upstreamProtocolError")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        noClusterFound__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no_cluster_found"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"noClusterFound")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
        overloadManager__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "overload_manager"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"overloadManager")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, failedLocalHealthcheck__field_descriptor),
           (Data.ProtoLens.Tag 2, noHealthyUpstream__field_descriptor),
           (Data.ProtoLens.Tag 3, upstreamRequestTimeout__field_descriptor),
           (Data.ProtoLens.Tag 4, localReset__field_descriptor),
           (Data.ProtoLens.Tag 5, upstreamRemoteReset__field_descriptor),
           (Data.ProtoLens.Tag 6, 
            upstreamConnectionFailure__field_descriptor),
           (Data.ProtoLens.Tag 7, 
            upstreamConnectionTermination__field_descriptor),
           (Data.ProtoLens.Tag 8, upstreamOverflow__field_descriptor),
           (Data.ProtoLens.Tag 9, noRouteFound__field_descriptor),
           (Data.ProtoLens.Tag 10, delayInjected__field_descriptor),
           (Data.ProtoLens.Tag 11, faultInjected__field_descriptor),
           (Data.ProtoLens.Tag 12, rateLimited__field_descriptor),
           (Data.ProtoLens.Tag 13, unauthorizedDetails__field_descriptor),
           (Data.ProtoLens.Tag 14, rateLimitServiceError__field_descriptor),
           (Data.ProtoLens.Tag 15, 
            downstreamConnectionTermination__field_descriptor),
           (Data.ProtoLens.Tag 16, 
            upstreamRetryLimitExceeded__field_descriptor),
           (Data.ProtoLens.Tag 17, streamIdleTimeout__field_descriptor),
           (Data.ProtoLens.Tag 18, 
            invalidEnvoyRequestHeaders__field_descriptor),
           (Data.ProtoLens.Tag 19, downstreamProtocolError__field_descriptor),
           (Data.ProtoLens.Tag 20, 
            upstreamMaxStreamDurationReached__field_descriptor),
           (Data.ProtoLens.Tag 21, responseFromCacheFilter__field_descriptor),
           (Data.ProtoLens.Tag 22, noFilterConfigFound__field_descriptor),
           (Data.ProtoLens.Tag 23, durationTimeout__field_descriptor),
           (Data.ProtoLens.Tag 24, upstreamProtocolError__field_descriptor),
           (Data.ProtoLens.Tag 25, noClusterFound__field_descriptor),
           (Data.ProtoLens.Tag 26, overloadManager__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseFlags'_unknownFields
        (\ x__ y__ -> x__ {_ResponseFlags'_unknownFields = y__})
  defMessage
    = ResponseFlags'_constructor
        {_ResponseFlags'failedLocalHealthcheck = Data.ProtoLens.fieldDefault,
         _ResponseFlags'noHealthyUpstream = Data.ProtoLens.fieldDefault,
         _ResponseFlags'upstreamRequestTimeout = Data.ProtoLens.fieldDefault,
         _ResponseFlags'localReset = Data.ProtoLens.fieldDefault,
         _ResponseFlags'upstreamRemoteReset = Data.ProtoLens.fieldDefault,
         _ResponseFlags'upstreamConnectionFailure = Data.ProtoLens.fieldDefault,
         _ResponseFlags'upstreamConnectionTermination = Data.ProtoLens.fieldDefault,
         _ResponseFlags'upstreamOverflow = Data.ProtoLens.fieldDefault,
         _ResponseFlags'noRouteFound = Data.ProtoLens.fieldDefault,
         _ResponseFlags'delayInjected = Data.ProtoLens.fieldDefault,
         _ResponseFlags'faultInjected = Data.ProtoLens.fieldDefault,
         _ResponseFlags'rateLimited = Data.ProtoLens.fieldDefault,
         _ResponseFlags'unauthorizedDetails = Prelude.Nothing,
         _ResponseFlags'rateLimitServiceError = Data.ProtoLens.fieldDefault,
         _ResponseFlags'downstreamConnectionTermination = Data.ProtoLens.fieldDefault,
         _ResponseFlags'upstreamRetryLimitExceeded = Data.ProtoLens.fieldDefault,
         _ResponseFlags'streamIdleTimeout = Data.ProtoLens.fieldDefault,
         _ResponseFlags'invalidEnvoyRequestHeaders = Data.ProtoLens.fieldDefault,
         _ResponseFlags'downstreamProtocolError = Data.ProtoLens.fieldDefault,
         _ResponseFlags'upstreamMaxStreamDurationReached = Data.ProtoLens.fieldDefault,
         _ResponseFlags'responseFromCacheFilter = Data.ProtoLens.fieldDefault,
         _ResponseFlags'noFilterConfigFound = Data.ProtoLens.fieldDefault,
         _ResponseFlags'durationTimeout = Data.ProtoLens.fieldDefault,
         _ResponseFlags'upstreamProtocolError = Data.ProtoLens.fieldDefault,
         _ResponseFlags'noClusterFound = Data.ProtoLens.fieldDefault,
         _ResponseFlags'overloadManager = Data.ProtoLens.fieldDefault,
         _ResponseFlags'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseFlags -> Data.ProtoLens.Encoding.Bytes.Parser ResponseFlags
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
                                       "failed_local_healthcheck"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"failedLocalHealthcheck") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "no_healthy_upstream"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"noHealthyUpstream") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "upstream_request_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamRequestTimeout") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "local_reset"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"localReset") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "upstream_remote_reset"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamRemoteReset") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "upstream_connection_failure"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamConnectionFailure") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "upstream_connection_termination"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamConnectionTermination")
                                     y
                                     x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "upstream_overflow"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamOverflow") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "no_route_found"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"noRouteFound") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "delay_injected"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delayInjected") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "fault_injected"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"faultInjected") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "rate_limited"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rateLimited") y x)
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "unauthorized_details"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"unauthorizedDetails") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "rate_limit_service_error"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rateLimitServiceError") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "downstream_connection_termination"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"downstreamConnectionTermination")
                                     y
                                     x)
                        128
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "upstream_retry_limit_exceeded"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamRetryLimitExceeded") y x)
                        136
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "stream_idle_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"streamIdleTimeout") y x)
                        144
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "invalid_envoy_request_headers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"invalidEnvoyRequestHeaders") y x)
                        152
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "downstream_protocol_error"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"downstreamProtocolError") y x)
                        160
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "upstream_max_stream_duration_reached"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"upstreamMaxStreamDurationReached")
                                     y
                                     x)
                        168
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "response_from_cache_filter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseFromCacheFilter") y x)
                        176
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "no_filter_config_found"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"noFilterConfigFound") y x)
                        184
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "duration_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"durationTimeout") y x)
                        192
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "upstream_protocol_error"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamProtocolError") y x)
                        200
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "no_cluster_found"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"noClusterFound") y x)
                        208
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "overload_manager"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"overloadManager") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ResponseFlags"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"failedLocalHealthcheck") _x
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
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"noHealthyUpstream") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt
                            (\ b -> if b then 1 else 0)
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"upstreamRequestTimeout") _x
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
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"localReset") _x
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
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"upstreamRemoteReset") _x
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
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"upstreamConnectionFailure") _x
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
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field
                                           @"upstreamConnectionTermination")
                                        _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (\ b -> if b then 1 else 0)
                                           _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"upstreamOverflow") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (\ b -> if b then 1 else 0)
                                              _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"noRouteFound") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (\ b -> if b then 1 else 0)
                                                 _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"delayInjected") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                 ((Prelude..)
                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (\ b -> if b then 1 else 0)
                                                    _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"faultInjected") _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                    ((Prelude..)
                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (\ b -> if b then 1 else 0)
                                                       _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field @"rateLimited")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (\ b -> if b then 1 else 0)
                                                          _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'unauthorizedDetails")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
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
                                                 ((Data.Monoid.<>)
                                                    (let
                                                       _v
                                                         = Lens.Family2.view
                                                             (Data.ProtoLens.Field.field
                                                                @"rateLimitServiceError")
                                                             _x
                                                     in
                                                       if (Prelude.==)
                                                            _v Data.ProtoLens.fieldDefault then
                                                           Data.Monoid.mempty
                                                       else
                                                           (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                112)
                                                             ((Prelude..)
                                                                Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (\ b -> if b then 1 else 0)
                                                                _v))
                                                    ((Data.Monoid.<>)
                                                       (let
                                                          _v
                                                            = Lens.Family2.view
                                                                (Data.ProtoLens.Field.field
                                                                   @"downstreamConnectionTermination")
                                                                _x
                                                        in
                                                          if (Prelude.==)
                                                               _v Data.ProtoLens.fieldDefault then
                                                              Data.Monoid.mempty
                                                          else
                                                              (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   120)
                                                                ((Prelude..)
                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (\ b -> if b then 1 else 0)
                                                                   _v))
                                                       ((Data.Monoid.<>)
                                                          (let
                                                             _v
                                                               = Lens.Family2.view
                                                                   (Data.ProtoLens.Field.field
                                                                      @"upstreamRetryLimitExceeded")
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
                                                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (\ b -> if b then 1 else 0)
                                                                      _v))
                                                          ((Data.Monoid.<>)
                                                             (let
                                                                _v
                                                                  = Lens.Family2.view
                                                                      (Data.ProtoLens.Field.field
                                                                         @"streamIdleTimeout")
                                                                      _x
                                                              in
                                                                if (Prelude.==)
                                                                     _v
                                                                     Data.ProtoLens.fieldDefault then
                                                                    Data.Monoid.mempty
                                                                else
                                                                    (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         136)
                                                                      ((Prelude..)
                                                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         (\ b -> if b then 1 else 0)
                                                                         _v))
                                                             ((Data.Monoid.<>)
                                                                (let
                                                                   _v
                                                                     = Lens.Family2.view
                                                                         (Data.ProtoLens.Field.field
                                                                            @"invalidEnvoyRequestHeaders")
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
                                                                               @"downstreamProtocolError")
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
                                                                                  @"upstreamMaxStreamDurationReached")
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
                                                                         (let
                                                                            _v
                                                                              = Lens.Family2.view
                                                                                  (Data.ProtoLens.Field.field
                                                                                     @"responseFromCacheFilter")
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
                                                                                        @"noFilterConfigFound")
                                                                                     _x
                                                                             in
                                                                               if (Prelude.==)
                                                                                    _v
                                                                                    Data.ProtoLens.fieldDefault then
                                                                                   Data.Monoid.mempty
                                                                               else
                                                                                   (Data.Monoid.<>)
                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                        176)
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
                                                                                           @"durationTimeout")
                                                                                        _x
                                                                                in
                                                                                  if (Prelude.==)
                                                                                       _v
                                                                                       Data.ProtoLens.fieldDefault then
                                                                                      Data.Monoid.mempty
                                                                                  else
                                                                                      (Data.Monoid.<>)
                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                           184)
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
                                                                                              @"upstreamProtocolError")
                                                                                           _x
                                                                                   in
                                                                                     if (Prelude.==)
                                                                                          _v
                                                                                          Data.ProtoLens.fieldDefault then
                                                                                         Data.Monoid.mempty
                                                                                     else
                                                                                         (Data.Monoid.<>)
                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                              192)
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
                                                                                                 @"noClusterFound")
                                                                                              _x
                                                                                      in
                                                                                        if (Prelude.==)
                                                                                             _v
                                                                                             Data.ProtoLens.fieldDefault then
                                                                                            Data.Monoid.mempty
                                                                                        else
                                                                                            (Data.Monoid.<>)
                                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                 200)
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
                                                                                                    @"overloadManager")
                                                                                                 _x
                                                                                         in
                                                                                           if (Prelude.==)
                                                                                                _v
                                                                                                Data.ProtoLens.fieldDefault then
                                                                                               Data.Monoid.mempty
                                                                                           else
                                                                                               (Data.Monoid.<>)
                                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                    208)
                                                                                                 ((Prelude..)
                                                                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                    (\ b
                                                                                                       -> if b then
                                                                                                              1
                                                                                                          else
                                                                                                              0)
                                                                                                    _v))
                                                                                        (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                                           (Lens.Family2.view
                                                                                              Data.ProtoLens.unknownFields
                                                                                              _x)))))))))))))))))))))))))))
instance Control.DeepSeq.NFData ResponseFlags where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseFlags'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResponseFlags'failedLocalHealthcheck x__)
                (Control.DeepSeq.deepseq
                   (_ResponseFlags'noHealthyUpstream x__)
                   (Control.DeepSeq.deepseq
                      (_ResponseFlags'upstreamRequestTimeout x__)
                      (Control.DeepSeq.deepseq
                         (_ResponseFlags'localReset x__)
                         (Control.DeepSeq.deepseq
                            (_ResponseFlags'upstreamRemoteReset x__)
                            (Control.DeepSeq.deepseq
                               (_ResponseFlags'upstreamConnectionFailure x__)
                               (Control.DeepSeq.deepseq
                                  (_ResponseFlags'upstreamConnectionTermination x__)
                                  (Control.DeepSeq.deepseq
                                     (_ResponseFlags'upstreamOverflow x__)
                                     (Control.DeepSeq.deepseq
                                        (_ResponseFlags'noRouteFound x__)
                                        (Control.DeepSeq.deepseq
                                           (_ResponseFlags'delayInjected x__)
                                           (Control.DeepSeq.deepseq
                                              (_ResponseFlags'faultInjected x__)
                                              (Control.DeepSeq.deepseq
                                                 (_ResponseFlags'rateLimited x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_ResponseFlags'unauthorizedDetails x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_ResponseFlags'rateLimitServiceError x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_ResponseFlags'downstreamConnectionTermination
                                                             x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_ResponseFlags'upstreamRetryLimitExceeded
                                                                x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_ResponseFlags'streamIdleTimeout
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_ResponseFlags'invalidEnvoyRequestHeaders
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_ResponseFlags'downstreamProtocolError
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_ResponseFlags'upstreamMaxStreamDurationReached
                                                                            x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_ResponseFlags'responseFromCacheFilter
                                                                               x__)
                                                                            (Control.DeepSeq.deepseq
                                                                               (_ResponseFlags'noFilterConfigFound
                                                                                  x__)
                                                                               (Control.DeepSeq.deepseq
                                                                                  (_ResponseFlags'durationTimeout
                                                                                     x__)
                                                                                  (Control.DeepSeq.deepseq
                                                                                     (_ResponseFlags'upstreamProtocolError
                                                                                        x__)
                                                                                     (Control.DeepSeq.deepseq
                                                                                        (_ResponseFlags'noClusterFound
                                                                                           x__)
                                                                                        (Control.DeepSeq.deepseq
                                                                                           (_ResponseFlags'overloadManager
                                                                                              x__)
                                                                                           ()))))))))))))))))))))))))))
{- | Fields :
     
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.reason' @:: Lens' ResponseFlags'Unauthorized ResponseFlags'Unauthorized'Reason@ -}
data ResponseFlags'Unauthorized
  = ResponseFlags'Unauthorized'_constructor {_ResponseFlags'Unauthorized'reason :: !ResponseFlags'Unauthorized'Reason,
                                             _ResponseFlags'Unauthorized'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseFlags'Unauthorized where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseFlags'Unauthorized "reason" ResponseFlags'Unauthorized'Reason where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFlags'Unauthorized'reason
           (\ x__ y__ -> x__ {_ResponseFlags'Unauthorized'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseFlags'Unauthorized where
  messageName _
    = Data.Text.pack
        "envoy.data.accesslog.v3.ResponseFlags.Unauthorized"
  packedMessageDescriptor _
    = "\n\
      \\fUnauthorized\DC2R\n\
      \\ACKreason\CAN\SOH \SOH(\SO2:.envoy.data.accesslog.v3.ResponseFlags.Unauthorized.ReasonR\ACKreason\"6\n\
      \\ACKReason\DC2\SYN\n\
      \\DC2REASON_UNSPECIFIED\DLE\NUL\DC2\DC4\n\
      \\DLEEXTERNAL_SERVICE\DLE\SOH:9\154\197\136\RS4\n\
      \2envoy.data.accesslog.v2.ResponseFlags.Unauthorized"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseFlags'Unauthorized'Reason)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor ResponseFlags'Unauthorized
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseFlags'Unauthorized'_unknownFields
        (\ x__ y__
           -> x__ {_ResponseFlags'Unauthorized'_unknownFields = y__})
  defMessage
    = ResponseFlags'Unauthorized'_constructor
        {_ResponseFlags'Unauthorized'reason = Data.ProtoLens.fieldDefault,
         _ResponseFlags'Unauthorized'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseFlags'Unauthorized
          -> Data.ProtoLens.Encoding.Bytes.Parser ResponseFlags'Unauthorized
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "reason"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Unauthorized"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"reason") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseFlags'Unauthorized where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseFlags'Unauthorized'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResponseFlags'Unauthorized'reason x__) ())
newtype ResponseFlags'Unauthorized'Reason'UnrecognizedValue
  = ResponseFlags'Unauthorized'Reason'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ResponseFlags'Unauthorized'Reason
  = ResponseFlags'Unauthorized'REASON_UNSPECIFIED |
    ResponseFlags'Unauthorized'EXTERNAL_SERVICE |
    ResponseFlags'Unauthorized'Reason'Unrecognized !ResponseFlags'Unauthorized'Reason'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ResponseFlags'Unauthorized'Reason where
  maybeToEnum 0
    = Prelude.Just ResponseFlags'Unauthorized'REASON_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just ResponseFlags'Unauthorized'EXTERNAL_SERVICE
  maybeToEnum k
    = Prelude.Just
        (ResponseFlags'Unauthorized'Reason'Unrecognized
           (ResponseFlags'Unauthorized'Reason'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum ResponseFlags'Unauthorized'REASON_UNSPECIFIED
    = "REASON_UNSPECIFIED"
  showEnum ResponseFlags'Unauthorized'EXTERNAL_SERVICE
    = "EXTERNAL_SERVICE"
  showEnum
    (ResponseFlags'Unauthorized'Reason'Unrecognized (ResponseFlags'Unauthorized'Reason'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "REASON_UNSPECIFIED"
    = Prelude.Just ResponseFlags'Unauthorized'REASON_UNSPECIFIED
    | (Prelude.==) k "EXTERNAL_SERVICE"
    = Prelude.Just ResponseFlags'Unauthorized'EXTERNAL_SERVICE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ResponseFlags'Unauthorized'Reason where
  minBound = ResponseFlags'Unauthorized'REASON_UNSPECIFIED
  maxBound = ResponseFlags'Unauthorized'EXTERNAL_SERVICE
instance Prelude.Enum ResponseFlags'Unauthorized'Reason where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Reason: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum ResponseFlags'Unauthorized'REASON_UNSPECIFIED = 0
  fromEnum ResponseFlags'Unauthorized'EXTERNAL_SERVICE = 1
  fromEnum
    (ResponseFlags'Unauthorized'Reason'Unrecognized (ResponseFlags'Unauthorized'Reason'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ResponseFlags'Unauthorized'EXTERNAL_SERVICE
    = Prelude.error
        "ResponseFlags'Unauthorized'Reason.succ: bad argument ResponseFlags'Unauthorized'EXTERNAL_SERVICE. This value would be out of bounds."
  succ ResponseFlags'Unauthorized'REASON_UNSPECIFIED
    = ResponseFlags'Unauthorized'EXTERNAL_SERVICE
  succ (ResponseFlags'Unauthorized'Reason'Unrecognized _)
    = Prelude.error
        "ResponseFlags'Unauthorized'Reason.succ: bad argument: unrecognized value"
  pred ResponseFlags'Unauthorized'REASON_UNSPECIFIED
    = Prelude.error
        "ResponseFlags'Unauthorized'Reason.pred: bad argument ResponseFlags'Unauthorized'REASON_UNSPECIFIED. This value would be out of bounds."
  pred ResponseFlags'Unauthorized'EXTERNAL_SERVICE
    = ResponseFlags'Unauthorized'REASON_UNSPECIFIED
  pred (ResponseFlags'Unauthorized'Reason'Unrecognized _)
    = Prelude.error
        "ResponseFlags'Unauthorized'Reason.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ResponseFlags'Unauthorized'Reason where
  fieldDefault = ResponseFlags'Unauthorized'REASON_UNSPECIFIED
instance Control.DeepSeq.NFData ResponseFlags'Unauthorized'Reason where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.commonProperties' @:: Lens' TCPAccessLogEntry AccessLogCommon@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'commonProperties' @:: Lens' TCPAccessLogEntry (Prelude.Maybe AccessLogCommon)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.connectionProperties' @:: Lens' TCPAccessLogEntry ConnectionProperties@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'connectionProperties' @:: Lens' TCPAccessLogEntry (Prelude.Maybe ConnectionProperties)@ -}
data TCPAccessLogEntry
  = TCPAccessLogEntry'_constructor {_TCPAccessLogEntry'commonProperties :: !(Prelude.Maybe AccessLogCommon),
                                    _TCPAccessLogEntry'connectionProperties :: !(Prelude.Maybe ConnectionProperties),
                                    _TCPAccessLogEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TCPAccessLogEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TCPAccessLogEntry "commonProperties" AccessLogCommon where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TCPAccessLogEntry'commonProperties
           (\ x__ y__ -> x__ {_TCPAccessLogEntry'commonProperties = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TCPAccessLogEntry "maybe'commonProperties" (Prelude.Maybe AccessLogCommon) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TCPAccessLogEntry'commonProperties
           (\ x__ y__ -> x__ {_TCPAccessLogEntry'commonProperties = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TCPAccessLogEntry "connectionProperties" ConnectionProperties where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TCPAccessLogEntry'connectionProperties
           (\ x__ y__ -> x__ {_TCPAccessLogEntry'connectionProperties = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TCPAccessLogEntry "maybe'connectionProperties" (Prelude.Maybe ConnectionProperties) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TCPAccessLogEntry'connectionProperties
           (\ x__ y__ -> x__ {_TCPAccessLogEntry'connectionProperties = y__}))
        Prelude.id
instance Data.ProtoLens.Message TCPAccessLogEntry where
  messageName _
    = Data.Text.pack "envoy.data.accesslog.v3.TCPAccessLogEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC1TCPAccessLogEntry\DC2U\n\
      \\DC1common_properties\CAN\SOH \SOH(\v2(.envoy.data.accesslog.v3.AccessLogCommonR\DLEcommonProperties\DC2b\n\
      \\NAKconnection_properties\CAN\STX \SOH(\v2-.envoy.data.accesslog.v3.ConnectionPropertiesR\DC4connectionProperties:0\154\197\136\RS+\n\
      \)envoy.data.accesslog.v2.TCPAccessLogEntry"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commonProperties__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_properties"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AccessLogCommon)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commonProperties")) ::
              Data.ProtoLens.FieldDescriptor TCPAccessLogEntry
        connectionProperties__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "connection_properties"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConnectionProperties)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'connectionProperties")) ::
              Data.ProtoLens.FieldDescriptor TCPAccessLogEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commonProperties__field_descriptor),
           (Data.ProtoLens.Tag 2, connectionProperties__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TCPAccessLogEntry'_unknownFields
        (\ x__ y__ -> x__ {_TCPAccessLogEntry'_unknownFields = y__})
  defMessage
    = TCPAccessLogEntry'_constructor
        {_TCPAccessLogEntry'commonProperties = Prelude.Nothing,
         _TCPAccessLogEntry'connectionProperties = Prelude.Nothing,
         _TCPAccessLogEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TCPAccessLogEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser TCPAccessLogEntry
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
                                       "common_properties"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commonProperties") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "connection_properties"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"connectionProperties") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TCPAccessLogEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'commonProperties") _x
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
                       (Data.ProtoLens.Field.field @"maybe'connectionProperties") _x
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
instance Control.DeepSeq.NFData TCPAccessLogEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TCPAccessLogEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TCPAccessLogEntry'commonProperties x__)
                (Control.DeepSeq.deepseq
                   (_TCPAccessLogEntry'connectionProperties x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.tlsVersion' @:: Lens' TLSProperties TLSProperties'TLSVersion@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.tlsCipherSuite' @:: Lens' TLSProperties Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'tlsCipherSuite' @:: Lens' TLSProperties (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.tlsSniHostname' @:: Lens' TLSProperties Data.Text.Text@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.localCertificateProperties' @:: Lens' TLSProperties TLSProperties'CertificateProperties@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'localCertificateProperties' @:: Lens' TLSProperties (Prelude.Maybe TLSProperties'CertificateProperties)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.peerCertificateProperties' @:: Lens' TLSProperties TLSProperties'CertificateProperties@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'peerCertificateProperties' @:: Lens' TLSProperties (Prelude.Maybe TLSProperties'CertificateProperties)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.tlsSessionId' @:: Lens' TLSProperties Data.Text.Text@ -}
data TLSProperties
  = TLSProperties'_constructor {_TLSProperties'tlsVersion :: !TLSProperties'TLSVersion,
                                _TLSProperties'tlsCipherSuite :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                _TLSProperties'tlsSniHostname :: !Data.Text.Text,
                                _TLSProperties'localCertificateProperties :: !(Prelude.Maybe TLSProperties'CertificateProperties),
                                _TLSProperties'peerCertificateProperties :: !(Prelude.Maybe TLSProperties'CertificateProperties),
                                _TLSProperties'tlsSessionId :: !Data.Text.Text,
                                _TLSProperties'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TLSProperties where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TLSProperties "tlsVersion" TLSProperties'TLSVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TLSProperties'tlsVersion
           (\ x__ y__ -> x__ {_TLSProperties'tlsVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TLSProperties "tlsCipherSuite" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TLSProperties'tlsCipherSuite
           (\ x__ y__ -> x__ {_TLSProperties'tlsCipherSuite = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TLSProperties "maybe'tlsCipherSuite" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TLSProperties'tlsCipherSuite
           (\ x__ y__ -> x__ {_TLSProperties'tlsCipherSuite = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TLSProperties "tlsSniHostname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TLSProperties'tlsSniHostname
           (\ x__ y__ -> x__ {_TLSProperties'tlsSniHostname = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TLSProperties "localCertificateProperties" TLSProperties'CertificateProperties where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TLSProperties'localCertificateProperties
           (\ x__ y__
              -> x__ {_TLSProperties'localCertificateProperties = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TLSProperties "maybe'localCertificateProperties" (Prelude.Maybe TLSProperties'CertificateProperties) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TLSProperties'localCertificateProperties
           (\ x__ y__
              -> x__ {_TLSProperties'localCertificateProperties = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TLSProperties "peerCertificateProperties" TLSProperties'CertificateProperties where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TLSProperties'peerCertificateProperties
           (\ x__ y__
              -> x__ {_TLSProperties'peerCertificateProperties = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TLSProperties "maybe'peerCertificateProperties" (Prelude.Maybe TLSProperties'CertificateProperties) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TLSProperties'peerCertificateProperties
           (\ x__ y__
              -> x__ {_TLSProperties'peerCertificateProperties = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TLSProperties "tlsSessionId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TLSProperties'tlsSessionId
           (\ x__ y__ -> x__ {_TLSProperties'tlsSessionId = y__}))
        Prelude.id
instance Data.ProtoLens.Message TLSProperties where
  messageName _
    = Data.Text.pack "envoy.data.accesslog.v3.TLSProperties"
  packedMessageDescriptor _
    = "\n\
      \\rTLSProperties\DC2R\n\
      \\vtls_version\CAN\SOH \SOH(\SO21.envoy.data.accesslog.v3.TLSProperties.TLSVersionR\n\
      \tlsVersion\DC2F\n\
      \\DLEtls_cipher_suite\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOtlsCipherSuite\DC2(\n\
      \\DLEtls_sni_hostname\CAN\ETX \SOH(\tR\SOtlsSniHostname\DC2~\n\
      \\FSlocal_certificate_properties\CAN\EOT \SOH(\v2<.envoy.data.accesslog.v3.TLSProperties.CertificatePropertiesR\SUBlocalCertificateProperties\DC2|\n\
      \\ESCpeer_certificate_properties\CAN\ENQ \SOH(\v2<.envoy.data.accesslog.v3.TLSProperties.CertificatePropertiesR\EMpeerCertificateProperties\DC2$\n\
      \\SOtls_session_id\CAN\ACK \SOH(\tR\ftlsSessionId\SUB\129\ETX\n\
      \\NAKCertificateProperties\DC2u\n\
      \\DLEsubject_alt_name\CAN\SOH \ETX(\v2K.envoy.data.accesslog.v3.TLSProperties.CertificateProperties.SubjectAltNameR\SOsubjectAltName\DC2\CAN\n\
      \\asubject\CAN\STX \SOH(\tR\asubject\SUB\146\SOH\n\
      \\SOSubjectAltName\DC2\DC2\n\
      \\ETXuri\CAN\SOH \SOH(\tH\NULR\ETXuri\DC2\DC2\n\
      \\ETXdns\CAN\STX \SOH(\tH\NULR\ETXdnsB\ENQ\n\
      \\ETXsan:Q\154\197\136\RSL\n\
      \Jenvoy.data.accesslog.v2.TLSProperties.CertificateProperties.SubjectAltName:B\154\197\136\RS=\n\
      \;envoy.data.accesslog.v2.TLSProperties.CertificateProperties\"W\n\
      \\n\
      \TLSVersion\DC2\ETB\n\
      \\DC3VERSION_UNSPECIFIED\DLE\NUL\DC2\t\n\
      \\ENQTLSv1\DLE\SOH\DC2\v\n\
      \\aTLSv1_1\DLE\STX\DC2\v\n\
      \\aTLSv1_2\DLE\ETX\DC2\v\n\
      \\aTLSv1_3\DLE\EOT:,\154\197\136\RS'\n\
      \%envoy.data.accesslog.v2.TLSProperties"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tlsVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tls_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor TLSProperties'TLSVersion)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"tlsVersion")) ::
              Data.ProtoLens.FieldDescriptor TLSProperties
        tlsCipherSuite__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tls_cipher_suite"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tlsCipherSuite")) ::
              Data.ProtoLens.FieldDescriptor TLSProperties
        tlsSniHostname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tls_sni_hostname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"tlsSniHostname")) ::
              Data.ProtoLens.FieldDescriptor TLSProperties
        localCertificateProperties__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local_certificate_properties"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TLSProperties'CertificateProperties)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'localCertificateProperties")) ::
              Data.ProtoLens.FieldDescriptor TLSProperties
        peerCertificateProperties__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "peer_certificate_properties"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TLSProperties'CertificateProperties)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'peerCertificateProperties")) ::
              Data.ProtoLens.FieldDescriptor TLSProperties
        tlsSessionId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tls_session_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"tlsSessionId")) ::
              Data.ProtoLens.FieldDescriptor TLSProperties
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tlsVersion__field_descriptor),
           (Data.ProtoLens.Tag 2, tlsCipherSuite__field_descriptor),
           (Data.ProtoLens.Tag 3, tlsSniHostname__field_descriptor),
           (Data.ProtoLens.Tag 4, 
            localCertificateProperties__field_descriptor),
           (Data.ProtoLens.Tag 5, 
            peerCertificateProperties__field_descriptor),
           (Data.ProtoLens.Tag 6, tlsSessionId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TLSProperties'_unknownFields
        (\ x__ y__ -> x__ {_TLSProperties'_unknownFields = y__})
  defMessage
    = TLSProperties'_constructor
        {_TLSProperties'tlsVersion = Data.ProtoLens.fieldDefault,
         _TLSProperties'tlsCipherSuite = Prelude.Nothing,
         _TLSProperties'tlsSniHostname = Data.ProtoLens.fieldDefault,
         _TLSProperties'localCertificateProperties = Prelude.Nothing,
         _TLSProperties'peerCertificateProperties = Prelude.Nothing,
         _TLSProperties'tlsSessionId = Data.ProtoLens.fieldDefault,
         _TLSProperties'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TLSProperties -> Data.ProtoLens.Encoding.Bytes.Parser TLSProperties
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "tls_version"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tlsVersion") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tls_cipher_suite"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tlsCipherSuite") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "tls_sni_hostname"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tlsSniHostname") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "local_certificate_properties"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"localCertificateProperties") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "peer_certificate_properties"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"peerCertificateProperties") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "tls_session_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tlsSessionId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TLSProperties"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"tlsVersion") _x
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'tlsCipherSuite") _x
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
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"tlsSniHostname") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                             (Data.ProtoLens.Field.field @"maybe'localCertificateProperties") _x
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
                                (Data.ProtoLens.Field.field @"maybe'peerCertificateProperties") _x
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
                               _v
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"tlsSessionId") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8
                                        _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData TLSProperties where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TLSProperties'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TLSProperties'tlsVersion x__)
                (Control.DeepSeq.deepseq
                   (_TLSProperties'tlsCipherSuite x__)
                   (Control.DeepSeq.deepseq
                      (_TLSProperties'tlsSniHostname x__)
                      (Control.DeepSeq.deepseq
                         (_TLSProperties'localCertificateProperties x__)
                         (Control.DeepSeq.deepseq
                            (_TLSProperties'peerCertificateProperties x__)
                            (Control.DeepSeq.deepseq (_TLSProperties'tlsSessionId x__) ()))))))
{- | Fields :
     
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.subjectAltName' @:: Lens' TLSProperties'CertificateProperties [TLSProperties'CertificateProperties'SubjectAltName]@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.vec'subjectAltName' @:: Lens' TLSProperties'CertificateProperties (Data.Vector.Vector TLSProperties'CertificateProperties'SubjectAltName)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.subject' @:: Lens' TLSProperties'CertificateProperties Data.Text.Text@ -}
data TLSProperties'CertificateProperties
  = TLSProperties'CertificateProperties'_constructor {_TLSProperties'CertificateProperties'subjectAltName :: !(Data.Vector.Vector TLSProperties'CertificateProperties'SubjectAltName),
                                                      _TLSProperties'CertificateProperties'subject :: !Data.Text.Text,
                                                      _TLSProperties'CertificateProperties'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TLSProperties'CertificateProperties where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TLSProperties'CertificateProperties "subjectAltName" [TLSProperties'CertificateProperties'SubjectAltName] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TLSProperties'CertificateProperties'subjectAltName
           (\ x__ y__
              -> x__
                   {_TLSProperties'CertificateProperties'subjectAltName = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TLSProperties'CertificateProperties "vec'subjectAltName" (Data.Vector.Vector TLSProperties'CertificateProperties'SubjectAltName) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TLSProperties'CertificateProperties'subjectAltName
           (\ x__ y__
              -> x__
                   {_TLSProperties'CertificateProperties'subjectAltName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TLSProperties'CertificateProperties "subject" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TLSProperties'CertificateProperties'subject
           (\ x__ y__
              -> x__ {_TLSProperties'CertificateProperties'subject = y__}))
        Prelude.id
instance Data.ProtoLens.Message TLSProperties'CertificateProperties where
  messageName _
    = Data.Text.pack
        "envoy.data.accesslog.v3.TLSProperties.CertificateProperties"
  packedMessageDescriptor _
    = "\n\
      \\NAKCertificateProperties\DC2u\n\
      \\DLEsubject_alt_name\CAN\SOH \ETX(\v2K.envoy.data.accesslog.v3.TLSProperties.CertificateProperties.SubjectAltNameR\SOsubjectAltName\DC2\CAN\n\
      \\asubject\CAN\STX \SOH(\tR\asubject\SUB\146\SOH\n\
      \\SOSubjectAltName\DC2\DC2\n\
      \\ETXuri\CAN\SOH \SOH(\tH\NULR\ETXuri\DC2\DC2\n\
      \\ETXdns\CAN\STX \SOH(\tH\NULR\ETXdnsB\ENQ\n\
      \\ETXsan:Q\154\197\136\RSL\n\
      \Jenvoy.data.accesslog.v2.TLSProperties.CertificateProperties.SubjectAltName:B\154\197\136\RS=\n\
      \;envoy.data.accesslog.v2.TLSProperties.CertificateProperties"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        subjectAltName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "subject_alt_name"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TLSProperties'CertificateProperties'SubjectAltName)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"subjectAltName")) ::
              Data.ProtoLens.FieldDescriptor TLSProperties'CertificateProperties
        subject__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "subject"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"subject")) ::
              Data.ProtoLens.FieldDescriptor TLSProperties'CertificateProperties
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, subjectAltName__field_descriptor),
           (Data.ProtoLens.Tag 2, subject__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TLSProperties'CertificateProperties'_unknownFields
        (\ x__ y__
           -> x__ {_TLSProperties'CertificateProperties'_unknownFields = y__})
  defMessage
    = TLSProperties'CertificateProperties'_constructor
        {_TLSProperties'CertificateProperties'subjectAltName = Data.Vector.Generic.empty,
         _TLSProperties'CertificateProperties'subject = Data.ProtoLens.fieldDefault,
         _TLSProperties'CertificateProperties'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TLSProperties'CertificateProperties
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld TLSProperties'CertificateProperties'SubjectAltName
             -> Data.ProtoLens.Encoding.Bytes.Parser TLSProperties'CertificateProperties
        loop x mutable'subjectAltName
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'subjectAltName <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'subjectAltName)
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
                              (Data.ProtoLens.Field.field @"vec'subjectAltName")
                              frozen'subjectAltName
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
                                        "subject_alt_name"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'subjectAltName y)
                                loop x v
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
                                       "subject"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"subject") y x)
                                  mutable'subjectAltName
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'subjectAltName
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'subjectAltName <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'subjectAltName)
          "CertificateProperties"
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
                   (Data.ProtoLens.Field.field @"vec'subjectAltName") _x))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"subject") _x
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
instance Control.DeepSeq.NFData TLSProperties'CertificateProperties where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TLSProperties'CertificateProperties'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TLSProperties'CertificateProperties'subjectAltName x__)
                (Control.DeepSeq.deepseq
                   (_TLSProperties'CertificateProperties'subject x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'san' @:: Lens' TLSProperties'CertificateProperties'SubjectAltName (Prelude.Maybe TLSProperties'CertificateProperties'SubjectAltName'San)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'uri' @:: Lens' TLSProperties'CertificateProperties'SubjectAltName (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.uri' @:: Lens' TLSProperties'CertificateProperties'SubjectAltName Data.Text.Text@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.maybe'dns' @:: Lens' TLSProperties'CertificateProperties'SubjectAltName (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields.dns' @:: Lens' TLSProperties'CertificateProperties'SubjectAltName Data.Text.Text@ -}
data TLSProperties'CertificateProperties'SubjectAltName
  = TLSProperties'CertificateProperties'SubjectAltName'_constructor {_TLSProperties'CertificateProperties'SubjectAltName'san :: !(Prelude.Maybe TLSProperties'CertificateProperties'SubjectAltName'San),
                                                                     _TLSProperties'CertificateProperties'SubjectAltName'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TLSProperties'CertificateProperties'SubjectAltName where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data TLSProperties'CertificateProperties'SubjectAltName'San
  = TLSProperties'CertificateProperties'SubjectAltName'Uri !Data.Text.Text |
    TLSProperties'CertificateProperties'SubjectAltName'Dns !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField TLSProperties'CertificateProperties'SubjectAltName "maybe'san" (Prelude.Maybe TLSProperties'CertificateProperties'SubjectAltName'San) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TLSProperties'CertificateProperties'SubjectAltName'san
           (\ x__ y__
              -> x__
                   {_TLSProperties'CertificateProperties'SubjectAltName'san = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TLSProperties'CertificateProperties'SubjectAltName "maybe'uri" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TLSProperties'CertificateProperties'SubjectAltName'san
           (\ x__ y__
              -> x__
                   {_TLSProperties'CertificateProperties'SubjectAltName'san = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TLSProperties'CertificateProperties'SubjectAltName'Uri x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   TLSProperties'CertificateProperties'SubjectAltName'Uri y__))
instance Data.ProtoLens.Field.HasField TLSProperties'CertificateProperties'SubjectAltName "uri" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TLSProperties'CertificateProperties'SubjectAltName'san
           (\ x__ y__
              -> x__
                   {_TLSProperties'CertificateProperties'SubjectAltName'san = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TLSProperties'CertificateProperties'SubjectAltName'Uri x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      TLSProperties'CertificateProperties'SubjectAltName'Uri y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TLSProperties'CertificateProperties'SubjectAltName "maybe'dns" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TLSProperties'CertificateProperties'SubjectAltName'san
           (\ x__ y__
              -> x__
                   {_TLSProperties'CertificateProperties'SubjectAltName'san = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TLSProperties'CertificateProperties'SubjectAltName'Dns x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   TLSProperties'CertificateProperties'SubjectAltName'Dns y__))
instance Data.ProtoLens.Field.HasField TLSProperties'CertificateProperties'SubjectAltName "dns" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TLSProperties'CertificateProperties'SubjectAltName'san
           (\ x__ y__
              -> x__
                   {_TLSProperties'CertificateProperties'SubjectAltName'san = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TLSProperties'CertificateProperties'SubjectAltName'Dns x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      TLSProperties'CertificateProperties'SubjectAltName'Dns y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message TLSProperties'CertificateProperties'SubjectAltName where
  messageName _
    = Data.Text.pack
        "envoy.data.accesslog.v3.TLSProperties.CertificateProperties.SubjectAltName"
  packedMessageDescriptor _
    = "\n\
      \\SOSubjectAltName\DC2\DC2\n\
      \\ETXuri\CAN\SOH \SOH(\tH\NULR\ETXuri\DC2\DC2\n\
      \\ETXdns\CAN\STX \SOH(\tH\NULR\ETXdnsB\ENQ\n\
      \\ETXsan:Q\154\197\136\RSL\n\
      \Jenvoy.data.accesslog.v2.TLSProperties.CertificateProperties.SubjectAltName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        uri__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uri"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uri")) ::
              Data.ProtoLens.FieldDescriptor TLSProperties'CertificateProperties'SubjectAltName
        dns__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dns")) ::
              Data.ProtoLens.FieldDescriptor TLSProperties'CertificateProperties'SubjectAltName
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, uri__field_descriptor),
           (Data.ProtoLens.Tag 2, dns__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TLSProperties'CertificateProperties'SubjectAltName'_unknownFields
        (\ x__ y__
           -> x__
                {_TLSProperties'CertificateProperties'SubjectAltName'_unknownFields = y__})
  defMessage
    = TLSProperties'CertificateProperties'SubjectAltName'_constructor
        {_TLSProperties'CertificateProperties'SubjectAltName'san = Prelude.Nothing,
         _TLSProperties'CertificateProperties'SubjectAltName'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TLSProperties'CertificateProperties'SubjectAltName
          -> Data.ProtoLens.Encoding.Bytes.Parser TLSProperties'CertificateProperties'SubjectAltName
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
                                       "uri"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"uri") y x)
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
                                       "dns"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dns") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SubjectAltName"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'san") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (TLSProperties'CertificateProperties'SubjectAltName'Uri v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v)
                (Prelude.Just (TLSProperties'CertificateProperties'SubjectAltName'Dns v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData TLSProperties'CertificateProperties'SubjectAltName where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TLSProperties'CertificateProperties'SubjectAltName'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_TLSProperties'CertificateProperties'SubjectAltName'san x__) ())
instance Control.DeepSeq.NFData TLSProperties'CertificateProperties'SubjectAltName'San where
  rnf (TLSProperties'CertificateProperties'SubjectAltName'Uri x__)
    = Control.DeepSeq.rnf x__
  rnf (TLSProperties'CertificateProperties'SubjectAltName'Dns x__)
    = Control.DeepSeq.rnf x__
_TLSProperties'CertificateProperties'SubjectAltName'Uri ::
  Data.ProtoLens.Prism.Prism' TLSProperties'CertificateProperties'SubjectAltName'San Data.Text.Text
_TLSProperties'CertificateProperties'SubjectAltName'Uri
  = Data.ProtoLens.Prism.prism'
      TLSProperties'CertificateProperties'SubjectAltName'Uri
      (\ p__
         -> case p__ of
              (TLSProperties'CertificateProperties'SubjectAltName'Uri p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TLSProperties'CertificateProperties'SubjectAltName'Dns ::
  Data.ProtoLens.Prism.Prism' TLSProperties'CertificateProperties'SubjectAltName'San Data.Text.Text
_TLSProperties'CertificateProperties'SubjectAltName'Dns
  = Data.ProtoLens.Prism.prism'
      TLSProperties'CertificateProperties'SubjectAltName'Dns
      (\ p__
         -> case p__ of
              (TLSProperties'CertificateProperties'SubjectAltName'Dns p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
newtype TLSProperties'TLSVersion'UnrecognizedValue
  = TLSProperties'TLSVersion'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data TLSProperties'TLSVersion
  = TLSProperties'VERSION_UNSPECIFIED |
    TLSProperties'TLSv1 |
    TLSProperties'TLSv1_1 |
    TLSProperties'TLSv1_2 |
    TLSProperties'TLSv1_3 |
    TLSProperties'TLSVersion'Unrecognized !TLSProperties'TLSVersion'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum TLSProperties'TLSVersion where
  maybeToEnum 0 = Prelude.Just TLSProperties'VERSION_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just TLSProperties'TLSv1
  maybeToEnum 2 = Prelude.Just TLSProperties'TLSv1_1
  maybeToEnum 3 = Prelude.Just TLSProperties'TLSv1_2
  maybeToEnum 4 = Prelude.Just TLSProperties'TLSv1_3
  maybeToEnum k
    = Prelude.Just
        (TLSProperties'TLSVersion'Unrecognized
           (TLSProperties'TLSVersion'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum TLSProperties'VERSION_UNSPECIFIED = "VERSION_UNSPECIFIED"
  showEnum TLSProperties'TLSv1 = "TLSv1"
  showEnum TLSProperties'TLSv1_1 = "TLSv1_1"
  showEnum TLSProperties'TLSv1_2 = "TLSv1_2"
  showEnum TLSProperties'TLSv1_3 = "TLSv1_3"
  showEnum
    (TLSProperties'TLSVersion'Unrecognized (TLSProperties'TLSVersion'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "VERSION_UNSPECIFIED"
    = Prelude.Just TLSProperties'VERSION_UNSPECIFIED
    | (Prelude.==) k "TLSv1" = Prelude.Just TLSProperties'TLSv1
    | (Prelude.==) k "TLSv1_1" = Prelude.Just TLSProperties'TLSv1_1
    | (Prelude.==) k "TLSv1_2" = Prelude.Just TLSProperties'TLSv1_2
    | (Prelude.==) k "TLSv1_3" = Prelude.Just TLSProperties'TLSv1_3
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded TLSProperties'TLSVersion where
  minBound = TLSProperties'VERSION_UNSPECIFIED
  maxBound = TLSProperties'TLSv1_3
instance Prelude.Enum TLSProperties'TLSVersion where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum TLSVersion: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum TLSProperties'VERSION_UNSPECIFIED = 0
  fromEnum TLSProperties'TLSv1 = 1
  fromEnum TLSProperties'TLSv1_1 = 2
  fromEnum TLSProperties'TLSv1_2 = 3
  fromEnum TLSProperties'TLSv1_3 = 4
  fromEnum
    (TLSProperties'TLSVersion'Unrecognized (TLSProperties'TLSVersion'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ TLSProperties'TLSv1_3
    = Prelude.error
        "TLSProperties'TLSVersion.succ: bad argument TLSProperties'TLSv1_3. This value would be out of bounds."
  succ TLSProperties'VERSION_UNSPECIFIED = TLSProperties'TLSv1
  succ TLSProperties'TLSv1 = TLSProperties'TLSv1_1
  succ TLSProperties'TLSv1_1 = TLSProperties'TLSv1_2
  succ TLSProperties'TLSv1_2 = TLSProperties'TLSv1_3
  succ (TLSProperties'TLSVersion'Unrecognized _)
    = Prelude.error
        "TLSProperties'TLSVersion.succ: bad argument: unrecognized value"
  pred TLSProperties'VERSION_UNSPECIFIED
    = Prelude.error
        "TLSProperties'TLSVersion.pred: bad argument TLSProperties'VERSION_UNSPECIFIED. This value would be out of bounds."
  pred TLSProperties'TLSv1 = TLSProperties'VERSION_UNSPECIFIED
  pred TLSProperties'TLSv1_1 = TLSProperties'TLSv1
  pred TLSProperties'TLSv1_2 = TLSProperties'TLSv1_1
  pred TLSProperties'TLSv1_3 = TLSProperties'TLSv1_2
  pred (TLSProperties'TLSVersion'Unrecognized _)
    = Prelude.error
        "TLSProperties'TLSVersion.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault TLSProperties'TLSVersion where
  fieldDefault = TLSProperties'VERSION_UNSPECIFIED
instance Control.DeepSeq.NFData TLSProperties'TLSVersion where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'envoy/data/accesslog/v3/accesslog.proto\DC2\ETBenvoy.data.accesslog.v3\SUB\"envoy/config/core/v3/address.proto\SUB\USenvoy/config/core/v3/base.proto\SUB\EMgoogle/protobuf/any.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\128\STX\n\
    \\DC1TCPAccessLogEntry\DC2U\n\
    \\DC1common_properties\CAN\SOH \SOH(\v2(.envoy.data.accesslog.v3.AccessLogCommonR\DLEcommonProperties\DC2b\n\
    \\NAKconnection_properties\CAN\STX \SOH(\v2-.envoy.data.accesslog.v3.ConnectionPropertiesR\DC4connectionProperties:0\154\197\136\RS+\n\
    \)envoy.data.accesslog.v2.TCPAccessLogEntry\"\240\ETX\n\
    \\DC2HTTPAccessLogEntry\DC2U\n\
    \\DC1common_properties\CAN\SOH \SOH(\v2(.envoy.data.accesslog.v3.AccessLogCommonR\DLEcommonProperties\DC2b\n\
    \\DLEprotocol_version\CAN\STX \SOH(\SO27.envoy.data.accesslog.v3.HTTPAccessLogEntry.HTTPVersionR\SIprotocolVersion\DC2H\n\
    \\arequest\CAN\ETX \SOH(\v2..envoy.data.accesslog.v3.HTTPRequestPropertiesR\arequest\DC2K\n\
    \\bresponse\CAN\EOT \SOH(\v2/.envoy.data.accesslog.v3.HTTPResponsePropertiesR\bresponse\"U\n\
    \\vHTTPVersion\DC2\CAN\n\
    \\DC4PROTOCOL_UNSPECIFIED\DLE\NUL\DC2\n\
    \\n\
    \\ACKHTTP10\DLE\SOH\DC2\n\
    \\n\
    \\ACKHTTP11\DLE\STX\DC2\t\n\
    \\ENQHTTP2\DLE\ETX\DC2\t\n\
    \\ENQHTTP3\DLE\EOT:1\154\197\136\RS,\n\
    \*envoy.data.accesslog.v2.HTTPAccessLogEntry\"\145\SOH\n\
    \\DC4ConnectionProperties\DC2%\n\
    \\SOreceived_bytes\CAN\SOH \SOH(\EOTR\rreceivedBytes\DC2\GS\n\
    \\n\
    \sent_bytes\CAN\STX \SOH(\EOTR\tsentBytes:3\154\197\136\RS.\n\
    \,envoy.data.accesslog.v2.ConnectionProperties\"\191\SO\n\
    \\SIAccessLogCommon\DC28\n\
    \\vsample_rate\CAN\SOH \SOH(\SOHR\n\
    \sampleRateB\ETB\250B\DC4\DC2\DC2\EM\NUL\NUL\NUL\NUL\NUL\NUL\240?!\NUL\NUL\NUL\NUL\NUL\NUL\NUL\NUL\DC2Y\n\
    \\EMdownstream_remote_address\CAN\STX \SOH(\v2\GS.envoy.config.core.v3.AddressR\ETBdownstreamRemoteAddress\DC2W\n\
    \\CANdownstream_local_address\CAN\ETX \SOH(\v2\GS.envoy.config.core.v3.AddressR\SYNdownstreamLocalAddress\DC2M\n\
    \\SOtls_properties\CAN\EOT \SOH(\v2&.envoy.data.accesslog.v3.TLSPropertiesR\rtlsProperties\DC29\n\
    \\n\
    \start_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\tstartTime\DC2I\n\
    \\DC4time_to_last_rx_byte\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\DLEtimeToLastRxByte\DC2\\\n\
    \\RStime_to_first_upstream_tx_byte\CAN\a \SOH(\v2\EM.google.protobuf.DurationR\EMtimeToFirstUpstreamTxByte\DC2Z\n\
    \\GStime_to_last_upstream_tx_byte\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\CANtimeToLastUpstreamTxByte\DC2\\\n\
    \\RStime_to_first_upstream_rx_byte\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\EMtimeToFirstUpstreamRxByte\DC2Z\n\
    \\GStime_to_last_upstream_rx_byte\CAN\n\
    \ \SOH(\v2\EM.google.protobuf.DurationR\CANtimeToLastUpstreamRxByte\DC2`\n\
    \ time_to_first_downstream_tx_byte\CAN\v \SOH(\v2\EM.google.protobuf.DurationR\ESCtimeToFirstDownstreamTxByte\DC2^\n\
    \\UStime_to_last_downstream_tx_byte\CAN\f \SOH(\v2\EM.google.protobuf.DurationR\SUBtimeToLastDownstreamTxByte\DC2U\n\
    \\ETBupstream_remote_address\CAN\r \SOH(\v2\GS.envoy.config.core.v3.AddressR\NAKupstreamRemoteAddress\DC2S\n\
    \\SYNupstream_local_address\CAN\SO \SOH(\v2\GS.envoy.config.core.v3.AddressR\DC4upstreamLocalAddress\DC2)\n\
    \\DLEupstream_cluster\CAN\SI \SOH(\tR\SIupstreamCluster\DC2M\n\
    \\SOresponse_flags\CAN\DLE \SOH(\v2&.envoy.data.accesslog.v3.ResponseFlagsR\rresponseFlags\DC2:\n\
    \\bmetadata\CAN\DC1 \SOH(\v2\RS.envoy.config.core.v3.MetadataR\bmetadata\DC2I\n\
    \!upstream_transport_failure_reason\CAN\DC2 \SOH(\tR\RSupstreamTransportFailureReason\DC2\GS\n\
    \\n\
    \route_name\CAN\DC3 \SOH(\tR\trouteName\DC2f\n\
    \ downstream_direct_remote_address\CAN\DC4 \SOH(\v2\GS.envoy.config.core.v3.AddressR\GSdownstreamDirectRemoteAddress\DC2r\n\
    \\DC4filter_state_objects\CAN\NAK \ETX(\v2@.envoy.data.accesslog.v3.AccessLogCommon.FilterStateObjectsEntryR\DC2filterStateObjects\SUB[\n\
    \\ETBFilterStateObjectsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2*\n\
    \\ENQvalue\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ENQvalue:\STX8\SOH:.\154\197\136\RS)\n\
    \'envoy.data.accesslog.v2.AccessLogCommon\"\179\r\n\
    \\rResponseFlags\DC28\n\
    \\CANfailed_local_healthcheck\CAN\SOH \SOH(\bR\SYNfailedLocalHealthcheck\DC2.\n\
    \\DC3no_healthy_upstream\CAN\STX \SOH(\bR\DC1noHealthyUpstream\DC28\n\
    \\CANupstream_request_timeout\CAN\ETX \SOH(\bR\SYNupstreamRequestTimeout\DC2\US\n\
    \\vlocal_reset\CAN\EOT \SOH(\bR\n\
    \localReset\DC22\n\
    \\NAKupstream_remote_reset\CAN\ENQ \SOH(\bR\DC3upstreamRemoteReset\DC2>\n\
    \\ESCupstream_connection_failure\CAN\ACK \SOH(\bR\EMupstreamConnectionFailure\DC2F\n\
    \\USupstream_connection_termination\CAN\a \SOH(\bR\GSupstreamConnectionTermination\DC2+\n\
    \\DC1upstream_overflow\CAN\b \SOH(\bR\DLEupstreamOverflow\DC2$\n\
    \\SOno_route_found\CAN\t \SOH(\bR\fnoRouteFound\DC2%\n\
    \\SOdelay_injected\CAN\n\
    \ \SOH(\bR\rdelayInjected\DC2%\n\
    \\SOfault_injected\CAN\v \SOH(\bR\rfaultInjected\DC2!\n\
    \\frate_limited\CAN\f \SOH(\bR\vrateLimited\DC2f\n\
    \\DC4unauthorized_details\CAN\r \SOH(\v23.envoy.data.accesslog.v3.ResponseFlags.UnauthorizedR\DC3unauthorizedDetails\DC27\n\
    \\CANrate_limit_service_error\CAN\SO \SOH(\bR\NAKrateLimitServiceError\DC2J\n\
    \!downstream_connection_termination\CAN\SI \SOH(\bR\USdownstreamConnectionTermination\DC2A\n\
    \\GSupstream_retry_limit_exceeded\CAN\DLE \SOH(\bR\SUBupstreamRetryLimitExceeded\DC2.\n\
    \\DC3stream_idle_timeout\CAN\DC1 \SOH(\bR\DC1streamIdleTimeout\DC2A\n\
    \\GSinvalid_envoy_request_headers\CAN\DC2 \SOH(\bR\SUBinvalidEnvoyRequestHeaders\DC2:\n\
    \\EMdownstream_protocol_error\CAN\DC3 \SOH(\bR\ETBdownstreamProtocolError\DC2N\n\
    \$upstream_max_stream_duration_reached\CAN\DC4 \SOH(\bR upstreamMaxStreamDurationReached\DC2;\n\
    \\SUBresponse_from_cache_filter\CAN\NAK \SOH(\bR\ETBresponseFromCacheFilter\DC23\n\
    \\SYNno_filter_config_found\CAN\SYN \SOH(\bR\DC3noFilterConfigFound\DC2)\n\
    \\DLEduration_timeout\CAN\ETB \SOH(\bR\SIdurationTimeout\DC26\n\
    \\ETBupstream_protocol_error\CAN\CAN \SOH(\bR\NAKupstreamProtocolError\DC2(\n\
    \\DLEno_cluster_found\CAN\EM \SOH(\bR\SOnoClusterFound\DC2)\n\
    \\DLEoverload_manager\CAN\SUB \SOH(\bR\SIoverloadManager\SUB\213\SOH\n\
    \\fUnauthorized\DC2R\n\
    \\ACKreason\CAN\SOH \SOH(\SO2:.envoy.data.accesslog.v3.ResponseFlags.Unauthorized.ReasonR\ACKreason\"6\n\
    \\ACKReason\DC2\SYN\n\
    \\DC2REASON_UNSPECIFIED\DLE\NUL\DC2\DC4\n\
    \\DLEEXTERNAL_SERVICE\DLE\SOH:9\154\197\136\RS4\n\
    \2envoy.data.accesslog.v2.ResponseFlags.Unauthorized:,\154\197\136\RS'\n\
    \%envoy.data.accesslog.v2.ResponseFlags\"\132\b\n\
    \\rTLSProperties\DC2R\n\
    \\vtls_version\CAN\SOH \SOH(\SO21.envoy.data.accesslog.v3.TLSProperties.TLSVersionR\n\
    \tlsVersion\DC2F\n\
    \\DLEtls_cipher_suite\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOtlsCipherSuite\DC2(\n\
    \\DLEtls_sni_hostname\CAN\ETX \SOH(\tR\SOtlsSniHostname\DC2~\n\
    \\FSlocal_certificate_properties\CAN\EOT \SOH(\v2<.envoy.data.accesslog.v3.TLSProperties.CertificatePropertiesR\SUBlocalCertificateProperties\DC2|\n\
    \\ESCpeer_certificate_properties\CAN\ENQ \SOH(\v2<.envoy.data.accesslog.v3.TLSProperties.CertificatePropertiesR\EMpeerCertificateProperties\DC2$\n\
    \\SOtls_session_id\CAN\ACK \SOH(\tR\ftlsSessionId\SUB\129\ETX\n\
    \\NAKCertificateProperties\DC2u\n\
    \\DLEsubject_alt_name\CAN\SOH \ETX(\v2K.envoy.data.accesslog.v3.TLSProperties.CertificateProperties.SubjectAltNameR\SOsubjectAltName\DC2\CAN\n\
    \\asubject\CAN\STX \SOH(\tR\asubject\SUB\146\SOH\n\
    \\SOSubjectAltName\DC2\DC2\n\
    \\ETXuri\CAN\SOH \SOH(\tH\NULR\ETXuri\DC2\DC2\n\
    \\ETXdns\CAN\STX \SOH(\tH\NULR\ETXdnsB\ENQ\n\
    \\ETXsan:Q\154\197\136\RSL\n\
    \Jenvoy.data.accesslog.v2.TLSProperties.CertificateProperties.SubjectAltName:B\154\197\136\RS=\n\
    \;envoy.data.accesslog.v2.TLSProperties.CertificateProperties\"W\n\
    \\n\
    \TLSVersion\DC2\ETB\n\
    \\DC3VERSION_UNSPECIFIED\DLE\NUL\DC2\t\n\
    \\ENQTLSv1\DLE\SOH\DC2\v\n\
    \\aTLSv1_1\DLE\STX\DC2\v\n\
    \\aTLSv1_2\DLE\ETX\DC2\v\n\
    \\aTLSv1_3\DLE\EOT:,\154\197\136\RS'\n\
    \%envoy.data.accesslog.v2.TLSProperties\"\211\ENQ\n\
    \\NAKHTTPRequestProperties\DC2T\n\
    \\SOrequest_method\CAN\SOH \SOH(\SO2#.envoy.config.core.v3.RequestMethodR\rrequestMethodB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\SYN\n\
    \\ACKscheme\CAN\STX \SOH(\tR\ACKscheme\DC2\FS\n\
    \\tauthority\CAN\ETX \SOH(\tR\tauthority\DC20\n\
    \\EOTport\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\EOTport\DC2\DC2\n\
    \\EOTpath\CAN\ENQ \SOH(\tR\EOTpath\DC2\GS\n\
    \\n\
    \user_agent\CAN\ACK \SOH(\tR\tuserAgent\DC2\CAN\n\
    \\areferer\CAN\a \SOH(\tR\areferer\DC2#\n\
    \\rforwarded_for\CAN\b \SOH(\tR\fforwardedFor\DC2\GS\n\
    \\n\
    \request_id\CAN\t \SOH(\tR\trequestId\DC2#\n\
    \\roriginal_path\CAN\n\
    \ \SOH(\tR\foriginalPath\DC22\n\
    \\NAKrequest_headers_bytes\CAN\v \SOH(\EOTR\DC3requestHeadersBytes\DC2,\n\
    \\DC2request_body_bytes\CAN\f \SOH(\EOTR\DLErequestBodyBytes\DC2k\n\
    \\SIrequest_headers\CAN\r \ETX(\v2B.envoy.data.accesslog.v3.HTTPRequestProperties.RequestHeadersEntryR\SOrequestHeaders\SUBA\n\
    \\DC3RequestHeadersEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH:4\154\197\136\RS/\n\
    \-envoy.data.accesslog.v2.HTTPRequestProperties\"\154\ENQ\n\
    \\SYNHTTPResponseProperties\DC2A\n\
    \\rresponse_code\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\fresponseCode\DC24\n\
    \\SYNresponse_headers_bytes\CAN\STX \SOH(\EOTR\DC4responseHeadersBytes\DC2.\n\
    \\DC3response_body_bytes\CAN\ETX \SOH(\EOTR\DC1responseBodyBytes\DC2o\n\
    \\DLEresponse_headers\CAN\EOT \ETX(\v2D.envoy.data.accesslog.v3.HTTPResponseProperties.ResponseHeadersEntryR\SIresponseHeaders\DC2r\n\
    \\DC1response_trailers\CAN\ENQ \ETX(\v2E.envoy.data.accesslog.v3.HTTPResponseProperties.ResponseTrailersEntryR\DLEresponseTrailers\DC22\n\
    \\NAKresponse_code_details\CAN\ACK \SOH(\tR\DC3responseCodeDetails\SUBB\n\
    \\DC4ResponseHeadersEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH\SUBC\n\
    \\NAKResponseTrailersEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH:5\154\197\136\RS0\n\
    \.envoy.data.accesslog.v2.HTTPResponsePropertiesBA\n\
    \%io.envoyproxy.envoy.data.accesslog.v3B\SOAccesslogProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\253\DEL\n\
    \\a\DC2\ENQ\NUL\NUL\176\ETX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL \n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL)\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL(\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL'\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL+\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\SO\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL>\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\DLE\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DC1\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC2\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC3\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC3\NULF\n\
    \\191\EOT\n\
    \\STX\EOT\NUL\DC2\EOT \NUL)\SOH2\178\EOT [#protodoc-title: gRPC access logs]\n\
    \ Envoy access logs describe incoming interaction with Envoy over a fixed\n\
    \ period of time, and typically cover a single request/response exchange,\n\
    \ (e.g. HTTP), stream (e.g. over HTTP/gRPC), or proxied connection (e.g. TCP).\n\
    \ Access logs contain fields defined in protocol-specific protobuf messages.\n\
    \\n\
    \ Except where explicitly declared otherwise, all fields describe\n\
    \ *downstream* interaction between Envoy and a connected client.\n\
    \ Fields describing *upstream* interaction will explicitly include ``upstream``\n\
    \ in their name.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX \b\EM\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT!\STX\"2\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT!\STX\"2\n\
    \A\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX%\STX(\SUB4 Common properties shared by all Envoy access logs.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX%\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX%\DC2#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX%&'\n\
    \0\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX(\STX1\SUB# Properties of the TCP connection.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX(\STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX(\ETB,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX(/0\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT+\NULB\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX+\b\SUB\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT,\STX-3\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT,\STX-3\n\
    \\FS\n\
    \\EOT\EOT\SOH\EOT\NUL\DC2\EOT0\STX6\ETX\SUB\SO HTTP version\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\EOT\NUL\SOH\DC2\ETX0\a\DC2\n\
    \\r\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\NUL\DC2\ETX1\EOT\GS\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\SOH\DC2\ETX1\EOT\CAN\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\STX\DC2\ETX1\ESC\FS\n\
    \\r\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\SOH\DC2\ETX2\EOT\SI\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\SOH\DC2\ETX2\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\STX\DC2\ETX2\r\SO\n\
    \\r\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\STX\DC2\ETX3\EOT\SI\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\SOH\DC2\ETX3\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\STX\DC2\ETX3\r\SO\n\
    \\r\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\ETX\DC2\ETX4\EOT\SO\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\ETX\SOH\DC2\ETX4\EOT\t\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\ETX\STX\DC2\ETX4\f\r\n\
    \\r\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\EOT\DC2\ETX5\EOT\SO\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\EOT\SOH\DC2\ETX5\EOT\t\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\EOT\STX\DC2\ETX5\f\r\n\
    \A\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX9\STX(\SUB4 Common properties shared by all Envoy access logs.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX9\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX9\DC2#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX9&'\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX;\STX#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX;\STX\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX;\SO\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX;!\"\n\
    \8\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX>\STX$\SUB+ Description of the incoming HTTP request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX>\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX>\CAN\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX>\"#\n\
    \9\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETXA\STX&\SUB, Description of the outgoing HTTP response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETXA\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETXA\EM!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETXA$%\n\
    \-\n\
    \\STX\EOT\STX\DC2\EOTE\NULN\SOH\SUB! Defines fields for a connection\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXE\b\FS\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOTF\STXG5\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOTF\STXG5\n\
    \8\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXJ\STX\FS\SUB+ Number of bytes received from downstream.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXJ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXJ\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXJ\SUB\ESC\n\
    \2\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXM\STX\CAN\SUB% Number of bytes sent to downstream.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXM\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXM\SYN\ETB\n\
    \_\n\
    \\STX\EOT\ETX\DC2\ENQR\NUL\185\SOH\SOH\SUBR Defines fields that are shared by all Envoy access logs.\n\
    \ [#next-free-field: 22]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXR\b\ETB\n\
    \\v\n\
    \\ETX\EOT\ETX\a\DC2\EOTS\STXT0\n\
    \\DLE\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\EOTS\STXT0\n\
    \\135\SOH\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXY\STXH\SUBz [#not-implemented-hide:]\n\
    \ This field indicates the rate at which this log entry was sampled.\n\
    \ Valid range is (0.0, 1.0].\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXY\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXY\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXY\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETXY\EMG\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\175\b\STX\DC2\ETXY\SUBF\n\
    \\252\SOH\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX^\STX7\SUB\238\SOH This field is the remote/origin address on which the request from the user was received.\n\
    \ Note: This may not be the physical peer. E.g, if the remote address is inferred from for\n\
    \ example the x-forwarder-for header, proxy protocol, etc.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX^\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX^\EM2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX^56\n\
    \k\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETXa\STX6\SUB^ This field is the local/destination address on which the request from the user was received.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\ETXa\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXa\EM1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXa45\n\
    \T\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETXd\STX#\SUBG If the connection is secure,S this field will contain TLS properties.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ACK\DC2\ETXd\STX\SI\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETXd\DLE\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETXd!\"\n\
    \\140\SOH\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETXh\STX+\SUB\DEL The time that Envoy started servicing this request. This is effectively the time that the first\n\
    \ downstream byte is received.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ACK\DC2\ETXh\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETXh\FS&\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETXh)*\n\
    \\149\SOH\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETXl\STX4\SUB\135\SOH Interval between the first downstream byte received and the last\n\
    \ downstream byte received (i.e. time it takes to receive a request).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ACK\DC2\ETXl\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETXl\ESC/\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETXl23\n\
    \\215\STX\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\ETXr\STX>\SUB\201\STX Interval between the first downstream byte received and the first upstream byte sent. There may\n\
    \ by considerable delta between *time_to_last_rx_byte* and this value due to filters.\n\
    \ Additionally, the same caveats apply as documented in *time_to_last_downstream_tx_byte* about\n\
    \ not accounting for kernel socket buffer time, etc.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ACK\DC2\ETXr\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\ETXr\ESC9\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\ETXr<=\n\
    \\214\STX\n\
    \\EOT\EOT\ETX\STX\a\DC2\ETXx\STX=\SUB\200\STX Interval between the first downstream byte received and the last upstream byte sent. There may\n\
    \ by considerable delta between *time_to_last_rx_byte* and this value due to filters.\n\
    \ Additionally, the same caveats apply as documented in *time_to_last_downstream_tx_byte* about\n\
    \ not accounting for kernel socket buffer time, etc.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ACK\DC2\ETXx\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\ETXx\ESC8\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\ETXx;<\n\
    \\157\SOH\n\
    \\EOT\EOT\ETX\STX\b\DC2\ETX|\STX>\SUB\143\SOH Interval between the first downstream byte received and the first upstream\n\
    \ byte received (i.e. time it takes to start receiving a response).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ACK\DC2\ETX|\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\SOH\DC2\ETX|\ESC9\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ETX\DC2\ETX|<=\n\
    \\158\SOH\n\
    \\EOT\EOT\ETX\STX\t\DC2\EOT\128\SOH\STX>\SUB\143\SOH Interval between the first downstream byte received and the last upstream\n\
    \ byte received (i.e. time it takes to receive a complete response).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\t\ACK\DC2\EOT\128\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\t\SOH\DC2\EOT\128\SOH\ESC8\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\t\ETX\DC2\EOT\128\SOH;=\n\
    \\234\STX\n\
    \\EOT\EOT\ETX\STX\n\
    \\DC2\EOT\134\SOH\STXA\SUB\219\STX Interval between the first downstream byte received and the first downstream byte sent.\n\
    \ There may be a considerable delta between the *time_to_first_upstream_rx_byte* and this field\n\
    \ due to filters. Additionally, the same caveats apply as documented in\n\
    \ *time_to_last_downstream_tx_byte* about not accounting for kernel socket buffer time, etc.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ACK\DC2\EOT\134\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\n\
    \\SOH\DC2\EOT\134\SOH\ESC;\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ETX\DC2\EOT\134\SOH>@\n\
    \\183\EOT\n\
    \\EOT\EOT\ETX\STX\v\DC2\EOT\142\SOH\STX@\SUB\168\EOT Interval between the first downstream byte received and the last downstream byte sent.\n\
    \ Depending on protocol, buffering, windowing, filters, etc. there may be a considerable delta\n\
    \ between *time_to_last_upstream_rx_byte* and this field. Note also that this is an approximate\n\
    \ time. In the current implementation it does not include kernel socket buffer time. In the\n\
    \ current implementation it also does not include send window buffering inside the HTTP/2 codec.\n\
    \ In the future it is likely that work will be done to make this duration more accurate.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\v\ACK\DC2\EOT\142\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\v\SOH\DC2\EOT\142\SOH\ESC:\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\v\ETX\DC2\EOT\142\SOH=?\n\
    \s\n\
    \\EOT\EOT\ETX\STX\f\DC2\EOT\146\SOH\STX6\SUBe The upstream remote/destination address that handles this exchange. This does not include\n\
    \ retries.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\f\ACK\DC2\EOT\146\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\f\SOH\DC2\EOT\146\SOH\EM0\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\f\ETX\DC2\EOT\146\SOH35\n\
    \l\n\
    \\EOT\EOT\ETX\STX\r\DC2\EOT\149\SOH\STX5\SUB^ The upstream local/origin address that handles this exchange. This does not include retries.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\r\ACK\DC2\EOT\149\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\r\SOH\DC2\EOT\149\SOH\EM/\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\r\ETX\DC2\EOT\149\SOH24\n\
    \O\n\
    \\EOT\EOT\ETX\STX\SO\DC2\EOT\152\SOH\STX\US\SUBA The upstream cluster that *upstream_remote_address* belongs to.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SO\ENQ\DC2\EOT\152\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SO\SOH\DC2\EOT\152\SOH\t\EM\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SO\ETX\DC2\EOT\152\SOH\FS\RS\n\
    \P\n\
    \\EOT\EOT\ETX\STX\SI\DC2\EOT\155\SOH\STX$\SUBB Flags indicating occurrences during request/response processing.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SI\ACK\DC2\EOT\155\SOH\STX\SI\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SI\SOH\DC2\EOT\155\SOH\DLE\RS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SI\ETX\DC2\EOT\155\SOH!#\n\
    \\186\ETX\n\
    \\EOT\EOT\ETX\STX\DLE\DC2\EOT\165\SOH\STX(\SUB\171\ETX All metadata encountered during request processing, including endpoint\n\
    \ selection.\n\
    \\n\
    \ This can be used to associate IDs attached to the various configurations\n\
    \ used to process this request with the access log entry. For example, a\n\
    \ route created from a higher level forwarding rule with some ID can place\n\
    \ that ID in this field and cross reference later. It can also be used to\n\
    \ determine if a canary endpoint was used or not.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\DLE\ACK\DC2\EOT\165\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\DLE\SOH\DC2\EOT\165\SOH\SUB\"\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\DLE\ETX\DC2\EOT\165\SOH%'\n\
    \\193\STX\n\
    \\EOT\EOT\ETX\STX\DC1\DC2\EOT\171\SOH\STX0\SUB\178\STX If upstream connection failed due to transport socket (e.g. TLS handshake), provides the\n\
    \ failure reason from the transport socket. The format of this field depends on the configured\n\
    \ upstream transport socket. Common TLS failures are in\n\
    \ :ref:`TLS trouble shooting <arch_overview_ssl_trouble_shooting>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\DC1\ENQ\DC2\EOT\171\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\DC1\SOH\DC2\EOT\171\SOH\t*\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\DC1\ETX\DC2\EOT\171\SOH-/\n\
    \%\n\
    \\EOT\EOT\ETX\STX\DC2\DC2\EOT\174\SOH\STX\EM\SUB\ETB The name of the route\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\DC2\ENQ\DC2\EOT\174\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\DC2\SOH\DC2\EOT\174\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\DC2\ETX\DC2\EOT\174\SOH\SYN\CAN\n\
    \\135\STX\n\
    \\EOT\EOT\ETX\STX\DC3\DC2\EOT\179\SOH\STX?\SUB\248\SOH This field is the downstream direct remote address on which the request from the user was\n\
    \ received. Note: This is always the physical peer, even if the remote address is inferred from\n\
    \ for example the x-forwarder-for header, proxy protocol, etc.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\DC3\ACK\DC2\EOT\179\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\DC3\SOH\DC2\EOT\179\SOH\EM9\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\DC3\ETX\DC2\EOT\179\SOH<>\n\
    \\218\SOH\n\
    \\EOT\EOT\ETX\STX\DC4\DC2\EOT\184\SOH\STX=\SUB\203\SOH Map of filter state in stream info that have been configured to be logged. If the filter\n\
    \ state serialized to any message other than `google.protobuf.Any` it will be packed into\n\
    \ `google.protobuf.Any`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\DC4\ACK\DC2\EOT\184\SOH\STX\"\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\DC4\SOH\DC2\EOT\184\SOH#7\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\DC4\ETX\DC2\EOT\184\SOH:<\n\
    \h\n\
    \\STX\EOT\EOT\DC2\ACK\189\SOH\NUL\158\STX\SOH\SUBZ Flags indicating occurrences during request/response processing.\n\
    \ [#next-free-field: 27]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\189\SOH\b\NAK\n\
    \\r\n\
    \\ETX\EOT\EOT\a\DC2\ACK\190\SOH\STX\191\SOH.\n\
    \\DC2\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\ACK\190\SOH\STX\191\SOH.\n\
    \\SO\n\
    \\EOT\EOT\EOT\ETX\NUL\DC2\ACK\193\SOH\STX\206\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\EOT\ETX\NUL\SOH\DC2\EOT\193\SOH\n\
    \\SYN\n\
    \\SI\n\
    \\ENQ\EOT\EOT\ETX\NUL\a\DC2\ACK\194\SOH\EOT\195\SOH=\n\
    \\DC4\n\
    \\n\
    \\EOT\EOT\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\194\SOH\EOT\195\SOH=\n\
    \<\n\
    \\ACK\EOT\EOT\ETX\NUL\EOT\NUL\DC2\ACK\198\SOH\EOT\203\SOH\ENQ\SUB* Reasons why the request was unauthorized\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\EOT\NUL\SOH\DC2\EOT\198\SOH\t\SI\n\
    \\DLE\n\
    \\b\EOT\EOT\ETX\NUL\EOT\NUL\STX\NUL\DC2\EOT\199\SOH\ACK\GS\n\
    \\DC1\n\
    \\t\EOT\EOT\ETX\NUL\EOT\NUL\STX\NUL\SOH\DC2\EOT\199\SOH\ACK\CAN\n\
    \\DC1\n\
    \\t\EOT\EOT\ETX\NUL\EOT\NUL\STX\NUL\STX\DC2\EOT\199\SOH\ESC\FS\n\
    \Q\n\
    \\b\EOT\EOT\ETX\NUL\EOT\NUL\STX\SOH\DC2\EOT\202\SOH\ACK\ESC\SUB? The request was denied by the external authorization service.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\EOT\ETX\NUL\EOT\NUL\STX\SOH\SOH\DC2\EOT\202\SOH\ACK\SYN\n\
    \\DC1\n\
    \\t\EOT\EOT\ETX\NUL\EOT\NUL\STX\SOH\STX\DC2\EOT\202\SOH\EM\SUB\n\
    \\SO\n\
    \\ACK\EOT\EOT\ETX\NUL\STX\NUL\DC2\EOT\205\SOH\EOT\SYN\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\ACK\DC2\EOT\205\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\SOH\DC2\EOT\205\SOH\v\DC1\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\ETX\DC2\EOT\205\SOH\DC4\NAK\n\
    \:\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\209\SOH\STX$\SUB, Indicates local server healthcheck failed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\EOT\209\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\209\SOH\a\US\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\209\SOH\"#\n\
    \8\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\212\SOH\STX\US\SUB* Indicates there was no healthy upstream.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\EOT\212\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\212\SOH\a\SUB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\212\SOH\GS\RS\n\
    \C\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT\215\SOH\STX$\SUB5 Indicates an there was an upstream request timeout.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\EOT\215\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\215\SOH\a\US\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\215\SOH\"#\n\
    \I\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\EOT\218\SOH\STX\ETB\SUB; Indicates local codec level reset was sent on the stream.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\EOT\218\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\EOT\218\SOH\a\DC2\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\EOT\218\SOH\NAK\SYN\n\
    \N\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\EOT\221\SOH\STX!\SUB@ Indicates remote codec level reset was received on the stream.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\EOT\221\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\EOT\221\SOH\a\FS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\EOT\221\SOH\US \n\
    \l\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\EOT\224\SOH\STX'\SUB^ Indicates there was a local reset by a connection pool due to an initial connection failure.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\ENQ\DC2\EOT\224\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\EOT\224\SOH\a\"\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\EOT\224\SOH%&\n\
    \Y\n\
    \\EOT\EOT\EOT\STX\ACK\DC2\EOT\227\SOH\STX+\SUBK Indicates the stream was reset due to an upstream connection termination.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\ENQ\DC2\EOT\227\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\SOH\DC2\EOT\227\SOH\a&\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\ETX\DC2\EOT\227\SOH)*\n\
    \N\n\
    \\EOT\EOT\EOT\STX\a\DC2\EOT\230\SOH\STX\GS\SUB@ Indicates the stream was reset because of a resource overflow.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\ENQ\DC2\EOT\230\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\SOH\DC2\EOT\230\SOH\a\CAN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\ETX\DC2\EOT\230\SOH\ESC\FS\n\
    \=\n\
    \\EOT\EOT\EOT\STX\b\DC2\EOT\233\SOH\STX\SUB\SUB/ Indicates no route was found for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\b\ENQ\DC2\EOT\233\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\b\SOH\DC2\EOT\233\SOH\a\NAK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\b\ETX\DC2\EOT\233\SOH\CAN\EM\n\
    \G\n\
    \\EOT\EOT\EOT\STX\t\DC2\EOT\236\SOH\STX\ESC\SUB9 Indicates that the request was delayed before proxying.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\t\ENQ\DC2\EOT\236\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\t\SOH\DC2\EOT\236\SOH\a\NAK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\t\ETX\DC2\EOT\236\SOH\CAN\SUB\n\
    \S\n\
    \\EOT\EOT\EOT\STX\n\
    \\DC2\EOT\239\SOH\STX\ESC\SUBE Indicates that the request was aborted with an injected error code.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\n\
    \\ENQ\DC2\EOT\239\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\n\
    \\SOH\DC2\EOT\239\SOH\a\NAK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\n\
    \\ETX\DC2\EOT\239\SOH\CAN\SUB\n\
    \D\n\
    \\EOT\EOT\EOT\STX\v\DC2\EOT\242\SOH\STX\EM\SUB6 Indicates that the request was rate-limited locally.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\v\ENQ\DC2\EOT\242\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\v\SOH\DC2\EOT\242\SOH\a\DC3\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\v\ETX\DC2\EOT\242\SOH\SYN\CAN\n\
    \W\n\
    \\EOT\EOT\EOT\STX\f\DC2\EOT\245\SOH\STX)\SUBI Indicates if the request was deemed unauthorized and the reason for it.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\f\ACK\DC2\EOT\245\SOH\STX\SO\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\f\SOH\DC2\EOT\245\SOH\SI#\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\f\ETX\DC2\EOT\245\SOH&(\n\
    \i\n\
    \\EOT\EOT\EOT\STX\r\DC2\EOT\248\SOH\STX%\SUB[ Indicates that the request was rejected because there was an error in rate limit service.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\r\ENQ\DC2\EOT\248\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\r\SOH\DC2\EOT\248\SOH\a\US\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\r\ETX\DC2\EOT\248\SOH\"$\n\
    \Z\n\
    \\EOT\EOT\EOT\STX\SO\DC2\EOT\251\SOH\STX.\SUBL Indicates the stream was reset due to a downstream connection termination.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SO\ENQ\DC2\EOT\251\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SO\SOH\DC2\EOT\251\SOH\a(\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SO\ETX\DC2\EOT\251\SOH+-\n\
    \f\n\
    \\EOT\EOT\EOT\STX\SI\DC2\EOT\254\SOH\STX*\SUBX Indicates that the upstream retry limit was exceeded, resulting in a downstream error.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SI\ENQ\DC2\EOT\254\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SI\SOH\DC2\EOT\254\SOH\a$\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SI\ETX\DC2\EOT\254\SOH')\n\
    \^\n\
    \\EOT\EOT\EOT\STX\DLE\DC2\EOT\129\STX\STX \SUBP Indicates that the stream idle timeout was hit, resulting in a downstream 408.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\DLE\ENQ\DC2\EOT\129\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\DLE\SOH\DC2\EOT\129\STX\a\SUB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\DLE\ETX\DC2\EOT\129\STX\GS\US\n\
    \r\n\
    \\EOT\EOT\EOT\STX\DC1\DC2\EOT\133\STX\STX*\SUBd Indicates that the request was rejected because an envoy request header failed strict\n\
    \ validation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\DC1\ENQ\DC2\EOT\133\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\DC1\SOH\DC2\EOT\133\STX\a$\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\DC1\ETX\DC2\EOT\133\STX')\n\
    \U\n\
    \\EOT\EOT\EOT\STX\DC2\DC2\EOT\136\STX\STX&\SUBG Indicates there was an HTTP protocol error on the downstream request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\DC2\ENQ\DC2\EOT\136\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\DC2\SOH\DC2\EOT\136\STX\a \n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\DC2\ETX\DC2\EOT\136\STX#%\n\
    \Z\n\
    \\EOT\EOT\EOT\STX\DC3\DC2\EOT\139\STX\STX1\SUBL Indicates there was a max stream duration reached on the upstream request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\DC3\ENQ\DC2\EOT\139\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\DC3\SOH\DC2\EOT\139\STX\a+\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\DC3\ETX\DC2\EOT\139\STX.0\n\
    \F\n\
    \\EOT\EOT\EOT\STX\DC4\DC2\EOT\142\STX\STX'\SUB8 Indicates the response was served from a cache filter.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\DC4\ENQ\DC2\EOT\142\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\DC4\SOH\DC2\EOT\142\STX\a!\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\DC4\ETX\DC2\EOT\142\STX$&\n\
    \G\n\
    \\EOT\EOT\EOT\STX\NAK\DC2\EOT\145\STX\STX#\SUB9 Indicates that a filter configuration is not available.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NAK\ENQ\DC2\EOT\145\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NAK\SOH\DC2\EOT\145\STX\a\GS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NAK\ETX\DC2\EOT\145\STX \"\n\
    \a\n\
    \\EOT\EOT\EOT\STX\SYN\DC2\EOT\148\STX\STX\GS\SUBS Indicates that request or connection exceeded the downstream connection duration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SYN\ENQ\DC2\EOT\148\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SYN\SOH\DC2\EOT\148\STX\a\ETB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SYN\ETX\DC2\EOT\148\STX\SUB\FS\n\
    \T\n\
    \\EOT\EOT\EOT\STX\ETB\DC2\EOT\151\STX\STX$\SUBF Indicates there was an HTTP protocol error in the upstream response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETB\ENQ\DC2\EOT\151\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETB\SOH\DC2\EOT\151\STX\a\RS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETB\ETX\DC2\EOT\151\STX!#\n\
    \?\n\
    \\EOT\EOT\EOT\STX\CAN\DC2\EOT\154\STX\STX\GS\SUB1 Indicates no cluster was found for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\CAN\ENQ\DC2\EOT\154\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\CAN\SOH\DC2\EOT\154\STX\a\ETB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\CAN\ETX\DC2\EOT\154\STX\SUB\FS\n\
    \B\n\
    \\EOT\EOT\EOT\STX\EM\DC2\EOT\157\STX\STX\GS\SUB4 Indicates overload manager terminated the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EM\ENQ\DC2\EOT\157\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EM\SOH\DC2\EOT\157\STX\a\ETB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EM\ETX\DC2\EOT\157\STX\SUB\FS\n\
    \Q\n\
    \\STX\EOT\ENQ\DC2\ACK\162\STX\NUL\218\STX\SOH\SUBC Properties of a negotiated TLS connection.\n\
    \ [#next-free-field: 7]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\162\STX\b\NAK\n\
    \\r\n\
    \\ETX\EOT\ENQ\a\DC2\ACK\163\STX\STX\164\STX.\n\
    \\DC2\n\
    \\b\EOT\ENQ\a\211\136\225\ETX\SOH\DC2\ACK\163\STX\STX\164\STX.\n\
    \\SO\n\
    \\EOT\EOT\ENQ\EOT\NUL\DC2\ACK\166\STX\STX\172\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\ENQ\EOT\NUL\SOH\DC2\EOT\166\STX\a\DC1\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\NUL\DC2\EOT\167\STX\EOT\FS\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\NUL\SOH\DC2\EOT\167\STX\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\NUL\STX\DC2\EOT\167\STX\SUB\ESC\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\SOH\DC2\EOT\168\STX\EOT\SO\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\168\STX\EOT\t\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\SOH\STX\DC2\EOT\168\STX\f\r\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\STX\DC2\EOT\169\STX\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\STX\SOH\DC2\EOT\169\STX\EOT\v\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\STX\STX\DC2\EOT\169\STX\SO\SI\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\ETX\DC2\EOT\170\STX\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\ETX\SOH\DC2\EOT\170\STX\EOT\v\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\ETX\STX\DC2\EOT\170\STX\SO\SI\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\EOT\DC2\EOT\171\STX\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\EOT\SOH\DC2\EOT\171\STX\EOT\v\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\EOT\STX\DC2\EOT\171\STX\SO\SI\n\
    \\SO\n\
    \\EOT\EOT\ENQ\ETX\NUL\DC2\ACK\174\STX\STX\195\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\ENQ\ETX\NUL\SOH\DC2\EOT\174\STX\n\
    \\US\n\
    \\SI\n\
    \\ENQ\EOT\ENQ\ETX\NUL\a\DC2\ACK\175\STX\EOT\176\STXF\n\
    \\DC4\n\
    \\n\
    \\EOT\ENQ\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\175\STX\EOT\176\STXF\n\
    \\DLE\n\
    \\ACK\EOT\ENQ\ETX\NUL\ETX\NUL\DC2\ACK\178\STX\EOT\188\STX\ENQ\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\ETX\NUL\SOH\DC2\EOT\178\STX\f\SUB\n\
    \\DC1\n\
    \\a\EOT\ENQ\ETX\NUL\ETX\NUL\a\DC2\ACK\179\STX\ACK\180\STXW\n\
    \\SYN\n\
    \\f\EOT\ENQ\ETX\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\179\STX\ACK\180\STXW\n\
    \\DC2\n\
    \\b\EOT\ENQ\ETX\NUL\ETX\NUL\b\NUL\DC2\ACK\182\STX\ACK\187\STX\a\n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\ETX\NUL\b\NUL\SOH\DC2\EOT\182\STX\f\SI\n\
    \\DLE\n\
    \\b\EOT\ENQ\ETX\NUL\ETX\NUL\STX\NUL\DC2\EOT\183\STX\b\ETB\n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\ETX\NUL\STX\NUL\ENQ\DC2\EOT\183\STX\b\SO\n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\ETX\NUL\STX\NUL\SOH\DC2\EOT\183\STX\SI\DC2\n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\ETX\NUL\STX\NUL\ETX\DC2\EOT\183\STX\NAK\SYN\n\
    \,\n\
    \\b\EOT\ENQ\ETX\NUL\ETX\NUL\STX\SOH\DC2\EOT\186\STX\b\ETB\SUB\SUB [#not-implemented-hide:]\n\
    \\n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\ETX\NUL\STX\SOH\ENQ\DC2\EOT\186\STX\b\SO\n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\ETX\NUL\STX\SOH\SOH\DC2\EOT\186\STX\SI\DC2\n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\ETX\NUL\STX\SOH\ETX\DC2\EOT\186\STX\NAK\SYN\n\
    \2\n\
    \\ACK\EOT\ENQ\ETX\NUL\STX\NUL\DC2\EOT\191\STX\EOT1\SUB\" SANs present in the certificate.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\EOT\DC2\EOT\191\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\ACK\DC2\EOT\191\STX\r\ESC\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\SOH\DC2\EOT\191\STX\FS,\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\ETX\DC2\EOT\191\STX/0\n\
    \7\n\
    \\ACK\EOT\ENQ\ETX\NUL\STX\SOH\DC2\EOT\194\STX\EOT\ETB\SUB' The subject field of the certificate.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\SOH\ENQ\DC2\EOT\194\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\SOH\SOH\DC2\EOT\194\STX\v\DC2\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\SOH\ETX\DC2\EOT\194\STX\NAK\SYN\n\
    \3\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\198\STX\STX\GS\SUB% Version of TLS that was negotiated.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\198\STX\STX\f\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\198\STX\r\CAN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\198\STX\ESC\FS\n\
    \\240\SOH\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\205\STX\STX3\SUB\225\SOH TLS cipher suite negotiated during handshake. The value is a\n\
    \ four-digit hex code defined by the IANA TLS Cipher Suite Registry\n\
    \ (e.g. ``009C`` for ``TLS_RSA_WITH_AES_128_GCM_SHA256``).\n\
    \\n\
    \ Here it is expressed as an integer.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\EOT\205\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\205\STX\RS.\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\205\STX12\n\
    \,\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\208\STX\STX\RS\SUB\RS SNI hostname from handshake.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\EOT\208\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\208\STX\t\EM\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\208\STX\FS\GS\n\
    \J\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\EOT\211\STX\STX9\SUB< Properties of the local certificate used to negotiate TLS.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ACK\DC2\EOT\211\STX\STX\ETB\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\EOT\211\STX\CAN4\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\EOT\211\STX78\n\
    \I\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\EOT\214\STX\STX8\SUB; Properties of the peer certificate used to negotiate TLS.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ACK\DC2\EOT\214\STX\STX\ETB\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\EOT\214\STX\CAN3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\EOT\214\STX67\n\
    \#\n\
    \\EOT\EOT\ENQ\STX\ENQ\DC2\EOT\217\STX\STX\FS\SUB\NAK The TLS session ID.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ENQ\DC2\EOT\217\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\SOH\DC2\EOT\217\STX\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ETX\DC2\EOT\217\STX\SUB\ESC\n\
    \&\n\
    \\STX\EOT\ACK\DC2\ACK\221\STX\NUL\146\ETX\SOH\SUB\CAN [#next-free-field: 14]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\221\STX\b\GS\n\
    \\r\n\
    \\ETX\EOT\ACK\a\DC2\ACK\222\STX\STX\223\STX6\n\
    \\DC2\n\
    \\b\EOT\ACK\a\211\136\225\ETX\SOH\DC2\ACK\222\STX\STX\223\STX6\n\
    \3\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\226\STX\STXa\SUB% The request method (RFC 7231/2616).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\226\STX\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\226\STX\US-\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\226\STX01\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\EOT\226\STX2`\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\175\b\DLE\DC2\EOT\226\STX3_\n\
    \?\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\229\STX\STX\DC4\SUB1 The scheme portion of the incoming request URI.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\EOT\229\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\229\STX\t\SI\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\229\STX\DC2\DC3\n\
    \H\n\
    \\EOT\EOT\ACK\STX\STX\DC2\EOT\232\STX\STX\ETB\SUB: HTTP/2 ``:authority`` or HTTP/1.1 ``Host`` header value.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\EOT\232\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\EOT\232\STX\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\EOT\232\STX\NAK\SYN\n\
    \m\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\EOT\236\STX\STX'\SUB_ The port of the incoming request URI\n\
    \ (unused currently, as port is composed onto authority).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\ACK\DC2\EOT\236\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\EOT\236\STX\RS\"\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\EOT\236\STX%&\n\
    \?\n\
    \\EOT\EOT\ACK\STX\EOT\DC2\EOT\239\STX\STX\DC2\SUB1 The path portion from the incoming request URI.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\EOT\ENQ\DC2\EOT\239\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\EOT\SOH\DC2\EOT\239\STX\t\r\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\EOT\ETX\DC2\EOT\239\STX\DLE\DC1\n\
    \;\n\
    \\EOT\EOT\ACK\STX\ENQ\DC2\EOT\242\STX\STX\CAN\SUB- Value of the ``User-Agent`` request header.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ENQ\ENQ\DC2\EOT\242\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ENQ\SOH\DC2\EOT\242\STX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ENQ\ETX\DC2\EOT\242\STX\SYN\ETB\n\
    \8\n\
    \\EOT\EOT\ACK\STX\ACK\DC2\EOT\245\STX\STX\NAK\SUB* Value of the ``Referer`` request header.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ACK\ENQ\DC2\EOT\245\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ACK\SOH\DC2\EOT\245\STX\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ACK\ETX\DC2\EOT\245\STX\DC3\DC4\n\
    \@\n\
    \\EOT\EOT\ACK\STX\a\DC2\EOT\248\STX\STX\ESC\SUB2 Value of the ``X-Forwarded-For`` request header.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\a\ENQ\DC2\EOT\248\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\a\SOH\DC2\EOT\248\STX\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\a\ETX\DC2\EOT\248\STX\EM\SUB\n\
    \\234\SOH\n\
    \\EOT\EOT\ACK\STX\b\DC2\EOT\255\STX\STX\CAN\SUB\219\SOH Value of the ``X-Request-Id`` request header\n\
    \\n\
    \ This header is used by Envoy to uniquely identify a request.\n\
    \ It will be generated for all external requests and internal requests that\n\
    \ do not already have a request ID.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\b\ENQ\DC2\EOT\255\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\b\SOH\DC2\EOT\255\STX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\b\ETX\DC2\EOT\255\STX\SYN\ETB\n\
    \F\n\
    \\EOT\EOT\ACK\STX\t\DC2\EOT\130\ETX\STX\FS\SUB8 Value of the ``X-Envoy-Original-Path`` request header.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\t\ENQ\DC2\EOT\130\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\t\SOH\DC2\EOT\130\ETX\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\t\ETX\DC2\EOT\130\ETX\EM\ESC\n\
    \\206\SOH\n\
    \\EOT\EOT\ACK\STX\n\
    \\DC2\EOT\136\ETX\STX$\SUB\191\SOH Size of the HTTP request headers in bytes.\n\
    \\n\
    \ This value is captured from the OSI layer 7 perspective, i.e. it does not\n\
    \ include overhead from framing or encoding at other networking layers.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\n\
    \\ENQ\DC2\EOT\136\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\n\
    \\SOH\DC2\EOT\136\ETX\t\RS\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\n\
    \\ETX\DC2\EOT\136\ETX!#\n\
    \\203\SOH\n\
    \\EOT\EOT\ACK\STX\v\DC2\EOT\142\ETX\STX!\SUB\188\SOH Size of the HTTP request body in bytes.\n\
    \\n\
    \ This value is captured from the OSI layer 7 perspective, i.e. it does not\n\
    \ include overhead from framing or encoding at other networking layers.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\v\ENQ\DC2\EOT\142\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\v\SOH\DC2\EOT\142\ETX\t\ESC\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\v\ETX\DC2\EOT\142\ETX\RS \n\
    \Q\n\
    \\EOT\EOT\ACK\STX\f\DC2\EOT\145\ETX\STX+\SUBC Map of additional headers that have been configured to be logged.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\f\ACK\DC2\EOT\145\ETX\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\f\SOH\DC2\EOT\145\ETX\SYN%\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\f\ETX\DC2\EOT\145\ETX(*\n\
    \%\n\
    \\STX\EOT\a\DC2\ACK\149\ETX\NUL\176\ETX\SOH\SUB\ETB [#next-free-field: 7]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\149\ETX\b\RS\n\
    \\r\n\
    \\ETX\EOT\a\a\DC2\ACK\150\ETX\STX\151\ETX7\n\
    \\DC2\n\
    \\b\EOT\a\a\211\136\225\ETX\SOH\DC2\ACK\150\ETX\STX\151\ETX7\n\
    \9\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\154\ETX\STX0\SUB+ The HTTP response code returned by Envoy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\154\ETX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\154\ETX\RS+\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\154\ETX./\n\
    \\207\SOH\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\160\ETX\STX$\SUB\192\SOH Size of the HTTP response headers in bytes.\n\
    \\n\
    \ This value is captured from the OSI layer 7 perspective, i.e. it does not\n\
    \ include overhead from framing or encoding at other networking layers.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\EOT\160\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\160\ETX\t\US\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\160\ETX\"#\n\
    \\204\SOH\n\
    \\EOT\EOT\a\STX\STX\DC2\EOT\166\ETX\STX!\SUB\189\SOH Size of the HTTP response body in bytes.\n\
    \\n\
    \ This value is captured from the OSI layer 7 perspective, i.e. it does not\n\
    \ include overhead from framing or encoding at other networking layers.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\EOT\166\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\EOT\166\ETX\t\FS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\EOT\166\ETX\US \n\
    \B\n\
    \\EOT\EOT\a\STX\ETX\DC2\EOT\169\ETX\STX+\SUB4 Map of additional headers configured to be logged.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ACK\DC2\EOT\169\ETX\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\EOT\169\ETX\SYN&\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\EOT\169\ETX)*\n\
    \8\n\
    \\EOT\EOT\a\STX\EOT\DC2\EOT\172\ETX\STX,\SUB* Map of trailers configured to be logged.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ACK\DC2\EOT\172\ETX\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\SOH\DC2\EOT\172\ETX\SYN'\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ETX\DC2\EOT\172\ETX*+\n\
    \/\n\
    \\EOT\EOT\a\STX\ENQ\DC2\EOT\175\ETX\STX#\SUB! The HTTP response code details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\ENQ\DC2\EOT\175\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\SOH\DC2\EOT\175\ETX\t\RS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\ETX\DC2\EOT\175\ETX!\"b\ACKproto3"