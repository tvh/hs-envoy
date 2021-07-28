{- This file was auto-generated from envoy/extensions/filters/network/tcp_proxy/v3/tcp_proxy.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy (
        TcpProxy(), TcpProxy'ClusterSpecifier(..), _TcpProxy'Cluster,
        _TcpProxy'WeightedClusters, TcpProxy'TunnelingConfig(),
        TcpProxy'WeightedCluster(),
        TcpProxy'WeightedCluster'ClusterWeight()
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
import qualified Proto.Envoy.Config.Accesslog.V3.Accesslog
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Type.V3.HashPolicy
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.statPrefix' @:: Lens' TcpProxy Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.metadataMatch' @:: Lens' TcpProxy Proto.Envoy.Config.Core.V3.Base.Metadata@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.maybe'metadataMatch' @:: Lens' TcpProxy (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata)@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.idleTimeout' @:: Lens' TcpProxy Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.maybe'idleTimeout' @:: Lens' TcpProxy (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.downstreamIdleTimeout' @:: Lens' TcpProxy Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.maybe'downstreamIdleTimeout' @:: Lens' TcpProxy (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.upstreamIdleTimeout' @:: Lens' TcpProxy Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.maybe'upstreamIdleTimeout' @:: Lens' TcpProxy (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.accessLog' @:: Lens' TcpProxy [Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog]@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.vec'accessLog' @:: Lens' TcpProxy (Data.Vector.Vector Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog)@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.maxConnectAttempts' @:: Lens' TcpProxy Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.maybe'maxConnectAttempts' @:: Lens' TcpProxy (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.hashPolicy' @:: Lens' TcpProxy [Proto.Envoy.Type.V3.HashPolicy.HashPolicy]@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.vec'hashPolicy' @:: Lens' TcpProxy (Data.Vector.Vector Proto.Envoy.Type.V3.HashPolicy.HashPolicy)@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.tunnelingConfig' @:: Lens' TcpProxy TcpProxy'TunnelingConfig@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.maybe'tunnelingConfig' @:: Lens' TcpProxy (Prelude.Maybe TcpProxy'TunnelingConfig)@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.maxDownstreamConnectionDuration' @:: Lens' TcpProxy Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.maybe'maxDownstreamConnectionDuration' @:: Lens' TcpProxy (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.maybe'clusterSpecifier' @:: Lens' TcpProxy (Prelude.Maybe TcpProxy'ClusterSpecifier)@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.maybe'cluster' @:: Lens' TcpProxy (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.cluster' @:: Lens' TcpProxy Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.maybe'weightedClusters' @:: Lens' TcpProxy (Prelude.Maybe TcpProxy'WeightedCluster)@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.weightedClusters' @:: Lens' TcpProxy TcpProxy'WeightedCluster@ -}
data TcpProxy
  = TcpProxy'_constructor {_TcpProxy'statPrefix :: !Data.Text.Text,
                           _TcpProxy'metadataMatch :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata),
                           _TcpProxy'idleTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                           _TcpProxy'downstreamIdleTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                           _TcpProxy'upstreamIdleTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                           _TcpProxy'accessLog :: !(Data.Vector.Vector Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog),
                           _TcpProxy'maxConnectAttempts :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                           _TcpProxy'hashPolicy :: !(Data.Vector.Vector Proto.Envoy.Type.V3.HashPolicy.HashPolicy),
                           _TcpProxy'tunnelingConfig :: !(Prelude.Maybe TcpProxy'TunnelingConfig),
                           _TcpProxy'maxDownstreamConnectionDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                           _TcpProxy'clusterSpecifier :: !(Prelude.Maybe TcpProxy'ClusterSpecifier),
                           _TcpProxy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TcpProxy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data TcpProxy'ClusterSpecifier
  = TcpProxy'Cluster !Data.Text.Text |
    TcpProxy'WeightedClusters !TcpProxy'WeightedCluster
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField TcpProxy "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'statPrefix
           (\ x__ y__ -> x__ {_TcpProxy'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpProxy "metadataMatch" Proto.Envoy.Config.Core.V3.Base.Metadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'metadataMatch
           (\ x__ y__ -> x__ {_TcpProxy'metadataMatch = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TcpProxy "maybe'metadataMatch" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'metadataMatch
           (\ x__ y__ -> x__ {_TcpProxy'metadataMatch = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpProxy "idleTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'idleTimeout
           (\ x__ y__ -> x__ {_TcpProxy'idleTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TcpProxy "maybe'idleTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'idleTimeout
           (\ x__ y__ -> x__ {_TcpProxy'idleTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpProxy "downstreamIdleTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'downstreamIdleTimeout
           (\ x__ y__ -> x__ {_TcpProxy'downstreamIdleTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TcpProxy "maybe'downstreamIdleTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'downstreamIdleTimeout
           (\ x__ y__ -> x__ {_TcpProxy'downstreamIdleTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpProxy "upstreamIdleTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'upstreamIdleTimeout
           (\ x__ y__ -> x__ {_TcpProxy'upstreamIdleTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TcpProxy "maybe'upstreamIdleTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'upstreamIdleTimeout
           (\ x__ y__ -> x__ {_TcpProxy'upstreamIdleTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpProxy "accessLog" [Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'accessLog (\ x__ y__ -> x__ {_TcpProxy'accessLog = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TcpProxy "vec'accessLog" (Data.Vector.Vector Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'accessLog (\ x__ y__ -> x__ {_TcpProxy'accessLog = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpProxy "maxConnectAttempts" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'maxConnectAttempts
           (\ x__ y__ -> x__ {_TcpProxy'maxConnectAttempts = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TcpProxy "maybe'maxConnectAttempts" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'maxConnectAttempts
           (\ x__ y__ -> x__ {_TcpProxy'maxConnectAttempts = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpProxy "hashPolicy" [Proto.Envoy.Type.V3.HashPolicy.HashPolicy] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'hashPolicy
           (\ x__ y__ -> x__ {_TcpProxy'hashPolicy = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TcpProxy "vec'hashPolicy" (Data.Vector.Vector Proto.Envoy.Type.V3.HashPolicy.HashPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'hashPolicy
           (\ x__ y__ -> x__ {_TcpProxy'hashPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpProxy "tunnelingConfig" TcpProxy'TunnelingConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'tunnelingConfig
           (\ x__ y__ -> x__ {_TcpProxy'tunnelingConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TcpProxy "maybe'tunnelingConfig" (Prelude.Maybe TcpProxy'TunnelingConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'tunnelingConfig
           (\ x__ y__ -> x__ {_TcpProxy'tunnelingConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpProxy "maxDownstreamConnectionDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'maxDownstreamConnectionDuration
           (\ x__ y__
              -> x__ {_TcpProxy'maxDownstreamConnectionDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TcpProxy "maybe'maxDownstreamConnectionDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'maxDownstreamConnectionDuration
           (\ x__ y__
              -> x__ {_TcpProxy'maxDownstreamConnectionDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpProxy "maybe'clusterSpecifier" (Prelude.Maybe TcpProxy'ClusterSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'clusterSpecifier
           (\ x__ y__ -> x__ {_TcpProxy'clusterSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpProxy "maybe'cluster" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'clusterSpecifier
           (\ x__ y__ -> x__ {_TcpProxy'clusterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TcpProxy'Cluster x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TcpProxy'Cluster y__))
instance Data.ProtoLens.Field.HasField TcpProxy "cluster" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'clusterSpecifier
           (\ x__ y__ -> x__ {_TcpProxy'clusterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TcpProxy'Cluster x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TcpProxy'Cluster y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TcpProxy "maybe'weightedClusters" (Prelude.Maybe TcpProxy'WeightedCluster) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'clusterSpecifier
           (\ x__ y__ -> x__ {_TcpProxy'clusterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TcpProxy'WeightedClusters x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TcpProxy'WeightedClusters y__))
instance Data.ProtoLens.Field.HasField TcpProxy "weightedClusters" TcpProxy'WeightedCluster where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'clusterSpecifier
           (\ x__ y__ -> x__ {_TcpProxy'clusterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TcpProxy'WeightedClusters x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TcpProxy'WeightedClusters y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message TcpProxy where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy"
  packedMessageDescriptor _
    = "\n\
      \\bTcpProxy\DC2(\n\
      \\vstat_prefix\CAN\SOH \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2\SUB\n\
      \\acluster\CAN\STX \SOH(\tH\NULR\acluster\DC2v\n\
      \\DC1weighted_clusters\CAN\n\
      \ \SOH(\v2G.envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy.WeightedClusterH\NULR\DLEweightedClusters\DC2E\n\
      \\SOmetadata_match\CAN\t \SOH(\v2\RS.envoy.config.core.v3.MetadataR\rmetadataMatch\DC2<\n\
      \\fidle_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\vidleTimeout\DC2Q\n\
      \\ETBdownstream_idle_timeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\NAKdownstreamIdleTimeout\DC2M\n\
      \\NAKupstream_idle_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC3upstreamIdleTimeout\DC2C\n\
      \\n\
      \access_log\CAN\ENQ \ETX(\v2$.envoy.config.accesslog.v3.AccessLogR\taccessLog\DC2W\n\
      \\DC4max_connect_attempts\CAN\a \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2maxConnectAttemptsB\a\250B\EOT*\STX(\SOH\DC2D\n\
      \\vhash_policy\CAN\v \ETX(\v2\EM.envoy.type.v3.HashPolicyR\n\
      \hashPolicyB\b\250B\ENQ\146\SOH\STX\DLE\SOH\DC2r\n\
      \\DLEtunneling_config\CAN\f \SOH(\v2G.envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy.TunnelingConfigR\SItunnelingConfig\DC2t\n\
      \\"max_downstream_connection_duration\CAN\r \SOH(\v2\EM.google.protobuf.DurationR\USmaxDownstreamConnectionDurationB\f\250B\t\170\SOH\ACK2\EOT\DLE\192\132=\SUB\199\ETX\n\
      \\SIWeightedCluster\DC2{\n\
      \\bclusters\CAN\SOH \ETX(\v2U.envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy.WeightedCluster.ClusterWeightR\bclustersB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\236\SOH\n\
      \\rClusterWeight\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2\US\n\
      \\ACKweight\CAN\STX \SOH(\rR\ACKweightB\a\250B\EOT*\STX(\SOH\DC2E\n\
      \\SOmetadata_match\CAN\ETX \SOH(\v2\RS.envoy.config.core.v3.MetadataR\rmetadataMatch:V\154\197\136\RSQ\n\
      \Oenvoy.config.filter.network.tcp_proxy.v2.TcpProxy.WeightedCluster.ClusterWeight:H\154\197\136\RSC\n\
      \Aenvoy.config.filter.network.tcp_proxy.v2.TcpProxy.WeightedCluster\SUB\245\SOH\n\
      \\SITunnelingConfig\DC2#\n\
      \\bhostname\CAN\SOH \SOH(\tR\bhostnameB\a\250B\EOTr\STX\DLE\SOH\DC2\EM\n\
      \\buse_post\CAN\STX \SOH(\bR\ausePost\DC2X\n\
      \\SOheaders_to_add\CAN\ETX \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\fheadersToAddB\t\250B\ACK\146\SOH\ETX\DLE\232\a:H\154\197\136\RSC\n\
      \Aenvoy.config.filter.network.tcp_proxy.v2.TcpProxy.TunnelingConfigB\CAN\n\
      \\DC1cluster_specifier\DC2\ETX\248B\SOH:8\154\197\136\RS3\n\
      \1envoy.config.filter.network.tcp_proxy.v2.TcpProxyJ\EOT\b\ACK\DLE\aR\rdeprecated_v1"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        statPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"statPrefix")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy
        metadataMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Metadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadataMatch")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy
        idleTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "idle_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'idleTimeout")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy
        downstreamIdleTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "downstream_idle_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'downstreamIdleTimeout")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy
        upstreamIdleTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_idle_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'upstreamIdleTimeout")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy
        accessLog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "access_log"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"accessLog")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy
        maxConnectAttempts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_connect_attempts"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxConnectAttempts")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy
        hashPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.HashPolicy.HashPolicy)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"hashPolicy")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy
        tunnelingConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tunneling_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TcpProxy'TunnelingConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tunnelingConfig")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy
        maxDownstreamConnectionDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_downstream_connection_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'maxDownstreamConnectionDuration")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy
        cluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cluster")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy
        weightedClusters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "weighted_clusters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TcpProxy'WeightedCluster)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'weightedClusters")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 9, metadataMatch__field_descriptor),
           (Data.ProtoLens.Tag 8, idleTimeout__field_descriptor),
           (Data.ProtoLens.Tag 3, downstreamIdleTimeout__field_descriptor),
           (Data.ProtoLens.Tag 4, upstreamIdleTimeout__field_descriptor),
           (Data.ProtoLens.Tag 5, accessLog__field_descriptor),
           (Data.ProtoLens.Tag 7, maxConnectAttempts__field_descriptor),
           (Data.ProtoLens.Tag 11, hashPolicy__field_descriptor),
           (Data.ProtoLens.Tag 12, tunnelingConfig__field_descriptor),
           (Data.ProtoLens.Tag 13, 
            maxDownstreamConnectionDuration__field_descriptor),
           (Data.ProtoLens.Tag 2, cluster__field_descriptor),
           (Data.ProtoLens.Tag 10, weightedClusters__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TcpProxy'_unknownFields
        (\ x__ y__ -> x__ {_TcpProxy'_unknownFields = y__})
  defMessage
    = TcpProxy'_constructor
        {_TcpProxy'statPrefix = Data.ProtoLens.fieldDefault,
         _TcpProxy'metadataMatch = Prelude.Nothing,
         _TcpProxy'idleTimeout = Prelude.Nothing,
         _TcpProxy'downstreamIdleTimeout = Prelude.Nothing,
         _TcpProxy'upstreamIdleTimeout = Prelude.Nothing,
         _TcpProxy'accessLog = Data.Vector.Generic.empty,
         _TcpProxy'maxConnectAttempts = Prelude.Nothing,
         _TcpProxy'hashPolicy = Data.Vector.Generic.empty,
         _TcpProxy'tunnelingConfig = Prelude.Nothing,
         _TcpProxy'maxDownstreamConnectionDuration = Prelude.Nothing,
         _TcpProxy'clusterSpecifier = Prelude.Nothing,
         _TcpProxy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TcpProxy
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Type.V3.HashPolicy.HashPolicy
                -> Data.ProtoLens.Encoding.Bytes.Parser TcpProxy
        loop x mutable'accessLog mutable'hashPolicy
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'accessLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'accessLog)
                      frozen'hashPolicy <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'hashPolicy)
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
                                 (Data.ProtoLens.Field.field @"vec'hashPolicy")
                                 frozen'hashPolicy
                                 x)))
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
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                                  mutable'accessLog
                                  mutable'hashPolicy
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"metadataMatch") y x)
                                  mutable'accessLog
                                  mutable'hashPolicy
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "idle_timeout"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"idleTimeout") y x)
                                  mutable'accessLog
                                  mutable'hashPolicy
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "downstream_idle_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"downstreamIdleTimeout") y x)
                                  mutable'accessLog
                                  mutable'hashPolicy
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "upstream_idle_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamIdleTimeout") y x)
                                  mutable'accessLog
                                  mutable'hashPolicy
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "access_log"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'accessLog y)
                                loop x v mutable'hashPolicy
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_connect_attempts"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxConnectAttempts") y x)
                                  mutable'accessLog
                                  mutable'hashPolicy
                        90
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "hash_policy"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'hashPolicy y)
                                loop x mutable'accessLog v
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tunneling_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tunnelingConfig") y x)
                                  mutable'accessLog
                                  mutable'hashPolicy
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_downstream_connection_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxDownstreamConnectionDuration")
                                     y
                                     x)
                                  mutable'accessLog
                                  mutable'hashPolicy
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
                                       "cluster"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"cluster") y x)
                                  mutable'accessLog
                                  mutable'hashPolicy
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "weighted_clusters"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"weightedClusters") y x)
                                  mutable'accessLog
                                  mutable'hashPolicy
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'accessLog
                                  mutable'hashPolicy
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'accessLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'hashPolicy <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'accessLog mutable'hashPolicy)
          "TcpProxy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"statPrefix") _x
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
                       (Data.ProtoLens.Field.field @"maybe'metadataMatch") _x
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
                          (Data.ProtoLens.Field.field @"maybe'idleTimeout") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
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
                             (Data.ProtoLens.Field.field @"maybe'downstreamIdleTimeout") _x
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
                                (Data.ProtoLens.Field.field @"maybe'upstreamIdleTimeout") _x
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
                                  (Data.ProtoLens.Field.field @"vec'accessLog") _x))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'maxConnectAttempts") _x
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
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
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
                                        (Data.ProtoLens.Field.field @"vec'hashPolicy") _x))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'tunnelingConfig") _x
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
                                                  @"maybe'maxDownstreamConnectionDuration")
                                               _x
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
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage
                                                     _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'clusterSpecifier")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just (TcpProxy'Cluster v))
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                                     ((Prelude..)
                                                        (\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                        Data.Text.Encoding.encodeUtf8
                                                        v)
                                              (Prelude.Just (TcpProxy'WeightedClusters v))
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
                                                        v))
                                           (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                              (Lens.Family2.view
                                                 Data.ProtoLens.unknownFields _x))))))))))))
instance Control.DeepSeq.NFData TcpProxy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TcpProxy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TcpProxy'statPrefix x__)
                (Control.DeepSeq.deepseq
                   (_TcpProxy'metadataMatch x__)
                   (Control.DeepSeq.deepseq
                      (_TcpProxy'idleTimeout x__)
                      (Control.DeepSeq.deepseq
                         (_TcpProxy'downstreamIdleTimeout x__)
                         (Control.DeepSeq.deepseq
                            (_TcpProxy'upstreamIdleTimeout x__)
                            (Control.DeepSeq.deepseq
                               (_TcpProxy'accessLog x__)
                               (Control.DeepSeq.deepseq
                                  (_TcpProxy'maxConnectAttempts x__)
                                  (Control.DeepSeq.deepseq
                                     (_TcpProxy'hashPolicy x__)
                                     (Control.DeepSeq.deepseq
                                        (_TcpProxy'tunnelingConfig x__)
                                        (Control.DeepSeq.deepseq
                                           (_TcpProxy'maxDownstreamConnectionDuration x__)
                                           (Control.DeepSeq.deepseq
                                              (_TcpProxy'clusterSpecifier x__) ())))))))))))
instance Control.DeepSeq.NFData TcpProxy'ClusterSpecifier where
  rnf (TcpProxy'Cluster x__) = Control.DeepSeq.rnf x__
  rnf (TcpProxy'WeightedClusters x__) = Control.DeepSeq.rnf x__
_TcpProxy'Cluster ::
  Data.ProtoLens.Prism.Prism' TcpProxy'ClusterSpecifier Data.Text.Text
_TcpProxy'Cluster
  = Data.ProtoLens.Prism.prism'
      TcpProxy'Cluster
      (\ p__
         -> case p__ of
              (TcpProxy'Cluster p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TcpProxy'WeightedClusters ::
  Data.ProtoLens.Prism.Prism' TcpProxy'ClusterSpecifier TcpProxy'WeightedCluster
_TcpProxy'WeightedClusters
  = Data.ProtoLens.Prism.prism'
      TcpProxy'WeightedClusters
      (\ p__
         -> case p__ of
              (TcpProxy'WeightedClusters p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.hostname' @:: Lens' TcpProxy'TunnelingConfig Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.usePost' @:: Lens' TcpProxy'TunnelingConfig Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.headersToAdd' @:: Lens' TcpProxy'TunnelingConfig [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption]@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.vec'headersToAdd' @:: Lens' TcpProxy'TunnelingConfig (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)@ -}
data TcpProxy'TunnelingConfig
  = TcpProxy'TunnelingConfig'_constructor {_TcpProxy'TunnelingConfig'hostname :: !Data.Text.Text,
                                           _TcpProxy'TunnelingConfig'usePost :: !Prelude.Bool,
                                           _TcpProxy'TunnelingConfig'headersToAdd :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption),
                                           _TcpProxy'TunnelingConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TcpProxy'TunnelingConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TcpProxy'TunnelingConfig "hostname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'TunnelingConfig'hostname
           (\ x__ y__ -> x__ {_TcpProxy'TunnelingConfig'hostname = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpProxy'TunnelingConfig "usePost" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'TunnelingConfig'usePost
           (\ x__ y__ -> x__ {_TcpProxy'TunnelingConfig'usePost = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpProxy'TunnelingConfig "headersToAdd" [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'TunnelingConfig'headersToAdd
           (\ x__ y__ -> x__ {_TcpProxy'TunnelingConfig'headersToAdd = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TcpProxy'TunnelingConfig "vec'headersToAdd" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'TunnelingConfig'headersToAdd
           (\ x__ y__ -> x__ {_TcpProxy'TunnelingConfig'headersToAdd = y__}))
        Prelude.id
instance Data.ProtoLens.Message TcpProxy'TunnelingConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy.TunnelingConfig"
  packedMessageDescriptor _
    = "\n\
      \\SITunnelingConfig\DC2#\n\
      \\bhostname\CAN\SOH \SOH(\tR\bhostnameB\a\250B\EOTr\STX\DLE\SOH\DC2\EM\n\
      \\buse_post\CAN\STX \SOH(\bR\ausePost\DC2X\n\
      \\SOheaders_to_add\CAN\ETX \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\fheadersToAddB\t\250B\ACK\146\SOH\ETX\DLE\232\a:H\154\197\136\RSC\n\
      \Aenvoy.config.filter.network.tcp_proxy.v2.TcpProxy.TunnelingConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        hostname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hostname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"hostname")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy'TunnelingConfig
        usePost__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_post"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"usePost")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy'TunnelingConfig
        headersToAdd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers_to_add"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"headersToAdd")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy'TunnelingConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, hostname__field_descriptor),
           (Data.ProtoLens.Tag 2, usePost__field_descriptor),
           (Data.ProtoLens.Tag 3, headersToAdd__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TcpProxy'TunnelingConfig'_unknownFields
        (\ x__ y__ -> x__ {_TcpProxy'TunnelingConfig'_unknownFields = y__})
  defMessage
    = TcpProxy'TunnelingConfig'_constructor
        {_TcpProxy'TunnelingConfig'hostname = Data.ProtoLens.fieldDefault,
         _TcpProxy'TunnelingConfig'usePost = Data.ProtoLens.fieldDefault,
         _TcpProxy'TunnelingConfig'headersToAdd = Data.Vector.Generic.empty,
         _TcpProxy'TunnelingConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TcpProxy'TunnelingConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.HeaderValueOption
             -> Data.ProtoLens.Encoding.Bytes.Parser TcpProxy'TunnelingConfig
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "hostname"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hostname") y x)
                                  mutable'headersToAdd
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "use_post"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"usePost") y x)
                                  mutable'headersToAdd
                        26
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
          "TunnelingConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hostname") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"usePost") _x
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
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
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
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'headersToAdd") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData TcpProxy'TunnelingConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TcpProxy'TunnelingConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TcpProxy'TunnelingConfig'hostname x__)
                (Control.DeepSeq.deepseq
                   (_TcpProxy'TunnelingConfig'usePost x__)
                   (Control.DeepSeq.deepseq
                      (_TcpProxy'TunnelingConfig'headersToAdd x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.clusters' @:: Lens' TcpProxy'WeightedCluster [TcpProxy'WeightedCluster'ClusterWeight]@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.vec'clusters' @:: Lens' TcpProxy'WeightedCluster (Data.Vector.Vector TcpProxy'WeightedCluster'ClusterWeight)@ -}
data TcpProxy'WeightedCluster
  = TcpProxy'WeightedCluster'_constructor {_TcpProxy'WeightedCluster'clusters :: !(Data.Vector.Vector TcpProxy'WeightedCluster'ClusterWeight),
                                           _TcpProxy'WeightedCluster'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TcpProxy'WeightedCluster where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TcpProxy'WeightedCluster "clusters" [TcpProxy'WeightedCluster'ClusterWeight] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'WeightedCluster'clusters
           (\ x__ y__ -> x__ {_TcpProxy'WeightedCluster'clusters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TcpProxy'WeightedCluster "vec'clusters" (Data.Vector.Vector TcpProxy'WeightedCluster'ClusterWeight) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'WeightedCluster'clusters
           (\ x__ y__ -> x__ {_TcpProxy'WeightedCluster'clusters = y__}))
        Prelude.id
instance Data.ProtoLens.Message TcpProxy'WeightedCluster where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy.WeightedCluster"
  packedMessageDescriptor _
    = "\n\
      \\SIWeightedCluster\DC2{\n\
      \\bclusters\CAN\SOH \ETX(\v2U.envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy.WeightedCluster.ClusterWeightR\bclustersB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\236\SOH\n\
      \\rClusterWeight\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2\US\n\
      \\ACKweight\CAN\STX \SOH(\rR\ACKweightB\a\250B\EOT*\STX(\SOH\DC2E\n\
      \\SOmetadata_match\CAN\ETX \SOH(\v2\RS.envoy.config.core.v3.MetadataR\rmetadataMatch:V\154\197\136\RSQ\n\
      \Oenvoy.config.filter.network.tcp_proxy.v2.TcpProxy.WeightedCluster.ClusterWeight:H\154\197\136\RSC\n\
      \Aenvoy.config.filter.network.tcp_proxy.v2.TcpProxy.WeightedCluster"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clusters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "clusters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TcpProxy'WeightedCluster'ClusterWeight)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"clusters")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy'WeightedCluster
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clusters__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TcpProxy'WeightedCluster'_unknownFields
        (\ x__ y__ -> x__ {_TcpProxy'WeightedCluster'_unknownFields = y__})
  defMessage
    = TcpProxy'WeightedCluster'_constructor
        {_TcpProxy'WeightedCluster'clusters = Data.Vector.Generic.empty,
         _TcpProxy'WeightedCluster'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TcpProxy'WeightedCluster
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld TcpProxy'WeightedCluster'ClusterWeight
             -> Data.ProtoLens.Encoding.Bytes.Parser TcpProxy'WeightedCluster
        loop x mutable'clusters
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'clusters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'clusters)
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
                              (Data.ProtoLens.Field.field @"vec'clusters") frozen'clusters x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "clusters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'clusters y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'clusters
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'clusters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'clusters)
          "WeightedCluster"
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
                   (Data.ProtoLens.Field.field @"vec'clusters") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData TcpProxy'WeightedCluster where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TcpProxy'WeightedCluster'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TcpProxy'WeightedCluster'clusters x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.name' @:: Lens' TcpProxy'WeightedCluster'ClusterWeight Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.weight' @:: Lens' TcpProxy'WeightedCluster'ClusterWeight Data.Word.Word32@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.metadataMatch' @:: Lens' TcpProxy'WeightedCluster'ClusterWeight Proto.Envoy.Config.Core.V3.Base.Metadata@
         * 'Proto.Envoy.Extensions.Filters.Network.TcpProxy.V3.TcpProxy_Fields.maybe'metadataMatch' @:: Lens' TcpProxy'WeightedCluster'ClusterWeight (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata)@ -}
data TcpProxy'WeightedCluster'ClusterWeight
  = TcpProxy'WeightedCluster'ClusterWeight'_constructor {_TcpProxy'WeightedCluster'ClusterWeight'name :: !Data.Text.Text,
                                                         _TcpProxy'WeightedCluster'ClusterWeight'weight :: !Data.Word.Word32,
                                                         _TcpProxy'WeightedCluster'ClusterWeight'metadataMatch :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata),
                                                         _TcpProxy'WeightedCluster'ClusterWeight'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TcpProxy'WeightedCluster'ClusterWeight where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TcpProxy'WeightedCluster'ClusterWeight "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'WeightedCluster'ClusterWeight'name
           (\ x__ y__
              -> x__ {_TcpProxy'WeightedCluster'ClusterWeight'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpProxy'WeightedCluster'ClusterWeight "weight" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'WeightedCluster'ClusterWeight'weight
           (\ x__ y__
              -> x__ {_TcpProxy'WeightedCluster'ClusterWeight'weight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpProxy'WeightedCluster'ClusterWeight "metadataMatch" Proto.Envoy.Config.Core.V3.Base.Metadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'WeightedCluster'ClusterWeight'metadataMatch
           (\ x__ y__
              -> x__
                   {_TcpProxy'WeightedCluster'ClusterWeight'metadataMatch = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TcpProxy'WeightedCluster'ClusterWeight "maybe'metadataMatch" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpProxy'WeightedCluster'ClusterWeight'metadataMatch
           (\ x__ y__
              -> x__
                   {_TcpProxy'WeightedCluster'ClusterWeight'metadataMatch = y__}))
        Prelude.id
instance Data.ProtoLens.Message TcpProxy'WeightedCluster'ClusterWeight where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy.WeightedCluster.ClusterWeight"
  packedMessageDescriptor _
    = "\n\
      \\rClusterWeight\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2\US\n\
      \\ACKweight\CAN\STX \SOH(\rR\ACKweightB\a\250B\EOT*\STX(\SOH\DC2E\n\
      \\SOmetadata_match\CAN\ETX \SOH(\v2\RS.envoy.config.core.v3.MetadataR\rmetadataMatch:V\154\197\136\RSQ\n\
      \Oenvoy.config.filter.network.tcp_proxy.v2.TcpProxy.WeightedCluster.ClusterWeight"
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
              Data.ProtoLens.FieldDescriptor TcpProxy'WeightedCluster'ClusterWeight
        weight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "weight"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"weight")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy'WeightedCluster'ClusterWeight
        metadataMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Metadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadataMatch")) ::
              Data.ProtoLens.FieldDescriptor TcpProxy'WeightedCluster'ClusterWeight
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, weight__field_descriptor),
           (Data.ProtoLens.Tag 3, metadataMatch__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TcpProxy'WeightedCluster'ClusterWeight'_unknownFields
        (\ x__ y__
           -> x__
                {_TcpProxy'WeightedCluster'ClusterWeight'_unknownFields = y__})
  defMessage
    = TcpProxy'WeightedCluster'ClusterWeight'_constructor
        {_TcpProxy'WeightedCluster'ClusterWeight'name = Data.ProtoLens.fieldDefault,
         _TcpProxy'WeightedCluster'ClusterWeight'weight = Data.ProtoLens.fieldDefault,
         _TcpProxy'WeightedCluster'ClusterWeight'metadataMatch = Prelude.Nothing,
         _TcpProxy'WeightedCluster'ClusterWeight'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TcpProxy'WeightedCluster'ClusterWeight
          -> Data.ProtoLens.Encoding.Bytes.Parser TcpProxy'WeightedCluster'ClusterWeight
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "weight"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"weight") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"metadataMatch") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ClusterWeight"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"weight") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'metadataMatch") _x
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
instance Control.DeepSeq.NFData TcpProxy'WeightedCluster'ClusterWeight where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TcpProxy'WeightedCluster'ClusterWeight'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TcpProxy'WeightedCluster'ClusterWeight'name x__)
                (Control.DeepSeq.deepseq
                   (_TcpProxy'WeightedCluster'ClusterWeight'weight x__)
                   (Control.DeepSeq.deepseq
                      (_TcpProxy'WeightedCluster'ClusterWeight'metadataMatch x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \=envoy/extensions/filters/network/tcp_proxy/v3/tcp_proxy.proto\DC2-envoy.extensions.filters.network.tcp_proxy.v3\SUB)envoy/config/accesslog/v3/accesslog.proto\SUB\USenvoy/config/core/v3/base.proto\SUB\USenvoy/type/v3/hash_policy.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\232\r\n\
    \\bTcpProxy\DC2(\n\
    \\vstat_prefix\CAN\SOH \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2\SUB\n\
    \\acluster\CAN\STX \SOH(\tH\NULR\acluster\DC2v\n\
    \\DC1weighted_clusters\CAN\n\
    \ \SOH(\v2G.envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy.WeightedClusterH\NULR\DLEweightedClusters\DC2E\n\
    \\SOmetadata_match\CAN\t \SOH(\v2\RS.envoy.config.core.v3.MetadataR\rmetadataMatch\DC2<\n\
    \\fidle_timeout\CAN\b \SOH(\v2\EM.google.protobuf.DurationR\vidleTimeout\DC2Q\n\
    \\ETBdownstream_idle_timeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\NAKdownstreamIdleTimeout\DC2M\n\
    \\NAKupstream_idle_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC3upstreamIdleTimeout\DC2C\n\
    \\n\
    \access_log\CAN\ENQ \ETX(\v2$.envoy.config.accesslog.v3.AccessLogR\taccessLog\DC2W\n\
    \\DC4max_connect_attempts\CAN\a \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2maxConnectAttemptsB\a\250B\EOT*\STX(\SOH\DC2D\n\
    \\vhash_policy\CAN\v \ETX(\v2\EM.envoy.type.v3.HashPolicyR\n\
    \hashPolicyB\b\250B\ENQ\146\SOH\STX\DLE\SOH\DC2r\n\
    \\DLEtunneling_config\CAN\f \SOH(\v2G.envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy.TunnelingConfigR\SItunnelingConfig\DC2t\n\
    \\"max_downstream_connection_duration\CAN\r \SOH(\v2\EM.google.protobuf.DurationR\USmaxDownstreamConnectionDurationB\f\250B\t\170\SOH\ACK2\EOT\DLE\192\132=\SUB\199\ETX\n\
    \\SIWeightedCluster\DC2{\n\
    \\bclusters\CAN\SOH \ETX(\v2U.envoy.extensions.filters.network.tcp_proxy.v3.TcpProxy.WeightedCluster.ClusterWeightR\bclustersB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\236\SOH\n\
    \\rClusterWeight\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2\US\n\
    \\ACKweight\CAN\STX \SOH(\rR\ACKweightB\a\250B\EOT*\STX(\SOH\DC2E\n\
    \\SOmetadata_match\CAN\ETX \SOH(\v2\RS.envoy.config.core.v3.MetadataR\rmetadataMatch:V\154\197\136\RSQ\n\
    \Oenvoy.config.filter.network.tcp_proxy.v2.TcpProxy.WeightedCluster.ClusterWeight:H\154\197\136\RSC\n\
    \Aenvoy.config.filter.network.tcp_proxy.v2.TcpProxy.WeightedCluster\SUB\245\SOH\n\
    \\SITunnelingConfig\DC2#\n\
    \\bhostname\CAN\SOH \SOH(\tR\bhostnameB\a\250B\EOTr\STX\DLE\SOH\DC2\EM\n\
    \\buse_post\CAN\STX \SOH(\bR\ausePost\DC2X\n\
    \\SOheaders_to_add\CAN\ETX \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\fheadersToAddB\t\250B\ACK\146\SOH\ETX\DLE\232\a:H\154\197\136\RSC\n\
    \Aenvoy.config.filter.network.tcp_proxy.v2.TcpProxy.TunnelingConfigB\CAN\n\
    \\DC1cluster_specifier\DC2\ETX\248B\SOH:8\154\197\136\RS3\n\
    \1envoy.config.filter.network.tcp_proxy.v2.TcpProxyJ\EOT\b\ACK\DLE\aR\rdeprecated_v1BV\n\
    \;io.envoyproxy.envoy.extensions.filters.network.tcp_proxy.v3B\rTcpProxyProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\234\&1\n\
    \\a\DC2\ENQ\NUL\NUL\153\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL6\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL3\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL(\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL'\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL+\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULT\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SI\NULT\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL.\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DLE\NUL.\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC1\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC2\NULF\n\
    \\194\SOH\n\
    \\STX\EOT\NUL\DC2\ENQ\EM\NUL\153\SOH\SOH\SUB\CAN [#next-free-field: 14]\n\
    \2\154\SOH [#protodoc-title: TCP Proxy]\n\
    \ TCP Proxy :ref:`configuration overview <config_network_filters_tcp_proxy>`.\n\
    \ [#extension: envoy.filters.network.tcp_proxy]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\EM\b\DLE\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\SUB\STX\ESC:\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\SUB\STX\ESC:\n\
    \\228\SOH\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT \STX;\ETX\SUB\213\SOH Allows for specification of multiple upstream clusters along with weights\n\
    \ that indicate the percentage of traffic to be forwarded to each cluster.\n\
    \ The router selects an upstream cluster based on these weights.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX \n\
    \\EM\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT!\EOT\"L\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT!\EOT\"L\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\ETX\NUL\DC2\EOT$\EOT7\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\ETX\NUL\SOH\DC2\ETX$\f\EM\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\ETX\NUL\a\DC2\EOT%\ACK&\\\n\
    \\DC4\n\
    \\f\EOT\NUL\ETX\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT%\ACK&\\\n\
    \0\n\
    \\b\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\DC2\ETX)\ACK?\SUB\US Name of the upstream cluster.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX)\ACK\f\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX)\r\DC1\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX)\DC4\NAK\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\b\DC2\ETX)\SYN>\n\
    \\DC3\n\
    \\f\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\b\175\b\SO\DC2\ETX)\ETB=\n\
    \\207\SOH\n\
    \\b\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\DC2\ETX.\ACK=\SUB\189\SOH When a request matches the route, the choice of an upstream cluster is\n\
    \ determined by its weight. The sum of weights across all entries in the\n\
    \ clusters array determines the total weight.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX.\ACK\f\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX.\r\DC3\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX.\SYN\ETB\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\b\DC2\ETX.\CAN<\n\
    \\DC3\n\
    \\f\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\b\175\b\ENQ\DC2\ETX.\EM;\n\
    \\229\ETX\n\
    \\b\EOT\NUL\ETX\NUL\ETX\NUL\STX\STX\DC2\ETX6\ACK1\SUB\211\ETX Optional endpoint metadata match criteria used by the subset load balancer. Only endpoints\n\
    \ in the upstream cluster with metadata matching what is set in this field will be considered\n\
    \ for load balancing. Note that this will be merged with what's provided in\n\
    \ :ref:`TcpProxy.metadata_match\n\
    \ <envoy_v3_api_field_extensions.filters.network.tcp_proxy.v3.TcpProxy.metadata_match>`, with values\n\
    \ here taking precedence. The filter name should be specified as *envoy.lb*.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\STX\ACK\DC2\ETX6\ACK\GS\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX6\RS,\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX6/0\n\
    \S\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX:\EOTU\SUBD Specifies one or more upstream clusters associated with the route.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX:\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX:\r\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX:\ESC#\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX:&'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETX:(T\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\DC2\DC2\ETX:)S\n\
    \\211\SOH\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOT@\STXS\ETX\SUB\196\SOH Configuration for tunneling TCP over other transports or application layers.\n\
    \ Tunneling is supported over both HTTP/1.1 and HTTP/2. Upstream protocol is\n\
    \ determined by the cluster configuration.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX@\n\
    \\EM\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\SOH\a\DC2\EOTA\EOTBL\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\SOH\a\211\136\225\ETX\SOH\DC2\EOTA\EOTBL\n\
    \_\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETXE\EOTA\SUBP The hostname to send in the synthesized CONNECT headers to the upstream proxy.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ENQ\DC2\ETXE\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETXE\v\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETXE\SYN\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\b\DC2\ETXE\CAN@\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\NUL\b\175\b\SO\DC2\ETXE\EM?\n\
    \\241\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\ETXK\EOT\SYN\SUB\225\SOH Use POST method instead of CONNECT method to tunnel the TCP stream.\n\
    \ The 'protocol: bytestream' header is also NOT set for HTTP/2 to comply with the spec.\n\
    \\n\
    \ The upstream proxy is expected to convert POST payload as raw TCP.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ENQ\DC2\ETXK\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETXK\t\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETXK\DC4\NAK\n\
    \\234\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\STX\DC2\EOTQ\EOTR8\SUB\217\SOH Additional request headers to upstream proxy. This is mainly used to\n\
    \ trigger upstream to convert POST requests back to CONNECT requests.\n\
    \\n\
    \ Neither *:-prefixed* pseudo-headers nor the Host: header can be overridden.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\EOT\DC2\ETXQ\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ACK\DC2\ETXQ\r-\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\SOH\DC2\ETXQ.<\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ETX\DC2\ETXQ?@\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\b\DC2\ETXR\b7\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\STX\b\175\b\DC2\DC2\ETXR\t6\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\t\DC2\ETXU\STX\r\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETXU\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETXU\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETXU\v\f\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\n\
    \\DC2\ETXW\STX\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\n\
    \\NUL\DC2\ETXW\v\SUB\n\
    \k\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX[\STXB\SUB^ The prefix to use when emitting :ref:`statistics\n\
    \ <config_network_filters_tcp_proxy_stats>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX[\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX[\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX[\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX[\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX[\SUB@\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT]\STXg\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX]\b\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX^\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX^\EOT&\n\
    \2\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXa\EOT\ETB\SUB% The upstream cluster to connect to.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETXa\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXa\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXa\NAK\SYN\n\
    \\177\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXf\EOT+\SUB\163\SOH Multiple upstream clusters can be specified for a given route. The\n\
    \ request is routed to one of the upstream clusters based on weights\n\
    \ assigned to each cluster.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXf\EOT\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXf\DC4%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXf(*\n\
    \\220\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXl\STX-\SUB\206\SOH Optional endpoint metadata match criteria. Only endpoints in the upstream\n\
    \ cluster with metadata matching that set in metadata_match will be\n\
    \ considered. The filter name should be specified as *envoy.lb*.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETXl\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXl\SUB(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXl+,\n\
    \\187\ETX\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXv\STX,\SUB\173\ETX The idle timeout for connections managed by the TCP proxy filter. The idle timeout\n\
    \ is defined as the period in which there are no bytes sent or received on either\n\
    \ the upstream or downstream connection. If not set, the default idle timeout is 1 hour. If set\n\
    \ to 0s, the timeout will be disabled.\n\
    \\n\
    \ .. warning::\n\
    \   Disabling this timeout has a highly likelihood of yielding connection leaks due to lost TCP\n\
    \   FIN packets, etc.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXv\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXv\ESC'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXv*+\n\
    \\205\ETX\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX~\STX7\SUB\191\ETX [#not-implemented-hide:] The idle timeout for connections managed by the TCP proxy\n\
    \ filter. The idle timeout is defined as the period in which there is no\n\
    \ active traffic. If not set, there is no idle timeout. When the idle timeout\n\
    \ is reached the connection will be closed. The distinction between\n\
    \ downstream_idle_timeout/upstream_idle_timeout provides a means to set\n\
    \ timeout based on the last byte sent on the downstream/upstream connection.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX~\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX~\ESC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX~56\n\
    \(\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOT\129\SOH\STX5\SUB\SUB [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\EOT\129\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\EOT\129\SOH\ESC0\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\EOT\129\SOH34\n\
    \p\n\
    \\EOT\EOT\NUL\STX\a\DC2\EOT\133\SOH\STX8\SUBb Configuration for :ref:`access logs <arch_overview_access_logs>`\n\
    \ emitted by the this tcp_proxy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\EOT\133\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\EOT\133\SOH\v(\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\EOT\133\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\EOT\133\SOH67\n\
    \\178\SOH\n\
    \\EOT\EOT\NUL\STX\b\DC2\EOT\137\SOH\STX\\\SUB\163\SOH The maximum number of unsuccessful connection attempts that will be made before\n\
    \ giving up. If the parameter is not specified, 1 connection attempt will be made.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\EOT\137\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\EOT\137\SOH\RS2\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\EOT\137\SOH56\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\b\DC2\EOT\137\SOH7[\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\b\b\175\b\ENQ\DC2\EOT\137\SOH8Z\n\
    \\220\SOH\n\
    \\EOT\EOT\NUL\STX\t\DC2\EOT\142\SOH\STX\\\SUB\205\SOH Optional configuration for TCP proxy hash policy. If hash_policy is not set, the hash-based\n\
    \ load balancing algorithms will select a host randomly. Currently the number of hash policies is\n\
    \ limited to 1.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\EOT\DC2\EOT\142\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\EOT\142\SOH\v\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\EOT\142\SOH\RS)\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\EOT\142\SOH,.\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\b\DC2\EOT\142\SOH/[\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\t\b\175\b\DC2\DC2\EOT\142\SOH0Z\n\
    \\198\SOH\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\EOT\146\SOH\STX(\SUB\183\SOH If set, this configures tunneling, e.g. configuration options to tunnel TCP payload over\n\
    \ HTTP CONNECT. If this message is absent, the payload will be proxied upstream as per usual.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\EOT\146\SOH\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\EOT\146\SOH\DC2\"\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\EOT\146\SOH%'\n\
    \\155\STX\n\
    \\EOT\EOT\NUL\STX\v\DC2\ACK\151\SOH\STX\152\SOH;\SUB\138\STX The maximum duration of a connection. The duration is defined as the period since a connection\n\
    \ was established. If not set, there is no max duration. When max_downstream_connection_duration\n\
    \ is reached the connection will be closed. Duration must be at least 1ms.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\ACK\DC2\EOT\151\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\EOT\151\SOH\ESC=\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\EOT\151\SOH@B\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\b\DC2\EOT\152\SOH\ACK:\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\v\b\175\b\NAK\DC2\EOT\152\SOH\a9b\ACKproto3"