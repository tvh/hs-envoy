{- This file was auto-generated from envoy/extensions/transport_sockets/proxy_protocol/v3/upstream_proxy_protocol.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.TransportSockets.ProxyProtocol.V3.UpstreamProxyProtocol (
        ProxyProtocolUpstreamTransport()
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
import qualified Proto.Envoy.Config.Core.V3.ProxyProtocol
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.ProxyProtocol.V3.UpstreamProxyProtocol_Fields.config' @:: Lens' ProxyProtocolUpstreamTransport Proto.Envoy.Config.Core.V3.ProxyProtocol.ProxyProtocolConfig@
         * 'Proto.Envoy.Extensions.TransportSockets.ProxyProtocol.V3.UpstreamProxyProtocol_Fields.maybe'config' @:: Lens' ProxyProtocolUpstreamTransport (Prelude.Maybe Proto.Envoy.Config.Core.V3.ProxyProtocol.ProxyProtocolConfig)@
         * 'Proto.Envoy.Extensions.TransportSockets.ProxyProtocol.V3.UpstreamProxyProtocol_Fields.transportSocket' @:: Lens' ProxyProtocolUpstreamTransport Proto.Envoy.Config.Core.V3.Base.TransportSocket@
         * 'Proto.Envoy.Extensions.TransportSockets.ProxyProtocol.V3.UpstreamProxyProtocol_Fields.maybe'transportSocket' @:: Lens' ProxyProtocolUpstreamTransport (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.TransportSocket)@ -}
data ProxyProtocolUpstreamTransport
  = ProxyProtocolUpstreamTransport'_constructor {_ProxyProtocolUpstreamTransport'config :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.ProxyProtocol.ProxyProtocolConfig),
                                                 _ProxyProtocolUpstreamTransport'transportSocket :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.TransportSocket),
                                                 _ProxyProtocolUpstreamTransport'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProxyProtocolUpstreamTransport where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProxyProtocolUpstreamTransport "config" Proto.Envoy.Config.Core.V3.ProxyProtocol.ProxyProtocolConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProxyProtocolUpstreamTransport'config
           (\ x__ y__ -> x__ {_ProxyProtocolUpstreamTransport'config = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ProxyProtocolUpstreamTransport "maybe'config" (Prelude.Maybe Proto.Envoy.Config.Core.V3.ProxyProtocol.ProxyProtocolConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProxyProtocolUpstreamTransport'config
           (\ x__ y__ -> x__ {_ProxyProtocolUpstreamTransport'config = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProxyProtocolUpstreamTransport "transportSocket" Proto.Envoy.Config.Core.V3.Base.TransportSocket where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProxyProtocolUpstreamTransport'transportSocket
           (\ x__ y__
              -> x__ {_ProxyProtocolUpstreamTransport'transportSocket = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ProxyProtocolUpstreamTransport "maybe'transportSocket" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.TransportSocket) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProxyProtocolUpstreamTransport'transportSocket
           (\ x__ y__
              -> x__ {_ProxyProtocolUpstreamTransport'transportSocket = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProxyProtocolUpstreamTransport where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.proxy_protocol.v3.ProxyProtocolUpstreamTransport"
  packedMessageDescriptor _
    = "\n\
      \\RSProxyProtocolUpstreamTransport\DC2A\n\
      \\ACKconfig\CAN\SOH \SOH(\v2).envoy.config.core.v3.ProxyProtocolConfigR\ACKconfig\DC2Z\n\
      \\DLEtransport_socket\CAN\STX \SOH(\v2%.envoy.config.core.v3.TransportSocketR\SItransportSocketB\b\250B\ENQ\138\SOH\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        config__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ProxyProtocol.ProxyProtocolConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'config")) ::
              Data.ProtoLens.FieldDescriptor ProxyProtocolUpstreamTransport
        transportSocket__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport_socket"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.TransportSocket)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'transportSocket")) ::
              Data.ProtoLens.FieldDescriptor ProxyProtocolUpstreamTransport
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, config__field_descriptor),
           (Data.ProtoLens.Tag 2, transportSocket__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProxyProtocolUpstreamTransport'_unknownFields
        (\ x__ y__
           -> x__ {_ProxyProtocolUpstreamTransport'_unknownFields = y__})
  defMessage
    = ProxyProtocolUpstreamTransport'_constructor
        {_ProxyProtocolUpstreamTransport'config = Prelude.Nothing,
         _ProxyProtocolUpstreamTransport'transportSocket = Prelude.Nothing,
         _ProxyProtocolUpstreamTransport'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProxyProtocolUpstreamTransport
          -> Data.ProtoLens.Encoding.Bytes.Parser ProxyProtocolUpstreamTransport
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
                                       "config"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"config") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "transport_socket"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"transportSocket") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "ProxyProtocolUpstreamTransport"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'config") _x
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
                       (Data.ProtoLens.Field.field @"maybe'transportSocket") _x
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
instance Control.DeepSeq.NFData ProxyProtocolUpstreamTransport where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProxyProtocolUpstreamTransport'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProxyProtocolUpstreamTransport'config x__)
                (Control.DeepSeq.deepseq
                   (_ProxyProtocolUpstreamTransport'transportSocket x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Renvoy/extensions/transport_sockets/proxy_protocol/v3/upstream_proxy_protocol.proto\DC24envoy.extensions.transport_sockets.proxy_protocol.v3\SUB\USenvoy/config/core/v3/base.proto\SUB)envoy/config/core/v3/proxy_protocol.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\191\SOH\n\
    \\RSProxyProtocolUpstreamTransport\DC2A\n\
    \\ACKconfig\CAN\SOH \SOH(\v2).envoy.config.core.v3.ProxyProtocolConfigR\ACKconfig\DC2Z\n\
    \\DLEtransport_socket\CAN\STX \SOH(\v2%.envoy.config.core.v3.TransportSocketR\SItransportSocketB\b\250B\ENQ\138\SOH\STX\DLE\SOHBj\n\
    \Bio.envoyproxy.envoy.extensions.transport_sockets.proxy_protocol.v3B\SUBUpstreamProxyProtocolProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\175\EOT\n\
    \\ACK\DC2\EOT\NUL\NUL\EM\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL=\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL3\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL[\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NUL[\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL;\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\162\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL\EM\SOH\SUB) Configuration for PROXY protocol socket\n\
    \2k [#protodoc-title: Upstream Proxy Protocol]\n\
    \ [#extension: envoy.transport_sockets.upstream_proxy_protocol]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b&\n\
    \*\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\NAK\STX0\SUB\GS The PROXY protocol settings\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\NAK\STX$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\NAK%+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\NAK./\n\
    \=\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\CAN\STXd\SUB0 The underlying transport socket being wrapped.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\CAN\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\CAN!1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\CAN45\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\CAN6c\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DC1\DC2\ETX\CAN7bb\ACKproto3"