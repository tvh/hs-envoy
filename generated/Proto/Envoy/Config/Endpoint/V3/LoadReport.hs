{- This file was auto-generated from envoy/config/endpoint/v3/load_report.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Endpoint.V3.LoadReport (
        ClusterStats(), ClusterStats'DroppedRequests(),
        EndpointLoadMetricStats(), UpstreamEndpointStats(),
        UpstreamLocalityStats()
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.clusterName' @:: Lens' ClusterStats Data.Text.Text@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.clusterServiceName' @:: Lens' ClusterStats Data.Text.Text@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.upstreamLocalityStats' @:: Lens' ClusterStats [UpstreamLocalityStats]@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.vec'upstreamLocalityStats' @:: Lens' ClusterStats (Data.Vector.Vector UpstreamLocalityStats)@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.totalDroppedRequests' @:: Lens' ClusterStats Data.Word.Word64@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.droppedRequests' @:: Lens' ClusterStats [ClusterStats'DroppedRequests]@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.vec'droppedRequests' @:: Lens' ClusterStats (Data.Vector.Vector ClusterStats'DroppedRequests)@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.loadReportInterval' @:: Lens' ClusterStats Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.maybe'loadReportInterval' @:: Lens' ClusterStats (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data ClusterStats
  = ClusterStats'_constructor {_ClusterStats'clusterName :: !Data.Text.Text,
                               _ClusterStats'clusterServiceName :: !Data.Text.Text,
                               _ClusterStats'upstreamLocalityStats :: !(Data.Vector.Vector UpstreamLocalityStats),
                               _ClusterStats'totalDroppedRequests :: !Data.Word.Word64,
                               _ClusterStats'droppedRequests :: !(Data.Vector.Vector ClusterStats'DroppedRequests),
                               _ClusterStats'loadReportInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                               _ClusterStats'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClusterStats where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClusterStats "clusterName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStats'clusterName
           (\ x__ y__ -> x__ {_ClusterStats'clusterName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterStats "clusterServiceName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStats'clusterServiceName
           (\ x__ y__ -> x__ {_ClusterStats'clusterServiceName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterStats "upstreamLocalityStats" [UpstreamLocalityStats] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStats'upstreamLocalityStats
           (\ x__ y__ -> x__ {_ClusterStats'upstreamLocalityStats = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClusterStats "vec'upstreamLocalityStats" (Data.Vector.Vector UpstreamLocalityStats) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStats'upstreamLocalityStats
           (\ x__ y__ -> x__ {_ClusterStats'upstreamLocalityStats = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterStats "totalDroppedRequests" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStats'totalDroppedRequests
           (\ x__ y__ -> x__ {_ClusterStats'totalDroppedRequests = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterStats "droppedRequests" [ClusterStats'DroppedRequests] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStats'droppedRequests
           (\ x__ y__ -> x__ {_ClusterStats'droppedRequests = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClusterStats "vec'droppedRequests" (Data.Vector.Vector ClusterStats'DroppedRequests) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStats'droppedRequests
           (\ x__ y__ -> x__ {_ClusterStats'droppedRequests = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterStats "loadReportInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStats'loadReportInterval
           (\ x__ y__ -> x__ {_ClusterStats'loadReportInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClusterStats "maybe'loadReportInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStats'loadReportInterval
           (\ x__ y__ -> x__ {_ClusterStats'loadReportInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClusterStats where
  messageName _
    = Data.Text.pack "envoy.config.endpoint.v3.ClusterStats"
  packedMessageDescriptor _
    = "\n\
      \\fClusterStats\DC2*\n\
      \\fcluster_name\CAN\SOH \SOH(\tR\vclusterNameB\a\250B\EOTr\STX\DLE\SOH\DC20\n\
      \\DC4cluster_service_name\CAN\ACK \SOH(\tR\DC2clusterServiceName\DC2q\n\
      \\ETBupstream_locality_stats\CAN\STX \ETX(\v2/.envoy.config.endpoint.v3.UpstreamLocalityStatsR\NAKupstreamLocalityStatsB\b\250B\ENQ\146\SOH\STX\b\SOH\DC24\n\
      \\SYNtotal_dropped_requests\CAN\ETX \SOH(\EOTR\DC4totalDroppedRequests\DC2a\n\
      \\DLEdropped_requests\CAN\ENQ \ETX(\v26.envoy.config.endpoint.v3.ClusterStats.DroppedRequestsR\SIdroppedRequests\DC2K\n\
      \\DC4load_report_interval\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC2loadReportInterval\SUB\150\SOH\n\
      \\SIDroppedRequests\DC2#\n\
      \\bcategory\CAN\SOH \SOH(\tR\bcategoryB\a\250B\EOTr\STX\DLE\SOH\DC2#\n\
      \\rdropped_count\CAN\STX \SOH(\EOTR\fdroppedCount:9\154\197\136\RS4\n\
      \2envoy.api.v2.endpoint.ClusterStats.DroppedRequests:)\154\197\136\RS$\n\
      \\"envoy.api.v2.endpoint.ClusterStats"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clusterName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clusterName")) ::
              Data.ProtoLens.FieldDescriptor ClusterStats
        clusterServiceName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_service_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clusterServiceName")) ::
              Data.ProtoLens.FieldDescriptor ClusterStats
        upstreamLocalityStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_locality_stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpstreamLocalityStats)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"upstreamLocalityStats")) ::
              Data.ProtoLens.FieldDescriptor ClusterStats
        totalDroppedRequests__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_dropped_requests"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalDroppedRequests")) ::
              Data.ProtoLens.FieldDescriptor ClusterStats
        droppedRequests__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dropped_requests"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ClusterStats'DroppedRequests)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"droppedRequests")) ::
              Data.ProtoLens.FieldDescriptor ClusterStats
        loadReportInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "load_report_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'loadReportInterval")) ::
              Data.ProtoLens.FieldDescriptor ClusterStats
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clusterName__field_descriptor),
           (Data.ProtoLens.Tag 6, clusterServiceName__field_descriptor),
           (Data.ProtoLens.Tag 2, upstreamLocalityStats__field_descriptor),
           (Data.ProtoLens.Tag 3, totalDroppedRequests__field_descriptor),
           (Data.ProtoLens.Tag 5, droppedRequests__field_descriptor),
           (Data.ProtoLens.Tag 4, loadReportInterval__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClusterStats'_unknownFields
        (\ x__ y__ -> x__ {_ClusterStats'_unknownFields = y__})
  defMessage
    = ClusterStats'_constructor
        {_ClusterStats'clusterName = Data.ProtoLens.fieldDefault,
         _ClusterStats'clusterServiceName = Data.ProtoLens.fieldDefault,
         _ClusterStats'upstreamLocalityStats = Data.Vector.Generic.empty,
         _ClusterStats'totalDroppedRequests = Data.ProtoLens.fieldDefault,
         _ClusterStats'droppedRequests = Data.Vector.Generic.empty,
         _ClusterStats'loadReportInterval = Prelude.Nothing,
         _ClusterStats'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClusterStats
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ClusterStats'DroppedRequests
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld UpstreamLocalityStats
                -> Data.ProtoLens.Encoding.Bytes.Parser ClusterStats
        loop x mutable'droppedRequests mutable'upstreamLocalityStats
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'droppedRequests <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'droppedRequests)
                      frozen'upstreamLocalityStats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                           mutable'upstreamLocalityStats)
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
                              (Data.ProtoLens.Field.field @"vec'droppedRequests")
                              frozen'droppedRequests
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'upstreamLocalityStats")
                                 frozen'upstreamLocalityStats
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
                                       "cluster_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"clusterName") y x)
                                  mutable'droppedRequests
                                  mutable'upstreamLocalityStats
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
                                       "cluster_service_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clusterServiceName") y x)
                                  mutable'droppedRequests
                                  mutable'upstreamLocalityStats
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "upstream_locality_stats"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'upstreamLocalityStats y)
                                loop x mutable'droppedRequests v
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "total_dropped_requests"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalDroppedRequests") y x)
                                  mutable'droppedRequests
                                  mutable'upstreamLocalityStats
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "dropped_requests"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'droppedRequests y)
                                loop x v mutable'upstreamLocalityStats
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "load_report_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"loadReportInterval") y x)
                                  mutable'droppedRequests
                                  mutable'upstreamLocalityStats
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'droppedRequests
                                  mutable'upstreamLocalityStats
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'droppedRequests <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              mutable'upstreamLocalityStats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'droppedRequests
                mutable'upstreamLocalityStats)
          "ClusterStats"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"clusterName") _x
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
                         (Data.ProtoLens.Field.field @"clusterServiceName") _x
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
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'upstreamLocalityStats") _x))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"totalDroppedRequests") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
                               (Data.ProtoLens.Field.field @"vec'droppedRequests") _x))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'loadReportInterval") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData ClusterStats where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClusterStats'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClusterStats'clusterName x__)
                (Control.DeepSeq.deepseq
                   (_ClusterStats'clusterServiceName x__)
                   (Control.DeepSeq.deepseq
                      (_ClusterStats'upstreamLocalityStats x__)
                      (Control.DeepSeq.deepseq
                         (_ClusterStats'totalDroppedRequests x__)
                         (Control.DeepSeq.deepseq
                            (_ClusterStats'droppedRequests x__)
                            (Control.DeepSeq.deepseq
                               (_ClusterStats'loadReportInterval x__) ()))))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.category' @:: Lens' ClusterStats'DroppedRequests Data.Text.Text@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.droppedCount' @:: Lens' ClusterStats'DroppedRequests Data.Word.Word64@ -}
data ClusterStats'DroppedRequests
  = ClusterStats'DroppedRequests'_constructor {_ClusterStats'DroppedRequests'category :: !Data.Text.Text,
                                               _ClusterStats'DroppedRequests'droppedCount :: !Data.Word.Word64,
                                               _ClusterStats'DroppedRequests'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClusterStats'DroppedRequests where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClusterStats'DroppedRequests "category" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStats'DroppedRequests'category
           (\ x__ y__ -> x__ {_ClusterStats'DroppedRequests'category = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterStats'DroppedRequests "droppedCount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterStats'DroppedRequests'droppedCount
           (\ x__ y__
              -> x__ {_ClusterStats'DroppedRequests'droppedCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClusterStats'DroppedRequests where
  messageName _
    = Data.Text.pack
        "envoy.config.endpoint.v3.ClusterStats.DroppedRequests"
  packedMessageDescriptor _
    = "\n\
      \\SIDroppedRequests\DC2#\n\
      \\bcategory\CAN\SOH \SOH(\tR\bcategoryB\a\250B\EOTr\STX\DLE\SOH\DC2#\n\
      \\rdropped_count\CAN\STX \SOH(\EOTR\fdroppedCount:9\154\197\136\RS4\n\
      \2envoy.api.v2.endpoint.ClusterStats.DroppedRequests"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        category__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "category"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"category")) ::
              Data.ProtoLens.FieldDescriptor ClusterStats'DroppedRequests
        droppedCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dropped_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"droppedCount")) ::
              Data.ProtoLens.FieldDescriptor ClusterStats'DroppedRequests
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, category__field_descriptor),
           (Data.ProtoLens.Tag 2, droppedCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClusterStats'DroppedRequests'_unknownFields
        (\ x__ y__
           -> x__ {_ClusterStats'DroppedRequests'_unknownFields = y__})
  defMessage
    = ClusterStats'DroppedRequests'_constructor
        {_ClusterStats'DroppedRequests'category = Data.ProtoLens.fieldDefault,
         _ClusterStats'DroppedRequests'droppedCount = Data.ProtoLens.fieldDefault,
         _ClusterStats'DroppedRequests'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClusterStats'DroppedRequests
          -> Data.ProtoLens.Encoding.Bytes.Parser ClusterStats'DroppedRequests
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
                                       "category"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"category") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dropped_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"droppedCount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DroppedRequests"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"category") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"droppedCount") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ClusterStats'DroppedRequests where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClusterStats'DroppedRequests'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClusterStats'DroppedRequests'category x__)
                (Control.DeepSeq.deepseq
                   (_ClusterStats'DroppedRequests'droppedCount x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.metricName' @:: Lens' EndpointLoadMetricStats Data.Text.Text@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.numRequestsFinishedWithMetric' @:: Lens' EndpointLoadMetricStats Data.Word.Word64@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.totalMetricValue' @:: Lens' EndpointLoadMetricStats Prelude.Double@ -}
data EndpointLoadMetricStats
  = EndpointLoadMetricStats'_constructor {_EndpointLoadMetricStats'metricName :: !Data.Text.Text,
                                          _EndpointLoadMetricStats'numRequestsFinishedWithMetric :: !Data.Word.Word64,
                                          _EndpointLoadMetricStats'totalMetricValue :: !Prelude.Double,
                                          _EndpointLoadMetricStats'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EndpointLoadMetricStats where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EndpointLoadMetricStats "metricName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointLoadMetricStats'metricName
           (\ x__ y__ -> x__ {_EndpointLoadMetricStats'metricName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointLoadMetricStats "numRequestsFinishedWithMetric" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointLoadMetricStats'numRequestsFinishedWithMetric
           (\ x__ y__
              -> x__
                   {_EndpointLoadMetricStats'numRequestsFinishedWithMetric = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EndpointLoadMetricStats "totalMetricValue" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EndpointLoadMetricStats'totalMetricValue
           (\ x__ y__
              -> x__ {_EndpointLoadMetricStats'totalMetricValue = y__}))
        Prelude.id
instance Data.ProtoLens.Message EndpointLoadMetricStats where
  messageName _
    = Data.Text.pack "envoy.config.endpoint.v3.EndpointLoadMetricStats"
  packedMessageDescriptor _
    = "\n\
      \\ETBEndpointLoadMetricStats\DC2\US\n\
      \\vmetric_name\CAN\SOH \SOH(\tR\n\
      \metricName\DC2H\n\
      \!num_requests_finished_with_metric\CAN\STX \SOH(\EOTR\GSnumRequestsFinishedWithMetric\DC2,\n\
      \\DC2total_metric_value\CAN\ETX \SOH(\SOHR\DLEtotalMetricValue:4\154\197\136\RS/\n\
      \-envoy.api.v2.endpoint.EndpointLoadMetricStats"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        metricName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metric_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metricName")) ::
              Data.ProtoLens.FieldDescriptor EndpointLoadMetricStats
        numRequestsFinishedWithMetric__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num_requests_finished_with_metric"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"numRequestsFinishedWithMetric")) ::
              Data.ProtoLens.FieldDescriptor EndpointLoadMetricStats
        totalMetricValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_metric_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalMetricValue")) ::
              Data.ProtoLens.FieldDescriptor EndpointLoadMetricStats
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, metricName__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            numRequestsFinishedWithMetric__field_descriptor),
           (Data.ProtoLens.Tag 3, totalMetricValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EndpointLoadMetricStats'_unknownFields
        (\ x__ y__ -> x__ {_EndpointLoadMetricStats'_unknownFields = y__})
  defMessage
    = EndpointLoadMetricStats'_constructor
        {_EndpointLoadMetricStats'metricName = Data.ProtoLens.fieldDefault,
         _EndpointLoadMetricStats'numRequestsFinishedWithMetric = Data.ProtoLens.fieldDefault,
         _EndpointLoadMetricStats'totalMetricValue = Data.ProtoLens.fieldDefault,
         _EndpointLoadMetricStats'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EndpointLoadMetricStats
          -> Data.ProtoLens.Encoding.Bytes.Parser EndpointLoadMetricStats
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
                                       "metric_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metricName") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "num_requests_finished_with_metric"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"numRequestsFinishedWithMetric")
                                     y
                                     x)
                        25
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "total_metric_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalMetricValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EndpointLoadMetricStats"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"metricName") _x
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
                         (Data.ProtoLens.Field.field @"numRequestsFinishedWithMetric") _x
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
                            (Data.ProtoLens.Field.field @"totalMetricValue") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 25)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putFixed64
                               Data.ProtoLens.Encoding.Bytes.doubleToWord
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData EndpointLoadMetricStats where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EndpointLoadMetricStats'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EndpointLoadMetricStats'metricName x__)
                (Control.DeepSeq.deepseq
                   (_EndpointLoadMetricStats'numRequestsFinishedWithMetric x__)
                   (Control.DeepSeq.deepseq
                      (_EndpointLoadMetricStats'totalMetricValue x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.address' @:: Lens' UpstreamEndpointStats Proto.Envoy.Config.Core.V3.Address.Address@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.maybe'address' @:: Lens' UpstreamEndpointStats (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.metadata' @:: Lens' UpstreamEndpointStats Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.maybe'metadata' @:: Lens' UpstreamEndpointStats (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.totalSuccessfulRequests' @:: Lens' UpstreamEndpointStats Data.Word.Word64@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.totalRequestsInProgress' @:: Lens' UpstreamEndpointStats Data.Word.Word64@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.totalErrorRequests' @:: Lens' UpstreamEndpointStats Data.Word.Word64@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.totalIssuedRequests' @:: Lens' UpstreamEndpointStats Data.Word.Word64@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.loadMetricStats' @:: Lens' UpstreamEndpointStats [EndpointLoadMetricStats]@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.vec'loadMetricStats' @:: Lens' UpstreamEndpointStats (Data.Vector.Vector EndpointLoadMetricStats)@ -}
data UpstreamEndpointStats
  = UpstreamEndpointStats'_constructor {_UpstreamEndpointStats'address :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address),
                                        _UpstreamEndpointStats'metadata :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                                        _UpstreamEndpointStats'totalSuccessfulRequests :: !Data.Word.Word64,
                                        _UpstreamEndpointStats'totalRequestsInProgress :: !Data.Word.Word64,
                                        _UpstreamEndpointStats'totalErrorRequests :: !Data.Word.Word64,
                                        _UpstreamEndpointStats'totalIssuedRequests :: !Data.Word.Word64,
                                        _UpstreamEndpointStats'loadMetricStats :: !(Data.Vector.Vector EndpointLoadMetricStats),
                                        _UpstreamEndpointStats'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpstreamEndpointStats where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpstreamEndpointStats "address" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamEndpointStats'address
           (\ x__ y__ -> x__ {_UpstreamEndpointStats'address = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpstreamEndpointStats "maybe'address" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamEndpointStats'address
           (\ x__ y__ -> x__ {_UpstreamEndpointStats'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamEndpointStats "metadata" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamEndpointStats'metadata
           (\ x__ y__ -> x__ {_UpstreamEndpointStats'metadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpstreamEndpointStats "maybe'metadata" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamEndpointStats'metadata
           (\ x__ y__ -> x__ {_UpstreamEndpointStats'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamEndpointStats "totalSuccessfulRequests" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamEndpointStats'totalSuccessfulRequests
           (\ x__ y__
              -> x__ {_UpstreamEndpointStats'totalSuccessfulRequests = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamEndpointStats "totalRequestsInProgress" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamEndpointStats'totalRequestsInProgress
           (\ x__ y__
              -> x__ {_UpstreamEndpointStats'totalRequestsInProgress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamEndpointStats "totalErrorRequests" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamEndpointStats'totalErrorRequests
           (\ x__ y__
              -> x__ {_UpstreamEndpointStats'totalErrorRequests = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamEndpointStats "totalIssuedRequests" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamEndpointStats'totalIssuedRequests
           (\ x__ y__
              -> x__ {_UpstreamEndpointStats'totalIssuedRequests = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamEndpointStats "loadMetricStats" [EndpointLoadMetricStats] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamEndpointStats'loadMetricStats
           (\ x__ y__ -> x__ {_UpstreamEndpointStats'loadMetricStats = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField UpstreamEndpointStats "vec'loadMetricStats" (Data.Vector.Vector EndpointLoadMetricStats) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamEndpointStats'loadMetricStats
           (\ x__ y__ -> x__ {_UpstreamEndpointStats'loadMetricStats = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpstreamEndpointStats where
  messageName _
    = Data.Text.pack "envoy.config.endpoint.v3.UpstreamEndpointStats"
  packedMessageDescriptor _
    = "\n\
      \\NAKUpstreamEndpointStats\DC27\n\
      \\aaddress\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.AddressR\aaddress\DC23\n\
      \\bmetadata\CAN\ACK \SOH(\v2\ETB.google.protobuf.StructR\bmetadata\DC2:\n\
      \\EMtotal_successful_requests\CAN\STX \SOH(\EOTR\ETBtotalSuccessfulRequests\DC2;\n\
      \\SUBtotal_requests_in_progress\CAN\ETX \SOH(\EOTR\ETBtotalRequestsInProgress\DC20\n\
      \\DC4total_error_requests\CAN\EOT \SOH(\EOTR\DC2totalErrorRequests\DC22\n\
      \\NAKtotal_issued_requests\CAN\a \SOH(\EOTR\DC3totalIssuedRequests\DC2]\n\
      \\DC1load_metric_stats\CAN\ENQ \ETX(\v21.envoy.config.endpoint.v3.EndpointLoadMetricStatsR\SIloadMetricStats:2\154\197\136\RS-\n\
      \+envoy.api.v2.endpoint.UpstreamEndpointStats"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'address")) ::
              Data.ProtoLens.FieldDescriptor UpstreamEndpointStats
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor UpstreamEndpointStats
        totalSuccessfulRequests__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_successful_requests"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalSuccessfulRequests")) ::
              Data.ProtoLens.FieldDescriptor UpstreamEndpointStats
        totalRequestsInProgress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_requests_in_progress"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalRequestsInProgress")) ::
              Data.ProtoLens.FieldDescriptor UpstreamEndpointStats
        totalErrorRequests__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_error_requests"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalErrorRequests")) ::
              Data.ProtoLens.FieldDescriptor UpstreamEndpointStats
        totalIssuedRequests__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_issued_requests"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalIssuedRequests")) ::
              Data.ProtoLens.FieldDescriptor UpstreamEndpointStats
        loadMetricStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "load_metric_stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EndpointLoadMetricStats)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"loadMetricStats")) ::
              Data.ProtoLens.FieldDescriptor UpstreamEndpointStats
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 6, metadata__field_descriptor),
           (Data.ProtoLens.Tag 2, totalSuccessfulRequests__field_descriptor),
           (Data.ProtoLens.Tag 3, totalRequestsInProgress__field_descriptor),
           (Data.ProtoLens.Tag 4, totalErrorRequests__field_descriptor),
           (Data.ProtoLens.Tag 7, totalIssuedRequests__field_descriptor),
           (Data.ProtoLens.Tag 5, loadMetricStats__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpstreamEndpointStats'_unknownFields
        (\ x__ y__ -> x__ {_UpstreamEndpointStats'_unknownFields = y__})
  defMessage
    = UpstreamEndpointStats'_constructor
        {_UpstreamEndpointStats'address = Prelude.Nothing,
         _UpstreamEndpointStats'metadata = Prelude.Nothing,
         _UpstreamEndpointStats'totalSuccessfulRequests = Data.ProtoLens.fieldDefault,
         _UpstreamEndpointStats'totalRequestsInProgress = Data.ProtoLens.fieldDefault,
         _UpstreamEndpointStats'totalErrorRequests = Data.ProtoLens.fieldDefault,
         _UpstreamEndpointStats'totalIssuedRequests = Data.ProtoLens.fieldDefault,
         _UpstreamEndpointStats'loadMetricStats = Data.Vector.Generic.empty,
         _UpstreamEndpointStats'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpstreamEndpointStats
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld EndpointLoadMetricStats
             -> Data.ProtoLens.Encoding.Bytes.Parser UpstreamEndpointStats
        loop x mutable'loadMetricStats
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'loadMetricStats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'loadMetricStats)
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
                              (Data.ProtoLens.Field.field @"vec'loadMetricStats")
                              frozen'loadMetricStats
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                                  mutable'loadMetricStats
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                                  mutable'loadMetricStats
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "total_successful_requests"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalSuccessfulRequests") y x)
                                  mutable'loadMetricStats
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "total_requests_in_progress"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalRequestsInProgress") y x)
                                  mutable'loadMetricStats
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "total_error_requests"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalErrorRequests") y x)
                                  mutable'loadMetricStats
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "total_issued_requests"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalIssuedRequests") y x)
                                  mutable'loadMetricStats
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "load_metric_stats"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'loadMetricStats y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'loadMetricStats
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'loadMetricStats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'loadMetricStats)
          "UpstreamEndpointStats"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'address") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'metadata") _x
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
                            (Data.ProtoLens.Field.field @"totalSuccessfulRequests") _x
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
                               (Data.ProtoLens.Field.field @"totalRequestsInProgress") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"totalErrorRequests") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"totalIssuedRequests") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
                                     (Data.ProtoLens.Field.field @"vec'loadMetricStats") _x))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData UpstreamEndpointStats where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpstreamEndpointStats'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpstreamEndpointStats'address x__)
                (Control.DeepSeq.deepseq
                   (_UpstreamEndpointStats'metadata x__)
                   (Control.DeepSeq.deepseq
                      (_UpstreamEndpointStats'totalSuccessfulRequests x__)
                      (Control.DeepSeq.deepseq
                         (_UpstreamEndpointStats'totalRequestsInProgress x__)
                         (Control.DeepSeq.deepseq
                            (_UpstreamEndpointStats'totalErrorRequests x__)
                            (Control.DeepSeq.deepseq
                               (_UpstreamEndpointStats'totalIssuedRequests x__)
                               (Control.DeepSeq.deepseq
                                  (_UpstreamEndpointStats'loadMetricStats x__) ())))))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.locality' @:: Lens' UpstreamLocalityStats Proto.Envoy.Config.Core.V3.Base.Locality@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.maybe'locality' @:: Lens' UpstreamLocalityStats (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Locality)@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.totalSuccessfulRequests' @:: Lens' UpstreamLocalityStats Data.Word.Word64@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.totalRequestsInProgress' @:: Lens' UpstreamLocalityStats Data.Word.Word64@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.totalErrorRequests' @:: Lens' UpstreamLocalityStats Data.Word.Word64@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.totalIssuedRequests' @:: Lens' UpstreamLocalityStats Data.Word.Word64@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.loadMetricStats' @:: Lens' UpstreamLocalityStats [EndpointLoadMetricStats]@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.vec'loadMetricStats' @:: Lens' UpstreamLocalityStats (Data.Vector.Vector EndpointLoadMetricStats)@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.upstreamEndpointStats' @:: Lens' UpstreamLocalityStats [UpstreamEndpointStats]@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.vec'upstreamEndpointStats' @:: Lens' UpstreamLocalityStats (Data.Vector.Vector UpstreamEndpointStats)@
         * 'Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields.priority' @:: Lens' UpstreamLocalityStats Data.Word.Word32@ -}
data UpstreamLocalityStats
  = UpstreamLocalityStats'_constructor {_UpstreamLocalityStats'locality :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Locality),
                                        _UpstreamLocalityStats'totalSuccessfulRequests :: !Data.Word.Word64,
                                        _UpstreamLocalityStats'totalRequestsInProgress :: !Data.Word.Word64,
                                        _UpstreamLocalityStats'totalErrorRequests :: !Data.Word.Word64,
                                        _UpstreamLocalityStats'totalIssuedRequests :: !Data.Word.Word64,
                                        _UpstreamLocalityStats'loadMetricStats :: !(Data.Vector.Vector EndpointLoadMetricStats),
                                        _UpstreamLocalityStats'upstreamEndpointStats :: !(Data.Vector.Vector UpstreamEndpointStats),
                                        _UpstreamLocalityStats'priority :: !Data.Word.Word32,
                                        _UpstreamLocalityStats'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpstreamLocalityStats where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpstreamLocalityStats "locality" Proto.Envoy.Config.Core.V3.Base.Locality where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamLocalityStats'locality
           (\ x__ y__ -> x__ {_UpstreamLocalityStats'locality = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpstreamLocalityStats "maybe'locality" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Locality) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamLocalityStats'locality
           (\ x__ y__ -> x__ {_UpstreamLocalityStats'locality = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamLocalityStats "totalSuccessfulRequests" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamLocalityStats'totalSuccessfulRequests
           (\ x__ y__
              -> x__ {_UpstreamLocalityStats'totalSuccessfulRequests = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamLocalityStats "totalRequestsInProgress" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamLocalityStats'totalRequestsInProgress
           (\ x__ y__
              -> x__ {_UpstreamLocalityStats'totalRequestsInProgress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamLocalityStats "totalErrorRequests" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamLocalityStats'totalErrorRequests
           (\ x__ y__
              -> x__ {_UpstreamLocalityStats'totalErrorRequests = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamLocalityStats "totalIssuedRequests" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamLocalityStats'totalIssuedRequests
           (\ x__ y__
              -> x__ {_UpstreamLocalityStats'totalIssuedRequests = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamLocalityStats "loadMetricStats" [EndpointLoadMetricStats] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamLocalityStats'loadMetricStats
           (\ x__ y__ -> x__ {_UpstreamLocalityStats'loadMetricStats = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField UpstreamLocalityStats "vec'loadMetricStats" (Data.Vector.Vector EndpointLoadMetricStats) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamLocalityStats'loadMetricStats
           (\ x__ y__ -> x__ {_UpstreamLocalityStats'loadMetricStats = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamLocalityStats "upstreamEndpointStats" [UpstreamEndpointStats] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamLocalityStats'upstreamEndpointStats
           (\ x__ y__
              -> x__ {_UpstreamLocalityStats'upstreamEndpointStats = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField UpstreamLocalityStats "vec'upstreamEndpointStats" (Data.Vector.Vector UpstreamEndpointStats) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamLocalityStats'upstreamEndpointStats
           (\ x__ y__
              -> x__ {_UpstreamLocalityStats'upstreamEndpointStats = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamLocalityStats "priority" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamLocalityStats'priority
           (\ x__ y__ -> x__ {_UpstreamLocalityStats'priority = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpstreamLocalityStats where
  messageName _
    = Data.Text.pack "envoy.config.endpoint.v3.UpstreamLocalityStats"
  packedMessageDescriptor _
    = "\n\
      \\NAKUpstreamLocalityStats\DC2:\n\
      \\blocality\CAN\SOH \SOH(\v2\RS.envoy.config.core.v3.LocalityR\blocality\DC2:\n\
      \\EMtotal_successful_requests\CAN\STX \SOH(\EOTR\ETBtotalSuccessfulRequests\DC2;\n\
      \\SUBtotal_requests_in_progress\CAN\ETX \SOH(\EOTR\ETBtotalRequestsInProgress\DC20\n\
      \\DC4total_error_requests\CAN\EOT \SOH(\EOTR\DC2totalErrorRequests\DC22\n\
      \\NAKtotal_issued_requests\CAN\b \SOH(\EOTR\DC3totalIssuedRequests\DC2]\n\
      \\DC1load_metric_stats\CAN\ENQ \ETX(\v21.envoy.config.endpoint.v3.EndpointLoadMetricStatsR\SIloadMetricStats\DC2g\n\
      \\ETBupstream_endpoint_stats\CAN\a \ETX(\v2/.envoy.config.endpoint.v3.UpstreamEndpointStatsR\NAKupstreamEndpointStats\DC2\SUB\n\
      \\bpriority\CAN\ACK \SOH(\rR\bpriority:2\154\197\136\RS-\n\
      \+envoy.api.v2.endpoint.UpstreamLocalityStats"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        locality__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "locality"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Locality)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'locality")) ::
              Data.ProtoLens.FieldDescriptor UpstreamLocalityStats
        totalSuccessfulRequests__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_successful_requests"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalSuccessfulRequests")) ::
              Data.ProtoLens.FieldDescriptor UpstreamLocalityStats
        totalRequestsInProgress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_requests_in_progress"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalRequestsInProgress")) ::
              Data.ProtoLens.FieldDescriptor UpstreamLocalityStats
        totalErrorRequests__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_error_requests"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalErrorRequests")) ::
              Data.ProtoLens.FieldDescriptor UpstreamLocalityStats
        totalIssuedRequests__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_issued_requests"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalIssuedRequests")) ::
              Data.ProtoLens.FieldDescriptor UpstreamLocalityStats
        loadMetricStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "load_metric_stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EndpointLoadMetricStats)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"loadMetricStats")) ::
              Data.ProtoLens.FieldDescriptor UpstreamLocalityStats
        upstreamEndpointStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_endpoint_stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpstreamEndpointStats)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"upstreamEndpointStats")) ::
              Data.ProtoLens.FieldDescriptor UpstreamLocalityStats
        priority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"priority")) ::
              Data.ProtoLens.FieldDescriptor UpstreamLocalityStats
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, locality__field_descriptor),
           (Data.ProtoLens.Tag 2, totalSuccessfulRequests__field_descriptor),
           (Data.ProtoLens.Tag 3, totalRequestsInProgress__field_descriptor),
           (Data.ProtoLens.Tag 4, totalErrorRequests__field_descriptor),
           (Data.ProtoLens.Tag 8, totalIssuedRequests__field_descriptor),
           (Data.ProtoLens.Tag 5, loadMetricStats__field_descriptor),
           (Data.ProtoLens.Tag 7, upstreamEndpointStats__field_descriptor),
           (Data.ProtoLens.Tag 6, priority__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpstreamLocalityStats'_unknownFields
        (\ x__ y__ -> x__ {_UpstreamLocalityStats'_unknownFields = y__})
  defMessage
    = UpstreamLocalityStats'_constructor
        {_UpstreamLocalityStats'locality = Prelude.Nothing,
         _UpstreamLocalityStats'totalSuccessfulRequests = Data.ProtoLens.fieldDefault,
         _UpstreamLocalityStats'totalRequestsInProgress = Data.ProtoLens.fieldDefault,
         _UpstreamLocalityStats'totalErrorRequests = Data.ProtoLens.fieldDefault,
         _UpstreamLocalityStats'totalIssuedRequests = Data.ProtoLens.fieldDefault,
         _UpstreamLocalityStats'loadMetricStats = Data.Vector.Generic.empty,
         _UpstreamLocalityStats'upstreamEndpointStats = Data.Vector.Generic.empty,
         _UpstreamLocalityStats'priority = Data.ProtoLens.fieldDefault,
         _UpstreamLocalityStats'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpstreamLocalityStats
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld EndpointLoadMetricStats
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld UpstreamEndpointStats
                -> Data.ProtoLens.Encoding.Bytes.Parser UpstreamLocalityStats
        loop x mutable'loadMetricStats mutable'upstreamEndpointStats
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'loadMetricStats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'loadMetricStats)
                      frozen'upstreamEndpointStats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                           mutable'upstreamEndpointStats)
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
                              (Data.ProtoLens.Field.field @"vec'loadMetricStats")
                              frozen'loadMetricStats
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'upstreamEndpointStats")
                                 frozen'upstreamEndpointStats
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "locality"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"locality") y x)
                                  mutable'loadMetricStats
                                  mutable'upstreamEndpointStats
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "total_successful_requests"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalSuccessfulRequests") y x)
                                  mutable'loadMetricStats
                                  mutable'upstreamEndpointStats
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "total_requests_in_progress"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalRequestsInProgress") y x)
                                  mutable'loadMetricStats
                                  mutable'upstreamEndpointStats
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "total_error_requests"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalErrorRequests") y x)
                                  mutable'loadMetricStats
                                  mutable'upstreamEndpointStats
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "total_issued_requests"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalIssuedRequests") y x)
                                  mutable'loadMetricStats
                                  mutable'upstreamEndpointStats
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "load_metric_stats"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'loadMetricStats y)
                                loop x v mutable'upstreamEndpointStats
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "upstream_endpoint_stats"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'upstreamEndpointStats y)
                                loop x mutable'loadMetricStats v
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "priority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priority") y x)
                                  mutable'loadMetricStats
                                  mutable'upstreamEndpointStats
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'loadMetricStats
                                  mutable'upstreamEndpointStats
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'loadMetricStats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              mutable'upstreamEndpointStats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'loadMetricStats
                mutable'upstreamEndpointStats)
          "UpstreamLocalityStats"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'locality") _x
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
                         (Data.ProtoLens.Field.field @"totalSuccessfulRequests") _x
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
                            (Data.ProtoLens.Field.field @"totalRequestsInProgress") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"totalErrorRequests") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"totalIssuedRequests") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
                                  (Data.ProtoLens.Field.field @"vec'loadMetricStats") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
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
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'upstreamEndpointStats") _x))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"priority") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              Prelude.fromIntegral
                                              _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData UpstreamLocalityStats where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpstreamLocalityStats'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpstreamLocalityStats'locality x__)
                (Control.DeepSeq.deepseq
                   (_UpstreamLocalityStats'totalSuccessfulRequests x__)
                   (Control.DeepSeq.deepseq
                      (_UpstreamLocalityStats'totalRequestsInProgress x__)
                      (Control.DeepSeq.deepseq
                         (_UpstreamLocalityStats'totalErrorRequests x__)
                         (Control.DeepSeq.deepseq
                            (_UpstreamLocalityStats'totalIssuedRequests x__)
                            (Control.DeepSeq.deepseq
                               (_UpstreamLocalityStats'loadMetricStats x__)
                               (Control.DeepSeq.deepseq
                                  (_UpstreamLocalityStats'upstreamEndpointStats x__)
                                  (Control.DeepSeq.deepseq
                                     (_UpstreamLocalityStats'priority x__) ()))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \*envoy/config/endpoint/v3/load_report.proto\DC2\CANenvoy.config.endpoint.v3\SUB\"envoy/config/core/v3/address.proto\SUB\USenvoy/config/core/v3/base.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\FSgoogle/protobuf/struct.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\202\EOT\n\
    \\NAKUpstreamLocalityStats\DC2:\n\
    \\blocality\CAN\SOH \SOH(\v2\RS.envoy.config.core.v3.LocalityR\blocality\DC2:\n\
    \\EMtotal_successful_requests\CAN\STX \SOH(\EOTR\ETBtotalSuccessfulRequests\DC2;\n\
    \\SUBtotal_requests_in_progress\CAN\ETX \SOH(\EOTR\ETBtotalRequestsInProgress\DC20\n\
    \\DC4total_error_requests\CAN\EOT \SOH(\EOTR\DC2totalErrorRequests\DC22\n\
    \\NAKtotal_issued_requests\CAN\b \SOH(\EOTR\DC3totalIssuedRequests\DC2]\n\
    \\DC1load_metric_stats\CAN\ENQ \ETX(\v21.envoy.config.endpoint.v3.EndpointLoadMetricStatsR\SIloadMetricStats\DC2g\n\
    \\ETBupstream_endpoint_stats\CAN\a \ETX(\v2/.envoy.config.endpoint.v3.UpstreamEndpointStatsR\NAKupstreamEndpointStats\DC2\SUB\n\
    \\bpriority\CAN\ACK \SOH(\rR\bpriority:2\154\197\136\RS-\n\
    \+envoy.api.v2.endpoint.UpstreamLocalityStats\"\247\ETX\n\
    \\NAKUpstreamEndpointStats\DC27\n\
    \\aaddress\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.AddressR\aaddress\DC23\n\
    \\bmetadata\CAN\ACK \SOH(\v2\ETB.google.protobuf.StructR\bmetadata\DC2:\n\
    \\EMtotal_successful_requests\CAN\STX \SOH(\EOTR\ETBtotalSuccessfulRequests\DC2;\n\
    \\SUBtotal_requests_in_progress\CAN\ETX \SOH(\EOTR\ETBtotalRequestsInProgress\DC20\n\
    \\DC4total_error_requests\CAN\EOT \SOH(\EOTR\DC2totalErrorRequests\DC22\n\
    \\NAKtotal_issued_requests\CAN\a \SOH(\EOTR\DC3totalIssuedRequests\DC2]\n\
    \\DC1load_metric_stats\CAN\ENQ \ETX(\v21.envoy.config.endpoint.v3.EndpointLoadMetricStatsR\SIloadMetricStats:2\154\197\136\RS-\n\
    \+envoy.api.v2.endpoint.UpstreamEndpointStats\"\232\SOH\n\
    \\ETBEndpointLoadMetricStats\DC2\US\n\
    \\vmetric_name\CAN\SOH \SOH(\tR\n\
    \metricName\DC2H\n\
    \!num_requests_finished_with_metric\CAN\STX \SOH(\EOTR\GSnumRequestsFinishedWithMetric\DC2,\n\
    \\DC2total_metric_value\CAN\ETX \SOH(\SOHR\DLEtotalMetricValue:4\154\197\136\RS/\n\
    \-envoy.api.v2.endpoint.EndpointLoadMetricStats\"\137\ENQ\n\
    \\fClusterStats\DC2*\n\
    \\fcluster_name\CAN\SOH \SOH(\tR\vclusterNameB\a\250B\EOTr\STX\DLE\SOH\DC20\n\
    \\DC4cluster_service_name\CAN\ACK \SOH(\tR\DC2clusterServiceName\DC2q\n\
    \\ETBupstream_locality_stats\CAN\STX \ETX(\v2/.envoy.config.endpoint.v3.UpstreamLocalityStatsR\NAKupstreamLocalityStatsB\b\250B\ENQ\146\SOH\STX\b\SOH\DC24\n\
    \\SYNtotal_dropped_requests\CAN\ETX \SOH(\EOTR\DC4totalDroppedRequests\DC2a\n\
    \\DLEdropped_requests\CAN\ENQ \ETX(\v26.envoy.config.endpoint.v3.ClusterStats.DroppedRequestsR\SIdroppedRequests\DC2K\n\
    \\DC4load_report_interval\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC2loadReportInterval\SUB\150\SOH\n\
    \\SIDroppedRequests\DC2#\n\
    \\bcategory\CAN\SOH \SOH(\tR\bcategoryB\a\250B\EOTr\STX\DLE\SOH\DC2#\n\
    \\rdropped_count\CAN\STX \SOH(\EOTR\fdroppedCount:9\154\197\136\RS4\n\
    \2envoy.api.v2.endpoint.ClusterStats.DroppedRequests:)\154\197\136\RS$\n\
    \\"envoy.api.v2.endpoint.ClusterStatsBC\n\
    \&io.envoyproxy.envoy.config.endpoint.v3B\SILoadReportProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\141/\n\
    \\a\DC2\ENQ\NUL\NUL\166\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL!\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL&\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL+\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL?\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SO\NUL?\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL0\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SI\NUL0\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DLE\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC1\NULF\n\
    \\219\STX\n\
    \\STX\EOT\NUL\DC2\EOT\EM\NUL<\SOH\SUB\172\STX These are stats Envoy reports to the management server at a frequency defined by\n\
    \ :ref:`LoadStatsResponse.load_reporting_interval<envoy_v3_api_field_service.load_stats.v3.LoadStatsResponse.load_reporting_interval>`.\n\
    \ Stats per upstream region/zone and optionally per subzone.\n\
    \ [#next-free-field: 9]\n\
    \2  [#protodoc-title: Load Report]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\EM\b\GS\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\SUB\STX\ESC4\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\SUB\STX\ESC4\n\
    \\151\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\US\STX \SUB\137\SOH Name of zone, region and optionally endpoint group these metrics were\n\
    \ collected from. Zone and region names could be empty if unknown.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\US\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\US\DC3\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\US\RS\US\n\
    \e\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX#\STX'\SUBX The total number of requests successfully completed by the endpoints in the\n\
    \ locality.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX#\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX#\t\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX#%&\n\
    \6\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX&\STX(\SUB) The total number of unfinished requests\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX&\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX&\t#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX&&'\n\
    \\134\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX*\STX\"\SUBy The total number of requests that failed due to errors at the endpoint,\n\
    \ aggregated over all endpoints in the locality.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX*\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX*\t\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX* !\n\
    \\180\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX/\STX#\SUB\166\SOH The total number of requests that were issued by this Envoy since\n\
    \ the last report. This information is aggregated over all the\n\
    \ upstream endpoints in the locality.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX/\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX/\t\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX/!\"\n\
    \:\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX2\STX9\SUB- Stats for multi-dimensional load balancing.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETX2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX2\v\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX2#4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX278\n\
    \\156\STX\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX7\STX=\SUB\142\STX Endpoint granularity stats information for this locality. This information\n\
    \ is populated if the Server requests it by setting\n\
    \ :ref:`LoadStatsResponse.report_endpoint_granularity<envoy_v3_api_field_service.load_stats.v3.LoadStatsResponse.report_endpoint_granularity>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETX7\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX7\v \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX7!8\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX7;<\n\
    \n\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX;\STX\SYN\SUBa [#not-implemented-hide:] The priority of the endpoint group these metrics\n\
    \ were collected from.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX;\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX;\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX;\DC4\NAK\n\
    \#\n\
    \\STX\EOT\SOH\DC2\EOT?\NULf\SOH\SUB\ETB [#next-free-field: 8]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX?\b\GS\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT@\STXA4\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT@\STXA4\n\
    \%\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXD\STX\RS\SUB\CAN Upstream host address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXD\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXD\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXD\FS\GS\n\
    \\133\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXH\STX&\SUBx Opaque and implementation dependent metadata of the\n\
    \ endpoint. Envoy will pass this directly to the management server.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXH\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXH\EM!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXH$%\n\
    \\182\STX\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXN\STX'\SUB\168\STX The total number of requests successfully completed by the endpoints in the\n\
    \ locality. These include non-5xx responses for HTTP, where errors\n\
    \ originate at the client and the endpoint responded successfully. For gRPC,\n\
    \ the grpc-status values are those not covered by total_error_requests below.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETXN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXN\t\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXN%&\n\
    \I\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETXQ\STX(\SUB< The total number of unfinished requests for this endpoint.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETXQ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETXQ\t#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETXQ&'\n\
    \\149\STX\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX]\STX\"\SUB\135\STX The total number of requests that failed due to errors at the endpoint.\n\
    \ For HTTP these are responses with 5xx status codes and for gRPC the\n\
    \ grpc-status values:\n\
    \\n\
    \   - DeadlineExceeded\n\
    \   - Unimplemented\n\
    \   - Internal\n\
    \   - Unavailable\n\
    \   - Unknown\n\
    \   - DataLoss\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX]\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX]\t\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX] !\n\
    \\186\SOH\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETXb\STX#\SUB\172\SOH The total number of requests that were issued to this endpoint\n\
    \ since the last report. A single TCP connection, HTTP or gRPC\n\
    \ request or stream is counted as one request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETXb\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETXb\t\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETXb!\"\n\
    \:\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETXe\STX9\SUB- Stats for multi-dimensional load balancing.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\EOT\DC2\ETXe\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\ETXe\v\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETXe#4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETXe78\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOTh\NULu\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXh\b\US\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOTi\STXj6\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOTi\STXj6\n\
    \0\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXm\STX\EM\SUB# Name of the metric; may be empty.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXm\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXm\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXm\ETB\CAN\n\
    \F\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXp\STX/\SUB9 Number of calls that finished and included this metric.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXp\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXp\t*\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXp-.\n\
    \q\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETXt\STX \SUBd Sum of metric values across all calls that finished with this metric for\n\
    \ load_reporting_interval.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETXt\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXt\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXt\RS\US\n\
    \\207\SOH\n\
    \\STX\EOT\ETX\DC2\ENQ{\NUL\166\SOH\SOH\SUB\193\SOH Per cluster load stats. Envoy reports these stats a management server in a\n\
    \ :ref:`LoadStatsRequest<envoy_v3_api_msg_service.load_stats.v3.LoadStatsRequest>`\n\
    \ Next ID: 7\n\
    \ [#next-free-field: 7]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX{\b\DC4\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\a\DC2\ETX|\STXd\n\
    \\SI\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\ETX|\STXd\n\
    \\r\n\
    \\EOT\EOT\ETX\ETX\NUL\DC2\ENQ~\STX\135\SOH\ETX\n\
    \\f\n\
    \\ENQ\EOT\ETX\ETX\NUL\SOH\DC2\ETX~\n\
    \\EM\n\
    \\SO\n\
    \\ENQ\EOT\ETX\ETX\NUL\a\DC2\ENQ\DEL\EOT\128\SOH=\n\
    \\DC3\n\
    \\n\
    \\EOT\ETX\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ENQ\DEL\EOT\128\SOH=\n\
    \@\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\NUL\DC2\EOT\131\SOH\EOTA\SUB0 Identifier for the policy specifying the drop.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ENQ\DC2\EOT\131\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\SOH\DC2\EOT\131\SOH\v\DC3\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ETX\DC2\EOT\131\SOH\SYN\ETB\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\b\DC2\EOT\131\SOH\CAN@\n\
    \\DC2\n\
    \\n\
    \\EOT\ETX\ETX\NUL\STX\NUL\b\175\b\SO\DC2\EOT\131\SOH\EM?\n\
    \Q\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\SOH\DC2\EOT\134\SOH\EOT\GS\SUBA Total number of deliberately dropped requests for the category.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\ENQ\DC2\EOT\134\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\SOH\DC2\EOT\134\SOH\v\CAN\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\ETX\DC2\EOT\134\SOH\ESC\FS\n\
    \(\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\138\SOH\STXC\SUB\SUB The name of the cluster.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\138\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\138\SOH\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\138\SOH\CAN\EM\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\EOT\138\SOH\SUBB\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\NUL\b\175\b\SO\DC2\EOT\138\SOH\ESCA\n\
    \\224\SOH\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\143\SOH\STX\"\SUB\209\SOH The eds_cluster_config service_name of the cluster.\n\
    \ It's possible that two clusters send the same service_name to EDS,\n\
    \ in that case, the management server is supposed to do aggregation on the load reports.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\EOT\143\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\143\SOH\t\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\143\SOH !\n\
    \$\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ACK\146\SOH\STX\147\SOH3\SUB\DC4 Need at least one.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\EOT\146\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\EOT\146\SOH\v \n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\EOT\146\SOH!8\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\EOT\146\SOH;<\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\b\DC2\EOT\147\SOH\ACK2\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\STX\b\175\b\DC2\DC2\EOT\147\SOH\a1\n\
    \\189\STX\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\EOT\155\SOH\STX$\SUB\174\STX Cluster-level stats such as total_successful_requests may be computed by\n\
    \ summing upstream_locality_stats. In addition, below there are additional\n\
    \ cluster-wide stats.\n\
    \\n\
    \ The total number of dropped requests. This covers requests\n\
    \ deliberately dropped by the drop_overload policy and circuit breaking.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\EOT\155\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\EOT\155\SOH\t\US\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\EOT\155\SOH\"#\n\
    \x\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\EOT\159\SOH\STX0\SUBj Information about deliberately dropped requests for each category specified\n\
    \ in the DropOverload policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\EOT\DC2\EOT\159\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ACK\DC2\EOT\159\SOH\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\EOT\159\SOH\ESC+\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\EOT\159\SOH./\n\
    \\237\STX\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\EOT\165\SOH\STX4\SUB\222\STX Period over which the actual load report occurred. This will be guaranteed to include every\n\
    \ request reported. Due to system load and delays between the *LoadStatsRequest* sent from Envoy\n\
    \ and the *LoadStatsResponse* message sent from the management server, this may be longer than\n\
    \ the requested load reporting interval in the *LoadStatsResponse*.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\ACK\DC2\EOT\165\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\EOT\165\SOH\ESC/\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\EOT\165\SOH23b\ACKproto3"