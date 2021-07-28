{- This file was auto-generated from envoy/config/core/v3/health_check.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.HealthCheck (
        HealthCheck(), HealthCheck'HealthChecker(..),
        _HealthCheck'HttpHealthCheck', _HealthCheck'TcpHealthCheck',
        _HealthCheck'GrpcHealthCheck', _HealthCheck'CustomHealthCheck',
        HealthCheck'CustomHealthCheck(),
        HealthCheck'CustomHealthCheck'ConfigType(..),
        _HealthCheck'CustomHealthCheck'TypedConfig,
        HealthCheck'GrpcHealthCheck(), HealthCheck'HttpHealthCheck(),
        HealthCheck'Payload(), HealthCheck'Payload'Payload(..),
        _HealthCheck'Payload'Text, _HealthCheck'Payload'Binary,
        HealthCheck'RedisHealthCheck(), HealthCheck'TcpHealthCheck(),
        HealthCheck'TlsOptions(), HealthStatus(..), HealthStatus(),
        HealthStatus'UnrecognizedValue
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
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.EventServiceConfig
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Envoy.Type.V3.Http
import qualified Proto.Envoy.Type.V3.Range
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.timeout' @:: Lens' HealthCheck Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'timeout' @:: Lens' HealthCheck (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.interval' @:: Lens' HealthCheck Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'interval' @:: Lens' HealthCheck (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.initialJitter' @:: Lens' HealthCheck Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'initialJitter' @:: Lens' HealthCheck (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.intervalJitter' @:: Lens' HealthCheck Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'intervalJitter' @:: Lens' HealthCheck (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.intervalJitterPercent' @:: Lens' HealthCheck Data.Word.Word32@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.unhealthyThreshold' @:: Lens' HealthCheck Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'unhealthyThreshold' @:: Lens' HealthCheck (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.healthyThreshold' @:: Lens' HealthCheck Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'healthyThreshold' @:: Lens' HealthCheck (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.altPort' @:: Lens' HealthCheck Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'altPort' @:: Lens' HealthCheck (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.reuseConnection' @:: Lens' HealthCheck Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'reuseConnection' @:: Lens' HealthCheck (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.noTrafficInterval' @:: Lens' HealthCheck Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'noTrafficInterval' @:: Lens' HealthCheck (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.noTrafficHealthyInterval' @:: Lens' HealthCheck Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'noTrafficHealthyInterval' @:: Lens' HealthCheck (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.unhealthyInterval' @:: Lens' HealthCheck Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'unhealthyInterval' @:: Lens' HealthCheck (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.unhealthyEdgeInterval' @:: Lens' HealthCheck Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'unhealthyEdgeInterval' @:: Lens' HealthCheck (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.healthyEdgeInterval' @:: Lens' HealthCheck Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'healthyEdgeInterval' @:: Lens' HealthCheck (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.eventLogPath' @:: Lens' HealthCheck Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.eventService' @:: Lens' HealthCheck Proto.Envoy.Config.Core.V3.EventServiceConfig.EventServiceConfig@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'eventService' @:: Lens' HealthCheck (Prelude.Maybe Proto.Envoy.Config.Core.V3.EventServiceConfig.EventServiceConfig)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.alwaysLogHealthCheckFailures' @:: Lens' HealthCheck Prelude.Bool@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.tlsOptions' @:: Lens' HealthCheck HealthCheck'TlsOptions@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'tlsOptions' @:: Lens' HealthCheck (Prelude.Maybe HealthCheck'TlsOptions)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.transportSocketMatchCriteria' @:: Lens' HealthCheck Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'transportSocketMatchCriteria' @:: Lens' HealthCheck (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'healthChecker' @:: Lens' HealthCheck (Prelude.Maybe HealthCheck'HealthChecker)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'httpHealthCheck' @:: Lens' HealthCheck (Prelude.Maybe HealthCheck'HttpHealthCheck)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.httpHealthCheck' @:: Lens' HealthCheck HealthCheck'HttpHealthCheck@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'tcpHealthCheck' @:: Lens' HealthCheck (Prelude.Maybe HealthCheck'TcpHealthCheck)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.tcpHealthCheck' @:: Lens' HealthCheck HealthCheck'TcpHealthCheck@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'grpcHealthCheck' @:: Lens' HealthCheck (Prelude.Maybe HealthCheck'GrpcHealthCheck)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.grpcHealthCheck' @:: Lens' HealthCheck HealthCheck'GrpcHealthCheck@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'customHealthCheck' @:: Lens' HealthCheck (Prelude.Maybe HealthCheck'CustomHealthCheck)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.customHealthCheck' @:: Lens' HealthCheck HealthCheck'CustomHealthCheck@ -}
data HealthCheck
  = HealthCheck'_constructor {_HealthCheck'timeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                              _HealthCheck'interval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                              _HealthCheck'initialJitter :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                              _HealthCheck'intervalJitter :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                              _HealthCheck'intervalJitterPercent :: !Data.Word.Word32,
                              _HealthCheck'unhealthyThreshold :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                              _HealthCheck'healthyThreshold :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                              _HealthCheck'altPort :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                              _HealthCheck'reuseConnection :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                              _HealthCheck'noTrafficInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                              _HealthCheck'noTrafficHealthyInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                              _HealthCheck'unhealthyInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                              _HealthCheck'unhealthyEdgeInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                              _HealthCheck'healthyEdgeInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                              _HealthCheck'eventLogPath :: !Data.Text.Text,
                              _HealthCheck'eventService :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.EventServiceConfig.EventServiceConfig),
                              _HealthCheck'alwaysLogHealthCheckFailures :: !Prelude.Bool,
                              _HealthCheck'tlsOptions :: !(Prelude.Maybe HealthCheck'TlsOptions),
                              _HealthCheck'transportSocketMatchCriteria :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                              _HealthCheck'healthChecker :: !(Prelude.Maybe HealthCheck'HealthChecker),
                              _HealthCheck'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HealthCheck where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data HealthCheck'HealthChecker
  = HealthCheck'HttpHealthCheck' !HealthCheck'HttpHealthCheck |
    HealthCheck'TcpHealthCheck' !HealthCheck'TcpHealthCheck |
    HealthCheck'GrpcHealthCheck' !HealthCheck'GrpcHealthCheck |
    HealthCheck'CustomHealthCheck' !HealthCheck'CustomHealthCheck
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField HealthCheck "timeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'timeout
           (\ x__ y__ -> x__ {_HealthCheck'timeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'timeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'timeout
           (\ x__ y__ -> x__ {_HealthCheck'timeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "interval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'interval
           (\ x__ y__ -> x__ {_HealthCheck'interval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'interval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'interval
           (\ x__ y__ -> x__ {_HealthCheck'interval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "initialJitter" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'initialJitter
           (\ x__ y__ -> x__ {_HealthCheck'initialJitter = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'initialJitter" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'initialJitter
           (\ x__ y__ -> x__ {_HealthCheck'initialJitter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "intervalJitter" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'intervalJitter
           (\ x__ y__ -> x__ {_HealthCheck'intervalJitter = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'intervalJitter" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'intervalJitter
           (\ x__ y__ -> x__ {_HealthCheck'intervalJitter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "intervalJitterPercent" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'intervalJitterPercent
           (\ x__ y__ -> x__ {_HealthCheck'intervalJitterPercent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "unhealthyThreshold" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'unhealthyThreshold
           (\ x__ y__ -> x__ {_HealthCheck'unhealthyThreshold = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'unhealthyThreshold" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'unhealthyThreshold
           (\ x__ y__ -> x__ {_HealthCheck'unhealthyThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "healthyThreshold" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'healthyThreshold
           (\ x__ y__ -> x__ {_HealthCheck'healthyThreshold = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'healthyThreshold" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'healthyThreshold
           (\ x__ y__ -> x__ {_HealthCheck'healthyThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "altPort" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'altPort
           (\ x__ y__ -> x__ {_HealthCheck'altPort = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'altPort" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'altPort
           (\ x__ y__ -> x__ {_HealthCheck'altPort = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "reuseConnection" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'reuseConnection
           (\ x__ y__ -> x__ {_HealthCheck'reuseConnection = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'reuseConnection" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'reuseConnection
           (\ x__ y__ -> x__ {_HealthCheck'reuseConnection = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "noTrafficInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'noTrafficInterval
           (\ x__ y__ -> x__ {_HealthCheck'noTrafficInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'noTrafficInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'noTrafficInterval
           (\ x__ y__ -> x__ {_HealthCheck'noTrafficInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "noTrafficHealthyInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'noTrafficHealthyInterval
           (\ x__ y__ -> x__ {_HealthCheck'noTrafficHealthyInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'noTrafficHealthyInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'noTrafficHealthyInterval
           (\ x__ y__ -> x__ {_HealthCheck'noTrafficHealthyInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "unhealthyInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'unhealthyInterval
           (\ x__ y__ -> x__ {_HealthCheck'unhealthyInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'unhealthyInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'unhealthyInterval
           (\ x__ y__ -> x__ {_HealthCheck'unhealthyInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "unhealthyEdgeInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'unhealthyEdgeInterval
           (\ x__ y__ -> x__ {_HealthCheck'unhealthyEdgeInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'unhealthyEdgeInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'unhealthyEdgeInterval
           (\ x__ y__ -> x__ {_HealthCheck'unhealthyEdgeInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "healthyEdgeInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'healthyEdgeInterval
           (\ x__ y__ -> x__ {_HealthCheck'healthyEdgeInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'healthyEdgeInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'healthyEdgeInterval
           (\ x__ y__ -> x__ {_HealthCheck'healthyEdgeInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "eventLogPath" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'eventLogPath
           (\ x__ y__ -> x__ {_HealthCheck'eventLogPath = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "eventService" Proto.Envoy.Config.Core.V3.EventServiceConfig.EventServiceConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'eventService
           (\ x__ y__ -> x__ {_HealthCheck'eventService = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'eventService" (Prelude.Maybe Proto.Envoy.Config.Core.V3.EventServiceConfig.EventServiceConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'eventService
           (\ x__ y__ -> x__ {_HealthCheck'eventService = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "alwaysLogHealthCheckFailures" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'alwaysLogHealthCheckFailures
           (\ x__ y__
              -> x__ {_HealthCheck'alwaysLogHealthCheckFailures = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "tlsOptions" HealthCheck'TlsOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'tlsOptions
           (\ x__ y__ -> x__ {_HealthCheck'tlsOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'tlsOptions" (Prelude.Maybe HealthCheck'TlsOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'tlsOptions
           (\ x__ y__ -> x__ {_HealthCheck'tlsOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "transportSocketMatchCriteria" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'transportSocketMatchCriteria
           (\ x__ y__
              -> x__ {_HealthCheck'transportSocketMatchCriteria = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'transportSocketMatchCriteria" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'transportSocketMatchCriteria
           (\ x__ y__
              -> x__ {_HealthCheck'transportSocketMatchCriteria = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'healthChecker" (Prelude.Maybe HealthCheck'HealthChecker) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'healthChecker
           (\ x__ y__ -> x__ {_HealthCheck'healthChecker = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'httpHealthCheck" (Prelude.Maybe HealthCheck'HttpHealthCheck) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'healthChecker
           (\ x__ y__ -> x__ {_HealthCheck'healthChecker = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HealthCheck'HttpHealthCheck' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HealthCheck'HttpHealthCheck' y__))
instance Data.ProtoLens.Field.HasField HealthCheck "httpHealthCheck" HealthCheck'HttpHealthCheck where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'healthChecker
           (\ x__ y__ -> x__ {_HealthCheck'healthChecker = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HealthCheck'HttpHealthCheck' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HealthCheck'HttpHealthCheck' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'tcpHealthCheck" (Prelude.Maybe HealthCheck'TcpHealthCheck) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'healthChecker
           (\ x__ y__ -> x__ {_HealthCheck'healthChecker = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HealthCheck'TcpHealthCheck' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HealthCheck'TcpHealthCheck' y__))
instance Data.ProtoLens.Field.HasField HealthCheck "tcpHealthCheck" HealthCheck'TcpHealthCheck where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'healthChecker
           (\ x__ y__ -> x__ {_HealthCheck'healthChecker = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HealthCheck'TcpHealthCheck' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HealthCheck'TcpHealthCheck' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'grpcHealthCheck" (Prelude.Maybe HealthCheck'GrpcHealthCheck) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'healthChecker
           (\ x__ y__ -> x__ {_HealthCheck'healthChecker = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HealthCheck'GrpcHealthCheck' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HealthCheck'GrpcHealthCheck' y__))
instance Data.ProtoLens.Field.HasField HealthCheck "grpcHealthCheck" HealthCheck'GrpcHealthCheck where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'healthChecker
           (\ x__ y__ -> x__ {_HealthCheck'healthChecker = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HealthCheck'GrpcHealthCheck' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HealthCheck'GrpcHealthCheck' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HealthCheck "maybe'customHealthCheck" (Prelude.Maybe HealthCheck'CustomHealthCheck) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'healthChecker
           (\ x__ y__ -> x__ {_HealthCheck'healthChecker = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HealthCheck'CustomHealthCheck' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HealthCheck'CustomHealthCheck' y__))
instance Data.ProtoLens.Field.HasField HealthCheck "customHealthCheck" HealthCheck'CustomHealthCheck where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'healthChecker
           (\ x__ y__ -> x__ {_HealthCheck'healthChecker = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HealthCheck'CustomHealthCheck' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HealthCheck'CustomHealthCheck' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message HealthCheck where
  messageName _ = Data.Text.pack "envoy.config.core.v3.HealthCheck"
  packedMessageDescriptor _
    = "\n\
      \\vHealthCheck\DC2?\n\
      \\atimeout\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\atimeoutB\n\
      \\250B\a\170\SOH\EOT\b\SOH*\NUL\DC2A\n\
      \\binterval\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\bintervalB\n\
      \\250B\a\170\SOH\EOT\b\SOH*\NUL\DC2@\n\
      \\SOinitial_jitter\CAN\DC4 \SOH(\v2\EM.google.protobuf.DurationR\rinitialJitter\DC2B\n\
      \\SIinterval_jitter\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\SOintervalJitter\DC26\n\
      \\ETBinterval_jitter_percent\CAN\DC2 \SOH(\rR\NAKintervalJitterPercent\DC2W\n\
      \\DC3unhealthy_threshold\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2unhealthyThresholdB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2S\n\
      \\DC1healthy_threshold\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\DLEhealthyThresholdB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC27\n\
      \\balt_port\CAN\ACK \SOH(\v2\FS.google.protobuf.UInt32ValueR\aaltPort\DC2E\n\
      \\DLEreuse_connection\CAN\a \SOH(\v2\SUB.google.protobuf.BoolValueR\SIreuseConnection\DC2_\n\
      \\DC1http_health_check\CAN\b \SOH(\v21.envoy.config.core.v3.HealthCheck.HttpHealthCheckH\NULR\SIhttpHealthCheck\DC2\\\n\
      \\DLEtcp_health_check\CAN\t \SOH(\v20.envoy.config.core.v3.HealthCheck.TcpHealthCheckH\NULR\SOtcpHealthCheck\DC2_\n\
      \\DC1grpc_health_check\CAN\v \SOH(\v21.envoy.config.core.v3.HealthCheck.GrpcHealthCheckH\NULR\SIgrpcHealthCheck\DC2e\n\
      \\DC3custom_health_check\CAN\r \SOH(\v23.envoy.config.core.v3.HealthCheck.CustomHealthCheckH\NULR\DC1customHealthCheck\DC2S\n\
      \\DC3no_traffic_interval\CAN\f \SOH(\v2\EM.google.protobuf.DurationR\DC1noTrafficIntervalB\b\250B\ENQ\170\SOH\STX*\NUL\DC2b\n\
      \\ESCno_traffic_healthy_interval\CAN\CAN \SOH(\v2\EM.google.protobuf.DurationR\CANnoTrafficHealthyIntervalB\b\250B\ENQ\170\SOH\STX*\NUL\DC2R\n\
      \\DC2unhealthy_interval\CAN\SO \SOH(\v2\EM.google.protobuf.DurationR\DC1unhealthyIntervalB\b\250B\ENQ\170\SOH\STX*\NUL\DC2[\n\
      \\ETBunhealthy_edge_interval\CAN\SI \SOH(\v2\EM.google.protobuf.DurationR\NAKunhealthyEdgeIntervalB\b\250B\ENQ\170\SOH\STX*\NUL\DC2W\n\
      \\NAKhealthy_edge_interval\CAN\DLE \SOH(\v2\EM.google.protobuf.DurationR\DC3healthyEdgeIntervalB\b\250B\ENQ\170\SOH\STX*\NUL\DC2$\n\
      \\SOevent_log_path\CAN\DC1 \SOH(\tR\feventLogPath\DC2M\n\
      \\revent_service\CAN\SYN \SOH(\v2(.envoy.config.core.v3.EventServiceConfigR\feventService\DC2F\n\
      \ always_log_health_check_failures\CAN\DC3 \SOH(\bR\FSalwaysLogHealthCheckFailures\DC2M\n\
      \\vtls_options\CAN\NAK \SOH(\v2,.envoy.config.core.v3.HealthCheck.TlsOptionsR\n\
      \tlsOptions\DC2^\n\
      \\UStransport_socket_match_criteria\CAN\ETB \SOH(\v2\ETB.google.protobuf.StructR\FStransportSocketMatchCriteria\SUB\128\SOH\n\
      \\aPayload\DC2\GS\n\
      \\EOTtext\CAN\SOH \SOH(\tH\NULR\EOTtextB\a\250B\EOTr\STX\DLE\SOH\DC2\CAN\n\
      \\ACKbinary\CAN\STX \SOH(\fH\NULR\ACKbinaryB\SO\n\
      \\apayload\DC2\ETX\248B\SOH:,\154\197\136\RS'\n\
      \%envoy.api.v2.core.HealthCheck.Payload\SUB\224\ENQ\n\
      \\SIHttpHealthCheck\DC2\US\n\
      \\EOThost\CAN\SOH \SOH(\tR\EOThostB\v\250B\br\ACK\192\SOH\STX\200\SOH\NUL\DC2!\n\
      \\EOTpath\CAN\STX \SOH(\tR\EOTpathB\r\250B\n\
      \r\b\DLE\SOH\192\SOH\STX\200\SOH\NUL\DC2=\n\
      \\EOTsend\CAN\ETX \SOH(\v2).envoy.config.core.v3.HealthCheck.PayloadR\EOTsend\DC2C\n\
      \\areceive\CAN\EOT \SOH(\v2).envoy.config.core.v3.HealthCheck.PayloadR\areceive\DC2g\n\
      \\SYNrequest_headers_to_add\CAN\ACK \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\DC3requestHeadersToAddB\t\250B\ACK\146\SOH\ETX\DLE\232\a\DC2K\n\
      \\EMrequest_headers_to_remove\CAN\b \ETX(\tR\SYNrequestHeadersToRemoveB\DLE\250B\r\146\SOH\n\
      \\"\br\ACK\192\SOH\SOH\200\SOH\NUL\DC2F\n\
      \\DC1expected_statuses\CAN\t \ETX(\v2\EM.envoy.type.v3.Int64RangeR\DLEexpectedStatuses\DC2T\n\
      \\DC1codec_client_type\CAN\n\
      \ \SOH(\SO2\RS.envoy.type.v3.CodecClientTypeR\SIcodecClientTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2V\n\
      \\DC4service_name_matcher\CAN\v \SOH(\v2$.envoy.type.matcher.v3.StringMatcherR\DC2serviceNameMatcher:4\154\197\136\RS/\n\
      \-envoy.api.v2.core.HealthCheck.HttpHealthCheckJ\EOT\b\ENQ\DLE\ACKJ\EOT\b\a\DLE\bR\fservice_nameR\tuse_http2\SUB\201\SOH\n\
      \\SOTcpHealthCheck\DC2=\n\
      \\EOTsend\CAN\SOH \SOH(\v2).envoy.config.core.v3.HealthCheck.PayloadR\EOTsend\DC2C\n\
      \\areceive\CAN\STX \ETX(\v2).envoy.config.core.v3.HealthCheck.PayloadR\areceive:3\154\197\136\RS.\n\
      \,envoy.api.v2.core.HealthCheck.TcpHealthCheck\SUB[\n\
      \\DLERedisHealthCheck\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey:5\154\197\136\RS0\n\
      \.envoy.api.v2.core.HealthCheck.RedisHealthCheck\SUB\149\SOH\n\
      \\SIGrpcHealthCheck\DC2!\n\
      \\fservice_name\CAN\SOH \SOH(\tR\vserviceName\DC2)\n\
      \\tauthority\CAN\STX \SOH(\tR\tauthorityB\v\250B\br\ACK\192\SOH\STX\200\SOH\NUL:4\154\197\136\RS/\n\
      \-envoy.api.v2.core.HealthCheck.GrpcHealthCheck\SUB\192\SOH\n\
      \\DC1CustomHealthCheck\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
      \\vconfig_type:6\154\197\136\RS1\n\
      \/envoy.api.v2.core.HealthCheck.CustomHealthCheckJ\EOT\b\STX\DLE\ETXR\ACKconfig\SUBd\n\
      \\n\
      \TlsOptions\DC2%\n\
      \\SOalpn_protocols\CAN\SOH \ETX(\tR\ralpnProtocols:/\154\197\136\RS*\n\
      \(envoy.api.v2.core.HealthCheck.TlsOptionsB\NAK\n\
      \\SOhealth_checker\DC2\ETX\248B\SOH:$\154\197\136\RS\US\n\
      \\GSenvoy.api.v2.core.HealthCheckJ\EOT\b\n\
      \\DLE\v"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        timeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeout")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        interval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'interval")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        initialJitter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initial_jitter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'initialJitter")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        intervalJitter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interval_jitter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'intervalJitter")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        intervalJitterPercent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interval_jitter_percent"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"intervalJitterPercent")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        unhealthyThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unhealthy_threshold"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unhealthyThreshold")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        healthyThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "healthy_threshold"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'healthyThreshold")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        altPort__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "alt_port"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'altPort")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        reuseConnection__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reuse_connection"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'reuseConnection")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        noTrafficInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no_traffic_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'noTrafficInterval")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        noTrafficHealthyInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no_traffic_healthy_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'noTrafficHealthyInterval")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        unhealthyInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unhealthy_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unhealthyInterval")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        unhealthyEdgeInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unhealthy_edge_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unhealthyEdgeInterval")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        healthyEdgeInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "healthy_edge_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'healthyEdgeInterval")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        eventLogPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event_log_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"eventLogPath")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        eventService__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event_service"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.EventServiceConfig.EventServiceConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'eventService")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        alwaysLogHealthCheckFailures__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "always_log_health_check_failures"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"alwaysLogHealthCheckFailures")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        tlsOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tls_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HealthCheck'TlsOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tlsOptions")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        transportSocketMatchCriteria__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport_socket_match_criteria"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'transportSocketMatchCriteria")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        httpHealthCheck__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_health_check"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HealthCheck'HttpHealthCheck)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpHealthCheck")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        tcpHealthCheck__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tcp_health_check"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HealthCheck'TcpHealthCheck)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tcpHealthCheck")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        grpcHealthCheck__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grpc_health_check"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HealthCheck'GrpcHealthCheck)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'grpcHealthCheck")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
        customHealthCheck__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "custom_health_check"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HealthCheck'CustomHealthCheck)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'customHealthCheck")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, timeout__field_descriptor),
           (Data.ProtoLens.Tag 2, interval__field_descriptor),
           (Data.ProtoLens.Tag 20, initialJitter__field_descriptor),
           (Data.ProtoLens.Tag 3, intervalJitter__field_descriptor),
           (Data.ProtoLens.Tag 18, intervalJitterPercent__field_descriptor),
           (Data.ProtoLens.Tag 4, unhealthyThreshold__field_descriptor),
           (Data.ProtoLens.Tag 5, healthyThreshold__field_descriptor),
           (Data.ProtoLens.Tag 6, altPort__field_descriptor),
           (Data.ProtoLens.Tag 7, reuseConnection__field_descriptor),
           (Data.ProtoLens.Tag 12, noTrafficInterval__field_descriptor),
           (Data.ProtoLens.Tag 24, 
            noTrafficHealthyInterval__field_descriptor),
           (Data.ProtoLens.Tag 14, unhealthyInterval__field_descriptor),
           (Data.ProtoLens.Tag 15, unhealthyEdgeInterval__field_descriptor),
           (Data.ProtoLens.Tag 16, healthyEdgeInterval__field_descriptor),
           (Data.ProtoLens.Tag 17, eventLogPath__field_descriptor),
           (Data.ProtoLens.Tag 22, eventService__field_descriptor),
           (Data.ProtoLens.Tag 19, 
            alwaysLogHealthCheckFailures__field_descriptor),
           (Data.ProtoLens.Tag 21, tlsOptions__field_descriptor),
           (Data.ProtoLens.Tag 23, 
            transportSocketMatchCriteria__field_descriptor),
           (Data.ProtoLens.Tag 8, httpHealthCheck__field_descriptor),
           (Data.ProtoLens.Tag 9, tcpHealthCheck__field_descriptor),
           (Data.ProtoLens.Tag 11, grpcHealthCheck__field_descriptor),
           (Data.ProtoLens.Tag 13, customHealthCheck__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HealthCheck'_unknownFields
        (\ x__ y__ -> x__ {_HealthCheck'_unknownFields = y__})
  defMessage
    = HealthCheck'_constructor
        {_HealthCheck'timeout = Prelude.Nothing,
         _HealthCheck'interval = Prelude.Nothing,
         _HealthCheck'initialJitter = Prelude.Nothing,
         _HealthCheck'intervalJitter = Prelude.Nothing,
         _HealthCheck'intervalJitterPercent = Data.ProtoLens.fieldDefault,
         _HealthCheck'unhealthyThreshold = Prelude.Nothing,
         _HealthCheck'healthyThreshold = Prelude.Nothing,
         _HealthCheck'altPort = Prelude.Nothing,
         _HealthCheck'reuseConnection = Prelude.Nothing,
         _HealthCheck'noTrafficInterval = Prelude.Nothing,
         _HealthCheck'noTrafficHealthyInterval = Prelude.Nothing,
         _HealthCheck'unhealthyInterval = Prelude.Nothing,
         _HealthCheck'unhealthyEdgeInterval = Prelude.Nothing,
         _HealthCheck'healthyEdgeInterval = Prelude.Nothing,
         _HealthCheck'eventLogPath = Data.ProtoLens.fieldDefault,
         _HealthCheck'eventService = Prelude.Nothing,
         _HealthCheck'alwaysLogHealthCheckFailures = Data.ProtoLens.fieldDefault,
         _HealthCheck'tlsOptions = Prelude.Nothing,
         _HealthCheck'transportSocketMatchCriteria = Prelude.Nothing,
         _HealthCheck'healthChecker = Prelude.Nothing,
         _HealthCheck'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HealthCheck -> Data.ProtoLens.Encoding.Bytes.Parser HealthCheck
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
                                       "timeout"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"timeout") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "interval"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"interval") y x)
                        162
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "initial_jitter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"initialJitter") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "interval_jitter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"intervalJitter") y x)
                        144
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "interval_jitter_percent"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"intervalJitterPercent") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "unhealthy_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"unhealthyThreshold") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "healthy_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"healthyThreshold") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "alt_port"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"altPort") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "reuse_connection"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"reuseConnection") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "no_traffic_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"noTrafficInterval") y x)
                        194
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "no_traffic_healthy_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"noTrafficHealthyInterval") y x)
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "unhealthy_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"unhealthyInterval") y x)
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "unhealthy_edge_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"unhealthyEdgeInterval") y x)
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "healthy_edge_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"healthyEdgeInterval") y x)
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "event_log_path"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"eventLogPath") y x)
                        178
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "event_service"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"eventService") y x)
                        152
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "always_log_health_check_failures"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"alwaysLogHealthCheckFailures")
                                     y
                                     x)
                        170
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tls_options"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tlsOptions") y x)
                        186
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "transport_socket_match_criteria"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"transportSocketMatchCriteria")
                                     y
                                     x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_health_check"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpHealthCheck") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tcp_health_check"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tcpHealthCheck") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "grpc_health_check"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"grpcHealthCheck") y x)
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "custom_health_check"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"customHealthCheck") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HealthCheck"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'timeout") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'interval") _x
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
                          (Data.ProtoLens.Field.field @"maybe'initialJitter") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 162)
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
                             (Data.ProtoLens.Field.field @"maybe'intervalJitter") _x
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
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"intervalJitterPercent") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 144)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'unhealthyThreshold") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
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
                                         _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'healthyThreshold") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
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
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'altPort") _x
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
                                            (Data.ProtoLens.Field.field @"maybe'reuseConnection") _x
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
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage
                                                  _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'noTrafficInterval")
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
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage
                                                     _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'noTrafficHealthyInterval")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 194)
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
                                                        @"maybe'unhealthyInterval")
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
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'unhealthyEdgeInterval")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
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
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'healthyEdgeInterval")
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
                                                       (let
                                                          _v
                                                            = Lens.Family2.view
                                                                (Data.ProtoLens.Field.field
                                                                   @"eventLogPath")
                                                                _x
                                                        in
                                                          if (Prelude.==)
                                                               _v Data.ProtoLens.fieldDefault then
                                                              Data.Monoid.mempty
                                                          else
                                                              (Data.Monoid.<>)
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
                                                                   Data.Text.Encoding.encodeUtf8
                                                                   _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'eventService")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
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
                                                                       Data.ProtoLens.encodeMessage
                                                                       _v))
                                                          ((Data.Monoid.<>)
                                                             (let
                                                                _v
                                                                  = Lens.Family2.view
                                                                      (Data.ProtoLens.Field.field
                                                                         @"alwaysLogHealthCheckFailures")
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
                                                                         (\ b -> if b then 1 else 0)
                                                                         _v))
                                                             ((Data.Monoid.<>)
                                                                (case
                                                                     Lens.Family2.view
                                                                       (Data.ProtoLens.Field.field
                                                                          @"maybe'tlsOptions")
                                                                       _x
                                                                 of
                                                                   Prelude.Nothing
                                                                     -> Data.Monoid.mempty
                                                                   (Prelude.Just _v)
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
                                                                             _v))
                                                                ((Data.Monoid.<>)
                                                                   (case
                                                                        Lens.Family2.view
                                                                          (Data.ProtoLens.Field.field
                                                                             @"maybe'transportSocketMatchCriteria")
                                                                          _x
                                                                    of
                                                                      Prelude.Nothing
                                                                        -> Data.Monoid.mempty
                                                                      (Prelude.Just _v)
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
                                                                   ((Data.Monoid.<>)
                                                                      (case
                                                                           Lens.Family2.view
                                                                             (Data.ProtoLens.Field.field
                                                                                @"maybe'healthChecker")
                                                                             _x
                                                                       of
                                                                         Prelude.Nothing
                                                                           -> Data.Monoid.mempty
                                                                         (Prelude.Just (HealthCheck'HttpHealthCheck' v))
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   66)
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
                                                                         (Prelude.Just (HealthCheck'TcpHealthCheck' v))
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   74)
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
                                                                         (Prelude.Just (HealthCheck'GrpcHealthCheck' v))
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   90)
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
                                                                         (Prelude.Just (HealthCheck'CustomHealthCheck' v))
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
                                                                                   v))
                                                                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                         (Lens.Family2.view
                                                                            Data.ProtoLens.unknownFields
                                                                            _x)))))))))))))))))))))
instance Control.DeepSeq.NFData HealthCheck where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HealthCheck'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HealthCheck'timeout x__)
                (Control.DeepSeq.deepseq
                   (_HealthCheck'interval x__)
                   (Control.DeepSeq.deepseq
                      (_HealthCheck'initialJitter x__)
                      (Control.DeepSeq.deepseq
                         (_HealthCheck'intervalJitter x__)
                         (Control.DeepSeq.deepseq
                            (_HealthCheck'intervalJitterPercent x__)
                            (Control.DeepSeq.deepseq
                               (_HealthCheck'unhealthyThreshold x__)
                               (Control.DeepSeq.deepseq
                                  (_HealthCheck'healthyThreshold x__)
                                  (Control.DeepSeq.deepseq
                                     (_HealthCheck'altPort x__)
                                     (Control.DeepSeq.deepseq
                                        (_HealthCheck'reuseConnection x__)
                                        (Control.DeepSeq.deepseq
                                           (_HealthCheck'noTrafficInterval x__)
                                           (Control.DeepSeq.deepseq
                                              (_HealthCheck'noTrafficHealthyInterval x__)
                                              (Control.DeepSeq.deepseq
                                                 (_HealthCheck'unhealthyInterval x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_HealthCheck'unhealthyEdgeInterval x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_HealthCheck'healthyEdgeInterval x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_HealthCheck'eventLogPath x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_HealthCheck'eventService x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_HealthCheck'alwaysLogHealthCheckFailures
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_HealthCheck'tlsOptions x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_HealthCheck'transportSocketMatchCriteria
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_HealthCheck'healthChecker
                                                                            x__)
                                                                         ()))))))))))))))))))))
instance Control.DeepSeq.NFData HealthCheck'HealthChecker where
  rnf (HealthCheck'HttpHealthCheck' x__) = Control.DeepSeq.rnf x__
  rnf (HealthCheck'TcpHealthCheck' x__) = Control.DeepSeq.rnf x__
  rnf (HealthCheck'GrpcHealthCheck' x__) = Control.DeepSeq.rnf x__
  rnf (HealthCheck'CustomHealthCheck' x__) = Control.DeepSeq.rnf x__
_HealthCheck'HttpHealthCheck' ::
  Data.ProtoLens.Prism.Prism' HealthCheck'HealthChecker HealthCheck'HttpHealthCheck
_HealthCheck'HttpHealthCheck'
  = Data.ProtoLens.Prism.prism'
      HealthCheck'HttpHealthCheck'
      (\ p__
         -> case p__ of
              (HealthCheck'HttpHealthCheck' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HealthCheck'TcpHealthCheck' ::
  Data.ProtoLens.Prism.Prism' HealthCheck'HealthChecker HealthCheck'TcpHealthCheck
_HealthCheck'TcpHealthCheck'
  = Data.ProtoLens.Prism.prism'
      HealthCheck'TcpHealthCheck'
      (\ p__
         -> case p__ of
              (HealthCheck'TcpHealthCheck' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HealthCheck'GrpcHealthCheck' ::
  Data.ProtoLens.Prism.Prism' HealthCheck'HealthChecker HealthCheck'GrpcHealthCheck
_HealthCheck'GrpcHealthCheck'
  = Data.ProtoLens.Prism.prism'
      HealthCheck'GrpcHealthCheck'
      (\ p__
         -> case p__ of
              (HealthCheck'GrpcHealthCheck' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HealthCheck'CustomHealthCheck' ::
  Data.ProtoLens.Prism.Prism' HealthCheck'HealthChecker HealthCheck'CustomHealthCheck
_HealthCheck'CustomHealthCheck'
  = Data.ProtoLens.Prism.prism'
      HealthCheck'CustomHealthCheck'
      (\ p__
         -> case p__ of
              (HealthCheck'CustomHealthCheck' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.name' @:: Lens' HealthCheck'CustomHealthCheck Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'configType' @:: Lens' HealthCheck'CustomHealthCheck (Prelude.Maybe HealthCheck'CustomHealthCheck'ConfigType)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'typedConfig' @:: Lens' HealthCheck'CustomHealthCheck (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.typedConfig' @:: Lens' HealthCheck'CustomHealthCheck Proto.Google.Protobuf.Any.Any@ -}
data HealthCheck'CustomHealthCheck
  = HealthCheck'CustomHealthCheck'_constructor {_HealthCheck'CustomHealthCheck'name :: !Data.Text.Text,
                                                _HealthCheck'CustomHealthCheck'configType :: !(Prelude.Maybe HealthCheck'CustomHealthCheck'ConfigType),
                                                _HealthCheck'CustomHealthCheck'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HealthCheck'CustomHealthCheck where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data HealthCheck'CustomHealthCheck'ConfigType
  = HealthCheck'CustomHealthCheck'TypedConfig !Proto.Google.Protobuf.Any.Any
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField HealthCheck'CustomHealthCheck "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'CustomHealthCheck'name
           (\ x__ y__ -> x__ {_HealthCheck'CustomHealthCheck'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck'CustomHealthCheck "maybe'configType" (Prelude.Maybe HealthCheck'CustomHealthCheck'ConfigType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'CustomHealthCheck'configType
           (\ x__ y__
              -> x__ {_HealthCheck'CustomHealthCheck'configType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck'CustomHealthCheck "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'CustomHealthCheck'configType
           (\ x__ y__
              -> x__ {_HealthCheck'CustomHealthCheck'configType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HealthCheck'CustomHealthCheck'TypedConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap HealthCheck'CustomHealthCheck'TypedConfig y__))
instance Data.ProtoLens.Field.HasField HealthCheck'CustomHealthCheck "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'CustomHealthCheck'configType
           (\ x__ y__
              -> x__ {_HealthCheck'CustomHealthCheck'configType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HealthCheck'CustomHealthCheck'TypedConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap HealthCheck'CustomHealthCheck'TypedConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message HealthCheck'CustomHealthCheck where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.HealthCheck.CustomHealthCheck"
  packedMessageDescriptor _
    = "\n\
      \\DC1CustomHealthCheck\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
      \\vconfig_type:6\154\197\136\RS1\n\
      \/envoy.api.v2.core.HealthCheck.CustomHealthCheckJ\EOT\b\STX\DLE\ETXR\ACKconfig"
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
              Data.ProtoLens.FieldDescriptor HealthCheck'CustomHealthCheck
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'CustomHealthCheck
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 3, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HealthCheck'CustomHealthCheck'_unknownFields
        (\ x__ y__
           -> x__ {_HealthCheck'CustomHealthCheck'_unknownFields = y__})
  defMessage
    = HealthCheck'CustomHealthCheck'_constructor
        {_HealthCheck'CustomHealthCheck'name = Data.ProtoLens.fieldDefault,
         _HealthCheck'CustomHealthCheck'configType = Prelude.Nothing,
         _HealthCheck'CustomHealthCheck'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HealthCheck'CustomHealthCheck
          -> Data.ProtoLens.Encoding.Bytes.Parser HealthCheck'CustomHealthCheck
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
                        26
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
          (do loop Data.ProtoLens.defMessage) "CustomHealthCheck"
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
                       (Data.ProtoLens.Field.field @"maybe'configType") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (HealthCheck'CustomHealthCheck'TypedConfig v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
instance Control.DeepSeq.NFData HealthCheck'CustomHealthCheck where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HealthCheck'CustomHealthCheck'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HealthCheck'CustomHealthCheck'name x__)
                (Control.DeepSeq.deepseq
                   (_HealthCheck'CustomHealthCheck'configType x__) ()))
instance Control.DeepSeq.NFData HealthCheck'CustomHealthCheck'ConfigType where
  rnf (HealthCheck'CustomHealthCheck'TypedConfig x__)
    = Control.DeepSeq.rnf x__
_HealthCheck'CustomHealthCheck'TypedConfig ::
  Data.ProtoLens.Prism.Prism' HealthCheck'CustomHealthCheck'ConfigType Proto.Google.Protobuf.Any.Any
_HealthCheck'CustomHealthCheck'TypedConfig
  = Data.ProtoLens.Prism.prism'
      HealthCheck'CustomHealthCheck'TypedConfig
      (\ p__
         -> case p__ of {
              (HealthCheck'CustomHealthCheck'TypedConfig p__val)
                -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.serviceName' @:: Lens' HealthCheck'GrpcHealthCheck Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.authority' @:: Lens' HealthCheck'GrpcHealthCheck Data.Text.Text@ -}
data HealthCheck'GrpcHealthCheck
  = HealthCheck'GrpcHealthCheck'_constructor {_HealthCheck'GrpcHealthCheck'serviceName :: !Data.Text.Text,
                                              _HealthCheck'GrpcHealthCheck'authority :: !Data.Text.Text,
                                              _HealthCheck'GrpcHealthCheck'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HealthCheck'GrpcHealthCheck where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HealthCheck'GrpcHealthCheck "serviceName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'GrpcHealthCheck'serviceName
           (\ x__ y__
              -> x__ {_HealthCheck'GrpcHealthCheck'serviceName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck'GrpcHealthCheck "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'GrpcHealthCheck'authority
           (\ x__ y__ -> x__ {_HealthCheck'GrpcHealthCheck'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Message HealthCheck'GrpcHealthCheck where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.HealthCheck.GrpcHealthCheck"
  packedMessageDescriptor _
    = "\n\
      \\SIGrpcHealthCheck\DC2!\n\
      \\fservice_name\CAN\SOH \SOH(\tR\vserviceName\DC2)\n\
      \\tauthority\CAN\STX \SOH(\tR\tauthorityB\v\250B\br\ACK\192\SOH\STX\200\SOH\NUL:4\154\197\136\RS/\n\
      \-envoy.api.v2.core.HealthCheck.GrpcHealthCheck"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        serviceName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"serviceName")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'GrpcHealthCheck
        authority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authority")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'GrpcHealthCheck
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, serviceName__field_descriptor),
           (Data.ProtoLens.Tag 2, authority__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HealthCheck'GrpcHealthCheck'_unknownFields
        (\ x__ y__
           -> x__ {_HealthCheck'GrpcHealthCheck'_unknownFields = y__})
  defMessage
    = HealthCheck'GrpcHealthCheck'_constructor
        {_HealthCheck'GrpcHealthCheck'serviceName = Data.ProtoLens.fieldDefault,
         _HealthCheck'GrpcHealthCheck'authority = Data.ProtoLens.fieldDefault,
         _HealthCheck'GrpcHealthCheck'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HealthCheck'GrpcHealthCheck
          -> Data.ProtoLens.Encoding.Bytes.Parser HealthCheck'GrpcHealthCheck
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
                                       "service_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"serviceName") y x)
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
                                       "authority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"authority") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GrpcHealthCheck"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"serviceName") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"authority") _x
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
instance Control.DeepSeq.NFData HealthCheck'GrpcHealthCheck where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HealthCheck'GrpcHealthCheck'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HealthCheck'GrpcHealthCheck'serviceName x__)
                (Control.DeepSeq.deepseq
                   (_HealthCheck'GrpcHealthCheck'authority x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.host' @:: Lens' HealthCheck'HttpHealthCheck Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.path' @:: Lens' HealthCheck'HttpHealthCheck Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.send' @:: Lens' HealthCheck'HttpHealthCheck HealthCheck'Payload@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'send' @:: Lens' HealthCheck'HttpHealthCheck (Prelude.Maybe HealthCheck'Payload)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.receive' @:: Lens' HealthCheck'HttpHealthCheck HealthCheck'Payload@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'receive' @:: Lens' HealthCheck'HttpHealthCheck (Prelude.Maybe HealthCheck'Payload)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.requestHeadersToAdd' @:: Lens' HealthCheck'HttpHealthCheck [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption]@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.vec'requestHeadersToAdd' @:: Lens' HealthCheck'HttpHealthCheck (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.requestHeadersToRemove' @:: Lens' HealthCheck'HttpHealthCheck [Data.Text.Text]@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.vec'requestHeadersToRemove' @:: Lens' HealthCheck'HttpHealthCheck (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.expectedStatuses' @:: Lens' HealthCheck'HttpHealthCheck [Proto.Envoy.Type.V3.Range.Int64Range]@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.vec'expectedStatuses' @:: Lens' HealthCheck'HttpHealthCheck (Data.Vector.Vector Proto.Envoy.Type.V3.Range.Int64Range)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.codecClientType' @:: Lens' HealthCheck'HttpHealthCheck Proto.Envoy.Type.V3.Http.CodecClientType@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.serviceNameMatcher' @:: Lens' HealthCheck'HttpHealthCheck Proto.Envoy.Type.Matcher.V3.String.StringMatcher@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'serviceNameMatcher' @:: Lens' HealthCheck'HttpHealthCheck (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher)@ -}
data HealthCheck'HttpHealthCheck
  = HealthCheck'HttpHealthCheck'_constructor {_HealthCheck'HttpHealthCheck'host :: !Data.Text.Text,
                                              _HealthCheck'HttpHealthCheck'path :: !Data.Text.Text,
                                              _HealthCheck'HttpHealthCheck'send :: !(Prelude.Maybe HealthCheck'Payload),
                                              _HealthCheck'HttpHealthCheck'receive :: !(Prelude.Maybe HealthCheck'Payload),
                                              _HealthCheck'HttpHealthCheck'requestHeadersToAdd :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption),
                                              _HealthCheck'HttpHealthCheck'requestHeadersToRemove :: !(Data.Vector.Vector Data.Text.Text),
                                              _HealthCheck'HttpHealthCheck'expectedStatuses :: !(Data.Vector.Vector Proto.Envoy.Type.V3.Range.Int64Range),
                                              _HealthCheck'HttpHealthCheck'codecClientType :: !Proto.Envoy.Type.V3.Http.CodecClientType,
                                              _HealthCheck'HttpHealthCheck'serviceNameMatcher :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher),
                                              _HealthCheck'HttpHealthCheck'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HealthCheck'HttpHealthCheck where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HealthCheck'HttpHealthCheck "host" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'HttpHealthCheck'host
           (\ x__ y__ -> x__ {_HealthCheck'HttpHealthCheck'host = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck'HttpHealthCheck "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'HttpHealthCheck'path
           (\ x__ y__ -> x__ {_HealthCheck'HttpHealthCheck'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck'HttpHealthCheck "send" HealthCheck'Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'HttpHealthCheck'send
           (\ x__ y__ -> x__ {_HealthCheck'HttpHealthCheck'send = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck'HttpHealthCheck "maybe'send" (Prelude.Maybe HealthCheck'Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'HttpHealthCheck'send
           (\ x__ y__ -> x__ {_HealthCheck'HttpHealthCheck'send = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck'HttpHealthCheck "receive" HealthCheck'Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'HttpHealthCheck'receive
           (\ x__ y__ -> x__ {_HealthCheck'HttpHealthCheck'receive = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck'HttpHealthCheck "maybe'receive" (Prelude.Maybe HealthCheck'Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'HttpHealthCheck'receive
           (\ x__ y__ -> x__ {_HealthCheck'HttpHealthCheck'receive = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck'HttpHealthCheck "requestHeadersToAdd" [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'HttpHealthCheck'requestHeadersToAdd
           (\ x__ y__
              -> x__ {_HealthCheck'HttpHealthCheck'requestHeadersToAdd = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HealthCheck'HttpHealthCheck "vec'requestHeadersToAdd" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'HttpHealthCheck'requestHeadersToAdd
           (\ x__ y__
              -> x__ {_HealthCheck'HttpHealthCheck'requestHeadersToAdd = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck'HttpHealthCheck "requestHeadersToRemove" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'HttpHealthCheck'requestHeadersToRemove
           (\ x__ y__
              -> x__
                   {_HealthCheck'HttpHealthCheck'requestHeadersToRemove = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HealthCheck'HttpHealthCheck "vec'requestHeadersToRemove" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'HttpHealthCheck'requestHeadersToRemove
           (\ x__ y__
              -> x__
                   {_HealthCheck'HttpHealthCheck'requestHeadersToRemove = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck'HttpHealthCheck "expectedStatuses" [Proto.Envoy.Type.V3.Range.Int64Range] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'HttpHealthCheck'expectedStatuses
           (\ x__ y__
              -> x__ {_HealthCheck'HttpHealthCheck'expectedStatuses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HealthCheck'HttpHealthCheck "vec'expectedStatuses" (Data.Vector.Vector Proto.Envoy.Type.V3.Range.Int64Range) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'HttpHealthCheck'expectedStatuses
           (\ x__ y__
              -> x__ {_HealthCheck'HttpHealthCheck'expectedStatuses = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck'HttpHealthCheck "codecClientType" Proto.Envoy.Type.V3.Http.CodecClientType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'HttpHealthCheck'codecClientType
           (\ x__ y__
              -> x__ {_HealthCheck'HttpHealthCheck'codecClientType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck'HttpHealthCheck "serviceNameMatcher" Proto.Envoy.Type.Matcher.V3.String.StringMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'HttpHealthCheck'serviceNameMatcher
           (\ x__ y__
              -> x__ {_HealthCheck'HttpHealthCheck'serviceNameMatcher = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck'HttpHealthCheck "maybe'serviceNameMatcher" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'HttpHealthCheck'serviceNameMatcher
           (\ x__ y__
              -> x__ {_HealthCheck'HttpHealthCheck'serviceNameMatcher = y__}))
        Prelude.id
instance Data.ProtoLens.Message HealthCheck'HttpHealthCheck where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.HealthCheck.HttpHealthCheck"
  packedMessageDescriptor _
    = "\n\
      \\SIHttpHealthCheck\DC2\US\n\
      \\EOThost\CAN\SOH \SOH(\tR\EOThostB\v\250B\br\ACK\192\SOH\STX\200\SOH\NUL\DC2!\n\
      \\EOTpath\CAN\STX \SOH(\tR\EOTpathB\r\250B\n\
      \r\b\DLE\SOH\192\SOH\STX\200\SOH\NUL\DC2=\n\
      \\EOTsend\CAN\ETX \SOH(\v2).envoy.config.core.v3.HealthCheck.PayloadR\EOTsend\DC2C\n\
      \\areceive\CAN\EOT \SOH(\v2).envoy.config.core.v3.HealthCheck.PayloadR\areceive\DC2g\n\
      \\SYNrequest_headers_to_add\CAN\ACK \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\DC3requestHeadersToAddB\t\250B\ACK\146\SOH\ETX\DLE\232\a\DC2K\n\
      \\EMrequest_headers_to_remove\CAN\b \ETX(\tR\SYNrequestHeadersToRemoveB\DLE\250B\r\146\SOH\n\
      \\"\br\ACK\192\SOH\SOH\200\SOH\NUL\DC2F\n\
      \\DC1expected_statuses\CAN\t \ETX(\v2\EM.envoy.type.v3.Int64RangeR\DLEexpectedStatuses\DC2T\n\
      \\DC1codec_client_type\CAN\n\
      \ \SOH(\SO2\RS.envoy.type.v3.CodecClientTypeR\SIcodecClientTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2V\n\
      \\DC4service_name_matcher\CAN\v \SOH(\v2$.envoy.type.matcher.v3.StringMatcherR\DC2serviceNameMatcher:4\154\197\136\RS/\n\
      \-envoy.api.v2.core.HealthCheck.HttpHealthCheckJ\EOT\b\ENQ\DLE\ACKJ\EOT\b\a\DLE\bR\fservice_nameR\tuse_http2"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        host__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"host")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'HttpHealthCheck
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"path")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'HttpHealthCheck
        send__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "send"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HealthCheck'Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'send")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'HttpHealthCheck
        receive__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "receive"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HealthCheck'Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'receive")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'HttpHealthCheck
        requestHeadersToAdd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_headers_to_add"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"requestHeadersToAdd")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'HttpHealthCheck
        requestHeadersToRemove__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_headers_to_remove"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"requestHeadersToRemove")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'HttpHealthCheck
        expectedStatuses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expected_statuses"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Range.Int64Range)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"expectedStatuses")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'HttpHealthCheck
        codecClientType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "codec_client_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Http.CodecClientType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"codecClientType")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'HttpHealthCheck
        serviceNameMatcher__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service_name_matcher"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.StringMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'serviceNameMatcher")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'HttpHealthCheck
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, host__field_descriptor),
           (Data.ProtoLens.Tag 2, path__field_descriptor),
           (Data.ProtoLens.Tag 3, send__field_descriptor),
           (Data.ProtoLens.Tag 4, receive__field_descriptor),
           (Data.ProtoLens.Tag 6, requestHeadersToAdd__field_descriptor),
           (Data.ProtoLens.Tag 8, requestHeadersToRemove__field_descriptor),
           (Data.ProtoLens.Tag 9, expectedStatuses__field_descriptor),
           (Data.ProtoLens.Tag 10, codecClientType__field_descriptor),
           (Data.ProtoLens.Tag 11, serviceNameMatcher__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HealthCheck'HttpHealthCheck'_unknownFields
        (\ x__ y__
           -> x__ {_HealthCheck'HttpHealthCheck'_unknownFields = y__})
  defMessage
    = HealthCheck'HttpHealthCheck'_constructor
        {_HealthCheck'HttpHealthCheck'host = Data.ProtoLens.fieldDefault,
         _HealthCheck'HttpHealthCheck'path = Data.ProtoLens.fieldDefault,
         _HealthCheck'HttpHealthCheck'send = Prelude.Nothing,
         _HealthCheck'HttpHealthCheck'receive = Prelude.Nothing,
         _HealthCheck'HttpHealthCheck'requestHeadersToAdd = Data.Vector.Generic.empty,
         _HealthCheck'HttpHealthCheck'requestHeadersToRemove = Data.Vector.Generic.empty,
         _HealthCheck'HttpHealthCheck'expectedStatuses = Data.Vector.Generic.empty,
         _HealthCheck'HttpHealthCheck'codecClientType = Data.ProtoLens.fieldDefault,
         _HealthCheck'HttpHealthCheck'serviceNameMatcher = Prelude.Nothing,
         _HealthCheck'HttpHealthCheck'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HealthCheck'HttpHealthCheck
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Type.V3.Range.Int64Range
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.HeaderValueOption
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                   -> Data.ProtoLens.Encoding.Bytes.Parser HealthCheck'HttpHealthCheck
        loop
          x
          mutable'expectedStatuses
          mutable'requestHeadersToAdd
          mutable'requestHeadersToRemove
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'expectedStatuses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'expectedStatuses)
                      frozen'requestHeadersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'requestHeadersToAdd)
                      frozen'requestHeadersToRemove <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                            mutable'requestHeadersToRemove)
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
                              (Data.ProtoLens.Field.field @"vec'expectedStatuses")
                              frozen'expectedStatuses
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'requestHeadersToAdd")
                                 frozen'requestHeadersToAdd
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'requestHeadersToRemove")
                                    frozen'requestHeadersToRemove
                                    x))))
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
                                       "host"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"host") y x)
                                  mutable'expectedStatuses
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
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
                                       "path"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                                  mutable'expectedStatuses
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "send"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"send") y x)
                                  mutable'expectedStatuses
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "receive"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"receive") y x)
                                  mutable'expectedStatuses
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "request_headers_to_add"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'requestHeadersToAdd y)
                                loop x mutable'expectedStatuses v mutable'requestHeadersToRemove
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "request_headers_to_remove"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'requestHeadersToRemove y)
                                loop x mutable'expectedStatuses mutable'requestHeadersToAdd v
                        74
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "expected_statuses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'expectedStatuses y)
                                loop x v mutable'requestHeadersToAdd mutable'requestHeadersToRemove
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "codec_client_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"codecClientType") y x)
                                  mutable'expectedStatuses
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "service_name_matcher"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"serviceNameMatcher") y x)
                                  mutable'expectedStatuses
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'expectedStatuses
                                  mutable'requestHeadersToAdd
                                  mutable'requestHeadersToRemove
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'expectedStatuses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              mutable'requestHeadersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              mutable'requestHeadersToRemove <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'expectedStatuses
                mutable'requestHeadersToAdd
                mutable'requestHeadersToRemove)
          "HttpHealthCheck"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"host") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"path") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'send") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'receive") _x
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
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'requestHeadersToAdd") _x))
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
                                          Data.Text.Encoding.encodeUtf8
                                          _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'requestHeadersToRemove") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
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
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'expectedStatuses") _x))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"codecClientType") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                           ((Prelude..)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral)
                                              Prelude.fromEnum
                                              _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'serviceNameMatcher")
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
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData HealthCheck'HttpHealthCheck where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HealthCheck'HttpHealthCheck'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HealthCheck'HttpHealthCheck'host x__)
                (Control.DeepSeq.deepseq
                   (_HealthCheck'HttpHealthCheck'path x__)
                   (Control.DeepSeq.deepseq
                      (_HealthCheck'HttpHealthCheck'send x__)
                      (Control.DeepSeq.deepseq
                         (_HealthCheck'HttpHealthCheck'receive x__)
                         (Control.DeepSeq.deepseq
                            (_HealthCheck'HttpHealthCheck'requestHeadersToAdd x__)
                            (Control.DeepSeq.deepseq
                               (_HealthCheck'HttpHealthCheck'requestHeadersToRemove x__)
                               (Control.DeepSeq.deepseq
                                  (_HealthCheck'HttpHealthCheck'expectedStatuses x__)
                                  (Control.DeepSeq.deepseq
                                     (_HealthCheck'HttpHealthCheck'codecClientType x__)
                                     (Control.DeepSeq.deepseq
                                        (_HealthCheck'HttpHealthCheck'serviceNameMatcher x__)
                                        ())))))))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'payload' @:: Lens' HealthCheck'Payload (Prelude.Maybe HealthCheck'Payload'Payload)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'text' @:: Lens' HealthCheck'Payload (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.text' @:: Lens' HealthCheck'Payload Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'binary' @:: Lens' HealthCheck'Payload (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.binary' @:: Lens' HealthCheck'Payload Data.ByteString.ByteString@ -}
data HealthCheck'Payload
  = HealthCheck'Payload'_constructor {_HealthCheck'Payload'payload :: !(Prelude.Maybe HealthCheck'Payload'Payload),
                                      _HealthCheck'Payload'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HealthCheck'Payload where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data HealthCheck'Payload'Payload
  = HealthCheck'Payload'Text !Data.Text.Text |
    HealthCheck'Payload'Binary !Data.ByteString.ByteString
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField HealthCheck'Payload "maybe'payload" (Prelude.Maybe HealthCheck'Payload'Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'Payload'payload
           (\ x__ y__ -> x__ {_HealthCheck'Payload'payload = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck'Payload "maybe'text" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'Payload'payload
           (\ x__ y__ -> x__ {_HealthCheck'Payload'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HealthCheck'Payload'Text x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HealthCheck'Payload'Text y__))
instance Data.ProtoLens.Field.HasField HealthCheck'Payload "text" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'Payload'payload
           (\ x__ y__ -> x__ {_HealthCheck'Payload'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HealthCheck'Payload'Text x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HealthCheck'Payload'Text y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField HealthCheck'Payload "maybe'binary" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'Payload'payload
           (\ x__ y__ -> x__ {_HealthCheck'Payload'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HealthCheck'Payload'Binary x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HealthCheck'Payload'Binary y__))
instance Data.ProtoLens.Field.HasField HealthCheck'Payload "binary" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'Payload'payload
           (\ x__ y__ -> x__ {_HealthCheck'Payload'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HealthCheck'Payload'Binary x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HealthCheck'Payload'Binary y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message HealthCheck'Payload where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.HealthCheck.Payload"
  packedMessageDescriptor _
    = "\n\
      \\aPayload\DC2\GS\n\
      \\EOTtext\CAN\SOH \SOH(\tH\NULR\EOTtextB\a\250B\EOTr\STX\DLE\SOH\DC2\CAN\n\
      \\ACKbinary\CAN\STX \SOH(\fH\NULR\ACKbinaryB\SO\n\
      \\apayload\DC2\ETX\248B\SOH:,\154\197\136\RS'\n\
      \%envoy.api.v2.core.HealthCheck.Payload"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        text__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "text"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'text")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'Payload
        binary__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "binary"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'binary")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'Payload
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, text__field_descriptor),
           (Data.ProtoLens.Tag 2, binary__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HealthCheck'Payload'_unknownFields
        (\ x__ y__ -> x__ {_HealthCheck'Payload'_unknownFields = y__})
  defMessage
    = HealthCheck'Payload'_constructor
        {_HealthCheck'Payload'payload = Prelude.Nothing,
         _HealthCheck'Payload'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HealthCheck'Payload
          -> Data.ProtoLens.Encoding.Bytes.Parser HealthCheck'Payload
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
                                       "text"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"text") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "binary"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"binary") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Payload"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'payload") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (HealthCheck'Payload'Text v))
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
                (Prelude.Just (HealthCheck'Payload'Binary v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HealthCheck'Payload where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HealthCheck'Payload'_unknownFields x__)
             (Control.DeepSeq.deepseq (_HealthCheck'Payload'payload x__) ())
instance Control.DeepSeq.NFData HealthCheck'Payload'Payload where
  rnf (HealthCheck'Payload'Text x__) = Control.DeepSeq.rnf x__
  rnf (HealthCheck'Payload'Binary x__) = Control.DeepSeq.rnf x__
_HealthCheck'Payload'Text ::
  Data.ProtoLens.Prism.Prism' HealthCheck'Payload'Payload Data.Text.Text
_HealthCheck'Payload'Text
  = Data.ProtoLens.Prism.prism'
      HealthCheck'Payload'Text
      (\ p__
         -> case p__ of
              (HealthCheck'Payload'Text p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HealthCheck'Payload'Binary ::
  Data.ProtoLens.Prism.Prism' HealthCheck'Payload'Payload Data.ByteString.ByteString
_HealthCheck'Payload'Binary
  = Data.ProtoLens.Prism.prism'
      HealthCheck'Payload'Binary
      (\ p__
         -> case p__ of
              (HealthCheck'Payload'Binary p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.key' @:: Lens' HealthCheck'RedisHealthCheck Data.Text.Text@ -}
data HealthCheck'RedisHealthCheck
  = HealthCheck'RedisHealthCheck'_constructor {_HealthCheck'RedisHealthCheck'key :: !Data.Text.Text,
                                               _HealthCheck'RedisHealthCheck'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HealthCheck'RedisHealthCheck where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HealthCheck'RedisHealthCheck "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'RedisHealthCheck'key
           (\ x__ y__ -> x__ {_HealthCheck'RedisHealthCheck'key = y__}))
        Prelude.id
instance Data.ProtoLens.Message HealthCheck'RedisHealthCheck where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.HealthCheck.RedisHealthCheck"
  packedMessageDescriptor _
    = "\n\
      \\DLERedisHealthCheck\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey:5\154\197\136\RS0\n\
      \.envoy.api.v2.core.HealthCheck.RedisHealthCheck"
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
              Data.ProtoLens.FieldDescriptor HealthCheck'RedisHealthCheck
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, key__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HealthCheck'RedisHealthCheck'_unknownFields
        (\ x__ y__
           -> x__ {_HealthCheck'RedisHealthCheck'_unknownFields = y__})
  defMessage
    = HealthCheck'RedisHealthCheck'_constructor
        {_HealthCheck'RedisHealthCheck'key = Data.ProtoLens.fieldDefault,
         _HealthCheck'RedisHealthCheck'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HealthCheck'RedisHealthCheck
          -> Data.ProtoLens.Encoding.Bytes.Parser HealthCheck'RedisHealthCheck
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RedisHealthCheck"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HealthCheck'RedisHealthCheck where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HealthCheck'RedisHealthCheck'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HealthCheck'RedisHealthCheck'key x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.send' @:: Lens' HealthCheck'TcpHealthCheck HealthCheck'Payload@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.maybe'send' @:: Lens' HealthCheck'TcpHealthCheck (Prelude.Maybe HealthCheck'Payload)@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.receive' @:: Lens' HealthCheck'TcpHealthCheck [HealthCheck'Payload]@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.vec'receive' @:: Lens' HealthCheck'TcpHealthCheck (Data.Vector.Vector HealthCheck'Payload)@ -}
data HealthCheck'TcpHealthCheck
  = HealthCheck'TcpHealthCheck'_constructor {_HealthCheck'TcpHealthCheck'send :: !(Prelude.Maybe HealthCheck'Payload),
                                             _HealthCheck'TcpHealthCheck'receive :: !(Data.Vector.Vector HealthCheck'Payload),
                                             _HealthCheck'TcpHealthCheck'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HealthCheck'TcpHealthCheck where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HealthCheck'TcpHealthCheck "send" HealthCheck'Payload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'TcpHealthCheck'send
           (\ x__ y__ -> x__ {_HealthCheck'TcpHealthCheck'send = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HealthCheck'TcpHealthCheck "maybe'send" (Prelude.Maybe HealthCheck'Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'TcpHealthCheck'send
           (\ x__ y__ -> x__ {_HealthCheck'TcpHealthCheck'send = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HealthCheck'TcpHealthCheck "receive" [HealthCheck'Payload] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'TcpHealthCheck'receive
           (\ x__ y__ -> x__ {_HealthCheck'TcpHealthCheck'receive = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HealthCheck'TcpHealthCheck "vec'receive" (Data.Vector.Vector HealthCheck'Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'TcpHealthCheck'receive
           (\ x__ y__ -> x__ {_HealthCheck'TcpHealthCheck'receive = y__}))
        Prelude.id
instance Data.ProtoLens.Message HealthCheck'TcpHealthCheck where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.HealthCheck.TcpHealthCheck"
  packedMessageDescriptor _
    = "\n\
      \\SOTcpHealthCheck\DC2=\n\
      \\EOTsend\CAN\SOH \SOH(\v2).envoy.config.core.v3.HealthCheck.PayloadR\EOTsend\DC2C\n\
      \\areceive\CAN\STX \ETX(\v2).envoy.config.core.v3.HealthCheck.PayloadR\areceive:3\154\197\136\RS.\n\
      \,envoy.api.v2.core.HealthCheck.TcpHealthCheck"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        send__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "send"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HealthCheck'Payload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'send")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'TcpHealthCheck
        receive__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "receive"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HealthCheck'Payload)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"receive")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'TcpHealthCheck
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, send__field_descriptor),
           (Data.ProtoLens.Tag 2, receive__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HealthCheck'TcpHealthCheck'_unknownFields
        (\ x__ y__
           -> x__ {_HealthCheck'TcpHealthCheck'_unknownFields = y__})
  defMessage
    = HealthCheck'TcpHealthCheck'_constructor
        {_HealthCheck'TcpHealthCheck'send = Prelude.Nothing,
         _HealthCheck'TcpHealthCheck'receive = Data.Vector.Generic.empty,
         _HealthCheck'TcpHealthCheck'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HealthCheck'TcpHealthCheck
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld HealthCheck'Payload
             -> Data.ProtoLens.Encoding.Bytes.Parser HealthCheck'TcpHealthCheck
        loop x mutable'receive
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'receive <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'receive)
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
                              (Data.ProtoLens.Field.field @"vec'receive") frozen'receive x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "send"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"send") y x)
                                  mutable'receive
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "receive"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'receive y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'receive
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'receive <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'receive)
          "TcpHealthCheck"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'send") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'receive") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData HealthCheck'TcpHealthCheck where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HealthCheck'TcpHealthCheck'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HealthCheck'TcpHealthCheck'send x__)
                (Control.DeepSeq.deepseq
                   (_HealthCheck'TcpHealthCheck'receive x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.alpnProtocols' @:: Lens' HealthCheck'TlsOptions [Data.Text.Text]@
         * 'Proto.Envoy.Config.Core.V3.HealthCheck_Fields.vec'alpnProtocols' @:: Lens' HealthCheck'TlsOptions (Data.Vector.Vector Data.Text.Text)@ -}
data HealthCheck'TlsOptions
  = HealthCheck'TlsOptions'_constructor {_HealthCheck'TlsOptions'alpnProtocols :: !(Data.Vector.Vector Data.Text.Text),
                                         _HealthCheck'TlsOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HealthCheck'TlsOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HealthCheck'TlsOptions "alpnProtocols" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'TlsOptions'alpnProtocols
           (\ x__ y__ -> x__ {_HealthCheck'TlsOptions'alpnProtocols = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HealthCheck'TlsOptions "vec'alpnProtocols" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HealthCheck'TlsOptions'alpnProtocols
           (\ x__ y__ -> x__ {_HealthCheck'TlsOptions'alpnProtocols = y__}))
        Prelude.id
instance Data.ProtoLens.Message HealthCheck'TlsOptions where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.HealthCheck.TlsOptions"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \TlsOptions\DC2%\n\
      \\SOalpn_protocols\CAN\SOH \ETX(\tR\ralpnProtocols:/\154\197\136\RS*\n\
      \(envoy.api.v2.core.HealthCheck.TlsOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        alpnProtocols__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "alpn_protocols"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"alpnProtocols")) ::
              Data.ProtoLens.FieldDescriptor HealthCheck'TlsOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, alpnProtocols__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HealthCheck'TlsOptions'_unknownFields
        (\ x__ y__ -> x__ {_HealthCheck'TlsOptions'_unknownFields = y__})
  defMessage
    = HealthCheck'TlsOptions'_constructor
        {_HealthCheck'TlsOptions'alpnProtocols = Data.Vector.Generic.empty,
         _HealthCheck'TlsOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HealthCheck'TlsOptions
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser HealthCheck'TlsOptions
        loop x mutable'alpnProtocols
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'alpnProtocols <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'alpnProtocols)
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
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
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
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'alpnProtocols
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'alpnProtocols <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'alpnProtocols)
          "TlsOptions"
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
                           Data.Text.Encoding.encodeUtf8
                           _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'alpnProtocols") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HealthCheck'TlsOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HealthCheck'TlsOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HealthCheck'TlsOptions'alpnProtocols x__) ())
newtype HealthStatus'UnrecognizedValue
  = HealthStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data HealthStatus
  = UNKNOWN |
    HEALTHY |
    UNHEALTHY |
    DRAINING |
    TIMEOUT |
    DEGRADED |
    HealthStatus'Unrecognized !HealthStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum HealthStatus where
  maybeToEnum 0 = Prelude.Just UNKNOWN
  maybeToEnum 1 = Prelude.Just HEALTHY
  maybeToEnum 2 = Prelude.Just UNHEALTHY
  maybeToEnum 3 = Prelude.Just DRAINING
  maybeToEnum 4 = Prelude.Just TIMEOUT
  maybeToEnum 5 = Prelude.Just DEGRADED
  maybeToEnum k
    = Prelude.Just
        (HealthStatus'Unrecognized
           (HealthStatus'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum UNKNOWN = "UNKNOWN"
  showEnum HEALTHY = "HEALTHY"
  showEnum UNHEALTHY = "UNHEALTHY"
  showEnum DRAINING = "DRAINING"
  showEnum TIMEOUT = "TIMEOUT"
  showEnum DEGRADED = "DEGRADED"
  showEnum
    (HealthStatus'Unrecognized (HealthStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UNKNOWN" = Prelude.Just UNKNOWN
    | (Prelude.==) k "HEALTHY" = Prelude.Just HEALTHY
    | (Prelude.==) k "UNHEALTHY" = Prelude.Just UNHEALTHY
    | (Prelude.==) k "DRAINING" = Prelude.Just DRAINING
    | (Prelude.==) k "TIMEOUT" = Prelude.Just TIMEOUT
    | (Prelude.==) k "DEGRADED" = Prelude.Just DEGRADED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded HealthStatus where
  minBound = UNKNOWN
  maxBound = DEGRADED
instance Prelude.Enum HealthStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum HealthStatus: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum UNKNOWN = 0
  fromEnum HEALTHY = 1
  fromEnum UNHEALTHY = 2
  fromEnum DRAINING = 3
  fromEnum TIMEOUT = 4
  fromEnum DEGRADED = 5
  fromEnum
    (HealthStatus'Unrecognized (HealthStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ DEGRADED
    = Prelude.error
        "HealthStatus.succ: bad argument DEGRADED. This value would be out of bounds."
  succ UNKNOWN = HEALTHY
  succ HEALTHY = UNHEALTHY
  succ UNHEALTHY = DRAINING
  succ DRAINING = TIMEOUT
  succ TIMEOUT = DEGRADED
  succ (HealthStatus'Unrecognized _)
    = Prelude.error
        "HealthStatus.succ: bad argument: unrecognized value"
  pred UNKNOWN
    = Prelude.error
        "HealthStatus.pred: bad argument UNKNOWN. This value would be out of bounds."
  pred HEALTHY = UNKNOWN
  pred UNHEALTHY = HEALTHY
  pred DRAINING = UNHEALTHY
  pred TIMEOUT = DRAINING
  pred DEGRADED = TIMEOUT
  pred (HealthStatus'Unrecognized _)
    = Prelude.error
        "HealthStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault HealthStatus where
  fieldDefault = UNKNOWN
instance Control.DeepSeq.NFData HealthStatus where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'envoy/config/core/v3/health_check.proto\DC2\DC4envoy.config.core.v3\SUB\USenvoy/config/core/v3/base.proto\SUB/envoy/config/core/v3/event_service_config.proto\SUB\"envoy/type/matcher/v3/string.proto\SUB\CANenvoy/type/v3/http.proto\SUB\EMenvoy/type/v3/range.proto\SUB\EMgoogle/protobuf/any.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\FSgoogle/protobuf/struct.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\198\ESC\n\
    \\vHealthCheck\DC2?\n\
    \\atimeout\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\atimeoutB\n\
    \\250B\a\170\SOH\EOT\b\SOH*\NUL\DC2A\n\
    \\binterval\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\bintervalB\n\
    \\250B\a\170\SOH\EOT\b\SOH*\NUL\DC2@\n\
    \\SOinitial_jitter\CAN\DC4 \SOH(\v2\EM.google.protobuf.DurationR\rinitialJitter\DC2B\n\
    \\SIinterval_jitter\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\SOintervalJitter\DC26\n\
    \\ETBinterval_jitter_percent\CAN\DC2 \SOH(\rR\NAKintervalJitterPercent\DC2W\n\
    \\DC3unhealthy_threshold\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2unhealthyThresholdB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2S\n\
    \\DC1healthy_threshold\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\DLEhealthyThresholdB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC27\n\
    \\balt_port\CAN\ACK \SOH(\v2\FS.google.protobuf.UInt32ValueR\aaltPort\DC2E\n\
    \\DLEreuse_connection\CAN\a \SOH(\v2\SUB.google.protobuf.BoolValueR\SIreuseConnection\DC2_\n\
    \\DC1http_health_check\CAN\b \SOH(\v21.envoy.config.core.v3.HealthCheck.HttpHealthCheckH\NULR\SIhttpHealthCheck\DC2\\\n\
    \\DLEtcp_health_check\CAN\t \SOH(\v20.envoy.config.core.v3.HealthCheck.TcpHealthCheckH\NULR\SOtcpHealthCheck\DC2_\n\
    \\DC1grpc_health_check\CAN\v \SOH(\v21.envoy.config.core.v3.HealthCheck.GrpcHealthCheckH\NULR\SIgrpcHealthCheck\DC2e\n\
    \\DC3custom_health_check\CAN\r \SOH(\v23.envoy.config.core.v3.HealthCheck.CustomHealthCheckH\NULR\DC1customHealthCheck\DC2S\n\
    \\DC3no_traffic_interval\CAN\f \SOH(\v2\EM.google.protobuf.DurationR\DC1noTrafficIntervalB\b\250B\ENQ\170\SOH\STX*\NUL\DC2b\n\
    \\ESCno_traffic_healthy_interval\CAN\CAN \SOH(\v2\EM.google.protobuf.DurationR\CANnoTrafficHealthyIntervalB\b\250B\ENQ\170\SOH\STX*\NUL\DC2R\n\
    \\DC2unhealthy_interval\CAN\SO \SOH(\v2\EM.google.protobuf.DurationR\DC1unhealthyIntervalB\b\250B\ENQ\170\SOH\STX*\NUL\DC2[\n\
    \\ETBunhealthy_edge_interval\CAN\SI \SOH(\v2\EM.google.protobuf.DurationR\NAKunhealthyEdgeIntervalB\b\250B\ENQ\170\SOH\STX*\NUL\DC2W\n\
    \\NAKhealthy_edge_interval\CAN\DLE \SOH(\v2\EM.google.protobuf.DurationR\DC3healthyEdgeIntervalB\b\250B\ENQ\170\SOH\STX*\NUL\DC2$\n\
    \\SOevent_log_path\CAN\DC1 \SOH(\tR\feventLogPath\DC2M\n\
    \\revent_service\CAN\SYN \SOH(\v2(.envoy.config.core.v3.EventServiceConfigR\feventService\DC2F\n\
    \ always_log_health_check_failures\CAN\DC3 \SOH(\bR\FSalwaysLogHealthCheckFailures\DC2M\n\
    \\vtls_options\CAN\NAK \SOH(\v2,.envoy.config.core.v3.HealthCheck.TlsOptionsR\n\
    \tlsOptions\DC2^\n\
    \\UStransport_socket_match_criteria\CAN\ETB \SOH(\v2\ETB.google.protobuf.StructR\FStransportSocketMatchCriteria\SUB\128\SOH\n\
    \\aPayload\DC2\GS\n\
    \\EOTtext\CAN\SOH \SOH(\tH\NULR\EOTtextB\a\250B\EOTr\STX\DLE\SOH\DC2\CAN\n\
    \\ACKbinary\CAN\STX \SOH(\fH\NULR\ACKbinaryB\SO\n\
    \\apayload\DC2\ETX\248B\SOH:,\154\197\136\RS'\n\
    \%envoy.api.v2.core.HealthCheck.Payload\SUB\224\ENQ\n\
    \\SIHttpHealthCheck\DC2\US\n\
    \\EOThost\CAN\SOH \SOH(\tR\EOThostB\v\250B\br\ACK\192\SOH\STX\200\SOH\NUL\DC2!\n\
    \\EOTpath\CAN\STX \SOH(\tR\EOTpathB\r\250B\n\
    \r\b\DLE\SOH\192\SOH\STX\200\SOH\NUL\DC2=\n\
    \\EOTsend\CAN\ETX \SOH(\v2).envoy.config.core.v3.HealthCheck.PayloadR\EOTsend\DC2C\n\
    \\areceive\CAN\EOT \SOH(\v2).envoy.config.core.v3.HealthCheck.PayloadR\areceive\DC2g\n\
    \\SYNrequest_headers_to_add\CAN\ACK \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\DC3requestHeadersToAddB\t\250B\ACK\146\SOH\ETX\DLE\232\a\DC2K\n\
    \\EMrequest_headers_to_remove\CAN\b \ETX(\tR\SYNrequestHeadersToRemoveB\DLE\250B\r\146\SOH\n\
    \\"\br\ACK\192\SOH\SOH\200\SOH\NUL\DC2F\n\
    \\DC1expected_statuses\CAN\t \ETX(\v2\EM.envoy.type.v3.Int64RangeR\DLEexpectedStatuses\DC2T\n\
    \\DC1codec_client_type\CAN\n\
    \ \SOH(\SO2\RS.envoy.type.v3.CodecClientTypeR\SIcodecClientTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2V\n\
    \\DC4service_name_matcher\CAN\v \SOH(\v2$.envoy.type.matcher.v3.StringMatcherR\DC2serviceNameMatcher:4\154\197\136\RS/\n\
    \-envoy.api.v2.core.HealthCheck.HttpHealthCheckJ\EOT\b\ENQ\DLE\ACKJ\EOT\b\a\DLE\bR\fservice_nameR\tuse_http2\SUB\201\SOH\n\
    \\SOTcpHealthCheck\DC2=\n\
    \\EOTsend\CAN\SOH \SOH(\v2).envoy.config.core.v3.HealthCheck.PayloadR\EOTsend\DC2C\n\
    \\areceive\CAN\STX \ETX(\v2).envoy.config.core.v3.HealthCheck.PayloadR\areceive:3\154\197\136\RS.\n\
    \,envoy.api.v2.core.HealthCheck.TcpHealthCheck\SUB[\n\
    \\DLERedisHealthCheck\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey:5\154\197\136\RS0\n\
    \.envoy.api.v2.core.HealthCheck.RedisHealthCheck\SUB\149\SOH\n\
    \\SIGrpcHealthCheck\DC2!\n\
    \\fservice_name\CAN\SOH \SOH(\tR\vserviceName\DC2)\n\
    \\tauthority\CAN\STX \SOH(\tR\tauthorityB\v\250B\br\ACK\192\SOH\STX\200\SOH\NUL:4\154\197\136\RS/\n\
    \-envoy.api.v2.core.HealthCheck.GrpcHealthCheck\SUB\192\SOH\n\
    \\DC1CustomHealthCheck\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
    \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
    \\vconfig_type:6\154\197\136\RS1\n\
    \/envoy.api.v2.core.HealthCheck.CustomHealthCheckJ\EOT\b\STX\DLE\ETXR\ACKconfig\SUBd\n\
    \\n\
    \TlsOptions\DC2%\n\
    \\SOalpn_protocols\CAN\SOH \ETX(\tR\ralpnProtocols:/\154\197\136\RS*\n\
    \(envoy.api.v2.core.HealthCheck.TlsOptionsB\NAK\n\
    \\SOhealth_checker\DC2\ETX\248B\SOH:$\154\197\136\RS\US\n\
    \\GSenvoy.api.v2.core.HealthCheckJ\EOT\b\n\
    \\DLE\v*`\n\
    \\fHealthStatus\DC2\v\n\
    \\aUNKNOWN\DLE\NUL\DC2\v\n\
    \\aHEALTHY\DLE\SOH\DC2\r\n\
    \\tUNHEALTHY\DLE\STX\DC2\f\n\
    \\bDRAINING\DLE\ETX\DC2\v\n\
    \\aTIMEOUT\DLE\EOT\DC2\f\n\
    \\bDEGRADED\DLE\ENQB@\n\
    \\"io.envoyproxy.envoy.config.core.v3B\DLEHealthCheckProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\138y\n\
    \\a\DC2\ENQ\NUL\NUL\243\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL9\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL,\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL\"\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL#\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL#\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\v\NUL(\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\f\NUL&\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\r\NUL(\n\
    \\t\n\
    \\STX\ETX\t\DC2\ETX\SI\NUL'\n\
    \\t\n\
    \\STX\ETX\n\
    \\DC2\ETX\DLE\NUL+\n\
    \\t\n\
    \\STX\ETX\v\DC2\ETX\DC1\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC3\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\DC3\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC4\NUL1\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DC4\NUL1\n\
    \\b\n\
    \\SOH\b\DC2\ETX\NAK\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\NAK\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SYN\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SYN\NULF\n\
    \\187\STX\n\
    \\STX\ENQ\NUL\DC2\EOT\RS\NUL5\SOH\SUB\EM Endpoint health status.\n\
    \2\147\STX [#protodoc-title: Health check]\n\
    \ * Health checking :ref:`architecture overview <arch_overview_health_checking>`.\n\
    \ * If health checking is configured for a cluster, additional statistics are emitted. They are\n\
    \   documented :ref:`here <config_cluster_manager_cluster_stats>`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\RS\ENQ\DC1\n\
    \Y\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX \STX\SO\SUBL The health status is not known. This is interpreted by Envoy as *HEALTHY*.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX \STX\t\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX \f\r\n\
    \\ETB\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX#\STX\SO\SUB\n\
    \ Healthy.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX#\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX#\f\r\n\
    \\EM\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX&\STX\DLE\SUB\f Unhealthy.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX&\STX\v\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX&\SO\SI\n\
    \\169\STX\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX-\STX\SI\SUB\155\STX Connection draining in progress. E.g.,\n\
    \ `<https://aws.amazon.com/blogs/aws/elb-connection-draining-remove-instances-from-service-with-care/>`_\n\
    \ or\n\
    \ `<https://cloud.google.com/compute/docs/load-balancing/enabling-connection-draining>`_.\n\
    \ This is interpreted by Envoy as *UNHEALTHY*.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX-\r\SO\n\
    \g\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETX1\STX\SO\SUBZ Health check timed out. This is part of HDS and is interpreted by Envoy as\n\
    \ *UNHEALTHY*.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETX1\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETX1\f\r\n\
    \\CAN\n\
    \\EOT\ENQ\NUL\STX\ENQ\DC2\ETX4\STX\SI\SUB\v Degraded.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ENQ\SOH\DC2\ETX4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ENQ\STX\DC2\ETX4\r\SO\n\
    \%\n\
    \\STX\EOT\NUL\DC2\ENQ8\NUL\243\STX\SOH\SUB\CAN [#next-free-field: 25]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX8\b\DC3\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX9\STX_\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX9\STX_\n\
    \K\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT<\STXI\ETX\SUB= Describes the encoding of the payload bytes in the payload.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX<\n\
    \\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT=\EOT>0\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT=\EOT>0\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\b\NUL\DC2\EOT@\EOTH\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\SOH\DC2\ETX@\n\
    \\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\STX\DC2\ETXA\ACK(\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\b\NUL\STX\175\b\DC2\ETXA\ACK(\n\
    \7\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETXD\ACK?\SUB( Hex encoded payload. E.g., \"000000FF\".\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETXD\ACK\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETXD\r\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETXD\DC4\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETXD\SYN>\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\SO\DC2\ETXD\ETB=\n\
    \9\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETXG\ACK\ETB\SUB* [#not-implemented-hide:] Binary payload.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETXG\ACK\v\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETXG\f\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETXG\NAK\SYN\n\
    \'\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\ENQL\STX\128\SOH\ETX\SUB\CAN [#next-free-field: 12]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETXL\n\
    \\EM\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\SOH\a\DC2\EOTM\EOTN8\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\SOH\a\211\136\225\ETX\SOH\DC2\EOTM\EOTN8\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\t\DC2\ETXP\EOT\DC2\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\SOH\t\NUL\DC2\ETXP\r\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\t\NUL\SOH\DC2\ETXP\r\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\t\NUL\STX\DC2\ETXP\r\SO\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\SOH\t\SOH\DC2\ETXP\DLE\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\t\SOH\SOH\DC2\ETXP\DLE\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\t\SOH\STX\DC2\ETXP\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\n\
    \\DC2\ETXR\EOT)\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\SOH\n\
    \\NUL\DC2\ETXR\r\ESC\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\SOH\n\
    \\SOH\DC2\ETXR\GS(\n\
    \\233\STX\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETXX\EOTd\SUB\217\STX The value of the host header in the HTTP health check request. If\n\
    \ left empty (default value), the name of the cluster this health check is associated\n\
    \ with will be used. The host header can be customized for a specific endpoint by setting the\n\
    \ :ref:`hostname <envoy_v3_api_field_config.endpoint.v3.Endpoint.HealthCheckConfig.hostname>` field.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ENQ\DC2\ETXX\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETXX\v\SI\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETXX\DC2\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\b\DC2\ETXX\DC4c\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\NUL\b\175\b\SO\DC2\ETXX\NAKb\n\
    \u\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\EOT\\\EOT]c\SUBe Specifies the HTTP path that will be requested during health checking. For example\n\
    \ */healthcheck*.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ENQ\DC2\ETX\\\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETX\\\v\SI\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETX\\\DC2\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\b\DC2\ETX]\bb\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\SOH\b\175\b\SO\DC2\ETX]\ta\n\
    \@\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\STX\DC2\ETX`\EOT\NAK\SUB1 [#not-implemented-hide:] HTTP specific payload.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ACK\DC2\ETX`\EOT\v\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\SOH\DC2\ETX`\f\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ETX\DC2\ETX`\DC3\DC4\n\
    \A\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\ETX\DC2\ETXc\EOT\CAN\SUB2 [#not-implemented-hide:] HTTP specific response.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\ACK\DC2\ETXc\EOT\v\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\SOH\DC2\ETXc\f\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\ETX\DC2\ETXc\SYN\ETB\n\
    \\181\STX\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\EOT\DC2\EOTi\EOTj8\SUB\164\STX Specifies a list of HTTP headers that should be added to each request that is sent to the\n\
    \ health checked cluster. For more information, including details on header value syntax, see\n\
    \ the documentation on :ref:`custom request headers\n\
    \ <config_http_conn_man_headers_custom_request_headers>`.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\EOT\DC2\ETXi\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\ACK\DC2\ETXi\r\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\SOH\DC2\ETXi\US5\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\ETX\DC2\ETXi89\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\b\DC2\ETXj\b7\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\EOT\b\175\b\DC2\DC2\ETXj\t6\n\
    \\136\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\ENQ\DC2\EOTn\EOTp\a\SUBx Specifies a list of HTTP headers that should be removed from each request that is sent to the\n\
    \ health checked cluster.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ENQ\EOT\DC2\ETXn\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ENQ\ENQ\DC2\ETXn\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ENQ\SOH\DC2\ETXn\DC4-\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ENQ\ETX\DC2\ETXn01\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\ENQ\b\DC2\EOTn2p\ACK\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\ENQ\b\175\b\DC2\DC2\EOTn3p\ENQ\n\
    \\237\STX\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\ACK\DC2\ETXv\EOT6\SUB\221\STX Specifies a list of HTTP response statuses considered healthy. If provided, replaces default\n\
    \ 200-only policy - 200 must be included explicitly as needed. Ranges follow half-open\n\
    \ semantics of :ref:`Int64Range <envoy_v3_api_msg_type.v3.Int64Range>`. The start and end of each\n\
    \ range are required. Only statuses in the range [100, 600) are allowed.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ACK\EOT\DC2\ETXv\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ACK\ACK\DC2\ETXv\r\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ACK\SOH\DC2\ETXv 1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ACK\ETX\DC2\ETXv45\n\
    \F\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\a\DC2\ETXy\EOTb\SUB7 Use specified application protocol for health checks.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\a\ACK\DC2\ETXy\EOT\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\a\SOH\DC2\ETXy\FS-\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\a\ETX\DC2\ETXy02\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\a\b\DC2\ETXy3a\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\a\b\175\b\DLE\DC2\ETXy4`\n\
    \\175\STX\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\b\DC2\ETX\DEL\EOT<\SUB\159\STX An optional service name parameter which is used to validate the identity of\n\
    \ the health checked cluster using a :ref:`StringMatcher\n\
    \ <envoy_v3_api_msg_type.matcher.v3.StringMatcher>`. See the :ref:`architecture overview\n\
    \ <arch_overview_health_checking_identity>` for more information.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\b\ACK\DC2\ETX\DEL\EOT!\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\b\SOH\DC2\ETX\DEL\"6\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\b\ETX\DC2\ETX\DEL9;\n\
    \\SO\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\ACK\130\SOH\STX\141\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\EOT\130\SOH\n\
    \\CAN\n\
    \\SI\n\
    \\ENQ\EOT\NUL\ETX\STX\a\DC2\ACK\131\SOH\EOT\132\SOH7\n\
    \\DC4\n\
    \\n\
    \\EOT\NUL\ETX\STX\a\211\136\225\ETX\SOH\DC2\ACK\131\SOH\EOT\132\SOH7\n\
    \C\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\EOT\135\SOH\EOT\NAK\SUB3 Empty payloads imply a connect-only health check.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ACK\DC2\EOT\135\SOH\EOT\v\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\EOT\135\SOH\f\DLE\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\EOT\135\SOH\DC3\DC4\n\
    \\185\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SOH\DC2\EOT\140\SOH\EOT!\SUB\168\SOH When checking the response, \226\128\156fuzzy\226\128\157 matching is performed such that each\n\
    \ binary block must be found, and in the order specified, but not\n\
    \ necessarily contiguous.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\EOT\DC2\EOT\140\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ACK\DC2\EOT\140\SOH\r\DC4\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\SOH\DC2\EOT\140\SOH\NAK\FS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ETX\DC2\EOT\140\SOH\US \n\
    \\SO\n\
    \\EOT\EOT\NUL\ETX\ETX\DC2\ACK\143\SOH\STX\152\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\ETX\SOH\DC2\EOT\143\SOH\n\
    \\SUB\n\
    \\SI\n\
    \\ENQ\EOT\NUL\ETX\ETX\a\DC2\ACK\144\SOH\EOT\145\SOH9\n\
    \\DC4\n\
    \\n\
    \\EOT\NUL\ETX\ETX\a\211\136\225\ETX\SOH\DC2\ACK\144\SOH\EOT\145\SOH9\n\
    \\234\STX\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\NUL\DC2\EOT\151\SOH\EOT\DC3\SUB\217\STX If set, optionally perform ``EXISTS <key>`` instead of ``PING``. A return value\n\
    \ from Redis of 0 (does not exist) is considered a passing healthcheck. A return value other\n\
    \ than 0 is considered a failure. This allows the user to mark a Redis instance for maintenance\n\
    \ by setting the specified key to any value and waiting for traffic to drain.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\ENQ\DC2\EOT\151\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\SOH\DC2\EOT\151\SOH\v\SO\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\ETX\DC2\EOT\151\SOH\DC1\DC2\n\
    \\241\SOH\n\
    \\EOT\EOT\NUL\ETX\EOT\DC2\ACK\158\SOH\STX\175\SOH\ETX\SUB\224\SOH `grpc.health.v1.Health\n\
    \ <https://github.com/grpc/grpc/blob/master/src/proto/grpc/health/v1/health.proto>`_-based\n\
    \ healthcheck. See `gRPC doc <https://github.com/grpc/grpc/blob/master/doc/health-checking.md>`_\n\
    \ for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\EOT\SOH\DC2\EOT\158\SOH\n\
    \\EM\n\
    \\SI\n\
    \\ENQ\EOT\NUL\ETX\EOT\a\DC2\ACK\159\SOH\EOT\160\SOH8\n\
    \\DC4\n\
    \\n\
    \\EOT\NUL\ETX\EOT\a\211\136\225\ETX\SOH\DC2\ACK\159\SOH\EOT\160\SOH8\n\
    \\224\STX\n\
    \\ACK\EOT\NUL\ETX\EOT\STX\NUL\DC2\EOT\167\SOH\EOT\FS\SUB\207\STX An optional service name parameter which will be sent to gRPC service in\n\
    \ `grpc.health.v1.HealthCheckRequest\n\
    \ <https://github.com/grpc/grpc/blob/master/src/proto/grpc/health/v1/health.proto#L20>`_.\n\
    \ message. See `gRPC health-checking overview\n\
    \ <https://github.com/grpc/grpc/blob/master/doc/health-checking.md>`_ for more information.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\ENQ\DC2\EOT\167\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\SOH\DC2\EOT\167\SOH\v\ETB\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\ETX\DC2\EOT\167\SOH\SUB\ESC\n\
    \\247\STX\n\
    \\ACK\EOT\NUL\ETX\EOT\STX\SOH\DC2\ACK\173\SOH\EOT\174\SOHX\SUB\228\STX The value of the :authority header in the gRPC health check request. If\n\
    \ left empty (default value), the name of the cluster this health check is associated\n\
    \ with will be used. The authority header can be customized for a specific endpoint by setting\n\
    \ the :ref:`hostname <envoy_v3_api_field_config.endpoint.v3.Endpoint.HealthCheckConfig.hostname>` field.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\SOH\ENQ\DC2\EOT\173\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\SOH\SOH\DC2\EOT\173\SOH\v\DC4\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\SOH\ETX\DC2\EOT\173\SOH\ETB\CAN\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\SOH\b\DC2\EOT\174\SOH\bW\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\EOT\STX\SOH\b\175\b\SO\DC2\EOT\174\SOH\tV\n\
    \&\n\
    \\EOT\EOT\NUL\ETX\ENQ\DC2\ACK\178\SOH\STX\195\SOH\ETX\SUB\SYN Custom health check.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\ENQ\SOH\DC2\EOT\178\SOH\n\
    \\ESC\n\
    \\SI\n\
    \\ENQ\EOT\NUL\ETX\ENQ\a\DC2\ACK\179\SOH\EOT\180\SOH:\n\
    \\DC4\n\
    \\n\
    \\EOT\NUL\ETX\ENQ\a\211\136\225\ETX\SOH\DC2\ACK\179\SOH\EOT\180\SOH:\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\ENQ\t\DC2\EOT\182\SOH\EOT\SI\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\ENQ\t\NUL\DC2\EOT\182\SOH\r\SO\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ENQ\t\NUL\SOH\DC2\EOT\182\SOH\r\SO\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ENQ\t\NUL\STX\DC2\EOT\182\SOH\r\SO\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\ENQ\n\
    \\DC2\EOT\184\SOH\EOT\SYN\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\ENQ\n\
    \\NUL\DC2\EOT\184\SOH\r\NAK\n\
    \C\n\
    \\ACK\EOT\NUL\ETX\ENQ\STX\NUL\DC2\EOT\187\SOH\EOT=\SUB3 The registered name of the custom health checker.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ENQ\STX\NUL\ENQ\DC2\EOT\187\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ENQ\STX\NUL\SOH\DC2\EOT\187\SOH\v\SI\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ENQ\STX\NUL\ETX\DC2\EOT\187\SOH\DC2\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ENQ\STX\NUL\b\DC2\EOT\187\SOH\DC4<\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\ENQ\STX\NUL\b\175\b\SO\DC2\EOT\187\SOH\NAK;\n\
    \\231\SOH\n\
    \\ACK\EOT\NUL\ETX\ENQ\b\NUL\DC2\ACK\192\SOH\EOT\194\SOH\ENQ\SUB\212\SOH A custom health checker specific configuration which depends on the custom health checker\n\
    \ being instantiated. See :api:`envoy/config/health_checker` for reference.\n\
    \ [#extension-category: envoy.health_checkers]\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ENQ\b\NUL\SOH\DC2\EOT\192\SOH\n\
    \\NAK\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\ENQ\STX\SOH\DC2\EOT\193\SOH\ACK+\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ENQ\STX\SOH\ACK\DC2\EOT\193\SOH\ACK\EM\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ENQ\STX\SOH\SOH\DC2\EOT\193\SOH\SUB&\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ENQ\STX\SOH\ETX\DC2\EOT\193\SOH)*\n\
    \\165\STX\n\
    \\EOT\EOT\NUL\ETX\ACK\DC2\ACK\201\SOH\STX\210\SOH\ETX\SUB\148\STX Health checks occur over the transport socket specified for the cluster. This implies that if a\n\
    \ cluster is using a TLS-enabled transport socket, the health check will also occur over TLS.\n\
    \\n\
    \ This allows overriding the cluster TLS settings, just for health check connections.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\ACK\SOH\DC2\EOT\201\SOH\n\
    \\DC4\n\
    \\SI\n\
    \\ENQ\EOT\NUL\ETX\ACK\a\DC2\ACK\202\SOH\EOT\203\SOH3\n\
    \\DC4\n\
    \\n\
    \\EOT\NUL\ETX\ACK\a\211\136\225\ETX\SOH\DC2\ACK\202\SOH\EOT\203\SOH3\n\
    \\239\STX\n\
    \\ACK\EOT\NUL\ETX\ACK\STX\NUL\DC2\EOT\209\SOH\EOT'\SUB\222\STX Specifies the ALPN protocols for health check connections. This is useful if the\n\
    \ corresponding upstream is using ALPN-based :ref:`FilterChainMatch\n\
    \ <envoy_v3_api_msg_config.listener.v3.FilterChainMatch>` along with different protocols for health checks\n\
    \ versus data connections. If empty, no ALPN protocols will be set on health check connections.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\NUL\EOT\DC2\EOT\209\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\NUL\ENQ\DC2\EOT\209\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\NUL\SOH\DC2\EOT\209\SOH\DC4\"\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\NUL\ETX\DC2\EOT\209\SOH%&\n\
    \\v\n\
    \\ETX\EOT\NUL\t\DC2\EOT\212\SOH\STX\SO\n\
    \\f\n\
    \\EOT\EOT\NUL\t\NUL\DC2\EOT\212\SOH\v\r\n\
    \\r\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\EOT\212\SOH\v\r\n\
    \\r\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\EOT\212\SOH\v\r\n\
    \\146\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ACK\216\SOH\STX\219\SOH\ENQ\SUB\129\SOH The time to wait for a health check response. If the timeout is reached the\n\
    \ health check attempt will be considered a failure.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\EOT\216\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\EOT\216\SOH\ESC\"\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\EOT\216\SOH%&\n\
    \\SI\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ACK\216\SOH'\219\SOH\EOT\n\
    \\DC2\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\NAK\DC2\ACK\216\SOH(\219\SOH\ETX\n\
    \5\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ACK\222\SOH\STX\225\SOH\ENQ\SUB% The interval between health checks.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\EOT\222\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\222\SOH\ESC#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\EOT\222\SOH&'\n\
    \\SI\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ACK\222\SOH(\225\SOH\EOT\n\
    \\DC2\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\NAK\DC2\ACK\222\SOH)\225\SOH\ETX\n\
    \\213\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT\230\SOH\STX/\SUB\198\SOH An optional jitter amount in milliseconds. If specified, Envoy will start health\n\
    \ checking after for a random time in ms between 0 and initial_jitter. This only\n\
    \ applies to the first health check.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\EOT\230\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\EOT\230\SOH\ESC)\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\EOT\230\SOH,.\n\
    \\145\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\234\SOH\STX/\SUB\130\SOH An optional jitter amount in milliseconds. If specified, during every\n\
    \ interval Envoy will add interval_jitter to the wait time.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\EOT\234\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\EOT\234\SOH\ESC*\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\EOT\234\SOH-.\n\
    \\181\STX\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT\242\SOH\STX&\SUB\166\STX An optional jitter amount as a percentage of interval_ms. If specified,\n\
    \ during every interval Envoy will add interval_ms *\n\
    \ interval_jitter_percent / 100 to the wait time.\n\
    \\n\
    \ If interval_jitter_ms and interval_jitter_percent are both set, both of\n\
    \ them will be used to increase the wait time.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\EOT\242\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\EOT\242\SOH\t \n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\EOT\242\SOH#%\n\
    \\241\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOT\247\SOH\STXd\SUB\226\SOH The number of unhealthy health checks required before a host is marked\n\
    \ unhealthy. Note that for *http* health checking if a host responds with 503\n\
    \ this threshold is ignored and the host is considered unhealthy immediately.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\EOT\247\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\EOT\247\SOH\RS1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\EOT\247\SOH45\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\EOT\247\SOH6c\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\ENQ\b\175\b\DC1\DC2\EOT\247\SOH7b\n\
    \\196\SOH\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOT\252\SOH\STXb\SUB\181\SOH The number of healthy health checks required before a host is marked\n\
    \ healthy. Note that during startup, only a single successful health check is\n\
    \ required to mark a host healthy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\EOT\252\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\EOT\252\SOH\RS/\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\EOT\252\SOH23\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\b\DC2\EOT\252\SOH4a\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\ACK\b\175\b\DC1\DC2\EOT\252\SOH5`\n\
    \N\n\
    \\EOT\EOT\NUL\STX\a\DC2\EOT\255\SOH\STX+\SUB@ [#not-implemented-hide:] Non-serving port for health checking.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\EOT\255\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\EOT\255\SOH\RS&\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\EOT\255\SOH)*\n\
    \U\n\
    \\EOT\EOT\NUL\STX\b\DC2\EOT\130\STX\STX1\SUBG Reuse health check connection between health checks. Default is true.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\EOT\130\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\EOT\130\STX\FS,\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\EOT\130\STX/0\n\
    \\SO\n\
    \\EOT\EOT\NUL\b\NUL\DC2\ACK\132\STX\STX\146\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\EOT\132\STX\b\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\EOT\133\STX\EOT&\n\
    \\SI\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\EOT\133\STX\EOT&\n\
    \\"\n\
    \\EOT\EOT\NUL\STX\t\DC2\EOT\136\STX\EOT*\SUB\DC4 HTTP health check.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\EOT\136\STX\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\EOT\136\STX\DC4%\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\EOT\136\STX()\n\
    \!\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\EOT\139\STX\EOT(\SUB\DC3 TCP health check.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\EOT\139\STX\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\EOT\139\STX\DC3#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\EOT\139\STX&'\n\
    \\"\n\
    \\EOT\EOT\NUL\STX\v\DC2\EOT\142\STX\EOT+\SUB\DC4 gRPC health check.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\ACK\DC2\EOT\142\STX\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\EOT\142\STX\DC4%\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\EOT\142\STX(*\n\
    \$\n\
    \\EOT\EOT\NUL\STX\f\DC2\EOT\145\STX\EOT/\SUB\SYN Custom health check.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ACK\DC2\EOT\145\STX\EOT\NAK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\EOT\145\STX\SYN)\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\EOT\145\STX,.\n\
    \\175\EOT\n\
    \\EOT\EOT\NUL\STX\r\DC2\EOT\156\STX\STXZ\SUB\160\EOT The \"no traffic interval\" is a special health check interval that is used when a cluster has\n\
    \ never had traffic routed to it. This lower interval allows cluster information to be kept up to\n\
    \ date, without sending a potentially large amount of active health checking traffic for no\n\
    \ reason. Once a cluster has been used for traffic routing, Envoy will shift back to using the\n\
    \ standard health check interval that is defined. Note that this interval takes precedence over\n\
    \ any other.\n\
    \\n\
    \ The default value for \"no traffic interval\" is 60 seconds.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\ACK\DC2\EOT\156\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\SOH\DC2\EOT\156\STX\ESC.\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\ETX\DC2\EOT\156\STX13\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\b\DC2\EOT\156\STX4Y\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\r\b\175\b\NAK\DC2\EOT\156\STX5X\n\
    \\196\ENQ\n\
    \\EOT\EOT\NUL\STX\SO\DC2\EOT\171\STX\STXb\SUB\181\ENQ The \"no traffic healthy interval\" is a special health check interval that\n\
    \ is used for hosts that are currently passing active health checking\n\
    \ (including new hosts) when the cluster has received no traffic.\n\
    \\n\
    \ This is useful for when we want to send frequent health checks with\n\
    \ `no_traffic_interval` but then revert to lower frequency `no_traffic_healthy_interval` once\n\
    \ a host in the cluster is marked as healthy.\n\
    \\n\
    \ Once a cluster has been used for traffic routing, Envoy will shift back to using the\n\
    \ standard health check interval that is defined.\n\
    \\n\
    \ If no_traffic_healthy_interval is not set, it will default to the\n\
    \ no traffic interval and send that interval regardless of health state.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\ACK\DC2\EOT\171\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\SOH\DC2\EOT\171\STX\ESC6\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\ETX\DC2\EOT\171\STX9;\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\b\DC2\EOT\171\STX<a\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\SO\b\175\b\NAK\DC2\EOT\171\STX=`\n\
    \\192\STX\n\
    \\EOT\EOT\NUL\STX\SI\DC2\EOT\178\STX\STXY\SUB\177\STX The \"unhealthy interval\" is a health check interval that is used for hosts that are marked as\n\
    \ unhealthy. As soon as the host is marked as healthy, Envoy will shift back to using the\n\
    \ standard health check interval that is defined.\n\
    \\n\
    \ The default value for \"unhealthy interval\" is the same as \"interval\".\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\ACK\DC2\EOT\178\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\SOH\DC2\EOT\178\STX\ESC-\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\ETX\DC2\EOT\178\STX02\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\b\DC2\EOT\178\STX3X\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\SI\b\175\b\NAK\DC2\EOT\178\STX4W\n\
    \\152\ETX\n\
    \\EOT\EOT\NUL\STX\DLE\DC2\EOT\186\STX\STX^\SUB\137\ETX The \"unhealthy edge interval\" is a special health check interval that is used for the first\n\
    \ health check right after a host is marked as unhealthy. For subsequent health checks\n\
    \ Envoy will shift back to using either \"unhealthy interval\" if present or the standard health\n\
    \ check interval that is defined.\n\
    \\n\
    \ The default value for \"unhealthy edge interval\" is the same as \"unhealthy interval\".\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\ACK\DC2\EOT\186\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\SOH\DC2\EOT\186\STX\ESC2\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\ETX\DC2\EOT\186\STX57\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\b\DC2\EOT\186\STX8]\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\DLE\b\175\b\NAK\DC2\EOT\186\STX9\\\n\
    \\231\STX\n\
    \\EOT\EOT\NUL\STX\DC1\DC2\EOT\193\STX\STX\\\SUB\216\STX The \"healthy edge interval\" is a special health check interval that is used for the first\n\
    \ health check right after a host is marked as healthy. For subsequent health checks\n\
    \ Envoy will shift back to using the standard health check interval that is defined.\n\
    \\n\
    \ The default value for \"healthy edge interval\" is the same as the default interval.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\ACK\DC2\EOT\193\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\SOH\DC2\EOT\193\STX\ESC0\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\ETX\DC2\EOT\193\STX35\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\b\DC2\EOT\193\STX6[\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\DC1\b\175\b\NAK\DC2\EOT\193\STX7Z\n\
    \\151\SOH\n\
    \\EOT\EOT\NUL\STX\DC2\DC2\EOT\197\STX\STX\GS\SUB\136\SOH Specifies the path to the :ref:`health check event log <arch_overview_health_check_logging>`.\n\
    \ If empty, no event log will be written.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\ENQ\DC2\EOT\197\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\SOH\DC2\EOT\197\STX\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\ETX\DC2\EOT\197\STX\SUB\FS\n\
    \\162\SOH\n\
    \\EOT\EOT\NUL\STX\DC3\DC2\EOT\202\STX\STX(\SUB\147\SOH [#not-implemented-hide:]\n\
    \ The gRPC service for the health check event service.\n\
    \ If empty, health check events won't be sent to a remote endpoint.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\ACK\DC2\EOT\202\STX\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\SOH\DC2\EOT\202\STX\NAK\"\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\ETX\DC2\EOT\202\STX%'\n\
    \\190\SOH\n\
    \\EOT\EOT\NUL\STX\DC4\DC2\EOT\207\STX\STX-\SUB\175\SOH If set to true, health check failure events will always be logged. If set to false, only the\n\
    \ initial health check failure event will be logged.\n\
    \ The default value is false.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\ENQ\DC2\EOT\207\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\SOH\DC2\EOT\207\STX\a'\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\ETX\DC2\EOT\207\STX*,\n\
    \c\n\
    \\EOT\EOT\NUL\STX\NAK\DC2\EOT\210\STX\STX\RS\SUBU This allows overriding the cluster TLS settings, just for health check connections.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NAK\ACK\DC2\EOT\210\STX\STX\f\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NAK\SOH\DC2\EOT\210\STX\r\CAN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NAK\ETX\DC2\EOT\210\STX\ESC\GS\n\
    \\159\n\
    \\n\
    \\EOT\EOT\NUL\STX\SYN\DC2\EOT\242\STX\STX>\SUB\144\n\
    \ Optional key/value pairs that will be used to match a transport socket from those specified in the cluster's\n\
    \ :ref:`tranport socket matches <envoy_v3_api_field_config.cluster.v3.Cluster.transport_socket_matches>`.\n\
    \ For example, the following match criteria\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \  transport_socket_match_criteria:\n\
    \    useMTLS: true\n\
    \\n\
    \ Will match the following :ref:`cluster socket match <envoy_v3_api_msg_config.cluster.v3.Cluster.TransportSocketMatch>`\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \  transport_socket_matches:\n\
    \  - name: \"useMTLS\"\n\
    \    match:\n\
    \      useMTLS: true\n\
    \    transport_socket:\n\
    \      name: envoy.transport_sockets.tls\n\
    \      config: { ... } # tls socket configuration\n\
    \\n\
    \ If this field is set, then for health checks it will supersede an entry of *envoy.transport_socket* in the\n\
    \ :ref:`LbEndpoint.Metadata <envoy_v3_api_field_config.endpoint.v3.LbEndpoint.metadata>`.\n\
    \ This allows using different transport socket capabilities for health checking versus proxying to the\n\
    \ endpoint.\n\
    \\n\
    \ If the key/values pairs specified do not match any\n\
    \ :ref:`transport socket matches <envoy_v3_api_field_config.cluster.v3.Cluster.transport_socket_matches>`,\n\
    \ the cluster's :ref:`transport socket <envoy_v3_api_field_config.cluster.v3.Cluster.transport_socket>`\n\
    \ will be used for health check socket configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\ACK\DC2\EOT\242\STX\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\SOH\DC2\EOT\242\STX\EM8\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\ETX\DC2\EOT\242\STX;=b\ACKproto3"