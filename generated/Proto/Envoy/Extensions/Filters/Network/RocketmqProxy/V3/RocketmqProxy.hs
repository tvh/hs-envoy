{- This file was auto-generated from envoy/extensions/filters/network/rocketmq_proxy/v3/rocketmq_proxy.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.RocketmqProxy (
        RocketmqProxy()
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
import qualified Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.RocketmqProxy_Fields.statPrefix' @:: Lens' RocketmqProxy Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.RocketmqProxy_Fields.routeConfig' @:: Lens' RocketmqProxy Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route.RouteConfiguration@
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.RocketmqProxy_Fields.maybe'routeConfig' @:: Lens' RocketmqProxy (Prelude.Maybe Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route.RouteConfiguration)@
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.RocketmqProxy_Fields.transientObjectLifeSpan' @:: Lens' RocketmqProxy Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.RocketmqProxy_Fields.maybe'transientObjectLifeSpan' @:: Lens' RocketmqProxy (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.RocketmqProxy_Fields.developMode' @:: Lens' RocketmqProxy Prelude.Bool@ -}
data RocketmqProxy
  = RocketmqProxy'_constructor {_RocketmqProxy'statPrefix :: !Data.Text.Text,
                                _RocketmqProxy'routeConfig :: !(Prelude.Maybe Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route.RouteConfiguration),
                                _RocketmqProxy'transientObjectLifeSpan :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                _RocketmqProxy'developMode :: !Prelude.Bool,
                                _RocketmqProxy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RocketmqProxy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RocketmqProxy "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RocketmqProxy'statPrefix
           (\ x__ y__ -> x__ {_RocketmqProxy'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RocketmqProxy "routeConfig" Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route.RouteConfiguration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RocketmqProxy'routeConfig
           (\ x__ y__ -> x__ {_RocketmqProxy'routeConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RocketmqProxy "maybe'routeConfig" (Prelude.Maybe Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route.RouteConfiguration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RocketmqProxy'routeConfig
           (\ x__ y__ -> x__ {_RocketmqProxy'routeConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RocketmqProxy "transientObjectLifeSpan" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RocketmqProxy'transientObjectLifeSpan
           (\ x__ y__ -> x__ {_RocketmqProxy'transientObjectLifeSpan = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RocketmqProxy "maybe'transientObjectLifeSpan" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RocketmqProxy'transientObjectLifeSpan
           (\ x__ y__ -> x__ {_RocketmqProxy'transientObjectLifeSpan = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RocketmqProxy "developMode" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RocketmqProxy'developMode
           (\ x__ y__ -> x__ {_RocketmqProxy'developMode = y__}))
        Prelude.id
instance Data.ProtoLens.Message RocketmqProxy where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.rocketmq_proxy.v3.RocketmqProxy"
  packedMessageDescriptor _
    = "\n\
      \\rRocketmqProxy\DC2(\n\
      \\vstat_prefix\CAN\SOH \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2i\n\
      \\froute_config\CAN\STX \SOH(\v2F.envoy.extensions.filters.network.rocketmq_proxy.v3.RouteConfigurationR\vrouteConfig\DC2V\n\
      \\SUBtransient_object_life_span\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\ETBtransientObjectLifeSpan\DC2!\n\
      \\fdevelop_mode\CAN\EOT \SOH(\bR\vdevelopMode"
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
              Data.ProtoLens.FieldDescriptor RocketmqProxy
        routeConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "route_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.Filters.Network.RocketmqProxy.V3.Route.RouteConfiguration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'routeConfig")) ::
              Data.ProtoLens.FieldDescriptor RocketmqProxy
        transientObjectLifeSpan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transient_object_life_span"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'transientObjectLifeSpan")) ::
              Data.ProtoLens.FieldDescriptor RocketmqProxy
        developMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "develop_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"developMode")) ::
              Data.ProtoLens.FieldDescriptor RocketmqProxy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 2, routeConfig__field_descriptor),
           (Data.ProtoLens.Tag 3, transientObjectLifeSpan__field_descriptor),
           (Data.ProtoLens.Tag 4, developMode__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RocketmqProxy'_unknownFields
        (\ x__ y__ -> x__ {_RocketmqProxy'_unknownFields = y__})
  defMessage
    = RocketmqProxy'_constructor
        {_RocketmqProxy'statPrefix = Data.ProtoLens.fieldDefault,
         _RocketmqProxy'routeConfig = Prelude.Nothing,
         _RocketmqProxy'transientObjectLifeSpan = Prelude.Nothing,
         _RocketmqProxy'developMode = Data.ProtoLens.fieldDefault,
         _RocketmqProxy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RocketmqProxy -> Data.ProtoLens.Encoding.Bytes.Parser RocketmqProxy
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
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "route_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"routeConfig") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "transient_object_life_span"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"transientObjectLifeSpan") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "develop_mode"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"developMode") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RocketmqProxy"
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
                       (Data.ProtoLens.Field.field @"maybe'routeConfig") _x
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
                          (Data.ProtoLens.Field.field @"maybe'transientObjectLifeSpan") _x
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"developMode") _x
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData RocketmqProxy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RocketmqProxy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RocketmqProxy'statPrefix x__)
                (Control.DeepSeq.deepseq
                   (_RocketmqProxy'routeConfig x__)
                   (Control.DeepSeq.deepseq
                      (_RocketmqProxy'transientObjectLifeSpan x__)
                      (Control.DeepSeq.deepseq (_RocketmqProxy'developMode x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Genvoy/extensions/filters/network/rocketmq_proxy/v3/rocketmq_proxy.proto\DC22envoy.extensions.filters.network.rocketmq_proxy.v3\SUB>envoy/extensions/filters/network/rocketmq_proxy/v3/route.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\159\STX\n\
    \\rRocketmqProxy\DC2(\n\
    \\vstat_prefix\CAN\SOH \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2i\n\
    \\froute_config\CAN\STX \SOH(\v2F.envoy.extensions.filters.network.rocketmq_proxy.v3.RouteConfigurationR\vrouteConfig\DC2V\n\
    \\SUBtransient_object_life_span\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\ETBtransientObjectLifeSpan\DC2!\n\
    \\fdevelop_mode\CAN\EOT \SOH(\bR\vdevelopModeB`\n\
    \@io.envoyproxy.envoy.extensions.filters.network.rocketmq_proxy.v3B\DC2RocketmqProxyProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\129\b\n\
    \\ACK\DC2\EOT\NUL\NUL!\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL;\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NULH\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULY\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NULY\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL3\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL3\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\187\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL!\SOH2\174\SOH [#protodoc-title: RocketMQ Proxy]\n\
    \ RocketMQ Proxy :ref:`configuration overview <config_network_filters_rocketmq_proxy>`.\n\
    \ [#extension: envoy.filters.network.rocketmq_proxy]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\NAK\n\
    \I\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SYN\STXB\SUB< The human readable prefix to use when emitting statistics.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SYN\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SYN\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\SYN\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\SYN\SUB@\n\
    \X\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\EM\STX&\SUBK The route table for the connection manager is specified in this property.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\EM\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\EM\NAK!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\EM$%\n\
    \d\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\FS\STX:\SUBW The largest duration transient object expected to live, more than 10s is recommended.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\FS\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\FS\ESC5\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\FS89\n\
    \\194\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX \STX\CAN\SUB\180\SOH If develop_mode is enabled, this proxy plugin may work without dedicated traffic intercepting\n\
    \ facility without considering backward compatibility of exiting RocketMQ client SDK.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX \STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX \a\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX \SYN\ETBb\ACKproto3"