{- This file was auto-generated from envoy/extensions/transport_sockets/quic/v3/quic_transport.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.TransportSockets.Quic.V3.QuicTransport (
        QuicDownstreamTransport(), QuicUpstreamTransport()
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
import qualified Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Quic.V3.QuicTransport_Fields.downstreamTlsContext' @:: Lens' QuicDownstreamTransport Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.DownstreamTlsContext@
         * 'Proto.Envoy.Extensions.TransportSockets.Quic.V3.QuicTransport_Fields.maybe'downstreamTlsContext' @:: Lens' QuicDownstreamTransport (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.DownstreamTlsContext)@ -}
data QuicDownstreamTransport
  = QuicDownstreamTransport'_constructor {_QuicDownstreamTransport'downstreamTlsContext :: !(Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.DownstreamTlsContext),
                                          _QuicDownstreamTransport'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuicDownstreamTransport where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuicDownstreamTransport "downstreamTlsContext" Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.DownstreamTlsContext where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicDownstreamTransport'downstreamTlsContext
           (\ x__ y__
              -> x__ {_QuicDownstreamTransport'downstreamTlsContext = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuicDownstreamTransport "maybe'downstreamTlsContext" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.DownstreamTlsContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicDownstreamTransport'downstreamTlsContext
           (\ x__ y__
              -> x__ {_QuicDownstreamTransport'downstreamTlsContext = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuicDownstreamTransport where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.quic.v3.QuicDownstreamTransport"
  packedMessageDescriptor _
    = "\n\
      \\ETBQuicDownstreamTransport\DC2\DEL\n\
      \\SYNdownstream_tls_context\CAN\SOH \SOH(\v2?.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContextR\DC4downstreamTlsContextB\b\250B\ENQ\138\SOH\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        downstreamTlsContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "downstream_tls_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.DownstreamTlsContext)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'downstreamTlsContext")) ::
              Data.ProtoLens.FieldDescriptor QuicDownstreamTransport
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, downstreamTlsContext__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuicDownstreamTransport'_unknownFields
        (\ x__ y__ -> x__ {_QuicDownstreamTransport'_unknownFields = y__})
  defMessage
    = QuicDownstreamTransport'_constructor
        {_QuicDownstreamTransport'downstreamTlsContext = Prelude.Nothing,
         _QuicDownstreamTransport'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuicDownstreamTransport
          -> Data.ProtoLens.Encoding.Bytes.Parser QuicDownstreamTransport
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
                                       "downstream_tls_context"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"downstreamTlsContext") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QuicDownstreamTransport"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'downstreamTlsContext") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QuicDownstreamTransport where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuicDownstreamTransport'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QuicDownstreamTransport'downstreamTlsContext x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Quic.V3.QuicTransport_Fields.upstreamTlsContext' @:: Lens' QuicUpstreamTransport Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.UpstreamTlsContext@
         * 'Proto.Envoy.Extensions.TransportSockets.Quic.V3.QuicTransport_Fields.maybe'upstreamTlsContext' @:: Lens' QuicUpstreamTransport (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.UpstreamTlsContext)@ -}
data QuicUpstreamTransport
  = QuicUpstreamTransport'_constructor {_QuicUpstreamTransport'upstreamTlsContext :: !(Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.UpstreamTlsContext),
                                        _QuicUpstreamTransport'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuicUpstreamTransport where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuicUpstreamTransport "upstreamTlsContext" Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.UpstreamTlsContext where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicUpstreamTransport'upstreamTlsContext
           (\ x__ y__
              -> x__ {_QuicUpstreamTransport'upstreamTlsContext = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuicUpstreamTransport "maybe'upstreamTlsContext" (Prelude.Maybe Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.UpstreamTlsContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicUpstreamTransport'upstreamTlsContext
           (\ x__ y__
              -> x__ {_QuicUpstreamTransport'upstreamTlsContext = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuicUpstreamTransport where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.quic.v3.QuicUpstreamTransport"
  packedMessageDescriptor _
    = "\n\
      \\NAKQuicUpstreamTransport\DC2y\n\
      \\DC4upstream_tls_context\CAN\SOH \SOH(\v2=.envoy.extensions.transport_sockets.tls.v3.UpstreamTlsContextR\DC2upstreamTlsContextB\b\250B\ENQ\138\SOH\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        upstreamTlsContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_tls_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.TransportSockets.Tls.V3.Tls.UpstreamTlsContext)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'upstreamTlsContext")) ::
              Data.ProtoLens.FieldDescriptor QuicUpstreamTransport
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, upstreamTlsContext__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuicUpstreamTransport'_unknownFields
        (\ x__ y__ -> x__ {_QuicUpstreamTransport'_unknownFields = y__})
  defMessage
    = QuicUpstreamTransport'_constructor
        {_QuicUpstreamTransport'upstreamTlsContext = Prelude.Nothing,
         _QuicUpstreamTransport'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuicUpstreamTransport
          -> Data.ProtoLens.Encoding.Bytes.Parser QuicUpstreamTransport
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
                                       "upstream_tls_context"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamTlsContext") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QuicUpstreamTransport"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'upstreamTlsContext") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QuicUpstreamTransport where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuicUpstreamTransport'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QuicUpstreamTransport'upstreamTlsContext x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \?envoy/extensions/transport_sockets/quic/v3/quic_transport.proto\DC2*envoy.extensions.transport_sockets.quic.v3\SUB3envoy/extensions/transport_sockets/tls/v3/tls.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\154\SOH\n\
    \\ETBQuicDownstreamTransport\DC2\DEL\n\
    \\SYNdownstream_tls_context\CAN\SOH \SOH(\v2?.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContextR\DC4downstreamTlsContextB\b\250B\ENQ\138\SOH\STX\DLE\SOH\"\146\SOH\n\
    \\NAKQuicUpstreamTransport\DC2y\n\
    \\DC4upstream_tls_context\CAN\SOH \SOH(\v2=.envoy.extensions.transport_sockets.tls.v3.UpstreamTlsContextR\DC2upstreamTlsContextB\b\250B\ENQ\138\SOH\STX\DLE\SOHBX\n\
    \8io.envoyproxy.envoy.extensions.transport_sockets.quic.v3B\DC2QuicTransportProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\214\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\SUB\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL3\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL=\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULQ\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NULQ\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL3\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL3\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \\233\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL\NAK\SOH\SUB\130\SOH Configuration for Downstream QUIC transport socket. This provides Google's implementation of Google QUIC and IETF QUIC to Envoy.\n\
    \2X [#protodoc-title: quic transport]\n\
    \ [#comment:#extension: envoy.transport_sockets.quic]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\US\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\DC3\STX\DC44\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\DC3\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC3\RS4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC378\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\DC4\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX\DC4\a2\n\
    \\141\SOH\n\
    \\STX\EOT\SOH\DC2\EOT\CAN\NUL\SUB\SOH\SUB\128\SOH Configuration for Upstream QUIC transport socket. This provides Google's implementation of Google QUIC and IETF QUIC to Envoy.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\CAN\b\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\EM\STXc\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\EM\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\EM\FS0\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\EM34\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX\EM5b\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\DC1\DC2\ETX\EM6ab\ACKproto3"