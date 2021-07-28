{- This file was auto-generated from envoy/extensions/filters/network/thrift_proxy/v3/thrift_proxy.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.ThriftProxy (
        ProtocolType(..), ProtocolType(), ProtocolType'UnrecognizedValue,
        ThriftFilter(), ThriftFilter'ConfigType(..),
        _ThriftFilter'TypedConfig, ThriftProtocolOptions(), ThriftProxy(),
        TransportType(..), TransportType(), TransportType'UnrecognizedValue
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
import qualified Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
newtype ProtocolType'UnrecognizedValue
  = ProtocolType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ProtocolType
  = AUTO_PROTOCOL |
    BINARY |
    LAX_BINARY |
    COMPACT |
    TWITTER |
    ProtocolType'Unrecognized !ProtocolType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ProtocolType where
  maybeToEnum 0 = Prelude.Just AUTO_PROTOCOL
  maybeToEnum 1 = Prelude.Just BINARY
  maybeToEnum 2 = Prelude.Just LAX_BINARY
  maybeToEnum 3 = Prelude.Just COMPACT
  maybeToEnum 4 = Prelude.Just TWITTER
  maybeToEnum k
    = Prelude.Just
        (ProtocolType'Unrecognized
           (ProtocolType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum AUTO_PROTOCOL = "AUTO_PROTOCOL"
  showEnum BINARY = "BINARY"
  showEnum LAX_BINARY = "LAX_BINARY"
  showEnum COMPACT = "COMPACT"
  showEnum TWITTER = "TWITTER"
  showEnum
    (ProtocolType'Unrecognized (ProtocolType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "AUTO_PROTOCOL" = Prelude.Just AUTO_PROTOCOL
    | (Prelude.==) k "BINARY" = Prelude.Just BINARY
    | (Prelude.==) k "LAX_BINARY" = Prelude.Just LAX_BINARY
    | (Prelude.==) k "COMPACT" = Prelude.Just COMPACT
    | (Prelude.==) k "TWITTER" = Prelude.Just TWITTER
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ProtocolType where
  minBound = AUTO_PROTOCOL
  maxBound = TWITTER
instance Prelude.Enum ProtocolType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ProtocolType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum AUTO_PROTOCOL = 0
  fromEnum BINARY = 1
  fromEnum LAX_BINARY = 2
  fromEnum COMPACT = 3
  fromEnum TWITTER = 4
  fromEnum
    (ProtocolType'Unrecognized (ProtocolType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ TWITTER
    = Prelude.error
        "ProtocolType.succ: bad argument TWITTER. This value would be out of bounds."
  succ AUTO_PROTOCOL = BINARY
  succ BINARY = LAX_BINARY
  succ LAX_BINARY = COMPACT
  succ COMPACT = TWITTER
  succ (ProtocolType'Unrecognized _)
    = Prelude.error
        "ProtocolType.succ: bad argument: unrecognized value"
  pred AUTO_PROTOCOL
    = Prelude.error
        "ProtocolType.pred: bad argument AUTO_PROTOCOL. This value would be out of bounds."
  pred BINARY = AUTO_PROTOCOL
  pred LAX_BINARY = BINARY
  pred COMPACT = LAX_BINARY
  pred TWITTER = COMPACT
  pred (ProtocolType'Unrecognized _)
    = Prelude.error
        "ProtocolType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ProtocolType where
  fieldDefault = AUTO_PROTOCOL
instance Control.DeepSeq.NFData ProtocolType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.ThriftProxy_Fields.name' @:: Lens' ThriftFilter Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.ThriftProxy_Fields.maybe'configType' @:: Lens' ThriftFilter (Prelude.Maybe ThriftFilter'ConfigType)@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.ThriftProxy_Fields.maybe'typedConfig' @:: Lens' ThriftFilter (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.ThriftProxy_Fields.typedConfig' @:: Lens' ThriftFilter Proto.Google.Protobuf.Any.Any@ -}
data ThriftFilter
  = ThriftFilter'_constructor {_ThriftFilter'name :: !Data.Text.Text,
                               _ThriftFilter'configType :: !(Prelude.Maybe ThriftFilter'ConfigType),
                               _ThriftFilter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ThriftFilter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ThriftFilter'ConfigType
  = ThriftFilter'TypedConfig !Proto.Google.Protobuf.Any.Any
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ThriftFilter "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThriftFilter'name (\ x__ y__ -> x__ {_ThriftFilter'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThriftFilter "maybe'configType" (Prelude.Maybe ThriftFilter'ConfigType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThriftFilter'configType
           (\ x__ y__ -> x__ {_ThriftFilter'configType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThriftFilter "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThriftFilter'configType
           (\ x__ y__ -> x__ {_ThriftFilter'configType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ThriftFilter'TypedConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ThriftFilter'TypedConfig y__))
instance Data.ProtoLens.Field.HasField ThriftFilter "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThriftFilter'configType
           (\ x__ y__ -> x__ {_ThriftFilter'configType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ThriftFilter'TypedConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ThriftFilter'TypedConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ThriftFilter where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.thrift_proxy.v3.ThriftFilter"
  packedMessageDescriptor _
    = "\n\
      \\fThriftFilter\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
      \\vconfig_type:E\154\197\136\RS@\n\
      \>envoy.config.filter.network.thrift_proxy.v2alpha1.ThriftFilterJ\EOT\b\STX\DLE\ETXR\ACKconfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor ThriftFilter
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor ThriftFilter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 3, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ThriftFilter'_unknownFields
        (\ x__ y__ -> x__ {_ThriftFilter'_unknownFields = y__})
  defMessage
    = ThriftFilter'_constructor
        {_ThriftFilter'name = Data.ProtoLens.fieldDefault,
         _ThriftFilter'configType = Prelude.Nothing,
         _ThriftFilter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ThriftFilter -> Data.ProtoLens.Encoding.Bytes.Parser ThriftFilter
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "typed_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typedConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ThriftFilter"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                       (Data.ProtoLens.Field.field @"maybe'configType") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (ThriftFilter'TypedConfig v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ThriftFilter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ThriftFilter'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ThriftFilter'name x__)
                (Control.DeepSeq.deepseq (_ThriftFilter'configType x__) ()))
instance Control.DeepSeq.NFData ThriftFilter'ConfigType where
  rnf (ThriftFilter'TypedConfig x__) = Control.DeepSeq.rnf x__
_ThriftFilter'TypedConfig ::
  Data.ProtoLens.Prism.Prism' ThriftFilter'ConfigType Proto.Google.Protobuf.Any.Any
_ThriftFilter'TypedConfig
  = Data.ProtoLens.Prism.prism'
      ThriftFilter'TypedConfig
      (\ p__
         -> case p__ of {
              (ThriftFilter'TypedConfig p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.ThriftProxy_Fields.transport' @:: Lens' ThriftProtocolOptions TransportType@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.ThriftProxy_Fields.protocol' @:: Lens' ThriftProtocolOptions ProtocolType@ -}
data ThriftProtocolOptions
  = ThriftProtocolOptions'_constructor {_ThriftProtocolOptions'transport :: !TransportType,
                                        _ThriftProtocolOptions'protocol :: !ProtocolType,
                                        _ThriftProtocolOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ThriftProtocolOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ThriftProtocolOptions "transport" TransportType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThriftProtocolOptions'transport
           (\ x__ y__ -> x__ {_ThriftProtocolOptions'transport = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThriftProtocolOptions "protocol" ProtocolType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThriftProtocolOptions'protocol
           (\ x__ y__ -> x__ {_ThriftProtocolOptions'protocol = y__}))
        Prelude.id
instance Data.ProtoLens.Message ThriftProtocolOptions where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.thrift_proxy.v3.ThriftProtocolOptions"
  packedMessageDescriptor _
    = "\n\
      \\NAKThriftProtocolOptions\DC2g\n\
      \\ttransport\CAN\SOH \SOH(\SO2?.envoy.extensions.filters.network.thrift_proxy.v3.TransportTypeR\ttransportB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2d\n\
      \\bprotocol\CAN\STX \SOH(\SO2>.envoy.extensions.filters.network.thrift_proxy.v3.ProtocolTypeR\bprotocolB\b\250B\ENQ\130\SOH\STX\DLE\SOH:N\154\197\136\RSI\n\
      \Genvoy.config.filter.network.thrift_proxy.v2alpha1.ThriftProtocolOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        transport__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor TransportType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"transport")) ::
              Data.ProtoLens.FieldDescriptor ThriftProtocolOptions
        protocol__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ProtocolType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"protocol")) ::
              Data.ProtoLens.FieldDescriptor ThriftProtocolOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, transport__field_descriptor),
           (Data.ProtoLens.Tag 2, protocol__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ThriftProtocolOptions'_unknownFields
        (\ x__ y__ -> x__ {_ThriftProtocolOptions'_unknownFields = y__})
  defMessage
    = ThriftProtocolOptions'_constructor
        {_ThriftProtocolOptions'transport = Data.ProtoLens.fieldDefault,
         _ThriftProtocolOptions'protocol = Data.ProtoLens.fieldDefault,
         _ThriftProtocolOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ThriftProtocolOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser ThriftProtocolOptions
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
                                       "transport"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"transport") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "protocol"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"protocol") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ThriftProtocolOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"transport") _x
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
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"protocol") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ThriftProtocolOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ThriftProtocolOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ThriftProtocolOptions'transport x__)
                (Control.DeepSeq.deepseq (_ThriftProtocolOptions'protocol x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.ThriftProxy_Fields.transport' @:: Lens' ThriftProxy TransportType@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.ThriftProxy_Fields.protocol' @:: Lens' ThriftProxy ProtocolType@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.ThriftProxy_Fields.statPrefix' @:: Lens' ThriftProxy Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.ThriftProxy_Fields.routeConfig' @:: Lens' ThriftProxy Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route.RouteConfiguration@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.ThriftProxy_Fields.maybe'routeConfig' @:: Lens' ThriftProxy (Prelude.Maybe Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route.RouteConfiguration)@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.ThriftProxy_Fields.thriftFilters' @:: Lens' ThriftProxy [ThriftFilter]@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.ThriftProxy_Fields.vec'thriftFilters' @:: Lens' ThriftProxy (Data.Vector.Vector ThriftFilter)@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.ThriftProxy_Fields.payloadPassthrough' @:: Lens' ThriftProxy Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.ThriftProxy_Fields.maxRequestsPerConnection' @:: Lens' ThriftProxy Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.ThriftProxy_Fields.maybe'maxRequestsPerConnection' @:: Lens' ThriftProxy (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data ThriftProxy
  = ThriftProxy'_constructor {_ThriftProxy'transport :: !TransportType,
                              _ThriftProxy'protocol :: !ProtocolType,
                              _ThriftProxy'statPrefix :: !Data.Text.Text,
                              _ThriftProxy'routeConfig :: !(Prelude.Maybe Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route.RouteConfiguration),
                              _ThriftProxy'thriftFilters :: !(Data.Vector.Vector ThriftFilter),
                              _ThriftProxy'payloadPassthrough :: !Prelude.Bool,
                              _ThriftProxy'maxRequestsPerConnection :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                              _ThriftProxy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ThriftProxy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ThriftProxy "transport" TransportType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThriftProxy'transport
           (\ x__ y__ -> x__ {_ThriftProxy'transport = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThriftProxy "protocol" ProtocolType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThriftProxy'protocol
           (\ x__ y__ -> x__ {_ThriftProxy'protocol = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThriftProxy "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThriftProxy'statPrefix
           (\ x__ y__ -> x__ {_ThriftProxy'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThriftProxy "routeConfig" Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route.RouteConfiguration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThriftProxy'routeConfig
           (\ x__ y__ -> x__ {_ThriftProxy'routeConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ThriftProxy "maybe'routeConfig" (Prelude.Maybe Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route.RouteConfiguration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThriftProxy'routeConfig
           (\ x__ y__ -> x__ {_ThriftProxy'routeConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThriftProxy "thriftFilters" [ThriftFilter] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThriftProxy'thriftFilters
           (\ x__ y__ -> x__ {_ThriftProxy'thriftFilters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ThriftProxy "vec'thriftFilters" (Data.Vector.Vector ThriftFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThriftProxy'thriftFilters
           (\ x__ y__ -> x__ {_ThriftProxy'thriftFilters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThriftProxy "payloadPassthrough" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThriftProxy'payloadPassthrough
           (\ x__ y__ -> x__ {_ThriftProxy'payloadPassthrough = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThriftProxy "maxRequestsPerConnection" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThriftProxy'maxRequestsPerConnection
           (\ x__ y__ -> x__ {_ThriftProxy'maxRequestsPerConnection = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ThriftProxy "maybe'maxRequestsPerConnection" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThriftProxy'maxRequestsPerConnection
           (\ x__ y__ -> x__ {_ThriftProxy'maxRequestsPerConnection = y__}))
        Prelude.id
instance Data.ProtoLens.Message ThriftProxy where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.thrift_proxy.v3.ThriftProxy"
  packedMessageDescriptor _
    = "\n\
      \\vThriftProxy\DC2g\n\
      \\ttransport\CAN\STX \SOH(\SO2?.envoy.extensions.filters.network.thrift_proxy.v3.TransportTypeR\ttransportB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2d\n\
      \\bprotocol\CAN\ETX \SOH(\SO2>.envoy.extensions.filters.network.thrift_proxy.v3.ProtocolTypeR\bprotocolB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2(\n\
      \\vstat_prefix\CAN\SOH \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2g\n\
      \\froute_config\CAN\EOT \SOH(\v2D.envoy.extensions.filters.network.thrift_proxy.v3.RouteConfigurationR\vrouteConfig\DC2e\n\
      \\SOthrift_filters\CAN\ENQ \ETX(\v2>.envoy.extensions.filters.network.thrift_proxy.v3.ThriftFilterR\rthriftFilters\DC2/\n\
      \\DC3payload_passthrough\CAN\ACK \SOH(\bR\DC2payloadPassthrough\DC2[\n\
      \\ESCmax_requests_per_connection\CAN\a \SOH(\v2\FS.google.protobuf.UInt32ValueR\CANmaxRequestsPerConnection:D\154\197\136\RS?\n\
      \=envoy.config.filter.network.thrift_proxy.v2alpha1.ThriftProxy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        transport__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor TransportType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"transport")) ::
              Data.ProtoLens.FieldDescriptor ThriftProxy
        protocol__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ProtocolType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"protocol")) ::
              Data.ProtoLens.FieldDescriptor ThriftProxy
        statPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"statPrefix")) ::
              Data.ProtoLens.FieldDescriptor ThriftProxy
        routeConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "route_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.Filters.Network.ThriftProxy.V3.Route.RouteConfiguration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'routeConfig")) ::
              Data.ProtoLens.FieldDescriptor ThriftProxy
        thriftFilters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "thrift_filters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ThriftFilter)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"thriftFilters")) ::
              Data.ProtoLens.FieldDescriptor ThriftProxy
        payloadPassthrough__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payload_passthrough"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"payloadPassthrough")) ::
              Data.ProtoLens.FieldDescriptor ThriftProxy
        maxRequestsPerConnection__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_requests_per_connection"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxRequestsPerConnection")) ::
              Data.ProtoLens.FieldDescriptor ThriftProxy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, transport__field_descriptor),
           (Data.ProtoLens.Tag 3, protocol__field_descriptor),
           (Data.ProtoLens.Tag 1, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 4, routeConfig__field_descriptor),
           (Data.ProtoLens.Tag 5, thriftFilters__field_descriptor),
           (Data.ProtoLens.Tag 6, payloadPassthrough__field_descriptor),
           (Data.ProtoLens.Tag 7, maxRequestsPerConnection__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ThriftProxy'_unknownFields
        (\ x__ y__ -> x__ {_ThriftProxy'_unknownFields = y__})
  defMessage
    = ThriftProxy'_constructor
        {_ThriftProxy'transport = Data.ProtoLens.fieldDefault,
         _ThriftProxy'protocol = Data.ProtoLens.fieldDefault,
         _ThriftProxy'statPrefix = Data.ProtoLens.fieldDefault,
         _ThriftProxy'routeConfig = Prelude.Nothing,
         _ThriftProxy'thriftFilters = Data.Vector.Generic.empty,
         _ThriftProxy'payloadPassthrough = Data.ProtoLens.fieldDefault,
         _ThriftProxy'maxRequestsPerConnection = Prelude.Nothing,
         _ThriftProxy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ThriftProxy
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ThriftFilter
             -> Data.ProtoLens.Encoding.Bytes.Parser ThriftProxy
        loop x mutable'thriftFilters
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'thriftFilters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'thriftFilters)
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
                              (Data.ProtoLens.Field.field @"vec'thriftFilters")
                              frozen'thriftFilters
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "transport"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"transport") y x)
                                  mutable'thriftFilters
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "protocol"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"protocol") y x)
                                  mutable'thriftFilters
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
                                  mutable'thriftFilters
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "route_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"routeConfig") y x)
                                  mutable'thriftFilters
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "thrift_filters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'thriftFilters y)
                                loop x v
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "payload_passthrough"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"payloadPassthrough") y x)
                                  mutable'thriftFilters
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_requests_per_connection"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxRequestsPerConnection") y x)
                                  mutable'thriftFilters
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'thriftFilters
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'thriftFilters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'thriftFilters)
          "ThriftProxy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"transport") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"protocol") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum
                            _v))
                ((Data.Monoid.<>)
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
                               (Data.ProtoLens.Field.field @"vec'thriftFilters") _x))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"payloadPassthrough") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (\ b -> if b then 1 else 0)
                                        _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'maxRequestsPerConnection")
                                      _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
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
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData ThriftProxy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ThriftProxy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ThriftProxy'transport x__)
                (Control.DeepSeq.deepseq
                   (_ThriftProxy'protocol x__)
                   (Control.DeepSeq.deepseq
                      (_ThriftProxy'statPrefix x__)
                      (Control.DeepSeq.deepseq
                         (_ThriftProxy'routeConfig x__)
                         (Control.DeepSeq.deepseq
                            (_ThriftProxy'thriftFilters x__)
                            (Control.DeepSeq.deepseq
                               (_ThriftProxy'payloadPassthrough x__)
                               (Control.DeepSeq.deepseq
                                  (_ThriftProxy'maxRequestsPerConnection x__) ())))))))
newtype TransportType'UnrecognizedValue
  = TransportType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data TransportType
  = AUTO_TRANSPORT |
    FRAMED |
    UNFRAMED |
    HEADER |
    TransportType'Unrecognized !TransportType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum TransportType where
  maybeToEnum 0 = Prelude.Just AUTO_TRANSPORT
  maybeToEnum 1 = Prelude.Just FRAMED
  maybeToEnum 2 = Prelude.Just UNFRAMED
  maybeToEnum 3 = Prelude.Just HEADER
  maybeToEnum k
    = Prelude.Just
        (TransportType'Unrecognized
           (TransportType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum AUTO_TRANSPORT = "AUTO_TRANSPORT"
  showEnum FRAMED = "FRAMED"
  showEnum UNFRAMED = "UNFRAMED"
  showEnum HEADER = "HEADER"
  showEnum
    (TransportType'Unrecognized (TransportType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "AUTO_TRANSPORT" = Prelude.Just AUTO_TRANSPORT
    | (Prelude.==) k "FRAMED" = Prelude.Just FRAMED
    | (Prelude.==) k "UNFRAMED" = Prelude.Just UNFRAMED
    | (Prelude.==) k "HEADER" = Prelude.Just HEADER
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded TransportType where
  minBound = AUTO_TRANSPORT
  maxBound = HEADER
instance Prelude.Enum TransportType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum TransportType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum AUTO_TRANSPORT = 0
  fromEnum FRAMED = 1
  fromEnum UNFRAMED = 2
  fromEnum HEADER = 3
  fromEnum
    (TransportType'Unrecognized (TransportType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ HEADER
    = Prelude.error
        "TransportType.succ: bad argument HEADER. This value would be out of bounds."
  succ AUTO_TRANSPORT = FRAMED
  succ FRAMED = UNFRAMED
  succ UNFRAMED = HEADER
  succ (TransportType'Unrecognized _)
    = Prelude.error
        "TransportType.succ: bad argument: unrecognized value"
  pred AUTO_TRANSPORT
    = Prelude.error
        "TransportType.pred: bad argument AUTO_TRANSPORT. This value would be out of bounds."
  pred FRAMED = AUTO_TRANSPORT
  pred UNFRAMED = FRAMED
  pred HEADER = UNFRAMED
  pred (TransportType'Unrecognized _)
    = Prelude.error
        "TransportType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault TransportType where
  fieldDefault = AUTO_TRANSPORT
instance Control.DeepSeq.NFData TransportType where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Cenvoy/extensions/filters/network/thrift_proxy/v3/thrift_proxy.proto\DC20envoy.extensions.filters.network.thrift_proxy.v3\SUB<envoy/extensions/filters/network/thrift_proxy/v3/route.proto\SUB\EMgoogle/protobuf/any.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\170\ENQ\n\
    \\vThriftProxy\DC2g\n\
    \\ttransport\CAN\STX \SOH(\SO2?.envoy.extensions.filters.network.thrift_proxy.v3.TransportTypeR\ttransportB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2d\n\
    \\bprotocol\CAN\ETX \SOH(\SO2>.envoy.extensions.filters.network.thrift_proxy.v3.ProtocolTypeR\bprotocolB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2(\n\
    \\vstat_prefix\CAN\SOH \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2g\n\
    \\froute_config\CAN\EOT \SOH(\v2D.envoy.extensions.filters.network.thrift_proxy.v3.RouteConfigurationR\vrouteConfig\DC2e\n\
    \\SOthrift_filters\CAN\ENQ \ETX(\v2>.envoy.extensions.filters.network.thrift_proxy.v3.ThriftFilterR\rthriftFilters\DC2/\n\
    \\DC3payload_passthrough\CAN\ACK \SOH(\bR\DC2payloadPassthrough\DC2[\n\
    \\ESCmax_requests_per_connection\CAN\a \SOH(\v2\FS.google.protobuf.UInt32ValueR\CANmaxRequestsPerConnection:D\154\197\136\RS?\n\
    \=envoy.config.filter.network.thrift_proxy.v2alpha1.ThriftProxy\"\202\SOH\n\
    \\fThriftFilter\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC29\n\
    \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
    \\vconfig_type:E\154\197\136\RS@\n\
    \>envoy.config.filter.network.thrift_proxy.v2alpha1.ThriftFilterJ\EOT\b\STX\DLE\ETXR\ACKconfig\"\182\STX\n\
    \\NAKThriftProtocolOptions\DC2g\n\
    \\ttransport\CAN\SOH \SOH(\SO2?.envoy.extensions.filters.network.thrift_proxy.v3.TransportTypeR\ttransportB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2d\n\
    \\bprotocol\CAN\STX \SOH(\SO2>.envoy.extensions.filters.network.thrift_proxy.v3.ProtocolTypeR\bprotocolB\b\250B\ENQ\130\SOH\STX\DLE\SOH:N\154\197\136\RSI\n\
    \Genvoy.config.filter.network.thrift_proxy.v2alpha1.ThriftProtocolOptions*I\n\
    \\rTransportType\DC2\DC2\n\
    \\SOAUTO_TRANSPORT\DLE\NUL\DC2\n\
    \\n\
    \\ACKFRAMED\DLE\SOH\DC2\f\n\
    \\bUNFRAMED\DLE\STX\DC2\n\
    \\n\
    \\ACKHEADER\DLE\ETX*W\n\
    \\fProtocolType\DC2\DC1\n\
    \\rAUTO_PROTOCOL\DLE\NUL\DC2\n\
    \\n\
    \\ACKBINARY\DLE\SOH\DC2\SO\n\
    \\n\
    \LAX_BINARY\DLE\STX\DC2\v\n\
    \\aCOMPACT\DLE\ETX\DC2\v\n\
    \\aTWITTER\DLE\EOTB\\\n\
    \>io.envoyproxy.envoy.extensions.filters.network.thrift_proxy.v3B\DLEThriftProxyProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\202,\n\
    \\a\DC2\ENQ\NUL\NUL\139\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL9\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NULF\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL+\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULW\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NULW\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL1\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SO\NUL1\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SI\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\225\SOH\n\
    \\STX\ENQ\NUL\DC2\EOT\ETB\NUL%\SOH\SUB, Thrift transport types supported by Envoy.\n\
    \2\166\SOH [#protodoc-title: Thrift Proxy]\n\
    \ Thrift Proxy :ref:`configuration overview <config_network_filters_thrift_proxy>`.\n\
    \ [#extension: envoy.filters.network.thrift_proxy]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\ETB\ENQ\DC2\n\
    \\209\SOH\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\ESC\STX\NAK\SUB\195\SOH For downstream connections, the Thrift proxy will attempt to determine which transport to use.\n\
    \ For upstream connections, the Thrift proxy will use same transport as the downstream\n\
    \ connection.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\ESC\STX\DLE\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\ESC\DC3\DC4\n\
    \E\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\RS\STX\r\SUB8 The Thrift proxy will use the Thrift framed transport.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\RS\STX\b\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\RS\v\f\n\
    \G\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX!\STX\SI\SUB: The Thrift proxy will use the Thrift unframed transport.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX!\r\SO\n\
    \\\\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX$\STX\r\SUBO The Thrift proxy will assume the client is using the Thrift header transport.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX$\v\f\n\
    \7\n\
    \\STX\ENQ\SOH\DC2\EOT(\NUL:\SOH\SUB+ Thrift Protocol types supported by Envoy.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\SOH\SOH\DC2\ETX(\ENQ\DC1\n\
    \\190\STX\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\ETX-\STX\DC4\SUB\176\STX For downstream connections, the Thrift proxy will attempt to determine which protocol to use.\n\
    \ Note that the older, non-strict (or lax) binary protocol is not included in automatic protocol\n\
    \ detection. For upstream connections, the Thrift proxy will use the same protocol as the\n\
    \ downstream connection.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\ETX-\STX\SI\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\ETX-\DC2\DC3\n\
    \D\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\ETX0\STX\r\SUB7 The Thrift proxy will use the Thrift binary protocol.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\ETX0\STX\b\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\ETX0\v\f\n\
    \K\n\
    \\EOT\ENQ\SOH\STX\STX\DC2\ETX3\STX\DC1\SUB> The Thrift proxy will use Thrift non-strict binary protocol.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\SOH\DC2\ETX3\STX\f\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\STX\DC2\ETX3\SI\DLE\n\
    \E\n\
    \\EOT\ENQ\SOH\STX\ETX\DC2\ETX6\STX\SO\SUB8 The Thrift proxy will use the Thrift compact protocol.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ETX\SOH\DC2\ETX6\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ETX\STX\DC2\ETX6\f\r\n\
    \j\n\
    \\EOT\ENQ\SOH\STX\EOT\DC2\ETX9\STX\SO\SUB] The Thrift proxy will use the Thrift \"Twitter\" protocol implemented by the finagle library.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\EOT\SOH\DC2\ETX9\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\EOT\STX\DC2\ETX9\f\r\n\
    \#\n\
    \\STX\EOT\NUL\DC2\EOT=\NUL^\SOH\SUB\ETB [#next-free-field: 8]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX=\b\DC3\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT>\STX?F\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT>\STX?F\n\
    \\213\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXC\STXM\SUB\199\SOH Supplies the type of transport that the Thrift proxy should use. Defaults to\n\
    \ :ref:`AUTO_TRANSPORT<envoy_v3_api_enum_value_extensions.filters.network.thrift_proxy.v3.TransportType.AUTO_TRANSPORT>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXC\STX\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXC\DLE\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXC\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETXC\RSL\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DLE\DC2\ETXC\USK\n\
    \\209\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXG\STXK\SUB\195\SOH Supplies the type of protocol that the Thrift proxy should use. Defaults to\n\
    \ :ref:`AUTO_PROTOCOL<envoy_v3_api_enum_value_extensions.filters.network.thrift_proxy.v3.ProtocolType.AUTO_PROTOCOL>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXG\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXG\SI\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXG\SUB\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETXG\FSJ\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DLE\DC2\ETXG\GSI\n\
    \I\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXJ\STXB\SUB< The human readable prefix to use when emitting statistics.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETXJ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXJ\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXJ\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETXJ\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\SO\DC2\ETXJ\SUB@\n\
    \f\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXM\STX&\SUBY The route table for the connection manager is static and is specified in this property.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETXM\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXM\NAK!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXM$%\n\
    \\240\STX\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXT\STX+\SUB\226\STX A list of individual Thrift filters that make up the filter chain for requests made to the\n\
    \ Thrift proxy. Order matters as the filters are processed sequentially. For backwards\n\
    \ compatibility, if no thrift_filters are specified, a default Thrift router filter\n\
    \ (`envoy.filters.thrift.router`) is used.\n\
    \ [#extension-category: envoy.thrift_proxy.filters]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETXT\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXT\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXT\CAN&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXT)*\n\
    \\201\STX\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXZ\STX\US\SUB\187\STX If set to true, Envoy will try to skip decode data after metadata in the Thrift message.\n\
    \ This mode will only work if the upstream and downstream protocols are the same and the transport\n\
    \ is the same, the transport type is framed and the protocol is not Twitter. Otherwise Envoy will\n\
    \ fallback to decode the data.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETXZ\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXZ\a\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXZ\GS\RS\n\
    \q\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX]\STX>\SUBd Optional maximum requests for a single downstream connection. If not specified, there is no limit.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX]\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX]\RS9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX]<=\n\
    \6\n\
    \\STX\EOT\SOH\DC2\EOTa\NULv\SOH\SUB* ThriftFilter configures a Thrift filter.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXa\b\DC4\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOTb\STXcG\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOTb\STXcG\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\t\DC2\ETXe\STX\r\n\
    \\v\n\
    \\EOT\EOT\SOH\t\NUL\DC2\ETXe\v\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\NUL\SOH\DC2\ETXe\v\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\NUL\STX\DC2\ETXe\v\f\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\n\
    \\DC2\ETXg\STX\DC4\n\
    \\v\n\
    \\EOT\EOT\SOH\n\
    \\NUL\DC2\ETXg\v\DC3\n\
    \\201\STX\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXo\STX;\SUB\187\STX The name of the filter to instantiate. The name must match a supported\n\
    \ filter. The built-in filters are:\n\
    \\n\
    \ [#comment:TODO(zuercher): Auto generate the following list]\n\
    \ * :ref:`envoy.filters.thrift.router <config_thrift_filters_router>`\n\
    \ * :ref:`envoy.filters.thrift.rate_limit <config_thrift_filters_rate_limit>`\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETXo\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXo\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXo\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETXo\DC2:\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\SO\DC2\ETXo\DC39\n\
    \\148\SOH\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOTs\STXu\ETX\SUB\133\SOH Filter specific configuration which depends on the filter being instantiated. See the supported\n\
    \ filters for further documentation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETXs\b\DC3\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXt\EOT)\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXt\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXt\CAN$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXt'(\n\
    \\158\STX\n\
    \\STX\EOT\STX\DC2\ENQ|\NUL\139\SOH\SOH\SUB\144\STX ThriftProtocolOptions specifies Thrift upstream protocol options. This object is used in\n\
    \ in\n\
    \ :ref:`typed_extension_protocol_options<envoy_v3_api_field_config.cluster.v3.Cluster.typed_extension_protocol_options>`,\n\
    \ keyed by the name `envoy.filters.network.thrift_proxy`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX|\b\GS\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOT}\STX~P\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOT}\STX~P\n\
    \\206\STX\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\132\SOH\STXM\SUB\191\STX Supplies the type of transport that the Thrift proxy should use for upstream connections.\n\
    \ Selecting\n\
    \ :ref:`AUTO_TRANSPORT<envoy_v3_api_enum_value_extensions.filters.network.thrift_proxy.v3.TransportType.AUTO_TRANSPORT>`,\n\
    \ which is the default, causes the proxy to use the same transport as the downstream connection.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\EOT\132\SOH\STX\SI\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\132\SOH\DLE\EM\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\132\SOH\FS\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\EOT\132\SOH\RSL\n\
    \\DLE\n\
    \\b\EOT\STX\STX\NUL\b\175\b\DLE\DC2\EOT\132\SOH\USK\n\
    \\201\STX\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\138\SOH\STXK\SUB\186\STX Supplies the type of protocol that the Thrift proxy should use for upstream connections.\n\
    \ Selecting\n\
    \ :ref:`AUTO_PROTOCOL<envoy_v3_api_enum_value_extensions.filters.network.thrift_proxy.v3.ProtocolType.AUTO_PROTOCOL>`,\n\
    \ which is the default, causes the proxy to use the same protocol as the downstream connection.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\EOT\138\SOH\STX\SO\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\138\SOH\SI\ETB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\138\SOH\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\EOT\138\SOH\FSJ\n\
    \\DLE\n\
    \\b\EOT\STX\STX\SOH\b\175\b\DLE\DC2\EOT\138\SOH\GSIb\ACKproto3"