{- This file was auto-generated from envoy/extensions/clusters/redis/v3/redis_cluster.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Clusters.Redis.V3.RedisCluster (
        RedisClusterConfig()
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Clusters.Redis.V3.RedisCluster_Fields.clusterRefreshRate' @:: Lens' RedisClusterConfig Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Clusters.Redis.V3.RedisCluster_Fields.maybe'clusterRefreshRate' @:: Lens' RedisClusterConfig (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Clusters.Redis.V3.RedisCluster_Fields.clusterRefreshTimeout' @:: Lens' RedisClusterConfig Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Clusters.Redis.V3.RedisCluster_Fields.maybe'clusterRefreshTimeout' @:: Lens' RedisClusterConfig (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Clusters.Redis.V3.RedisCluster_Fields.redirectRefreshInterval' @:: Lens' RedisClusterConfig Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Clusters.Redis.V3.RedisCluster_Fields.maybe'redirectRefreshInterval' @:: Lens' RedisClusterConfig (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Clusters.Redis.V3.RedisCluster_Fields.redirectRefreshThreshold' @:: Lens' RedisClusterConfig Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Clusters.Redis.V3.RedisCluster_Fields.maybe'redirectRefreshThreshold' @:: Lens' RedisClusterConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Clusters.Redis.V3.RedisCluster_Fields.failureRefreshThreshold' @:: Lens' RedisClusterConfig Data.Word.Word32@
         * 'Proto.Envoy.Extensions.Clusters.Redis.V3.RedisCluster_Fields.hostDegradedRefreshThreshold' @:: Lens' RedisClusterConfig Data.Word.Word32@ -}
data RedisClusterConfig
  = RedisClusterConfig'_constructor {_RedisClusterConfig'clusterRefreshRate :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                     _RedisClusterConfig'clusterRefreshTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                     _RedisClusterConfig'redirectRefreshInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                     _RedisClusterConfig'redirectRefreshThreshold :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                     _RedisClusterConfig'failureRefreshThreshold :: !Data.Word.Word32,
                                     _RedisClusterConfig'hostDegradedRefreshThreshold :: !Data.Word.Word32,
                                     _RedisClusterConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RedisClusterConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RedisClusterConfig "clusterRefreshRate" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisClusterConfig'clusterRefreshRate
           (\ x__ y__ -> x__ {_RedisClusterConfig'clusterRefreshRate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedisClusterConfig "maybe'clusterRefreshRate" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisClusterConfig'clusterRefreshRate
           (\ x__ y__ -> x__ {_RedisClusterConfig'clusterRefreshRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisClusterConfig "clusterRefreshTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisClusterConfig'clusterRefreshTimeout
           (\ x__ y__
              -> x__ {_RedisClusterConfig'clusterRefreshTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedisClusterConfig "maybe'clusterRefreshTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisClusterConfig'clusterRefreshTimeout
           (\ x__ y__
              -> x__ {_RedisClusterConfig'clusterRefreshTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisClusterConfig "redirectRefreshInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisClusterConfig'redirectRefreshInterval
           (\ x__ y__
              -> x__ {_RedisClusterConfig'redirectRefreshInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedisClusterConfig "maybe'redirectRefreshInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisClusterConfig'redirectRefreshInterval
           (\ x__ y__
              -> x__ {_RedisClusterConfig'redirectRefreshInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisClusterConfig "redirectRefreshThreshold" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisClusterConfig'redirectRefreshThreshold
           (\ x__ y__
              -> x__ {_RedisClusterConfig'redirectRefreshThreshold = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedisClusterConfig "maybe'redirectRefreshThreshold" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisClusterConfig'redirectRefreshThreshold
           (\ x__ y__
              -> x__ {_RedisClusterConfig'redirectRefreshThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisClusterConfig "failureRefreshThreshold" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisClusterConfig'failureRefreshThreshold
           (\ x__ y__
              -> x__ {_RedisClusterConfig'failureRefreshThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedisClusterConfig "hostDegradedRefreshThreshold" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedisClusterConfig'hostDegradedRefreshThreshold
           (\ x__ y__
              -> x__ {_RedisClusterConfig'hostDegradedRefreshThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Message RedisClusterConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.clusters.redis.v3.RedisClusterConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC2RedisClusterConfig\DC2U\n\
      \\DC4cluster_refresh_rate\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\DC2clusterRefreshRateB\b\250B\ENQ\170\SOH\STX*\NUL\DC2[\n\
      \\ETBcluster_refresh_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\NAKclusterRefreshTimeoutB\b\250B\ENQ\170\SOH\STX*\NUL\DC2U\n\
      \\EMredirect_refresh_interval\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\ETBredirectRefreshInterval\DC2Z\n\
      \\SUBredirect_refresh_threshold\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\CANredirectRefreshThreshold\DC2:\n\
      \\EMfailure_refresh_threshold\CAN\ENQ \SOH(\rR\ETBfailureRefreshThreshold\DC2E\n\
      \\UShost_degraded_refresh_threshold\CAN\ACK \SOH(\rR\FShostDegradedRefreshThreshold:4\154\197\136\RS/\n\
      \-envoy.config.cluster.redis.RedisClusterConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clusterRefreshRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_refresh_rate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clusterRefreshRate")) ::
              Data.ProtoLens.FieldDescriptor RedisClusterConfig
        clusterRefreshTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_refresh_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clusterRefreshTimeout")) ::
              Data.ProtoLens.FieldDescriptor RedisClusterConfig
        redirectRefreshInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "redirect_refresh_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'redirectRefreshInterval")) ::
              Data.ProtoLens.FieldDescriptor RedisClusterConfig
        redirectRefreshThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "redirect_refresh_threshold"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'redirectRefreshThreshold")) ::
              Data.ProtoLens.FieldDescriptor RedisClusterConfig
        failureRefreshThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure_refresh_threshold"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"failureRefreshThreshold")) ::
              Data.ProtoLens.FieldDescriptor RedisClusterConfig
        hostDegradedRefreshThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host_degraded_refresh_threshold"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"hostDegradedRefreshThreshold")) ::
              Data.ProtoLens.FieldDescriptor RedisClusterConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clusterRefreshRate__field_descriptor),
           (Data.ProtoLens.Tag 2, clusterRefreshTimeout__field_descriptor),
           (Data.ProtoLens.Tag 3, redirectRefreshInterval__field_descriptor),
           (Data.ProtoLens.Tag 4, redirectRefreshThreshold__field_descriptor),
           (Data.ProtoLens.Tag 5, failureRefreshThreshold__field_descriptor),
           (Data.ProtoLens.Tag 6, 
            hostDegradedRefreshThreshold__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RedisClusterConfig'_unknownFields
        (\ x__ y__ -> x__ {_RedisClusterConfig'_unknownFields = y__})
  defMessage
    = RedisClusterConfig'_constructor
        {_RedisClusterConfig'clusterRefreshRate = Prelude.Nothing,
         _RedisClusterConfig'clusterRefreshTimeout = Prelude.Nothing,
         _RedisClusterConfig'redirectRefreshInterval = Prelude.Nothing,
         _RedisClusterConfig'redirectRefreshThreshold = Prelude.Nothing,
         _RedisClusterConfig'failureRefreshThreshold = Data.ProtoLens.fieldDefault,
         _RedisClusterConfig'hostDegradedRefreshThreshold = Data.ProtoLens.fieldDefault,
         _RedisClusterConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RedisClusterConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser RedisClusterConfig
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
                                       "cluster_refresh_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clusterRefreshRate") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cluster_refresh_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clusterRefreshTimeout") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "redirect_refresh_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"redirectRefreshInterval") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "redirect_refresh_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"redirectRefreshThreshold") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "failure_refresh_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"failureRefreshThreshold") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "host_degraded_refresh_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"hostDegradedRefreshThreshold")
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
          (do loop Data.ProtoLens.defMessage) "RedisClusterConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'clusterRefreshRate") _x
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
                       (Data.ProtoLens.Field.field @"maybe'clusterRefreshTimeout") _x
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
                          (Data.ProtoLens.Field.field @"maybe'redirectRefreshInterval") _x
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
                             (Data.ProtoLens.Field.field @"maybe'redirectRefreshThreshold") _x
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
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"failureRefreshThreshold") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"hostDegradedRefreshThreshold") _x
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
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData RedisClusterConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RedisClusterConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RedisClusterConfig'clusterRefreshRate x__)
                (Control.DeepSeq.deepseq
                   (_RedisClusterConfig'clusterRefreshTimeout x__)
                   (Control.DeepSeq.deepseq
                      (_RedisClusterConfig'redirectRefreshInterval x__)
                      (Control.DeepSeq.deepseq
                         (_RedisClusterConfig'redirectRefreshThreshold x__)
                         (Control.DeepSeq.deepseq
                            (_RedisClusterConfig'failureRefreshThreshold x__)
                            (Control.DeepSeq.deepseq
                               (_RedisClusterConfig'hostDegradedRefreshThreshold x__) ()))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \6envoy/extensions/clusters/redis/v3/redis_cluster.proto\DC2\"envoy.extensions.clusters.redis.v3\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\180\EOT\n\
    \\DC2RedisClusterConfig\DC2U\n\
    \\DC4cluster_refresh_rate\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\DC2clusterRefreshRateB\b\250B\ENQ\170\SOH\STX*\NUL\DC2[\n\
    \\ETBcluster_refresh_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\NAKclusterRefreshTimeoutB\b\250B\ENQ\170\SOH\STX*\NUL\DC2U\n\
    \\EMredirect_refresh_interval\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\ETBredirectRefreshInterval\DC2Z\n\
    \\SUBredirect_refresh_threshold\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\CANredirectRefreshThreshold\DC2:\n\
    \\EMfailure_refresh_threshold\CAN\ENQ \SOH(\rR\ETBfailureRefreshThreshold\DC2E\n\
    \\UShost_degraded_refresh_threshold\CAN\ACK \SOH(\rR\FShostDegradedRefreshThreshold:4\154\197\136\RS/\n\
    \-envoy.config.cluster.redis.RedisClusterConfigBO\n\
    \0io.envoyproxy.envoy.extensions.clusters.redis.v3B\DC1RedisClusterProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\234\EM\n\
    \\ACK\DC2\EOT\NUL\NULT\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL+\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULI\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NULI\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL2\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL2\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\162\r\n\
    \\STX\EOT\NUL\DC2\EOT8\NULT\SOH\SUB\ETB [#next-free-field: 7]\n\
    \2\252\f [#protodoc-title: Redis Cluster Configuration]\n\
    \ This cluster adds support for `Redis Cluster <https://redis.io/topics/cluster-spec>`_, as part\n\
    \ of :ref:`Envoy's support for Redis Cluster <arch_overview_redis>`.\n\
    \\n\
    \ Redis Cluster is an extension of Redis which supports sharding and high availability (where a\n\
    \ shard that loses its primary fails over to a replica, and designates it as the new primary).\n\
    \ However, as there is no unified frontend or proxy service in front of Redis Cluster, the client\n\
    \ (in this case Envoy) must locally maintain the state of the Redis Cluster, specifically the\n\
    \ topology. A random node in the cluster is queried for the topology using the `CLUSTER SLOTS\n\
    \ command <https://redis.io/commands/cluster-slots>`_. This result is then stored locally, and\n\
    \ updated at user-configured intervals.\n\
    \\n\
    \ Additionally, if\n\
    \ :ref:`enable_redirection<envoy_v3_api_field_extensions.filters.network.redis_proxy.v3.RedisProxy.ConnPoolSettings.enable_redirection>`\n\
    \ is true, then moved and ask redirection errors from upstream servers will trigger a topology\n\
    \ refresh when they exceed a user-configured error threshold.\n\
    \\n\
    \ Example:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \     name: name\n\
    \     connect_timeout: 0.25s\n\
    \     dns_lookup_family: V4_ONLY\n\
    \     hosts:\n\
    \     - socket_address:\n\
    \       address: foo.bar.com\n\
    \       port_value: 22120\n\
    \     cluster_type:\n\
    \     name: envoy.clusters.redis\n\
    \     typed_config:\n\
    \       \"@type\": type.googleapis.com/google.protobuf.Struct\n\
    \       value:\n\
    \         cluster_refresh_rate: 30s\n\
    \         cluster_refresh_timeout: 0.5s\n\
    \         redirect_refresh_interval: 10s\n\
    \         redirect_refresh_threshold: 10\n\
    \ [#extension: envoy.clusters.redis]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX8\b\SUB\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT9\STX:6\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT9\STX:6\n\
    \f\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX=\STXZ\SUBY Interval between successive topology refresh requests. If not set, this defaults to 5s.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX=\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX=\ESC/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX=23\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX=4Y\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\NAK\DC2\ETX=5X\n\
    \U\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX@\STX]\SUBH Timeout for topology refresh request. If not set, this defaults to 3s.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX@\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX@\ESC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX@56\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX@7\\\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\NAK\DC2\ETX@8[\n\
    \\252\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXE\STX9\SUB\238\SOH The minimum interval that must pass after triggering a topology refresh request before a new\n\
    \ request can possibly be triggered again. Any errors received during one of these\n\
    \ time intervals are ignored. If not set, this defaults to 5s.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXE\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXE\ESC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXE78\n\
    \\216\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXJ\STX=\SUB\202\SOH The number of redirection errors that must be received before\n\
    \ triggering a topology refresh request. If not set, this defaults to 5.\n\
    \ If this is set to 0, topology refresh after redirect is disabled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETXJ\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXJ\RS8\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXJ;<\n\
    \\191\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXN\STX'\SUB\177\SOH The number of failures that must be received before triggering a topology refresh request.\n\
    \ If not set, this defaults to 0, which disables the topology refresh due to failure.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETXN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXN\t\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXN%&\n\
    \\215\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXS\STX-\SUB\201\SOH The number of hosts became degraded or unhealthy before triggering a topology refresh request.\n\
    \ If not set, this defaults to 0, which disables the topology refresh due to degraded or\n\
    \ unhealthy host.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETXS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXS\t(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXS+,b\ACKproto3"