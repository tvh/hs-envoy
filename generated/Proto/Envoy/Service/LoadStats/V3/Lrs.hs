{- This file was auto-generated from envoy/service/load_stats/v3/lrs.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.LoadStats.V3.Lrs (
        LoadReportingService(..), LoadStatsRequest(), LoadStatsResponse()
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
import qualified Proto.Envoy.Config.Endpoint.V3.LoadReport
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
     
         * 'Proto.Envoy.Service.LoadStats.V3.Lrs_Fields.node' @:: Lens' LoadStatsRequest Proto.Envoy.Config.Core.V3.Base.Node@
         * 'Proto.Envoy.Service.LoadStats.V3.Lrs_Fields.maybe'node' @:: Lens' LoadStatsRequest (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node)@
         * 'Proto.Envoy.Service.LoadStats.V3.Lrs_Fields.clusterStats' @:: Lens' LoadStatsRequest [Proto.Envoy.Config.Endpoint.V3.LoadReport.ClusterStats]@
         * 'Proto.Envoy.Service.LoadStats.V3.Lrs_Fields.vec'clusterStats' @:: Lens' LoadStatsRequest (Data.Vector.Vector Proto.Envoy.Config.Endpoint.V3.LoadReport.ClusterStats)@ -}
data LoadStatsRequest
  = LoadStatsRequest'_constructor {_LoadStatsRequest'node :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node),
                                   _LoadStatsRequest'clusterStats :: !(Data.Vector.Vector Proto.Envoy.Config.Endpoint.V3.LoadReport.ClusterStats),
                                   _LoadStatsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LoadStatsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LoadStatsRequest "node" Proto.Envoy.Config.Core.V3.Base.Node where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LoadStatsRequest'node
           (\ x__ y__ -> x__ {_LoadStatsRequest'node = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LoadStatsRequest "maybe'node" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LoadStatsRequest'node
           (\ x__ y__ -> x__ {_LoadStatsRequest'node = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LoadStatsRequest "clusterStats" [Proto.Envoy.Config.Endpoint.V3.LoadReport.ClusterStats] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LoadStatsRequest'clusterStats
           (\ x__ y__ -> x__ {_LoadStatsRequest'clusterStats = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField LoadStatsRequest "vec'clusterStats" (Data.Vector.Vector Proto.Envoy.Config.Endpoint.V3.LoadReport.ClusterStats) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LoadStatsRequest'clusterStats
           (\ x__ y__ -> x__ {_LoadStatsRequest'clusterStats = y__}))
        Prelude.id
instance Data.ProtoLens.Message LoadStatsRequest where
  messageName _
    = Data.Text.pack "envoy.service.load_stats.v3.LoadStatsRequest"
  packedMessageDescriptor _
    = "\n\
      \\DLELoadStatsRequest\DC2.\n\
      \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnode\DC2K\n\
      \\rcluster_stats\CAN\STX \ETX(\v2&.envoy.config.endpoint.v3.ClusterStatsR\fclusterStats:3\154\197\136\RS.\n\
      \,envoy.service.load_stats.v2.LoadStatsRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        node__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Node)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'node")) ::
              Data.ProtoLens.FieldDescriptor LoadStatsRequest
        clusterStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Endpoint.V3.LoadReport.ClusterStats)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"clusterStats")) ::
              Data.ProtoLens.FieldDescriptor LoadStatsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, node__field_descriptor),
           (Data.ProtoLens.Tag 2, clusterStats__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LoadStatsRequest'_unknownFields
        (\ x__ y__ -> x__ {_LoadStatsRequest'_unknownFields = y__})
  defMessage
    = LoadStatsRequest'_constructor
        {_LoadStatsRequest'node = Prelude.Nothing,
         _LoadStatsRequest'clusterStats = Data.Vector.Generic.empty,
         _LoadStatsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LoadStatsRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Endpoint.V3.LoadReport.ClusterStats
             -> Data.ProtoLens.Encoding.Bytes.Parser LoadStatsRequest
        loop x mutable'clusterStats
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'clusterStats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'clusterStats)
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
                              (Data.ProtoLens.Field.field @"vec'clusterStats")
                              frozen'clusterStats
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "node"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"node") y x)
                                  mutable'clusterStats
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "cluster_stats"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'clusterStats y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'clusterStats
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'clusterStats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'clusterStats)
          "LoadStatsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'node") _x
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
                      (Data.ProtoLens.Field.field @"vec'clusterStats") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData LoadStatsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LoadStatsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LoadStatsRequest'node x__)
                (Control.DeepSeq.deepseq (_LoadStatsRequest'clusterStats x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.LoadStats.V3.Lrs_Fields.clusters' @:: Lens' LoadStatsResponse [Data.Text.Text]@
         * 'Proto.Envoy.Service.LoadStats.V3.Lrs_Fields.vec'clusters' @:: Lens' LoadStatsResponse (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Service.LoadStats.V3.Lrs_Fields.sendAllClusters' @:: Lens' LoadStatsResponse Prelude.Bool@
         * 'Proto.Envoy.Service.LoadStats.V3.Lrs_Fields.loadReportingInterval' @:: Lens' LoadStatsResponse Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Service.LoadStats.V3.Lrs_Fields.maybe'loadReportingInterval' @:: Lens' LoadStatsResponse (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Service.LoadStats.V3.Lrs_Fields.reportEndpointGranularity' @:: Lens' LoadStatsResponse Prelude.Bool@ -}
data LoadStatsResponse
  = LoadStatsResponse'_constructor {_LoadStatsResponse'clusters :: !(Data.Vector.Vector Data.Text.Text),
                                    _LoadStatsResponse'sendAllClusters :: !Prelude.Bool,
                                    _LoadStatsResponse'loadReportingInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                    _LoadStatsResponse'reportEndpointGranularity :: !Prelude.Bool,
                                    _LoadStatsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LoadStatsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LoadStatsResponse "clusters" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LoadStatsResponse'clusters
           (\ x__ y__ -> x__ {_LoadStatsResponse'clusters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField LoadStatsResponse "vec'clusters" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LoadStatsResponse'clusters
           (\ x__ y__ -> x__ {_LoadStatsResponse'clusters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LoadStatsResponse "sendAllClusters" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LoadStatsResponse'sendAllClusters
           (\ x__ y__ -> x__ {_LoadStatsResponse'sendAllClusters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LoadStatsResponse "loadReportingInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LoadStatsResponse'loadReportingInterval
           (\ x__ y__
              -> x__ {_LoadStatsResponse'loadReportingInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LoadStatsResponse "maybe'loadReportingInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LoadStatsResponse'loadReportingInterval
           (\ x__ y__
              -> x__ {_LoadStatsResponse'loadReportingInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LoadStatsResponse "reportEndpointGranularity" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LoadStatsResponse'reportEndpointGranularity
           (\ x__ y__
              -> x__ {_LoadStatsResponse'reportEndpointGranularity = y__}))
        Prelude.id
instance Data.ProtoLens.Message LoadStatsResponse where
  messageName _
    = Data.Text.pack "envoy.service.load_stats.v3.LoadStatsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC1LoadStatsResponse\DC2\SUB\n\
      \\bclusters\CAN\SOH \ETX(\tR\bclusters\DC2*\n\
      \\DC1send_all_clusters\CAN\EOT \SOH(\bR\SIsendAllClusters\DC2Q\n\
      \\ETBload_reporting_interval\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\NAKloadReportingInterval\DC2>\n\
      \\ESCreport_endpoint_granularity\CAN\ETX \SOH(\bR\EMreportEndpointGranularity:4\154\197\136\RS/\n\
      \-envoy.service.load_stats.v2.LoadStatsResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clusters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "clusters"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"clusters")) ::
              Data.ProtoLens.FieldDescriptor LoadStatsResponse
        sendAllClusters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "send_all_clusters"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sendAllClusters")) ::
              Data.ProtoLens.FieldDescriptor LoadStatsResponse
        loadReportingInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "load_reporting_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'loadReportingInterval")) ::
              Data.ProtoLens.FieldDescriptor LoadStatsResponse
        reportEndpointGranularity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "report_endpoint_granularity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"reportEndpointGranularity")) ::
              Data.ProtoLens.FieldDescriptor LoadStatsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clusters__field_descriptor),
           (Data.ProtoLens.Tag 4, sendAllClusters__field_descriptor),
           (Data.ProtoLens.Tag 2, loadReportingInterval__field_descriptor),
           (Data.ProtoLens.Tag 3, 
            reportEndpointGranularity__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LoadStatsResponse'_unknownFields
        (\ x__ y__ -> x__ {_LoadStatsResponse'_unknownFields = y__})
  defMessage
    = LoadStatsResponse'_constructor
        {_LoadStatsResponse'clusters = Data.Vector.Generic.empty,
         _LoadStatsResponse'sendAllClusters = Data.ProtoLens.fieldDefault,
         _LoadStatsResponse'loadReportingInterval = Prelude.Nothing,
         _LoadStatsResponse'reportEndpointGranularity = Data.ProtoLens.fieldDefault,
         _LoadStatsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LoadStatsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser LoadStatsResponse
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
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "clusters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'clusters y)
                                loop x v
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "send_all_clusters"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sendAllClusters") y x)
                                  mutable'clusters
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "load_reporting_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"loadReportingInterval") y x)
                                  mutable'clusters
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "report_endpoint_granularity"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"reportEndpointGranularity") y x)
                                  mutable'clusters
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
          "LoadStatsResponse"
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
                   (Data.ProtoLens.Field.field @"vec'clusters") _x))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"sendAllClusters") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'loadReportingInterval") _x
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
                               (Data.ProtoLens.Field.field @"reportEndpointGranularity") _x
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData LoadStatsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LoadStatsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LoadStatsResponse'clusters x__)
                (Control.DeepSeq.deepseq
                   (_LoadStatsResponse'sendAllClusters x__)
                   (Control.DeepSeq.deepseq
                      (_LoadStatsResponse'loadReportingInterval x__)
                      (Control.DeepSeq.deepseq
                         (_LoadStatsResponse'reportEndpointGranularity x__) ()))))
data LoadReportingService = LoadReportingService {}
instance Data.ProtoLens.Service.Types.Service LoadReportingService where
  type ServiceName LoadReportingService = "LoadReportingService"
  type ServicePackage LoadReportingService = "envoy.service.load_stats.v3"
  type ServiceMethods LoadReportingService = '["streamLoadStats"]
instance Data.ProtoLens.Service.Types.HasMethodImpl LoadReportingService "streamLoadStats" where
  type MethodName LoadReportingService "streamLoadStats" = "StreamLoadStats"
  type MethodInput LoadReportingService "streamLoadStats" = LoadStatsRequest
  type MethodOutput LoadReportingService "streamLoadStats" = LoadStatsResponse
  type MethodStreamingType LoadReportingService "streamLoadStats" = 'Data.ProtoLens.Service.Types.BiDiStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \%envoy/service/load_stats/v3/lrs.proto\DC2\ESCenvoy.service.load_stats.v3\SUB\USenvoy/config/core/v3/base.proto\SUB*envoy/config/endpoint/v3/load_report.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\196\SOH\n\
    \\DLELoadStatsRequest\DC2.\n\
    \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnode\DC2K\n\
    \\rcluster_stats\CAN\STX \ETX(\v2&.envoy.config.endpoint.v3.ClusterStatsR\fclusterStats:3\154\197\136\RS.\n\
    \,envoy.service.load_stats.v2.LoadStatsRequest\"\164\STX\n\
    \\DC1LoadStatsResponse\DC2\SUB\n\
    \\bclusters\CAN\SOH \ETX(\tR\bclusters\DC2*\n\
    \\DC1send_all_clusters\CAN\EOT \SOH(\bR\SIsendAllClusters\DC2Q\n\
    \\ETBload_reporting_interval\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\NAKloadReportingInterval\DC2>\n\
    \\ESCreport_endpoint_granularity\CAN\ETX \SOH(\bR\EMreportEndpointGranularity:4\154\197\136\RS/\n\
    \-envoy.service.load_stats.v2.LoadStatsResponse2\142\SOH\n\
    \\DC4LoadReportingService\DC2v\n\
    \\SIStreamLoadStats\DC2-.envoy.service.load_stats.v3.LoadStatsRequest\SUB..envoy.service.load_stats.v3.LoadStatsResponse\"\NUL(\SOH0\SOHBB\n\
    \)io.envoyproxy.envoy.service.load_stats.v3B\bLrsProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\DLE\STXJ\133#\n\
    \\ACK\DC2\EOT\NUL\NULe\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL$\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL4\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULB\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NULB\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL)\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL$\n\
    \\t\n\
    \\STX\b\DC1\DC2\ETX\SI\NUL$\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\154\ACK\n\
    \\STX\ACK\NUL\DC2\EOT\FS\NUL;\SOH21 [#protodoc-title: Load Reporting service (LRS)]\n\
    \2\218\ENQ Load Reporting Service is an Envoy API to emit load reports. Envoy will initiate a bi-directional\n\
    \ stream with a management server. Upon connecting, the management server can send a\n\
    \ :ref:`LoadStatsResponse <envoy_v3_api_msg_service.load_stats.v3.LoadStatsResponse>` to a node it is\n\
    \ interested in getting the load reports for. Envoy in this node will start sending\n\
    \ :ref:`LoadStatsRequest <envoy_v3_api_msg_service.load_stats.v3.LoadStatsRequest>`. This is done periodically\n\
    \ based on the :ref:`load reporting interval <envoy_v3_api_field_service.load_stats.v3.LoadStatsResponse.load_reporting_interval>`\n\
    \ For details, take a look at the :ref:`Load Reporting Service sandbox example <install_sandboxes_load_reporting_service>`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\FS\b\FS\n\
    \\140\r\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT9\STX:\ETX\SUB\253\f Advanced API to allow for multi-dimensional load balancing by remote\n\
    \ server. For receiving LB assignments, the steps are:\n\
    \ 1, The management server is configured with per cluster/zone/load metric\n\
    \    capacity configuration. The capacity configuration definition is\n\
    \    outside of the scope of this document.\n\
    \ 2. Envoy issues a standard {Stream,Fetch}Endpoints request for the clusters\n\
    \    to balance.\n\
    \\n\
    \ Independently, Envoy will initiate a StreamLoadStats bidi stream with a\n\
    \ management server:\n\
    \ 1. Once a connection establishes, the management server publishes a\n\
    \    LoadStatsResponse for all clusters it is interested in learning load\n\
    \    stats about.\n\
    \ 2. For each cluster, Envoy load balances incoming traffic to upstream hosts\n\
    \    based on per-zone weights and/or per-instance weights (if specified)\n\
    \    based on intra-zone LbPolicy. This information comes from the above\n\
    \    {Stream,Fetch}Endpoints.\n\
    \ 3. When upstream hosts reply, they optionally add header <define header\n\
    \    name> with ASCII representation of EndpointLoadMetricStats.\n\
    \ 4. Envoy aggregates load reports over the period of time given to it in\n\
    \    LoadStatsResponse.load_reporting_interval. This includes aggregation\n\
    \    stats Envoy maintains by itself (total_requests, rpc_errors etc.) as\n\
    \    well as load metrics from upstream hosts.\n\
    \ 5. When the timer of load_reporting_interval expires, Envoy sends new\n\
    \    LoadStatsRequest filled with load reports for each cluster.\n\
    \ 6. The management server uses the load reports from all reported Envoys\n\
    \    from around the world, computes global assignment and prepares traffic\n\
    \    assignment destined for each zone Envoys are located in. Goto 2.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX9\ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ENQ\DC2\ETX9\SYN\FS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX9\GS-\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ACK\DC2\ETX98>\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX9?P\n\
    \A\n\
    \\STX\EOT\NUL\DC2\EOT>\NULG\SOH\SUB5 A load report Envoy sends to the management server.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX>\b\CAN\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT?\STX@5\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT?\STX@5\n\
    \2\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXC\STX\US\SUB% Node identifier for Envoy instance.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXC\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXC\SYN\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXC\GS\RS\n\
    \.\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXF\STX=\SUB! A list of load stats to report.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETXF\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXF\v*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXF+8\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXF;<\n\
    \\133\SOH\n\
    \\STX\EOT\SOH\DC2\EOTK\NULe\SOH\SUBy The management server sends envoy a LoadStatsResponse with all clusters it\n\
    \ is interested in learning load stats about.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXK\b\EM\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOTL\STXM6\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOTL\STXM6\n\
    \[\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXQ\STX\US\SUBN Clusters to report stats for.\n\
    \ Not populated if *send_all_clusters* is true.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETXQ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETXQ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXQ\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXQ\GS\RS\n\
    \\149\STX\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXV\STX\GS\SUB\135\STX If true, the client should send all clusters it knows about.\n\
    \ Only clients that advertise the \"envoy.lrs.supports_send_all_clusters\" capability in their\n\
    \ :ref:`client_features<envoy_v3_api_field_config.core.v3.Node.client_features>` field will honor this field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETXV\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXV\a\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXV\ESC\FS\n\
    \\212\EOT\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX`\STX7\SUB\198\EOT The minimum interval of time to collect stats over. This is only a minimum for two reasons:\n\
    \\n\
    \ 1. There may be some delay from when the timer fires until stats sampling occurs.\n\
    \ 2. For clusters that were already feature in the previous *LoadStatsResponse*, any traffic\n\
    \    that is observed in between the corresponding previous *LoadStatsRequest* and this\n\
    \    *LoadStatsResponse* will also be accumulated and billed to the cluster. This avoids a period\n\
    \    of inobservability that might otherwise exists between the messages. New clusters are not\n\
    \    subject to this consideration.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX`\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX`\ESC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX`56\n\
    \\\\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETXd\STX'\SUBO Set to *true* if the management server supports endpoint granularity\n\
    \ report.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETXd\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETXd\a\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETXd%&b\ACKproto3"