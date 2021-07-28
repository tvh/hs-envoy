{- This file was auto-generated from envoy/extensions/transport_sockets/tap/v3/tap.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.TransportSockets.Tap.V3.Tap (
        Tap()
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
import qualified Proto.Envoy.Extensions.Common.Tap.V3.Common
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Tap.V3.Tap_Fields.commonConfig' @:: Lens' Tap Proto.Envoy.Extensions.Common.Tap.V3.Common.CommonExtensionConfig@
         * 'Proto.Envoy.Extensions.TransportSockets.Tap.V3.Tap_Fields.maybe'commonConfig' @:: Lens' Tap (Prelude.Maybe Proto.Envoy.Extensions.Common.Tap.V3.Common.CommonExtensionConfig)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tap.V3.Tap_Fields.transportSocket' @:: Lens' Tap Proto.Envoy.Config.Core.V3.Base.TransportSocket@
         * 'Proto.Envoy.Extensions.TransportSockets.Tap.V3.Tap_Fields.maybe'transportSocket' @:: Lens' Tap (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.TransportSocket)@ -}
data Tap
  = Tap'_constructor {_Tap'commonConfig :: !(Prelude.Maybe Proto.Envoy.Extensions.Common.Tap.V3.Common.CommonExtensionConfig),
                      _Tap'transportSocket :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.TransportSocket),
                      _Tap'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Tap where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Tap "commonConfig" Proto.Envoy.Extensions.Common.Tap.V3.Common.CommonExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tap'commonConfig (\ x__ y__ -> x__ {_Tap'commonConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Tap "maybe'commonConfig" (Prelude.Maybe Proto.Envoy.Extensions.Common.Tap.V3.Common.CommonExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tap'commonConfig (\ x__ y__ -> x__ {_Tap'commonConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Tap "transportSocket" Proto.Envoy.Config.Core.V3.Base.TransportSocket where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tap'transportSocket
           (\ x__ y__ -> x__ {_Tap'transportSocket = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Tap "maybe'transportSocket" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.TransportSocket) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tap'transportSocket
           (\ x__ y__ -> x__ {_Tap'transportSocket = y__}))
        Prelude.id
instance Data.ProtoLens.Message Tap where
  messageName _
    = Data.Text.pack "envoy.extensions.transport_sockets.tap.v3.Tap"
  packedMessageDescriptor _
    = "\n\
      \\ETXTap\DC2d\n\
      \\rcommon_config\CAN\SOH \SOH(\v25.envoy.extensions.common.tap.v3.CommonExtensionConfigR\fcommonConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2Z\n\
      \\DLEtransport_socket\CAN\STX \SOH(\v2%.envoy.config.core.v3.TransportSocketR\SItransportSocketB\b\250B\ENQ\138\SOH\STX\DLE\SOH:4\154\197\136\RS/\n\
      \-envoy.config.transport_socket.tap.v2alpha.Tap"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commonConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.Common.Tap.V3.Common.CommonExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commonConfig")) ::
              Data.ProtoLens.FieldDescriptor Tap
        transportSocket__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport_socket"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.TransportSocket)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'transportSocket")) ::
              Data.ProtoLens.FieldDescriptor Tap
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commonConfig__field_descriptor),
           (Data.ProtoLens.Tag 2, transportSocket__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Tap'_unknownFields (\ x__ y__ -> x__ {_Tap'_unknownFields = y__})
  defMessage
    = Tap'_constructor
        {_Tap'commonConfig = Prelude.Nothing,
         _Tap'transportSocket = Prelude.Nothing, _Tap'_unknownFields = []}
  parseMessage
    = let
        loop :: Tap -> Data.ProtoLens.Encoding.Bytes.Parser Tap
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
                                       "common_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commonConfig") y x)
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
          (do loop Data.ProtoLens.defMessage) "Tap"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'commonConfig") _x
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
instance Control.DeepSeq.NFData Tap where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Tap'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Tap'commonConfig x__)
                (Control.DeepSeq.deepseq (_Tap'transportSocket x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \3envoy/extensions/transport_sockets/tap/v3/tap.proto\DC2)envoy.extensions.transport_sockets.tap.v3\SUB\USenvoy/config/core/v3/base.proto\SUB+envoy/extensions/common/tap/v3/common.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\253\SOH\n\
    \\ETXTap\DC2d\n\
    \\rcommon_config\CAN\SOH \SOH(\v25.envoy.extensions.common.tap.v3.CommonExtensionConfigR\fcommonConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2Z\n\
    \\DLEtransport_socket\CAN\STX \SOH(\v2%.envoy.config.core.v3.TransportSocketR\SItransportSocketB\b\250B\ENQ\138\SOH\STX\DLE\SOH:4\154\197\136\RS/\n\
    \-envoy.config.transport_socket.tap.v2alpha.TapBM\n\
    \7io.envoyproxy.envoy.extensions.transport_sockets.tap.v3B\bTapProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\242\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\US\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL2\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL5\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULP\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NULP\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL)\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\132\STX\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL\US\SOH\SUB\178\SOH Configuration for tap transport socket. This wraps another transport socket, providing the\n\
    \ ability to interpose and record in plain text any traffic that is surfaced to Envoy.\n\
    \2C [#protodoc-title: Tap]\n\
    \ [#extension: envoy.transport_sockets.tap]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\v\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\SYN\STX\ETB6\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\SYN\STX\ETB6\n\
    \B\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\SUB\STX\ESC4\SUB4 Common configuration for the tap transport socket.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\SUB\STX%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB&3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB67\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\ESC\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX\ESC\a2\n\
    \=\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\RS\STXd\SUB0 The underlying transport socket being wrapped.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\RS\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\RS!1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\RS45\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\RS6c\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DC1\DC2\ETX\RS7bb\ACKproto3"