{- This file was auto-generated from envoy/extensions/filters/network/thrift_proxy/v3/route.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route (
        Route(), RouteAction(), RouteAction'ClusterSpecifier(..),
        _RouteAction'Cluster, _RouteAction'WeightedClusters,
        _RouteAction'ClusterHeader, RouteConfiguration(), RouteMatch(),
        RouteMatch'MatchSpecifier(..), _RouteMatch'MethodName,
        _RouteMatch'ServiceName, WeightedCluster(),
        WeightedCluster'ClusterWeight()
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
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.match' @:: Lens' Route RouteMatch@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.maybe'match' @:: Lens' Route (Prelude.Maybe RouteMatch)@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.route' @:: Lens' Route RouteAction@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.maybe'route' @:: Lens' Route (Prelude.Maybe RouteAction)@ -}
data Route
  = Route'_constructor {_Route'match :: !(Prelude.Maybe RouteMatch),
                        _Route'route :: !(Prelude.Maybe RouteAction),
                        _Route'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Route where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Route "match" RouteMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Route'match (\ x__ y__ -> x__ {_Route'match = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Route "maybe'match" (Prelude.Maybe RouteMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Route'match (\ x__ y__ -> x__ {_Route'match = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Route "route" RouteAction where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Route'route (\ x__ y__ -> x__ {_Route'route = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Route "maybe'route" (Prelude.Maybe RouteAction) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Route'route (\ x__ y__ -> x__ {_Route'route = y__}))
        Prelude.id
instance Data.ProtoLens.Message Route where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.thrift_proxy.v3.Route"
  packedMessageDescriptor _
    = "\n\
      \\ENQRoute\DC2\\\n\
      \\ENQmatch\CAN\SOH \SOH(\v2<.envoy.extensions.filters.network.thrift_proxy.v3.RouteMatchR\ENQmatchB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2]\n\
      \\ENQroute\CAN\STX \SOH(\v2=.envoy.extensions.filters.network.thrift_proxy.v3.RouteActionR\ENQrouteB\b\250B\ENQ\138\SOH\STX\DLE\SOH:>\154\197\136\RS9\n\
      \7envoy.config.filter.network.thrift_proxy.v2alpha1.Route"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        match__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RouteMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'match")) ::
              Data.ProtoLens.FieldDescriptor Route
        route__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "route"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RouteAction)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'route")) ::
              Data.ProtoLens.FieldDescriptor Route
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, match__field_descriptor),
           (Data.ProtoLens.Tag 2, route__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Route'_unknownFields
        (\ x__ y__ -> x__ {_Route'_unknownFields = y__})
  defMessage
    = Route'_constructor
        {_Route'match = Prelude.Nothing, _Route'route = Prelude.Nothing,
         _Route'_unknownFields = []}
  parseMessage
    = let
        loop :: Route -> Data.ProtoLens.Encoding.Bytes.Parser Route
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
                                       "match"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"match") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "route"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"route") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Route"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'match") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'route") _x
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
instance Control.DeepSeq.NFData Route where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Route'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Route'match x__) (Control.DeepSeq.deepseq (_Route'route x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.metadataMatch' @:: Lens' RouteAction Proto.Envoy.Config.Core.V3.Base.Metadata@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.maybe'metadataMatch' @:: Lens' RouteAction (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata)@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.rateLimits' @:: Lens' RouteAction [Proto.Envoy.Config.Route.V3.RouteComponents.RateLimit]@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.vec'rateLimits' @:: Lens' RouteAction (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.RateLimit)@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.stripServiceName' @:: Lens' RouteAction Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.maybe'clusterSpecifier' @:: Lens' RouteAction (Prelude.Maybe RouteAction'ClusterSpecifier)@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.maybe'cluster' @:: Lens' RouteAction (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.cluster' @:: Lens' RouteAction Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.maybe'weightedClusters' @:: Lens' RouteAction (Prelude.Maybe WeightedCluster)@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.weightedClusters' @:: Lens' RouteAction WeightedCluster@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.maybe'clusterHeader' @:: Lens' RouteAction (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.clusterHeader' @:: Lens' RouteAction Data.Text.Text@ -}
data RouteAction
  = RouteAction'_constructor {_RouteAction'metadataMatch :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata),
                              _RouteAction'rateLimits :: !(Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.RateLimit),
                              _RouteAction'stripServiceName :: !Prelude.Bool,
                              _RouteAction'clusterSpecifier :: !(Prelude.Maybe RouteAction'ClusterSpecifier),
                              _RouteAction'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RouteAction where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data RouteAction'ClusterSpecifier
  = RouteAction'Cluster !Data.Text.Text |
    RouteAction'WeightedClusters !WeightedCluster |
    RouteAction'ClusterHeader !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField RouteAction "metadataMatch" Proto.Envoy.Config.Core.V3.Base.Metadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'metadataMatch
           (\ x__ y__ -> x__ {_RouteAction'metadataMatch = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RouteAction "maybe'metadataMatch" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'metadataMatch
           (\ x__ y__ -> x__ {_RouteAction'metadataMatch = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteAction "rateLimits" [Proto.Envoy.Config.Route.V3.RouteComponents.RateLimit] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'rateLimits
           (\ x__ y__ -> x__ {_RouteAction'rateLimits = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RouteAction "vec'rateLimits" (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.RateLimit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'rateLimits
           (\ x__ y__ -> x__ {_RouteAction'rateLimits = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteAction "stripServiceName" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'stripServiceName
           (\ x__ y__ -> x__ {_RouteAction'stripServiceName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteAction "maybe'clusterSpecifier" (Prelude.Maybe RouteAction'ClusterSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'clusterSpecifier
           (\ x__ y__ -> x__ {_RouteAction'clusterSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteAction "maybe'cluster" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'clusterSpecifier
           (\ x__ y__ -> x__ {_RouteAction'clusterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (RouteAction'Cluster x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap RouteAction'Cluster y__))
instance Data.ProtoLens.Field.HasField RouteAction "cluster" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'clusterSpecifier
           (\ x__ y__ -> x__ {_RouteAction'clusterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (RouteAction'Cluster x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap RouteAction'Cluster y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField RouteAction "maybe'weightedClusters" (Prelude.Maybe WeightedCluster) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'clusterSpecifier
           (\ x__ y__ -> x__ {_RouteAction'clusterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (RouteAction'WeightedClusters x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap RouteAction'WeightedClusters y__))
instance Data.ProtoLens.Field.HasField RouteAction "weightedClusters" WeightedCluster where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'clusterSpecifier
           (\ x__ y__ -> x__ {_RouteAction'clusterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (RouteAction'WeightedClusters x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap RouteAction'WeightedClusters y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField RouteAction "maybe'clusterHeader" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'clusterSpecifier
           (\ x__ y__ -> x__ {_RouteAction'clusterSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (RouteAction'ClusterHeader x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap RouteAction'ClusterHeader y__))
instance Data.ProtoLens.Field.HasField RouteAction "clusterHeader" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteAction'clusterSpecifier
           (\ x__ y__ -> x__ {_RouteAction'clusterSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (RouteAction'ClusterHeader x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap RouteAction'ClusterHeader y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message RouteAction where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.thrift_proxy.v3.RouteAction"
  packedMessageDescriptor _
    = "\n\
      \\vRouteAction\DC2#\n\
      \\acluster\CAN\SOH \SOH(\tH\NULR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2p\n\
      \\DC1weighted_clusters\CAN\STX \SOH(\v2A.envoy.extensions.filters.network.thrift_proxy.v3.WeightedClusterH\NULR\DLEweightedClusters\DC26\n\
      \\SOcluster_header\CAN\ACK \SOH(\tH\NULR\rclusterHeaderB\r\250B\n\
      \r\b\DLE\SOH\192\SOH\STX\200\SOH\NUL\DC2E\n\
      \\SOmetadata_match\CAN\ETX \SOH(\v2\RS.envoy.config.core.v3.MetadataR\rmetadataMatch\DC2A\n\
      \\vrate_limits\CAN\EOT \ETX(\v2 .envoy.config.route.v3.RateLimitR\n\
      \rateLimits\DC2,\n\
      \\DC2strip_service_name\CAN\ENQ \SOH(\bR\DLEstripServiceNameB\CAN\n\
      \\DC1cluster_specifier\DC2\ETX\248B\SOH:D\154\197\136\RS?\n\
      \=envoy.config.filter.network.thrift_proxy.v2alpha1.RouteAction"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        metadataMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Metadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadataMatch")) ::
              Data.ProtoLens.FieldDescriptor RouteAction
        rateLimits__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rate_limits"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.RouteComponents.RateLimit)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"rateLimits")) ::
              Data.ProtoLens.FieldDescriptor RouteAction
        stripServiceName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "strip_service_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stripServiceName")) ::
              Data.ProtoLens.FieldDescriptor RouteAction
        cluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cluster")) ::
              Data.ProtoLens.FieldDescriptor RouteAction
        weightedClusters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "weighted_clusters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WeightedCluster)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'weightedClusters")) ::
              Data.ProtoLens.FieldDescriptor RouteAction
        clusterHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_header"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clusterHeader")) ::
              Data.ProtoLens.FieldDescriptor RouteAction
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, metadataMatch__field_descriptor),
           (Data.ProtoLens.Tag 4, rateLimits__field_descriptor),
           (Data.ProtoLens.Tag 5, stripServiceName__field_descriptor),
           (Data.ProtoLens.Tag 1, cluster__field_descriptor),
           (Data.ProtoLens.Tag 2, weightedClusters__field_descriptor),
           (Data.ProtoLens.Tag 6, clusterHeader__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RouteAction'_unknownFields
        (\ x__ y__ -> x__ {_RouteAction'_unknownFields = y__})
  defMessage
    = RouteAction'_constructor
        {_RouteAction'metadataMatch = Prelude.Nothing,
         _RouteAction'rateLimits = Data.Vector.Generic.empty,
         _RouteAction'stripServiceName = Data.ProtoLens.fieldDefault,
         _RouteAction'clusterSpecifier = Prelude.Nothing,
         _RouteAction'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RouteAction
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Route.V3.RouteComponents.RateLimit
             -> Data.ProtoLens.Encoding.Bytes.Parser RouteAction
        loop x mutable'rateLimits
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'rateLimits <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'rateLimits)
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
                              (Data.ProtoLens.Field.field @"vec'rateLimits")
                              frozen'rateLimits
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"metadataMatch") y x)
                                  mutable'rateLimits
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "rate_limits"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'rateLimits y)
                                loop x v
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "strip_service_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stripServiceName") y x)
                                  mutable'rateLimits
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
                                       "cluster"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"cluster") y x)
                                  mutable'rateLimits
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "weighted_clusters"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"weightedClusters") y x)
                                  mutable'rateLimits
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
                                       "cluster_header"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clusterHeader") y x)
                                  mutable'rateLimits
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'rateLimits
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'rateLimits <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'rateLimits)
          "RouteAction"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
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
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'rateLimits") _x))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"stripServiceName") _x
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
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'clusterSpecifier") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just (RouteAction'Cluster v))
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
                         (Prelude.Just (RouteAction'WeightedClusters v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage
                                   v)
                         (Prelude.Just (RouteAction'ClusterHeader v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8
                                   v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData RouteAction where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RouteAction'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RouteAction'metadataMatch x__)
                (Control.DeepSeq.deepseq
                   (_RouteAction'rateLimits x__)
                   (Control.DeepSeq.deepseq
                      (_RouteAction'stripServiceName x__)
                      (Control.DeepSeq.deepseq (_RouteAction'clusterSpecifier x__) ()))))
instance Control.DeepSeq.NFData RouteAction'ClusterSpecifier where
  rnf (RouteAction'Cluster x__) = Control.DeepSeq.rnf x__
  rnf (RouteAction'WeightedClusters x__) = Control.DeepSeq.rnf x__
  rnf (RouteAction'ClusterHeader x__) = Control.DeepSeq.rnf x__
_RouteAction'Cluster ::
  Data.ProtoLens.Prism.Prism' RouteAction'ClusterSpecifier Data.Text.Text
_RouteAction'Cluster
  = Data.ProtoLens.Prism.prism'
      RouteAction'Cluster
      (\ p__
         -> case p__ of
              (RouteAction'Cluster p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_RouteAction'WeightedClusters ::
  Data.ProtoLens.Prism.Prism' RouteAction'ClusterSpecifier WeightedCluster
_RouteAction'WeightedClusters
  = Data.ProtoLens.Prism.prism'
      RouteAction'WeightedClusters
      (\ p__
         -> case p__ of
              (RouteAction'WeightedClusters p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_RouteAction'ClusterHeader ::
  Data.ProtoLens.Prism.Prism' RouteAction'ClusterSpecifier Data.Text.Text
_RouteAction'ClusterHeader
  = Data.ProtoLens.Prism.prism'
      RouteAction'ClusterHeader
      (\ p__
         -> case p__ of
              (RouteAction'ClusterHeader p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.name' @:: Lens' RouteConfiguration Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.routes' @:: Lens' RouteConfiguration [Route]@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.vec'routes' @:: Lens' RouteConfiguration (Data.Vector.Vector Route)@ -}
data RouteConfiguration
  = RouteConfiguration'_constructor {_RouteConfiguration'name :: !Data.Text.Text,
                                     _RouteConfiguration'routes :: !(Data.Vector.Vector Route),
                                     _RouteConfiguration'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RouteConfiguration where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RouteConfiguration "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'name
           (\ x__ y__ -> x__ {_RouteConfiguration'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteConfiguration "routes" [Route] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'routes
           (\ x__ y__ -> x__ {_RouteConfiguration'routes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RouteConfiguration "vec'routes" (Data.Vector.Vector Route) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteConfiguration'routes
           (\ x__ y__ -> x__ {_RouteConfiguration'routes = y__}))
        Prelude.id
instance Data.ProtoLens.Message RouteConfiguration where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.thrift_proxy.v3.RouteConfiguration"
  packedMessageDescriptor _
    = "\n\
      \\DC2RouteConfiguration\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2O\n\
      \\ACKroutes\CAN\STX \ETX(\v27.envoy.extensions.filters.network.thrift_proxy.v3.RouteR\ACKroutes:K\154\197\136\RSF\n\
      \Denvoy.config.filter.network.thrift_proxy.v2alpha1.RouteConfiguration"
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
              Data.ProtoLens.FieldDescriptor RouteConfiguration
        routes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "routes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Route)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"routes")) ::
              Data.ProtoLens.FieldDescriptor RouteConfiguration
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, routes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RouteConfiguration'_unknownFields
        (\ x__ y__ -> x__ {_RouteConfiguration'_unknownFields = y__})
  defMessage
    = RouteConfiguration'_constructor
        {_RouteConfiguration'name = Data.ProtoLens.fieldDefault,
         _RouteConfiguration'routes = Data.Vector.Generic.empty,
         _RouteConfiguration'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RouteConfiguration
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Route
             -> Data.ProtoLens.Encoding.Bytes.Parser RouteConfiguration
        loop x mutable'routes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'routes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'routes)
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
                              (Data.ProtoLens.Field.field @"vec'routes") frozen'routes x))
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
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'routes
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "routes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'routes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'routes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'routes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'routes)
          "RouteConfiguration"
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'routes") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData RouteConfiguration where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RouteConfiguration'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RouteConfiguration'name x__)
                (Control.DeepSeq.deepseq (_RouteConfiguration'routes x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.invert' @:: Lens' RouteMatch Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.headers' @:: Lens' RouteMatch [Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher]@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.vec'headers' @:: Lens' RouteMatch (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.maybe'matchSpecifier' @:: Lens' RouteMatch (Prelude.Maybe RouteMatch'MatchSpecifier)@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.maybe'methodName' @:: Lens' RouteMatch (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.methodName' @:: Lens' RouteMatch Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.maybe'serviceName' @:: Lens' RouteMatch (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.serviceName' @:: Lens' RouteMatch Data.Text.Text@ -}
data RouteMatch
  = RouteMatch'_constructor {_RouteMatch'invert :: !Prelude.Bool,
                             _RouteMatch'headers :: !(Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher),
                             _RouteMatch'matchSpecifier :: !(Prelude.Maybe RouteMatch'MatchSpecifier),
                             _RouteMatch'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RouteMatch where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data RouteMatch'MatchSpecifier
  = RouteMatch'MethodName !Data.Text.Text |
    RouteMatch'ServiceName !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField RouteMatch "invert" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteMatch'invert (\ x__ y__ -> x__ {_RouteMatch'invert = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteMatch "headers" [Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteMatch'headers (\ x__ y__ -> x__ {_RouteMatch'headers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RouteMatch "vec'headers" (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteMatch'headers (\ x__ y__ -> x__ {_RouteMatch'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteMatch "maybe'matchSpecifier" (Prelude.Maybe RouteMatch'MatchSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteMatch'matchSpecifier
           (\ x__ y__ -> x__ {_RouteMatch'matchSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RouteMatch "maybe'methodName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteMatch'matchSpecifier
           (\ x__ y__ -> x__ {_RouteMatch'matchSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (RouteMatch'MethodName x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap RouteMatch'MethodName y__))
instance Data.ProtoLens.Field.HasField RouteMatch "methodName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteMatch'matchSpecifier
           (\ x__ y__ -> x__ {_RouteMatch'matchSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (RouteMatch'MethodName x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap RouteMatch'MethodName y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField RouteMatch "maybe'serviceName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteMatch'matchSpecifier
           (\ x__ y__ -> x__ {_RouteMatch'matchSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (RouteMatch'ServiceName x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap RouteMatch'ServiceName y__))
instance Data.ProtoLens.Field.HasField RouteMatch "serviceName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RouteMatch'matchSpecifier
           (\ x__ y__ -> x__ {_RouteMatch'matchSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (RouteMatch'ServiceName x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap RouteMatch'ServiceName y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message RouteMatch where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.thrift_proxy.v3.RouteMatch"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \RouteMatch\DC2!\n\
      \\vmethod_name\CAN\SOH \SOH(\tH\NULR\n\
      \methodName\DC2#\n\
      \\fservice_name\CAN\STX \SOH(\tH\NULR\vserviceName\DC2\SYN\n\
      \\ACKinvert\CAN\ETX \SOH(\bR\ACKinvert\DC2>\n\
      \\aheaders\CAN\EOT \ETX(\v2$.envoy.config.route.v3.HeaderMatcherR\aheadersB\SYN\n\
      \\SImatch_specifier\DC2\ETX\248B\SOH:C\154\197\136\RS>\n\
      \<envoy.config.filter.network.thrift_proxy.v2alpha1.RouteMatch"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        invert__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "invert"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"invert")) ::
              Data.ProtoLens.FieldDescriptor RouteMatch
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor RouteMatch
        methodName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "method_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'methodName")) ::
              Data.ProtoLens.FieldDescriptor RouteMatch
        serviceName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'serviceName")) ::
              Data.ProtoLens.FieldDescriptor RouteMatch
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, invert__field_descriptor),
           (Data.ProtoLens.Tag 4, headers__field_descriptor),
           (Data.ProtoLens.Tag 1, methodName__field_descriptor),
           (Data.ProtoLens.Tag 2, serviceName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RouteMatch'_unknownFields
        (\ x__ y__ -> x__ {_RouteMatch'_unknownFields = y__})
  defMessage
    = RouteMatch'_constructor
        {_RouteMatch'invert = Data.ProtoLens.fieldDefault,
         _RouteMatch'headers = Data.Vector.Generic.empty,
         _RouteMatch'matchSpecifier = Prelude.Nothing,
         _RouteMatch'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RouteMatch
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher
             -> Data.ProtoLens.Encoding.Bytes.Parser RouteMatch
        loop x mutable'headers
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'headers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'headers)
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
                              (Data.ProtoLens.Field.field @"vec'headers") frozen'headers x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "invert"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"invert") y x)
                                  mutable'headers
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "headers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'headers y)
                                loop x v
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
                                       "method_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"methodName") y x)
                                  mutable'headers
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
                                       "service_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"serviceName") y x)
                                  mutable'headers
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'headers
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'headers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'headers)
          "RouteMatch"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"invert") _x
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
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'headers") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'matchSpecifier") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (RouteMatch'MethodName v))
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
                      (Prelude.Just (RouteMatch'ServiceName v))
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
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData RouteMatch where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RouteMatch'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RouteMatch'invert x__)
                (Control.DeepSeq.deepseq
                   (_RouteMatch'headers x__)
                   (Control.DeepSeq.deepseq (_RouteMatch'matchSpecifier x__) ())))
instance Control.DeepSeq.NFData RouteMatch'MatchSpecifier where
  rnf (RouteMatch'MethodName x__) = Control.DeepSeq.rnf x__
  rnf (RouteMatch'ServiceName x__) = Control.DeepSeq.rnf x__
_RouteMatch'MethodName ::
  Data.ProtoLens.Prism.Prism' RouteMatch'MatchSpecifier Data.Text.Text
_RouteMatch'MethodName
  = Data.ProtoLens.Prism.prism'
      RouteMatch'MethodName
      (\ p__
         -> case p__ of
              (RouteMatch'MethodName p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_RouteMatch'ServiceName ::
  Data.ProtoLens.Prism.Prism' RouteMatch'MatchSpecifier Data.Text.Text
_RouteMatch'ServiceName
  = Data.ProtoLens.Prism.prism'
      RouteMatch'ServiceName
      (\ p__
         -> case p__ of
              (RouteMatch'ServiceName p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.clusters' @:: Lens' WeightedCluster [WeightedCluster'ClusterWeight]@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.vec'clusters' @:: Lens' WeightedCluster (Data.Vector.Vector WeightedCluster'ClusterWeight)@ -}
data WeightedCluster
  = WeightedCluster'_constructor {_WeightedCluster'clusters :: !(Data.Vector.Vector WeightedCluster'ClusterWeight),
                                  _WeightedCluster'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WeightedCluster where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WeightedCluster "clusters" [WeightedCluster'ClusterWeight] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WeightedCluster'clusters
           (\ x__ y__ -> x__ {_WeightedCluster'clusters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField WeightedCluster "vec'clusters" (Data.Vector.Vector WeightedCluster'ClusterWeight) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WeightedCluster'clusters
           (\ x__ y__ -> x__ {_WeightedCluster'clusters = y__}))
        Prelude.id
instance Data.ProtoLens.Message WeightedCluster where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.thrift_proxy.v3.WeightedCluster"
  packedMessageDescriptor _
    = "\n\
      \\SIWeightedCluster\DC2u\n\
      \\bclusters\CAN\SOH \ETX(\v2O.envoy.extensions.filters.network.thrift_proxy.v3.WeightedCluster.ClusterWeightR\bclustersB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\138\STX\n\
      \\rClusterWeight\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2=\n\
      \\ACKweight\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\ACKweightB\a\250B\EOT*\STX(\SOH\DC2E\n\
      \\SOmetadata_match\CAN\ETX \SOH(\v2\RS.envoy.config.core.v3.MetadataR\rmetadataMatch:V\154\197\136\RSQ\n\
      \Oenvoy.config.filter.network.thrift_proxy.v2alpha1.WeightedCluster.ClusterWeight:H\154\197\136\RSC\n\
      \Aenvoy.config.filter.network.thrift_proxy.v2alpha1.WeightedCluster"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clusters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "clusters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WeightedCluster'ClusterWeight)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"clusters")) ::
              Data.ProtoLens.FieldDescriptor WeightedCluster
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clusters__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WeightedCluster'_unknownFields
        (\ x__ y__ -> x__ {_WeightedCluster'_unknownFields = y__})
  defMessage
    = WeightedCluster'_constructor
        {_WeightedCluster'clusters = Data.Vector.Generic.empty,
         _WeightedCluster'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WeightedCluster
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld WeightedCluster'ClusterWeight
             -> Data.ProtoLens.Encoding.Bytes.Parser WeightedCluster
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
instance Control.DeepSeq.NFData WeightedCluster where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WeightedCluster'_unknownFields x__)
             (Control.DeepSeq.deepseq (_WeightedCluster'clusters x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.name' @:: Lens' WeightedCluster'ClusterWeight Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.weight' @:: Lens' WeightedCluster'ClusterWeight Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.maybe'weight' @:: Lens' WeightedCluster'ClusterWeight (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.metadataMatch' @:: Lens' WeightedCluster'ClusterWeight Proto.Envoy.Config.Core.V3.Base.Metadata@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route_Fields.maybe'metadataMatch' @:: Lens' WeightedCluster'ClusterWeight (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata)@ -}
data WeightedCluster'ClusterWeight
  = WeightedCluster'ClusterWeight'_constructor {_WeightedCluster'ClusterWeight'name :: !Data.Text.Text,
                                                _WeightedCluster'ClusterWeight'weight :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                                _WeightedCluster'ClusterWeight'metadataMatch :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata),
                                                _WeightedCluster'ClusterWeight'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WeightedCluster'ClusterWeight where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WeightedCluster'ClusterWeight "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WeightedCluster'ClusterWeight'name
           (\ x__ y__ -> x__ {_WeightedCluster'ClusterWeight'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WeightedCluster'ClusterWeight "weight" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WeightedCluster'ClusterWeight'weight
           (\ x__ y__ -> x__ {_WeightedCluster'ClusterWeight'weight = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WeightedCluster'ClusterWeight "maybe'weight" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WeightedCluster'ClusterWeight'weight
           (\ x__ y__ -> x__ {_WeightedCluster'ClusterWeight'weight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WeightedCluster'ClusterWeight "metadataMatch" Proto.Envoy.Config.Core.V3.Base.Metadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WeightedCluster'ClusterWeight'metadataMatch
           (\ x__ y__
              -> x__ {_WeightedCluster'ClusterWeight'metadataMatch = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField WeightedCluster'ClusterWeight "maybe'metadataMatch" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WeightedCluster'ClusterWeight'metadataMatch
           (\ x__ y__
              -> x__ {_WeightedCluster'ClusterWeight'metadataMatch = y__}))
        Prelude.id
instance Data.ProtoLens.Message WeightedCluster'ClusterWeight where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.thrift_proxy.v3.WeightedCluster.ClusterWeight"
  packedMessageDescriptor _
    = "\n\
      \\rClusterWeight\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2=\n\
      \\ACKweight\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\ACKweightB\a\250B\EOT*\STX(\SOH\DC2E\n\
      \\SOmetadata_match\CAN\ETX \SOH(\v2\RS.envoy.config.core.v3.MetadataR\rmetadataMatch:V\154\197\136\RSQ\n\
      \Oenvoy.config.filter.network.thrift_proxy.v2alpha1.WeightedCluster.ClusterWeight"
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
              Data.ProtoLens.FieldDescriptor WeightedCluster'ClusterWeight
        weight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "weight"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'weight")) ::
              Data.ProtoLens.FieldDescriptor WeightedCluster'ClusterWeight
        metadataMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Metadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadataMatch")) ::
              Data.ProtoLens.FieldDescriptor WeightedCluster'ClusterWeight
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, weight__field_descriptor),
           (Data.ProtoLens.Tag 3, metadataMatch__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WeightedCluster'ClusterWeight'_unknownFields
        (\ x__ y__
           -> x__ {_WeightedCluster'ClusterWeight'_unknownFields = y__})
  defMessage
    = WeightedCluster'ClusterWeight'_constructor
        {_WeightedCluster'ClusterWeight'name = Data.ProtoLens.fieldDefault,
         _WeightedCluster'ClusterWeight'weight = Prelude.Nothing,
         _WeightedCluster'ClusterWeight'metadataMatch = Prelude.Nothing,
         _WeightedCluster'ClusterWeight'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WeightedCluster'ClusterWeight
          -> Data.ProtoLens.Encoding.Bytes.Parser WeightedCluster'ClusterWeight
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
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'weight") _x
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
instance Control.DeepSeq.NFData WeightedCluster'ClusterWeight where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WeightedCluster'ClusterWeight'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WeightedCluster'ClusterWeight'name x__)
                (Control.DeepSeq.deepseq
                   (_WeightedCluster'ClusterWeight'weight x__)
                   (Control.DeepSeq.deepseq
                      (_WeightedCluster'ClusterWeight'metadataMatch x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \<envoy/extensions/filters/network/thrift_proxy/v3/route.proto\DC20envoy.extensions.filters.network.thrift_proxy.v3\SUB\USenvoy/config/core/v3/base.proto\SUB,envoy/config/route/v3/route_components.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\198\SOH\n\
    \\DC2RouteConfiguration\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2O\n\
    \\ACKroutes\CAN\STX \ETX(\v27.envoy.extensions.filters.network.thrift_proxy.v3.RouteR\ACKroutes:K\154\197\136\RSF\n\
    \Denvoy.config.filter.network.thrift_proxy.v2alpha1.RouteConfiguration\"\132\STX\n\
    \\ENQRoute\DC2\\\n\
    \\ENQmatch\CAN\SOH \SOH(\v2<.envoy.extensions.filters.network.thrift_proxy.v3.RouteMatchR\ENQmatchB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2]\n\
    \\ENQroute\CAN\STX \SOH(\v2=.envoy.extensions.filters.network.thrift_proxy.v3.RouteActionR\ENQrouteB\b\250B\ENQ\138\SOH\STX\DLE\SOH:>\154\197\136\RS9\n\
    \7envoy.config.filter.network.thrift_proxy.v2alpha1.Route\"\137\STX\n\
    \\n\
    \RouteMatch\DC2!\n\
    \\vmethod_name\CAN\SOH \SOH(\tH\NULR\n\
    \methodName\DC2#\n\
    \\fservice_name\CAN\STX \SOH(\tH\NULR\vserviceName\DC2\SYN\n\
    \\ACKinvert\CAN\ETX \SOH(\bR\ACKinvert\DC2>\n\
    \\aheaders\CAN\EOT \ETX(\v2$.envoy.config.route.v3.HeaderMatcherR\aheadersB\SYN\n\
    \\SImatch_specifier\DC2\ETX\248B\SOH:C\154\197\136\RS>\n\
    \<envoy.config.filter.network.thrift_proxy.v2alpha1.RouteMatch\"\244\ETX\n\
    \\vRouteAction\DC2#\n\
    \\acluster\CAN\SOH \SOH(\tH\NULR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2p\n\
    \\DC1weighted_clusters\CAN\STX \SOH(\v2A.envoy.extensions.filters.network.thrift_proxy.v3.WeightedClusterH\NULR\DLEweightedClusters\DC26\n\
    \\SOcluster_header\CAN\ACK \SOH(\tH\NULR\rclusterHeaderB\r\250B\n\
    \r\b\DLE\SOH\192\SOH\STX\200\SOH\NUL\DC2E\n\
    \\SOmetadata_match\CAN\ETX \SOH(\v2\RS.envoy.config.core.v3.MetadataR\rmetadataMatch\DC2A\n\
    \\vrate_limits\CAN\EOT \ETX(\v2 .envoy.config.route.v3.RateLimitR\n\
    \rateLimits\DC2,\n\
    \\DC2strip_service_name\CAN\ENQ \SOH(\bR\DLEstripServiceNameB\CAN\n\
    \\DC1cluster_specifier\DC2\ETX\248B\SOH:D\154\197\136\RS?\n\
    \=envoy.config.filter.network.thrift_proxy.v2alpha1.RouteAction\"\223\ETX\n\
    \\SIWeightedCluster\DC2u\n\
    \\bclusters\CAN\SOH \ETX(\v2O.envoy.extensions.filters.network.thrift_proxy.v3.WeightedCluster.ClusterWeightR\bclustersB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\138\STX\n\
    \\rClusterWeight\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2=\n\
    \\ACKweight\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\ACKweightB\a\250B\EOT*\STX(\SOH\DC2E\n\
    \\SOmetadata_match\CAN\ETX \SOH(\v2\RS.envoy.config.core.v3.MetadataR\rmetadataMatch:V\154\197\136\RSQ\n\
    \Oenvoy.config.filter.network.thrift_proxy.v2alpha1.WeightedCluster.ClusterWeight:H\154\197\136\RSC\n\
    \Aenvoy.config.filter.network.thrift_proxy.v2alpha1.WeightedClusterBV\n\
    \>io.envoyproxy.envoy.extensions.filters.network.thrift_proxy.v3B\n\
    \RouteProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\255\&0\n\
    \\a\DC2\ENQ\NUL\NUL\157\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL9\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL6\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL+\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULW\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NULW\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL+\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SO\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SI\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\149\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL\US\SOH2\136\SOH [#protodoc-title: Thrift Proxy Route Configuration]\n\
    \ Thrift Proxy :ref:`configuration overview <config_network_filters_thrift_proxy>`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\SUB\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\SYN\STX\ETBM\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\SYN\STX\ETBM\n\
    \l\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\STX\DC2\SUB_ The name of the route configuration. Reserved for future use in asynchronous route discovery.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SUB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB\DLE\DC1\n\
    \\136\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\RS\STX\FS\SUB{ The list of routes that will be matched, in order, against incoming requests. The first route\n\
    \ that matches will be used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\RS\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\RS\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\RS\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT!\NUL*\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX!\b\r\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT\"\STX#@\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT\"\STX#@\n\
    \)\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX&\STXE\SUB\FS Route matching parameters.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX&\STX\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX&\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX&\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX&\ETBD\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\DC1\DC2\ETX&\CANC\n\
    \6\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX)\STXF\SUB) Route request to some upstream cluster.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX)\STX\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX)\SO\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX)\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX)\CANE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\175\b\DC1\DC2\ETX)\EMD\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT,\NULQ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX,\b\DC2\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOT-\STX.E\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOT-\STX.E\n\
    \\f\n\
    \\EOT\EOT\STX\b\NUL\DC2\EOT0\STX;\ETX\n\
    \\f\n\
    \\ENQ\EOT\STX\b\NUL\SOH\DC2\ETX0\b\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\b\NUL\STX\DC2\ETX1\EOT&\n\
    \\SO\n\
    \\a\EOT\STX\b\NUL\STX\175\b\DC2\ETX1\EOT&\n\
    \\152\SOH\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX5\EOT\ESC\SUB\138\SOH If specified, the route must exactly match the request method name. As a special case, an\n\
    \ empty string matches any request method name.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX5\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX5\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX5\EM\SUB\n\
    \\205\SOH\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX:\EOT\FS\SUB\191\SOH If specified, the route must have the service name as the request method name prefix. As a\n\
    \ special case, an empty string matches any service name. Only relevant when service\n\
    \ multiplexing.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX:\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX:\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX:\SUB\ESC\n\
    \\169\ENQ\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETXI\STX\DC2\SUB\155\ENQ Inverts whatever matching is done in the :ref:`method_name\n\
    \ <envoy_v3_api_field_extensions.filters.network.thrift_proxy.v3.RouteMatch.method_name>` or\n\
    \ :ref:`service_name\n\
    \ <envoy_v3_api_field_extensions.filters.network.thrift_proxy.v3.RouteMatch.service_name>` fields.\n\
    \ Cannot be combined with wildcard matching as that would result in routes never being matched.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \   This does not invert matching done as part of the :ref:`headers field\n\
    \   <envoy_v3_api_field_extensions.filters.network.thrift_proxy.v3.RouteMatch.headers>` field. To\n\
    \   invert header matching, see :ref:`invert_match\n\
    \   <envoy_v3_api_field_config.route.v3.HeaderMatcher.invert_match>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETXI\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXI\a\r\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXI\DLE\DC1\n\
    \\176\ETX\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETXP\STX5\SUB\162\ETX Specifies a set of headers that the route should match on. The router will check the request\226\128\153s\n\
    \ headers against all the specified headers in the route config. A match will happen if all the\n\
    \ headers in the route are present in the request with the same values (or based on presence if\n\
    \ the value field is not in the config). Note that this only applies for Thrift transports and/or\n\
    \ protocols that support headers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETXP\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETXP\v(\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETXP)0\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETXP34\n\
    \#\n\
    \\STX\EOT\ETX\DC2\EOTT\NUL}\SOH\SUB\ETB [#next-free-field: 7]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXT\b\DC3\n\
    \\v\n\
    \\ETX\EOT\ETX\a\DC2\EOTU\STXVF\n\
    \\DLE\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\EOTU\STXVF\n\
    \\f\n\
    \\EOT\EOT\ETX\b\NUL\DC2\EOTX\STXk\ETX\n\
    \\f\n\
    \\ENQ\EOT\ETX\b\NUL\SOH\DC2\ETXX\b\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\b\NUL\STX\DC2\ETXY\EOT&\n\
    \\SO\n\
    \\a\EOT\ETX\b\NUL\STX\175\b\DC2\ETXY\EOT&\n\
    \]\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX]\EOT@\SUBP Indicates a single upstream cluster to which the request should be routed\n\
    \ to.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX]\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX]\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX]\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETX]\ETB?\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\175\b\SO\DC2\ETX]\CAN>\n\
    \\177\SOH\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXb\EOT*\SUB\163\SOH Multiple upstream clusters can be specified for a given route. The\n\
    \ request is routed to one of the upstream clusters based on weights\n\
    \ assigned to each cluster.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETXb\EOT\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXb\DC4%\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXb()\n\
    \\195\STX\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOTi\EOTjc\SUB\180\STX Envoy will determine the cluster to route to by reading the value of the\n\
    \ Thrift header named by cluster_header from the request headers. If the\n\
    \ header is not found or the referenced cluster does not exist Envoy will\n\
    \ respond with an unknown method exception or an internal error exception,\n\
    \ respectively.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETXi\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXi\v\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXi\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\b\DC2\ETXj\bb\n\
    \\SI\n\
    \\b\EOT\ETX\STX\STX\b\175\b\SO\DC2\ETXj\ta\n\
    \\129\EOT\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETXs\STX-\SUB\243\ETX Optional endpoint metadata match criteria used by the subset load balancer. Only endpoints in\n\
    \ the upstream cluster with metadata matching what is set in this field will be considered.\n\
    \ Note that this will be merged with what's provided in :ref:`WeightedCluster.metadata_match\n\
    \ <envoy_v3_api_field_extensions.filters.network.thrift_proxy.v3.WeightedCluster.ClusterWeight.metadata_match>`,\n\
    \ with values there taking precedence. Keys and values should be provided under the \"envoy.lb\"\n\
    \ metadata key.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ACK\DC2\ETXs\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETXs\SUB(\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETXs+,\n\
    \\233\SOH\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETXx\STX5\SUB\219\SOH Specifies a set of rate limit configurations that could be applied to the route.\n\
    \ N.B. Thrift service or method name matching can be achieved by specifying a RequestHeaders\n\
    \ action with the header name \":method-name\".\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\EOT\DC2\ETXx\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ACK\DC2\ETXx\v$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETXx%0\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETXx34\n\
    \\160\SOH\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETX|\STX\RS\SUB\146\SOH Strip the service prefix from the method name, if there's a prefix. For\n\
    \ example, the method call Service:method would end up being just method.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ENQ\DC2\ETX|\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETX|\a\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETX|\FS\GS\n\
    \\228\SOH\n\
    \\STX\EOT\EOT\DC2\ACK\130\SOH\NUL\157\SOH\SOH\SUB\213\SOH Allows for specification of multiple upstream clusters along with weights that indicate the\n\
    \ percentage of traffic to be forwarded to each cluster. The router selects an upstream cluster\n\
    \ based on these weights.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\130\SOH\b\ETB\n\
    \\r\n\
    \\ETX\EOT\EOT\a\DC2\ACK\131\SOH\STX\132\SOHJ\n\
    \\DC2\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\ACK\131\SOH\STX\132\SOHJ\n\
    \\SO\n\
    \\EOT\EOT\EOT\ETX\NUL\DC2\ACK\134\SOH\STX\153\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\EOT\ETX\NUL\SOH\DC2\EOT\134\SOH\n\
    \\ETB\n\
    \\SI\n\
    \\ENQ\EOT\EOT\ETX\NUL\a\DC2\ACK\135\SOH\EOT\136\SOHZ\n\
    \\DC4\n\
    \\n\
    \\EOT\EOT\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\135\SOH\EOT\136\SOHZ\n\
    \/\n\
    \\ACK\EOT\EOT\ETX\NUL\STX\NUL\DC2\EOT\139\SOH\EOT=\SUB\US Name of the upstream cluster.\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\ENQ\DC2\EOT\139\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\SOH\DC2\EOT\139\SOH\v\SI\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\ETX\DC2\EOT\139\SOH\DC2\DC3\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\b\DC2\EOT\139\SOH\DC4<\n\
    \\DC2\n\
    \\n\
    \\EOT\EOT\ETX\NUL\STX\NUL\b\175\b\SO\DC2\EOT\139\SOH\NAK;\n\
    \\206\SOH\n\
    \\ACK\EOT\EOT\ETX\NUL\STX\SOH\DC2\EOT\144\SOH\EOTP\SUB\189\SOH When a request matches the route, the choice of an upstream cluster is determined by its\n\
    \ weight. The sum of weights across all entries in the clusters array determines the total\n\
    \ weight.\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\ACK\DC2\EOT\144\SOH\EOT\US\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\SOH\DC2\EOT\144\SOH &\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\ETX\DC2\EOT\144\SOH)*\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\b\DC2\EOT\144\SOH+O\n\
    \\DC2\n\
    \\n\
    \\EOT\EOT\ETX\NUL\STX\SOH\b\175\b\ENQ\DC2\EOT\144\SOH,N\n\
    \\217\ETX\n\
    \\ACK\EOT\EOT\ETX\NUL\STX\STX\DC2\EOT\152\SOH\EOT/\SUB\200\ETX Optional endpoint metadata match criteria used by the subset load balancer. Only endpoints in\n\
    \ the upstream cluster with metadata matching what is set in this field, combined with what's\n\
    \ provided in :ref:`RouteAction's metadata_match\n\
    \ <envoy_v3_api_field_extensions.filters.network.thrift_proxy.v3.RouteAction.metadata_match>`,\n\
    \ will be considered. Values here will take precedence. Keys and values should be provided\n\
    \ under the \"envoy.lb\" metadata key.\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\STX\ACK\DC2\EOT\152\SOH\EOT\ESC\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\STX\SOH\DC2\EOT\152\SOH\FS*\n\
    \\SI\n\
    \\a\EOT\EOT\ETX\NUL\STX\STX\ETX\DC2\EOT\152\SOH-.\n\
    \R\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\156\SOH\STXS\SUBD Specifies one or more upstream clusters associated with the route.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\EOT\156\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\156\SOH\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\156\SOH\EM!\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\156\SOH$%\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\EOT\156\SOH&R\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\NUL\b\175\b\DC2\DC2\EOT\156\SOH'Qb\ACKproto3"