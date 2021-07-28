{- This file was auto-generated from envoy/config/listener/v3/udp_listener_config.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Listener.V3.UdpListenerConfig (
        ActiveRawUdpListenerConfig(), UdpListenerConfig()
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
import qualified Proto.Envoy.Config.Listener.V3.QuicConfig
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
      -}
data ActiveRawUdpListenerConfig
  = ActiveRawUdpListenerConfig'_constructor {_ActiveRawUdpListenerConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActiveRawUdpListenerConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message ActiveRawUdpListenerConfig where
  messageName _
    = Data.Text.pack
        "envoy.config.listener.v3.ActiveRawUdpListenerConfig"
  packedMessageDescriptor _
    = "\n\
      \\SUBActiveRawUdpListenerConfig:7\154\197\136\RS2\n\
      \0envoy.api.v2.listener.ActiveRawUdpListenerConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActiveRawUdpListenerConfig'_unknownFields
        (\ x__ y__
           -> x__ {_ActiveRawUdpListenerConfig'_unknownFields = y__})
  defMessage
    = ActiveRawUdpListenerConfig'_constructor
        {_ActiveRawUdpListenerConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActiveRawUdpListenerConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser ActiveRawUdpListenerConfig
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
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActiveRawUdpListenerConfig"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData ActiveRawUdpListenerConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActiveRawUdpListenerConfig'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Listener.V3.UdpListenerConfig_Fields.downstreamSocketConfig' @:: Lens' UdpListenerConfig Proto.Envoy.Config.Core.V3.UdpSocketConfig.UdpSocketConfig@
         * 'Proto.Envoy.Config.Listener.V3.UdpListenerConfig_Fields.maybe'downstreamSocketConfig' @:: Lens' UdpListenerConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.UdpSocketConfig.UdpSocketConfig)@
         * 'Proto.Envoy.Config.Listener.V3.UdpListenerConfig_Fields.quicOptions' @:: Lens' UdpListenerConfig Proto.Envoy.Config.Listener.V3.QuicConfig.QuicProtocolOptions@
         * 'Proto.Envoy.Config.Listener.V3.UdpListenerConfig_Fields.maybe'quicOptions' @:: Lens' UdpListenerConfig (Prelude.Maybe Proto.Envoy.Config.Listener.V3.QuicConfig.QuicProtocolOptions)@ -}
data UdpListenerConfig
  = UdpListenerConfig'_constructor {_UdpListenerConfig'downstreamSocketConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.UdpSocketConfig.UdpSocketConfig),
                                    _UdpListenerConfig'quicOptions :: !(Prelude.Maybe Proto.Envoy.Config.Listener.V3.QuicConfig.QuicProtocolOptions),
                                    _UdpListenerConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UdpListenerConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UdpListenerConfig "downstreamSocketConfig" Proto.Envoy.Config.Core.V3.UdpSocketConfig.UdpSocketConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpListenerConfig'downstreamSocketConfig
           (\ x__ y__
              -> x__ {_UdpListenerConfig'downstreamSocketConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UdpListenerConfig "maybe'downstreamSocketConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.UdpSocketConfig.UdpSocketConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpListenerConfig'downstreamSocketConfig
           (\ x__ y__
              -> x__ {_UdpListenerConfig'downstreamSocketConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UdpListenerConfig "quicOptions" Proto.Envoy.Config.Listener.V3.QuicConfig.QuicProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpListenerConfig'quicOptions
           (\ x__ y__ -> x__ {_UdpListenerConfig'quicOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UdpListenerConfig "maybe'quicOptions" (Prelude.Maybe Proto.Envoy.Config.Listener.V3.QuicConfig.QuicProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UdpListenerConfig'quicOptions
           (\ x__ y__ -> x__ {_UdpListenerConfig'quicOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Message UdpListenerConfig where
  messageName _
    = Data.Text.pack "envoy.config.listener.v3.UdpListenerConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC1UdpListenerConfig\DC2_\n\
      \\CANdownstream_socket_config\CAN\ENQ \SOH(\v2%.envoy.config.core.v3.UdpSocketConfigR\SYNdownstreamSocketConfig\DC2P\n\
      \\fquic_options\CAN\a \SOH(\v2-.envoy.config.listener.v3.QuicProtocolOptionsR\vquicOptions:.\154\197\136\RS)\n\
      \'envoy.api.v2.listener.UdpListenerConfigJ\EOT\b\SOH\DLE\STXJ\EOT\b\STX\DLE\ETXJ\EOT\b\ETX\DLE\EOTJ\EOT\b\EOT\DLE\ENQJ\EOT\b\ACK\DLE\aR\ACKconfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        downstreamSocketConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "downstream_socket_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.UdpSocketConfig.UdpSocketConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'downstreamSocketConfig")) ::
              Data.ProtoLens.FieldDescriptor UdpListenerConfig
        quicOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "quic_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Listener.V3.QuicConfig.QuicProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'quicOptions")) ::
              Data.ProtoLens.FieldDescriptor UdpListenerConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 5, downstreamSocketConfig__field_descriptor),
           (Data.ProtoLens.Tag 7, quicOptions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UdpListenerConfig'_unknownFields
        (\ x__ y__ -> x__ {_UdpListenerConfig'_unknownFields = y__})
  defMessage
    = UdpListenerConfig'_constructor
        {_UdpListenerConfig'downstreamSocketConfig = Prelude.Nothing,
         _UdpListenerConfig'quicOptions = Prelude.Nothing,
         _UdpListenerConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UdpListenerConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser UdpListenerConfig
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
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "downstream_socket_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"downstreamSocketConfig") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "quic_options"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"quicOptions") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UdpListenerConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'downstreamSocketConfig") _x
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
                       (Data.ProtoLens.Field.field @"maybe'quicOptions") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
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
instance Control.DeepSeq.NFData UdpListenerConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UdpListenerConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UdpListenerConfig'downstreamSocketConfig x__)
                (Control.DeepSeq.deepseq (_UdpListenerConfig'quicOptions x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \2envoy/config/listener/v3/udp_listener_config.proto\DC2\CANenvoy.config.listener.v3\SUB,envoy/config/core/v3/udp_socket_config.proto\SUB*envoy/config/listener/v3/quic_config.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\156\STX\n\
    \\DC1UdpListenerConfig\DC2_\n\
    \\CANdownstream_socket_config\CAN\ENQ \SOH(\v2%.envoy.config.core.v3.UdpSocketConfigR\SYNdownstreamSocketConfig\DC2P\n\
    \\fquic_options\CAN\a \SOH(\v2-.envoy.config.listener.v3.QuicProtocolOptionsR\vquicOptions:.\154\197\136\RS)\n\
    \'envoy.api.v2.listener.UdpListenerConfigJ\EOT\b\SOH\DLE\STXJ\EOT\b\STX\DLE\ETXJ\EOT\b\ETX\DLE\EOTJ\EOT\b\EOT\DLE\ENQJ\EOT\b\ACK\DLE\aR\ACKconfig\"U\n\
    \\SUBActiveRawUdpListenerConfig:7\154\197\136\RS2\n\
    \0envoy.api.v2.listener.ActiveRawUdpListenerConfigBJ\n\
    \&io.envoyproxy.envoy.config.listener.v3B\SYNUdpListenerConfigProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\238\n\
    \\n\
    \\ACK\DC2\EOT\NUL\NUL-\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL!\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL6\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL4\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL?\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NUL?\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL7\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL7\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\136\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL(\SOH\SUB\ETB [#next-free-field: 8]\n\
    \2c [#protodoc-title: UDP listener config]\n\
    \ Listener :ref:`configuration overview <config_listeners>`\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\EM\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC4\STX\NAK0\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC4\STX\NAK0\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\t\DC2\ETX\ETB\STX\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETX\ETB\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETX\ETB\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETX\ETB\v\f\n\
    \\v\n\
    \\EOT\EOT\NUL\t\SOH\DC2\ETX\ETB\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\SOH\SOH\DC2\ETX\ETB\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\SOH\STX\DC2\ETX\ETB\SO\SI\n\
    \\v\n\
    \\EOT\EOT\NUL\t\STX\DC2\ETX\ETB\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\STX\SOH\DC2\ETX\ETB\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\STX\STX\DC2\ETX\ETB\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\NUL\t\ETX\DC2\ETX\ETB\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\ETX\SOH\DC2\ETX\ETB\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\ETX\STX\DC2\ETX\ETB\DC4\NAK\n\
    \\v\n\
    \\EOT\EOT\NUL\t\EOT\DC2\ETX\ETB\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\EOT\SOH\DC2\ETX\ETB\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\EOT\STX\DC2\ETX\ETB\ETB\CAN\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\n\
    \\DC2\ETX\EM\STX\DC4\n\
    \\v\n\
    \\EOT\EOT\NUL\n\
    \\NUL\DC2\ETX\EM\v\DC3\n\
    \\204\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\US\STX7\SUB\190\STX UDP socket configuration for the listener. The default for\n\
    \ :ref:`prefer_gro <envoy_v3_api_field_config.core.v3.UdpSocketConfig.prefer_gro>` is false for\n\
    \ listener sockets. If receiving a large amount of datagrams from a small number of sources, it\n\
    \ may be worthwhile to enable this option after performance testing.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\US\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\US\SUB2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\US56\n\
    \\201\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX'\STX'\SUB\187\STX Configuration for QUIC protocol. If empty, QUIC will not be enabled on this listener. Set\n\
    \ to the default object to enable QUIC without modifying any additional options.\n\
    \\n\
    \ .. warning::\n\
    \   QUIC support is currently alpha and should be used with caution. Please\n\
    \   see :ref:`here <arch_overview_http3>` for details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX'\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX'\SYN\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX'%&\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT*\NUL-\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX*\b\"\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT+\STX,9\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT+\STX,9b\ACKproto3"