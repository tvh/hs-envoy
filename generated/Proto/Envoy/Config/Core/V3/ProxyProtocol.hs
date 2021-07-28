{- This file was auto-generated from envoy/config/core/v3/proxy_protocol.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.ProxyProtocol (
        ProxyProtocolConfig(), ProxyProtocolConfig'Version(..),
        ProxyProtocolConfig'Version(),
        ProxyProtocolConfig'Version'UnrecognizedValue
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
import qualified Proto.Udpa.Annotations.Status
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.ProxyProtocol_Fields.version' @:: Lens' ProxyProtocolConfig ProxyProtocolConfig'Version@ -}
data ProxyProtocolConfig
  = ProxyProtocolConfig'_constructor {_ProxyProtocolConfig'version :: !ProxyProtocolConfig'Version,
                                      _ProxyProtocolConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProxyProtocolConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProxyProtocolConfig "version" ProxyProtocolConfig'Version where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProxyProtocolConfig'version
           (\ x__ y__ -> x__ {_ProxyProtocolConfig'version = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProxyProtocolConfig where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.ProxyProtocolConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC3ProxyProtocolConfig\DC2K\n\
      \\aversion\CAN\SOH \SOH(\SO21.envoy.config.core.v3.ProxyProtocolConfig.VersionR\aversion\"\EM\n\
      \\aVersion\DC2\ACK\n\
      \\STXV1\DLE\NUL\DC2\ACK\n\
      \\STXV2\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ProxyProtocolConfig'Version)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor ProxyProtocolConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, version__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProxyProtocolConfig'_unknownFields
        (\ x__ y__ -> x__ {_ProxyProtocolConfig'_unknownFields = y__})
  defMessage
    = ProxyProtocolConfig'_constructor
        {_ProxyProtocolConfig'version = Data.ProtoLens.fieldDefault,
         _ProxyProtocolConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProxyProtocolConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser ProxyProtocolConfig
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ProxyProtocolConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ProxyProtocolConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProxyProtocolConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ProxyProtocolConfig'version x__) ())
newtype ProxyProtocolConfig'Version'UnrecognizedValue
  = ProxyProtocolConfig'Version'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ProxyProtocolConfig'Version
  = ProxyProtocolConfig'V1 |
    ProxyProtocolConfig'V2 |
    ProxyProtocolConfig'Version'Unrecognized !ProxyProtocolConfig'Version'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ProxyProtocolConfig'Version where
  maybeToEnum 0 = Prelude.Just ProxyProtocolConfig'V1
  maybeToEnum 1 = Prelude.Just ProxyProtocolConfig'V2
  maybeToEnum k
    = Prelude.Just
        (ProxyProtocolConfig'Version'Unrecognized
           (ProxyProtocolConfig'Version'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum ProxyProtocolConfig'V1 = "V1"
  showEnum ProxyProtocolConfig'V2 = "V2"
  showEnum
    (ProxyProtocolConfig'Version'Unrecognized (ProxyProtocolConfig'Version'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "V1" = Prelude.Just ProxyProtocolConfig'V1
    | (Prelude.==) k "V2" = Prelude.Just ProxyProtocolConfig'V2
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ProxyProtocolConfig'Version where
  minBound = ProxyProtocolConfig'V1
  maxBound = ProxyProtocolConfig'V2
instance Prelude.Enum ProxyProtocolConfig'Version where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Version: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum ProxyProtocolConfig'V1 = 0
  fromEnum ProxyProtocolConfig'V2 = 1
  fromEnum
    (ProxyProtocolConfig'Version'Unrecognized (ProxyProtocolConfig'Version'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ProxyProtocolConfig'V2
    = Prelude.error
        "ProxyProtocolConfig'Version.succ: bad argument ProxyProtocolConfig'V2. This value would be out of bounds."
  succ ProxyProtocolConfig'V1 = ProxyProtocolConfig'V2
  succ (ProxyProtocolConfig'Version'Unrecognized _)
    = Prelude.error
        "ProxyProtocolConfig'Version.succ: bad argument: unrecognized value"
  pred ProxyProtocolConfig'V1
    = Prelude.error
        "ProxyProtocolConfig'Version.pred: bad argument ProxyProtocolConfig'V1. This value would be out of bounds."
  pred ProxyProtocolConfig'V2 = ProxyProtocolConfig'V1
  pred (ProxyProtocolConfig'Version'Unrecognized _)
    = Prelude.error
        "ProxyProtocolConfig'Version.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ProxyProtocolConfig'Version where
  fieldDefault = ProxyProtocolConfig'V1
instance Control.DeepSeq.NFData ProxyProtocolConfig'Version where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \)envoy/config/core/v3/proxy_protocol.proto\DC2\DC4envoy.config.core.v3\SUB\GSudpa/annotations/status.proto\"}\n\
    \\DC3ProxyProtocolConfig\DC2K\n\
    \\aversion\CAN\SOH \SOH(\SO21.envoy.config.core.v3.ProxyProtocolConfig.VersionR\aversion\"\EM\n\
    \\aVersion\DC2\ACK\n\
    \\STXV1\DLE\NUL\DC2\ACK\n\
    \\STXV2\DLE\SOHBB\n\
    \\"io.envoyproxy.envoy.config.core.v3B\DC2ProxyProtocolProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\191\EOT\n\
    \\ACK\DC2\EOT\NUL\NUL\CAN\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ACK\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL3\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\a\NUL3\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\b\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\t\NULF\n\
    \/\n\
    \\STX\EOT\NUL\DC2\EOT\r\NUL\CAN\SOH2# [#protodoc-title: Proxy Protocol]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\r\b\ESC\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\SO\STX\DC4\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\SO\a\SO\n\
    \A\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\DLE\EOT\v\SUB2 PROXY protocol version 1. Human readable format.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\DLE\EOT\ACK\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\DLE\t\n\
    \\n\
    \9\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\DC3\EOT\v\SUB* PROXY protocol version 2. Binary format.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC3\EOT\ACK\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\DC3\t\n\
    \\n\
    \}\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ETB\STX\SYN\SUBp The PROXY protocol version to use. See https://www.haproxy.org/download/2.1/doc/proxy-protocol.txt for details\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ETB\STX\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB\n\
    \\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETB\DC4\NAKb\ACKproto3"