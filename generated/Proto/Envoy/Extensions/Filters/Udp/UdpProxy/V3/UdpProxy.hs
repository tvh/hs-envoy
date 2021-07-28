{- This file was auto-generated from envoy/extensions/filters/udp/udp_proxy/v3/udp_proxy.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Udp.UdpProxy.V3.UdpProxy (
        UdpProxyConfig(), UdpProxyConfig'RouteSpecifier(..),
        _UdpProxyConfig'Cluster, UdpProxyConfig'HashPolicy(),
        UdpProxyConfig'HashPolicy'PolicySpecifier(..),
        _UdpProxyConfig'HashPolicy'SourceIp, _UdpProxyConfig'HashPolicy'Key
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
import qualified Proto.Envoy.Config.Core.V3.UdpSocketConfig
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Udp.UdpProxy.V3.UdpProxy_Fields.statPrefix' @:: Lens' UdpProxyConfig Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Udp.UdpProxy.V3.UdpProxy_Fields.idleTimeout' @:: Lens' UdpProxyConfig Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Udp.UdpProxy.V3.UdpProxy_Fields.maybe'idleTimeout' @:: Lens' UdpProxyConfig (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Udp.UdpProxy.V3.UdpProxy_Fields.useOriginalSrcIp' @:: Lens' UdpProxyConfig Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Udp.UdpProxy.V3.UdpProxy_Fields.hashPolicies' @:: Lens' UdpProxyConfig [UdpProxyConfig'HashPolicy]@
         * 'Proto.Envoy.Extensions.Filters.Udp.UdpProxy.V3.UdpProxy_Fields.vec'hashPolicies' @:: Lens' UdpProxyConfig (Data.Vector.Vector UdpProxyConfig'HashPolicy)@
         * 'Proto.Envoy.Extensions.Filters.Udp.UdpProxy.V3.UdpProxy_Fields.upstreamSocketConfig' @:: Lens' UdpProxyConfig Proto.Envoy.Config.Core.V3.UdpSocketConfig.UdpSocketConfig@
         * 'Proto.Envoy.Extensions.Filters.Udp.UdpProxy.V3.UdpProxy_Fields.maybe'upstreamSocketConfig' @:: Lens' UdpProxyConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.UdpSocketConfig.UdpSocketConfig)@
         * 'Proto.Envoy.Extensions.Filters.Udp.UdpProxy.V3.UdpProxy_Fields.maybe'routeSpecifier' @:: Lens' UdpProxyConfig (Prelude.Maybe UdpProxyConfig'RouteSpecifier)@
         * 'Proto.Envoy.Extensions.Filters.Udp.UdpProxy.V3.UdpProxy_Fields.maybe'cluster' @:: Lens' UdpProxyConfig (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Udp.UdpProxy.V3.UdpProxy_Fields.cluster' @:: Lens' UdpProxyConfig Data.Text.Text@ -}
data UdpProxyConfig
  = UdpProxyConfig'_constructor {_UdpProxyConfig'statPrefix :: !Data.Text.Text,
                                 _UdpProxyConfig'idleTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                 _UdpProxyConfig'useOriginalSrcIp :: !Prelude.Bool,
                                 _UdpProxyConfig'hashPolicies :: !(Data.Vector.Vector UdpProxyConfig'HashPolicy),
                                 _UdpProxyConfig'upstreamSocketConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.UdpSocketConfig.UdpSocketConfig),
                                 _UdpProxyConfig'routeSpecifier :: !(Prelude.Maybe UdpProxyConfig'RouteSpecifier),
                                 _UdpProxyConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UdpProxyConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data UdpProxyConfig'RouteSpecifier
  = UdpProxyConfig'Cluster !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField UdpProxyConfig "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpProxyConfig'statPrefix
           (\ x__ y__ -> x__ {_UdpProxyConfig'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UdpProxyConfig "idleTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpProxyConfig'idleTimeout
           (\ x__ y__ -> x__ {_UdpProxyConfig'idleTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UdpProxyConfig "maybe'idleTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpProxyConfig'idleTimeout
           (\ x__ y__ -> x__ {_UdpProxyConfig'idleTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UdpProxyConfig "useOriginalSrcIp" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpProxyConfig'useOriginalSrcIp
           (\ x__ y__ -> x__ {_UdpProxyConfig'useOriginalSrcIp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UdpProxyConfig "hashPolicies" [UdpProxyConfig'HashPolicy] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpProxyConfig'hashPolicies
           (\ x__ y__ -> x__ {_UdpProxyConfig'hashPolicies = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField UdpProxyConfig "vec'hashPolicies" (Data.Vector.Vector UdpProxyConfig'HashPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpProxyConfig'hashPolicies
           (\ x__ y__ -> x__ {_UdpProxyConfig'hashPolicies = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UdpProxyConfig "upstreamSocketConfig" Proto.Envoy.Config.Core.V3.UdpSocketConfig.UdpSocketConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpProxyConfig'upstreamSocketConfig
           (\ x__ y__ -> x__ {_UdpProxyConfig'upstreamSocketConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UdpProxyConfig "maybe'upstreamSocketConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.UdpSocketConfig.UdpSocketConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpProxyConfig'upstreamSocketConfig
           (\ x__ y__ -> x__ {_UdpProxyConfig'upstreamSocketConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UdpProxyConfig "maybe'routeSpecifier" (Prelude.Maybe UdpProxyConfig'RouteSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpProxyConfig'routeSpecifier
           (\ x__ y__ -> x__ {_UdpProxyConfig'routeSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UdpProxyConfig "maybe'cluster" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpProxyConfig'routeSpecifier
           (\ x__ y__ -> x__ {_UdpProxyConfig'routeSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (UdpProxyConfig'Cluster x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap UdpProxyConfig'Cluster y__))
instance Data.ProtoLens.Field.HasField UdpProxyConfig "cluster" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpProxyConfig'routeSpecifier
           (\ x__ y__ -> x__ {_UdpProxyConfig'routeSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (UdpProxyConfig'Cluster x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap UdpProxyConfig'Cluster y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message UdpProxyConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.udp.udp_proxy.v3.UdpProxyConfig"
  packedMessageDescriptor _
    = "\n\
      \\SOUdpProxyConfig\DC2(\n\
      \\vstat_prefix\CAN\SOH \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2#\n\
      \\acluster\CAN\STX \SOH(\tH\NULR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2<\n\
      \\fidle_timeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\vidleTimeout\DC2-\n\
      \\DC3use_original_src_ip\CAN\EOT \SOH(\bR\DLEuseOriginalSrcIp\DC2s\n\
      \\rhash_policies\CAN\ENQ \ETX(\v2D.envoy.extensions.filters.udp.udp_proxy.v3.UdpProxyConfig.HashPolicyR\fhashPoliciesB\b\250B\ENQ\146\SOH\STX\DLE\SOH\DC2[\n\
      \\SYNupstream_socket_config\CAN\ACK \SOH(\v2%.envoy.config.core.v3.UdpSocketConfigR\DC4upstreamSocketConfig\SUBj\n\
      \\n\
      \HashPolicy\DC2&\n\
      \\tsource_ip\CAN\SOH \SOH(\bH\NULR\bsourceIpB\a\250B\EOTj\STX\b\SOH\DC2\ESC\n\
      \\ETXkey\CAN\STX \SOH(\tH\NULR\ETXkeyB\a\250B\EOTr\STX\DLE\SOHB\ETB\n\
      \\DLEpolicy_specifier\DC2\ETX\248B\SOHB\SYN\n\
      \\SIroute_specifier\DC2\ETX\248B\SOH:?\154\197\136\RS:\n\
      \8envoy.config.filter.udp.udp_proxy.v2alpha.UdpProxyConfig"
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
              Data.ProtoLens.FieldDescriptor UdpProxyConfig
        idleTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "idle_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'idleTimeout")) ::
              Data.ProtoLens.FieldDescriptor UdpProxyConfig
        useOriginalSrcIp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_original_src_ip"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"useOriginalSrcIp")) ::
              Data.ProtoLens.FieldDescriptor UdpProxyConfig
        hashPolicies__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash_policies"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UdpProxyConfig'HashPolicy)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"hashPolicies")) ::
              Data.ProtoLens.FieldDescriptor UdpProxyConfig
        upstreamSocketConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_socket_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.UdpSocketConfig.UdpSocketConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'upstreamSocketConfig")) ::
              Data.ProtoLens.FieldDescriptor UdpProxyConfig
        cluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cluster")) ::
              Data.ProtoLens.FieldDescriptor UdpProxyConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 3, idleTimeout__field_descriptor),
           (Data.ProtoLens.Tag 4, useOriginalSrcIp__field_descriptor),
           (Data.ProtoLens.Tag 5, hashPolicies__field_descriptor),
           (Data.ProtoLens.Tag 6, upstreamSocketConfig__field_descriptor),
           (Data.ProtoLens.Tag 2, cluster__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UdpProxyConfig'_unknownFields
        (\ x__ y__ -> x__ {_UdpProxyConfig'_unknownFields = y__})
  defMessage
    = UdpProxyConfig'_constructor
        {_UdpProxyConfig'statPrefix = Data.ProtoLens.fieldDefault,
         _UdpProxyConfig'idleTimeout = Prelude.Nothing,
         _UdpProxyConfig'useOriginalSrcIp = Data.ProtoLens.fieldDefault,
         _UdpProxyConfig'hashPolicies = Data.Vector.Generic.empty,
         _UdpProxyConfig'upstreamSocketConfig = Prelude.Nothing,
         _UdpProxyConfig'routeSpecifier = Prelude.Nothing,
         _UdpProxyConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UdpProxyConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld UdpProxyConfig'HashPolicy
             -> Data.ProtoLens.Encoding.Bytes.Parser UdpProxyConfig
        loop x mutable'hashPolicies
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'hashPolicies <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'hashPolicies)
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
                              (Data.ProtoLens.Field.field @"vec'hashPolicies")
                              frozen'hashPolicies
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
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                                  mutable'hashPolicies
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "idle_timeout"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"idleTimeout") y x)
                                  mutable'hashPolicies
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "use_original_src_ip"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useOriginalSrcIp") y x)
                                  mutable'hashPolicies
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "hash_policies"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'hashPolicies y)
                                loop x v
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "upstream_socket_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamSocketConfig") y x)
                                  mutable'hashPolicies
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
                                  mutable'hashPolicies
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'hashPolicies
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'hashPolicies <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'hashPolicies)
          "UdpProxyConfig"
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
                       (Data.ProtoLens.Field.field @"maybe'idleTimeout") _x
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
                            (Data.ProtoLens.Field.field @"useOriginalSrcIp") _x
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
                            (Data.ProtoLens.Field.field @"vec'hashPolicies") _x))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'upstreamSocketConfig") _x
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
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'routeSpecifier") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just (UdpProxyConfig'Cluster v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.Text.Encoding.encodeUtf8
                                         v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData UdpProxyConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UdpProxyConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UdpProxyConfig'statPrefix x__)
                (Control.DeepSeq.deepseq
                   (_UdpProxyConfig'idleTimeout x__)
                   (Control.DeepSeq.deepseq
                      (_UdpProxyConfig'useOriginalSrcIp x__)
                      (Control.DeepSeq.deepseq
                         (_UdpProxyConfig'hashPolicies x__)
                         (Control.DeepSeq.deepseq
                            (_UdpProxyConfig'upstreamSocketConfig x__)
                            (Control.DeepSeq.deepseq
                               (_UdpProxyConfig'routeSpecifier x__) ()))))))
instance Control.DeepSeq.NFData UdpProxyConfig'RouteSpecifier where
  rnf (UdpProxyConfig'Cluster x__) = Control.DeepSeq.rnf x__
_UdpProxyConfig'Cluster ::
  Data.ProtoLens.Prism.Prism' UdpProxyConfig'RouteSpecifier Data.Text.Text
_UdpProxyConfig'Cluster
  = Data.ProtoLens.Prism.prism'
      UdpProxyConfig'Cluster
      (\ p__
         -> case p__ of {
              (UdpProxyConfig'Cluster p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Udp.UdpProxy.V3.UdpProxy_Fields.maybe'policySpecifier' @:: Lens' UdpProxyConfig'HashPolicy (Prelude.Maybe UdpProxyConfig'HashPolicy'PolicySpecifier)@
         * 'Proto.Envoy.Extensions.Filters.Udp.UdpProxy.V3.UdpProxy_Fields.maybe'sourceIp' @:: Lens' UdpProxyConfig'HashPolicy (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Extensions.Filters.Udp.UdpProxy.V3.UdpProxy_Fields.sourceIp' @:: Lens' UdpProxyConfig'HashPolicy Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Udp.UdpProxy.V3.UdpProxy_Fields.maybe'key' @:: Lens' UdpProxyConfig'HashPolicy (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Udp.UdpProxy.V3.UdpProxy_Fields.key' @:: Lens' UdpProxyConfig'HashPolicy Data.Text.Text@ -}
data UdpProxyConfig'HashPolicy
  = UdpProxyConfig'HashPolicy'_constructor {_UdpProxyConfig'HashPolicy'policySpecifier :: !(Prelude.Maybe UdpProxyConfig'HashPolicy'PolicySpecifier),
                                            _UdpProxyConfig'HashPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UdpProxyConfig'HashPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data UdpProxyConfig'HashPolicy'PolicySpecifier
  = UdpProxyConfig'HashPolicy'SourceIp !Prelude.Bool |
    UdpProxyConfig'HashPolicy'Key !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField UdpProxyConfig'HashPolicy "maybe'policySpecifier" (Prelude.Maybe UdpProxyConfig'HashPolicy'PolicySpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpProxyConfig'HashPolicy'policySpecifier
           (\ x__ y__
              -> x__ {_UdpProxyConfig'HashPolicy'policySpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UdpProxyConfig'HashPolicy "maybe'sourceIp" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpProxyConfig'HashPolicy'policySpecifier
           (\ x__ y__
              -> x__ {_UdpProxyConfig'HashPolicy'policySpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (UdpProxyConfig'HashPolicy'SourceIp x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap UdpProxyConfig'HashPolicy'SourceIp y__))
instance Data.ProtoLens.Field.HasField UdpProxyConfig'HashPolicy "sourceIp" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpProxyConfig'HashPolicy'policySpecifier
           (\ x__ y__
              -> x__ {_UdpProxyConfig'HashPolicy'policySpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (UdpProxyConfig'HashPolicy'SourceIp x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap UdpProxyConfig'HashPolicy'SourceIp y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField UdpProxyConfig'HashPolicy "maybe'key" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpProxyConfig'HashPolicy'policySpecifier
           (\ x__ y__
              -> x__ {_UdpProxyConfig'HashPolicy'policySpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (UdpProxyConfig'HashPolicy'Key x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap UdpProxyConfig'HashPolicy'Key y__))
instance Data.ProtoLens.Field.HasField UdpProxyConfig'HashPolicy "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpProxyConfig'HashPolicy'policySpecifier
           (\ x__ y__
              -> x__ {_UdpProxyConfig'HashPolicy'policySpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (UdpProxyConfig'HashPolicy'Key x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap UdpProxyConfig'HashPolicy'Key y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message UdpProxyConfig'HashPolicy where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.udp.udp_proxy.v3.UdpProxyConfig.HashPolicy"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \HashPolicy\DC2&\n\
      \\tsource_ip\CAN\SOH \SOH(\bH\NULR\bsourceIpB\a\250B\EOTj\STX\b\SOH\DC2\ESC\n\
      \\ETXkey\CAN\STX \SOH(\tH\NULR\ETXkeyB\a\250B\EOTr\STX\DLE\SOHB\ETB\n\
      \\DLEpolicy_specifier\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sourceIp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_ip"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sourceIp")) ::
              Data.ProtoLens.FieldDescriptor UdpProxyConfig'HashPolicy
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'key")) ::
              Data.ProtoLens.FieldDescriptor UdpProxyConfig'HashPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sourceIp__field_descriptor),
           (Data.ProtoLens.Tag 2, key__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UdpProxyConfig'HashPolicy'_unknownFields
        (\ x__ y__
           -> x__ {_UdpProxyConfig'HashPolicy'_unknownFields = y__})
  defMessage
    = UdpProxyConfig'HashPolicy'_constructor
        {_UdpProxyConfig'HashPolicy'policySpecifier = Prelude.Nothing,
         _UdpProxyConfig'HashPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UdpProxyConfig'HashPolicy
          -> Data.ProtoLens.Encoding.Bytes.Parser UdpProxyConfig'HashPolicy
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
                                       "source_ip"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sourceIp") y x)
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
          (do loop Data.ProtoLens.defMessage) "HashPolicy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'policySpecifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (UdpProxyConfig'HashPolicy'SourceIp v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (UdpProxyConfig'HashPolicy'Key v))
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
instance Control.DeepSeq.NFData UdpProxyConfig'HashPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UdpProxyConfig'HashPolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UdpProxyConfig'HashPolicy'policySpecifier x__) ())
instance Control.DeepSeq.NFData UdpProxyConfig'HashPolicy'PolicySpecifier where
  rnf (UdpProxyConfig'HashPolicy'SourceIp x__)
    = Control.DeepSeq.rnf x__
  rnf (UdpProxyConfig'HashPolicy'Key x__) = Control.DeepSeq.rnf x__
_UdpProxyConfig'HashPolicy'SourceIp ::
  Data.ProtoLens.Prism.Prism' UdpProxyConfig'HashPolicy'PolicySpecifier Prelude.Bool
_UdpProxyConfig'HashPolicy'SourceIp
  = Data.ProtoLens.Prism.prism'
      UdpProxyConfig'HashPolicy'SourceIp
      (\ p__
         -> case p__ of
              (UdpProxyConfig'HashPolicy'SourceIp p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_UdpProxyConfig'HashPolicy'Key ::
  Data.ProtoLens.Prism.Prism' UdpProxyConfig'HashPolicy'PolicySpecifier Data.Text.Text
_UdpProxyConfig'HashPolicy'Key
  = Data.ProtoLens.Prism.prism'
      UdpProxyConfig'HashPolicy'Key
      (\ p__
         -> case p__ of
              (UdpProxyConfig'HashPolicy'Key p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \9envoy/extensions/filters/udp/udp_proxy/v3/udp_proxy.proto\DC2)envoy.extensions.filters.udp.udp_proxy.v3\SUB,envoy/config/core/v3/udp_socket_config.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\227\EOT\n\
    \\SOUdpProxyConfig\DC2(\n\
    \\vstat_prefix\CAN\SOH \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2#\n\
    \\acluster\CAN\STX \SOH(\tH\NULR\aclusterB\a\250B\EOTr\STX\DLE\SOH\DC2<\n\
    \\fidle_timeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\vidleTimeout\DC2-\n\
    \\DC3use_original_src_ip\CAN\EOT \SOH(\bR\DLEuseOriginalSrcIp\DC2s\n\
    \\rhash_policies\CAN\ENQ \ETX(\v2D.envoy.extensions.filters.udp.udp_proxy.v3.UdpProxyConfig.HashPolicyR\fhashPoliciesB\b\250B\ENQ\146\SOH\STX\DLE\SOH\DC2[\n\
    \\SYNupstream_socket_config\CAN\ACK \SOH(\v2%.envoy.config.core.v3.UdpSocketConfigR\DC4upstreamSocketConfig\SUBj\n\
    \\n\
    \HashPolicy\DC2&\n\
    \\tsource_ip\CAN\SOH \SOH(\bH\NULR\bsourceIpB\a\250B\EOTj\STX\b\SOH\DC2\ESC\n\
    \\ETXkey\CAN\STX \SOH(\tH\NULR\ETXkeyB\a\250B\EOTr\STX\DLE\SOHB\ETB\n\
    \\DLEpolicy_specifier\DC2\ETX\248B\SOHB\SYN\n\
    \\SIroute_specifier\DC2\ETX\248B\SOH:?\154\197\136\RS:\n\
    \8envoy.config.filter.udp.udp_proxy.v2alpha.UdpProxyConfigBR\n\
    \7io.envoyproxy.envoy.extensions.filters.udp.udp_proxy.v3B\rUdpProxyProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\221\RS\n\
    \\ACK\DC2\EOT\NUL\NULT\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL2\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL6\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULP\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NULP\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL.\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL.\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \\243\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NULT\SOH\SUB@ Configuration for the UDP proxy filter.\n\
    \ [#next-free-field: 7]\n\
    \2\164\SOH [#protodoc-title: UDP proxy]\n\
    \ UDP proxy :ref:`configuration overview <config_udp_listener_filters_udp_proxy>`.\n\
    \ [#extension: envoy.filters.udp_listener.udp_proxy]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\SYN\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\CAN\STX\EMA\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\CAN\STX\EMA\n\
    \Y\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\GS\STX+\ETX\SUBK Specifies the UDP hash policy.\n\
    \ The packets can be routed by hash policy.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\GS\n\
    \\DC4\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\b\NUL\DC2\EOT\RS\EOT*\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\SOH\DC2\ETX\RS\n\
    \\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\STX\DC2\ETX\US\ACK(\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\b\NUL\STX\175\b\DC2\ETX\US\ACK(\n\
    \m\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\"\ACKA\SUB^ The source IP will be used to compute the hash used by hash-based load balancing algorithms.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX\"\ACK\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\"\v\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\"\ETB\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETX\"\EM@\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\r\DC2\ETX\"\SUB?\n\
    \\210\EOT\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX)\ACK>\SUB\194\EOT A given key will be used to compute the hash used by hash-based load balancing algorithms.\n\
    \ In certain cases there is a need to direct different UDP streams jointly towards the selected set of endpoints.\n\
    \ A possible use-case is VoIP telephony, where media (RTP) and its corresponding control (RTCP) belong to the same logical session,\n\
    \ although they travel in separate streams. To ensure that these pair of streams are load-balanced on session level\n\
    \ (instead of individual stream level), dynamically created listeners can use the same hash key for each stream in the session.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX)\ACK\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX)\r\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX)\DC3\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\b\DC2\ETX)\NAK=\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\SOH\b\175\b\SO\DC2\ETX)\SYN<\n\
    \I\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX.\STXB\SUB< The stat prefix used when emitting UDP proxy filter stats.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX.\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX.\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX.\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX.\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX.\SUB@\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT0\STX5\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX0\b\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX1\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX1\EOT&\n\
    \2\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX4\EOT@\SUB% The upstream cluster to connect to.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX4\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX4\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX4\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX4\ETB?\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\SO\DC2\ETX4\CAN>\n\
    \\162\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX9\STX,\SUB\148\SOH The idle timeout for sessions. Idle is defined as no datagrams between received or sent by\n\
    \ the session. The default if not specified is 1 minute.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX9\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX9\ESC'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX9*+\n\
    \\203\t\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXI\STX\US\SUB\189\t Use the remote downstream IP address as the sender IP address when sending packets to upstream hosts.\n\
    \ This option requires Envoy to be run with the *CAP_NET_ADMIN* capability on Linux.\n\
    \ And the IPv6 stack must be enabled on Linux kernel.\n\
    \ This option does not preserve the remote downstream port.\n\
    \ If this option is enabled, the IP address of sent datagrams will be changed to the remote downstream IP address.\n\
    \ This means that Envoy will not receive packets that are sent by upstream hosts because the upstream hosts\n\
    \ will send the packets with the remote downstream IP address as the destination. All packets will be routed\n\
    \ to the remote downstream directly if there are route rules on the upstream host side.\n\
    \ There are two options to return the packets back to the remote downstream.\n\
    \ The first one is to use DSR (Direct Server Return).\n\
    \ The other one is to configure routing rules on the upstream hosts to forward\n\
    \ all packets back to Envoy and configure iptables rules on the host running Envoy to\n\
    \ forward all packets from upstream hosts to the Envoy process so that Envoy can forward the packets to the downstream.\n\
    \ If the platform does not support this option, Envoy will raise a configuration error.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETXI\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXI\a\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXI\GS\RS\n\
    \\223\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXN\STXU\SUB\209\SOH Optional configuration for UDP proxy hash policies. If hash_policies is not set, the hash-based\n\
    \ load balancing algorithms will select a host randomly. Currently the number of hash policies is\n\
    \ limited to 1.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETXN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXN\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXN\SYN#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXN&'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETXN(T\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\175\b\DC2\DC2\ETXN)S\n\
    \\132\STX\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXS\STX<\SUB\246\SOH UDP socket configuration for upstream sockets. The default for\n\
    \ :ref:`prefer_gro <envoy_v3_api_field_config.core.v3.UdpSocketConfig.prefer_gro>` is true for upstream\n\
    \ sockets as the assumption is datagrams will be received from a single source.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXS\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXS!7\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXS:;b\ACKproto3"