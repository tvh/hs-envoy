{- This file was auto-generated from envoy/config/core/v3/address.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.Address (
        Address(), Address'Address(..), _Address'SocketAddress,
        _Address'Pipe, _Address'EnvoyInternalAddress, BindConfig(),
        CidrRange(), EnvoyInternalAddress(),
        EnvoyInternalAddress'AddressNameSpecifier(..),
        _EnvoyInternalAddress'ServerListenerName, Pipe(), SocketAddress(),
        SocketAddress'PortSpecifier(..), _SocketAddress'PortValue,
        _SocketAddress'NamedPort, SocketAddress'Protocol(..),
        SocketAddress'Protocol(), SocketAddress'Protocol'UnrecognizedValue,
        TcpKeepalive()
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
import qualified Proto.Envoy.Config.Core.V3.SocketOption
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.maybe'address' @:: Lens' Address (Prelude.Maybe Address'Address)@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.maybe'socketAddress' @:: Lens' Address (Prelude.Maybe SocketAddress)@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.socketAddress' @:: Lens' Address SocketAddress@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.maybe'pipe' @:: Lens' Address (Prelude.Maybe Pipe)@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.pipe' @:: Lens' Address Pipe@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.maybe'envoyInternalAddress' @:: Lens' Address (Prelude.Maybe EnvoyInternalAddress)@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.envoyInternalAddress' @:: Lens' Address EnvoyInternalAddress@ -}
data Address
  = Address'_constructor {_Address'address :: !(Prelude.Maybe Address'Address),
                          _Address'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Address where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Address'Address
  = Address'SocketAddress !SocketAddress |
    Address'Pipe !Pipe |
    Address'EnvoyInternalAddress !EnvoyInternalAddress
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Address "maybe'address" (Prelude.Maybe Address'Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Address'address (\ x__ y__ -> x__ {_Address'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Address "maybe'socketAddress" (Prelude.Maybe SocketAddress) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Address'address (\ x__ y__ -> x__ {_Address'address = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Address'SocketAddress x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Address'SocketAddress y__))
instance Data.ProtoLens.Field.HasField Address "socketAddress" SocketAddress where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Address'address (\ x__ y__ -> x__ {_Address'address = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Address'SocketAddress x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Address'SocketAddress y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Address "maybe'pipe" (Prelude.Maybe Pipe) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Address'address (\ x__ y__ -> x__ {_Address'address = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Address'Pipe x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Address'Pipe y__))
instance Data.ProtoLens.Field.HasField Address "pipe" Pipe where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Address'address (\ x__ y__ -> x__ {_Address'address = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Address'Pipe x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Address'Pipe y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Address "maybe'envoyInternalAddress" (Prelude.Maybe EnvoyInternalAddress) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Address'address (\ x__ y__ -> x__ {_Address'address = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Address'EnvoyInternalAddress x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Address'EnvoyInternalAddress y__))
instance Data.ProtoLens.Field.HasField Address "envoyInternalAddress" EnvoyInternalAddress where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Address'address (\ x__ y__ -> x__ {_Address'address = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Address'EnvoyInternalAddress x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Address'EnvoyInternalAddress y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Address where
  messageName _ = Data.Text.pack "envoy.config.core.v3.Address"
  packedMessageDescriptor _
    = "\n\
      \\aAddress\DC2L\n\
      \\SOsocket_address\CAN\SOH \SOH(\v2#.envoy.config.core.v3.SocketAddressH\NULR\rsocketAddress\DC20\n\
      \\EOTpipe\CAN\STX \SOH(\v2\SUB.envoy.config.core.v3.PipeH\NULR\EOTpipe\DC2b\n\
      \\SYNenvoy_internal_address\CAN\ETX \SOH(\v2*.envoy.config.core.v3.EnvoyInternalAddressH\NULR\DC4envoyInternalAddressB\SO\n\
      \\aaddress\DC2\ETX\248B\SOH: \154\197\136\RS\ESC\n\
      \\EMenvoy.api.v2.core.Address"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        socketAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "socket_address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SocketAddress)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'socketAddress")) ::
              Data.ProtoLens.FieldDescriptor Address
        pipe__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pipe"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Pipe)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pipe")) ::
              Data.ProtoLens.FieldDescriptor Address
        envoyInternalAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "envoy_internal_address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EnvoyInternalAddress)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'envoyInternalAddress")) ::
              Data.ProtoLens.FieldDescriptor Address
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, socketAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, pipe__field_descriptor),
           (Data.ProtoLens.Tag 3, envoyInternalAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Address'_unknownFields
        (\ x__ y__ -> x__ {_Address'_unknownFields = y__})
  defMessage
    = Address'_constructor
        {_Address'address = Prelude.Nothing, _Address'_unknownFields = []}
  parseMessage
    = let
        loop :: Address -> Data.ProtoLens.Encoding.Bytes.Parser Address
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
                                       "socket_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"socketAddress") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pipe"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pipe") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "envoy_internal_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"envoyInternalAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Address"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'address") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Address'SocketAddress v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (Address'Pipe v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (Address'EnvoyInternalAddress v))
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
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Address where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Address'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Address'address x__) ())
instance Control.DeepSeq.NFData Address'Address where
  rnf (Address'SocketAddress x__) = Control.DeepSeq.rnf x__
  rnf (Address'Pipe x__) = Control.DeepSeq.rnf x__
  rnf (Address'EnvoyInternalAddress x__) = Control.DeepSeq.rnf x__
_Address'SocketAddress ::
  Data.ProtoLens.Prism.Prism' Address'Address SocketAddress
_Address'SocketAddress
  = Data.ProtoLens.Prism.prism'
      Address'SocketAddress
      (\ p__
         -> case p__ of
              (Address'SocketAddress p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Address'Pipe :: Data.ProtoLens.Prism.Prism' Address'Address Pipe
_Address'Pipe
  = Data.ProtoLens.Prism.prism'
      Address'Pipe
      (\ p__
         -> case p__ of
              (Address'Pipe p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Address'EnvoyInternalAddress ::
  Data.ProtoLens.Prism.Prism' Address'Address EnvoyInternalAddress
_Address'EnvoyInternalAddress
  = Data.ProtoLens.Prism.prism'
      Address'EnvoyInternalAddress
      (\ p__
         -> case p__ of
              (Address'EnvoyInternalAddress p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.sourceAddress' @:: Lens' BindConfig SocketAddress@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.maybe'sourceAddress' @:: Lens' BindConfig (Prelude.Maybe SocketAddress)@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.freebind' @:: Lens' BindConfig Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.maybe'freebind' @:: Lens' BindConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.socketOptions' @:: Lens' BindConfig [Proto.Envoy.Config.Core.V3.SocketOption.SocketOption]@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.vec'socketOptions' @:: Lens' BindConfig (Data.Vector.Vector Proto.Envoy.Config.Core.V3.SocketOption.SocketOption)@ -}
data BindConfig
  = BindConfig'_constructor {_BindConfig'sourceAddress :: !(Prelude.Maybe SocketAddress),
                             _BindConfig'freebind :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                             _BindConfig'socketOptions :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.SocketOption.SocketOption),
                             _BindConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BindConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BindConfig "sourceAddress" SocketAddress where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BindConfig'sourceAddress
           (\ x__ y__ -> x__ {_BindConfig'sourceAddress = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BindConfig "maybe'sourceAddress" (Prelude.Maybe SocketAddress) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BindConfig'sourceAddress
           (\ x__ y__ -> x__ {_BindConfig'sourceAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BindConfig "freebind" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BindConfig'freebind
           (\ x__ y__ -> x__ {_BindConfig'freebind = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BindConfig "maybe'freebind" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BindConfig'freebind
           (\ x__ y__ -> x__ {_BindConfig'freebind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BindConfig "socketOptions" [Proto.Envoy.Config.Core.V3.SocketOption.SocketOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BindConfig'socketOptions
           (\ x__ y__ -> x__ {_BindConfig'socketOptions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField BindConfig "vec'socketOptions" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.SocketOption.SocketOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BindConfig'socketOptions
           (\ x__ y__ -> x__ {_BindConfig'socketOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Message BindConfig where
  messageName _ = Data.Text.pack "envoy.config.core.v3.BindConfig"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \BindConfig\DC2T\n\
      \\SOsource_address\CAN\SOH \SOH(\v2#.envoy.config.core.v3.SocketAddressR\rsourceAddressB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC26\n\
      \\bfreebind\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\bfreebind\DC2I\n\
      \\SOsocket_options\CAN\ETX \ETX(\v2\".envoy.config.core.v3.SocketOptionR\rsocketOptions:#\154\197\136\RS\RS\n\
      \\FSenvoy.api.v2.core.BindConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sourceAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SocketAddress)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sourceAddress")) ::
              Data.ProtoLens.FieldDescriptor BindConfig
        freebind__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "freebind"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'freebind")) ::
              Data.ProtoLens.FieldDescriptor BindConfig
        socketOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "socket_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.SocketOption.SocketOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"socketOptions")) ::
              Data.ProtoLens.FieldDescriptor BindConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sourceAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, freebind__field_descriptor),
           (Data.ProtoLens.Tag 3, socketOptions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BindConfig'_unknownFields
        (\ x__ y__ -> x__ {_BindConfig'_unknownFields = y__})
  defMessage
    = BindConfig'_constructor
        {_BindConfig'sourceAddress = Prelude.Nothing,
         _BindConfig'freebind = Prelude.Nothing,
         _BindConfig'socketOptions = Data.Vector.Generic.empty,
         _BindConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BindConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.SocketOption.SocketOption
             -> Data.ProtoLens.Encoding.Bytes.Parser BindConfig
        loop x mutable'socketOptions
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'socketOptions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'socketOptions)
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
                              (Data.ProtoLens.Field.field @"vec'socketOptions")
                              frozen'socketOptions
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "source_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sourceAddress") y x)
                                  mutable'socketOptions
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "freebind"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"freebind") y x)
                                  mutable'socketOptions
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "socket_options"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'socketOptions y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'socketOptions
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'socketOptions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'socketOptions)
          "BindConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'sourceAddress") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'freebind") _x
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
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
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
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'socketOptions") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData BindConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BindConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BindConfig'sourceAddress x__)
                (Control.DeepSeq.deepseq
                   (_BindConfig'freebind x__)
                   (Control.DeepSeq.deepseq (_BindConfig'socketOptions x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.addressPrefix' @:: Lens' CidrRange Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.prefixLen' @:: Lens' CidrRange Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.maybe'prefixLen' @:: Lens' CidrRange (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data CidrRange
  = CidrRange'_constructor {_CidrRange'addressPrefix :: !Data.Text.Text,
                            _CidrRange'prefixLen :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                            _CidrRange'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CidrRange where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CidrRange "addressPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CidrRange'addressPrefix
           (\ x__ y__ -> x__ {_CidrRange'addressPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CidrRange "prefixLen" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CidrRange'prefixLen
           (\ x__ y__ -> x__ {_CidrRange'prefixLen = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CidrRange "maybe'prefixLen" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CidrRange'prefixLen
           (\ x__ y__ -> x__ {_CidrRange'prefixLen = y__}))
        Prelude.id
instance Data.ProtoLens.Message CidrRange where
  messageName _ = Data.Text.pack "envoy.config.core.v3.CidrRange"
  packedMessageDescriptor _
    = "\n\
      \\tCidrRange\DC2.\n\
      \\SOaddress_prefix\CAN\SOH \SOH(\tR\raddressPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2E\n\
      \\n\
      \prefix_len\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\tprefixLenB\b\250B\ENQ*\ETX\CAN\128\SOH:\"\154\197\136\RS\GS\n\
      \\ESCenvoy.api.v2.core.CidrRange"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        addressPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"addressPrefix")) ::
              Data.ProtoLens.FieldDescriptor CidrRange
        prefixLen__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prefix_len"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prefixLen")) ::
              Data.ProtoLens.FieldDescriptor CidrRange
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, addressPrefix__field_descriptor),
           (Data.ProtoLens.Tag 2, prefixLen__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CidrRange'_unknownFields
        (\ x__ y__ -> x__ {_CidrRange'_unknownFields = y__})
  defMessage
    = CidrRange'_constructor
        {_CidrRange'addressPrefix = Data.ProtoLens.fieldDefault,
         _CidrRange'prefixLen = Prelude.Nothing,
         _CidrRange'_unknownFields = []}
  parseMessage
    = let
        loop :: CidrRange -> Data.ProtoLens.Encoding.Bytes.Parser CidrRange
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
                                       "address_prefix"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"addressPrefix") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "prefix_len"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"prefixLen") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CidrRange"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"addressPrefix") _x
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
                       (Data.ProtoLens.Field.field @"maybe'prefixLen") _x
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
instance Control.DeepSeq.NFData CidrRange where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CidrRange'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CidrRange'addressPrefix x__)
                (Control.DeepSeq.deepseq (_CidrRange'prefixLen x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.maybe'addressNameSpecifier' @:: Lens' EnvoyInternalAddress (Prelude.Maybe EnvoyInternalAddress'AddressNameSpecifier)@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.maybe'serverListenerName' @:: Lens' EnvoyInternalAddress (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.serverListenerName' @:: Lens' EnvoyInternalAddress Data.Text.Text@ -}
data EnvoyInternalAddress
  = EnvoyInternalAddress'_constructor {_EnvoyInternalAddress'addressNameSpecifier :: !(Prelude.Maybe EnvoyInternalAddress'AddressNameSpecifier),
                                       _EnvoyInternalAddress'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EnvoyInternalAddress where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data EnvoyInternalAddress'AddressNameSpecifier
  = EnvoyInternalAddress'ServerListenerName !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField EnvoyInternalAddress "maybe'addressNameSpecifier" (Prelude.Maybe EnvoyInternalAddress'AddressNameSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvoyInternalAddress'addressNameSpecifier
           (\ x__ y__
              -> x__ {_EnvoyInternalAddress'addressNameSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnvoyInternalAddress "maybe'serverListenerName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvoyInternalAddress'addressNameSpecifier
           (\ x__ y__
              -> x__ {_EnvoyInternalAddress'addressNameSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (EnvoyInternalAddress'ServerListenerName x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap EnvoyInternalAddress'ServerListenerName y__))
instance Data.ProtoLens.Field.HasField EnvoyInternalAddress "serverListenerName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnvoyInternalAddress'addressNameSpecifier
           (\ x__ y__
              -> x__ {_EnvoyInternalAddress'addressNameSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (EnvoyInternalAddress'ServerListenerName x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap EnvoyInternalAddress'ServerListenerName y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message EnvoyInternalAddress where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.EnvoyInternalAddress"
  packedMessageDescriptor _
    = "\n\
      \\DC4EnvoyInternalAddress\DC22\n\
      \\DC4server_listener_name\CAN\SOH \SOH(\tH\NULR\DC2serverListenerNameB\GS\n\
      \\SYNaddress_name_specifier\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        serverListenerName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "server_listener_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'serverListenerName")) ::
              Data.ProtoLens.FieldDescriptor EnvoyInternalAddress
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, serverListenerName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EnvoyInternalAddress'_unknownFields
        (\ x__ y__ -> x__ {_EnvoyInternalAddress'_unknownFields = y__})
  defMessage
    = EnvoyInternalAddress'_constructor
        {_EnvoyInternalAddress'addressNameSpecifier = Prelude.Nothing,
         _EnvoyInternalAddress'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EnvoyInternalAddress
          -> Data.ProtoLens.Encoding.Bytes.Parser EnvoyInternalAddress
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
                                       "server_listener_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"serverListenerName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EnvoyInternalAddress"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'addressNameSpecifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (EnvoyInternalAddress'ServerListenerName v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
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
instance Control.DeepSeq.NFData EnvoyInternalAddress where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EnvoyInternalAddress'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EnvoyInternalAddress'addressNameSpecifier x__) ())
instance Control.DeepSeq.NFData EnvoyInternalAddress'AddressNameSpecifier where
  rnf (EnvoyInternalAddress'ServerListenerName x__)
    = Control.DeepSeq.rnf x__
_EnvoyInternalAddress'ServerListenerName ::
  Data.ProtoLens.Prism.Prism' EnvoyInternalAddress'AddressNameSpecifier Data.Text.Text
_EnvoyInternalAddress'ServerListenerName
  = Data.ProtoLens.Prism.prism'
      EnvoyInternalAddress'ServerListenerName
      (\ p__
         -> case p__ of {
              (EnvoyInternalAddress'ServerListenerName p__val)
                -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.path' @:: Lens' Pipe Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.mode' @:: Lens' Pipe Data.Word.Word32@ -}
data Pipe
  = Pipe'_constructor {_Pipe'path :: !Data.Text.Text,
                       _Pipe'mode :: !Data.Word.Word32,
                       _Pipe'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Pipe where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Pipe "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Pipe'path (\ x__ y__ -> x__ {_Pipe'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Pipe "mode" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Pipe'mode (\ x__ y__ -> x__ {_Pipe'mode = y__}))
        Prelude.id
instance Data.ProtoLens.Message Pipe where
  messageName _ = Data.Text.pack "envoy.config.core.v3.Pipe"
  packedMessageDescriptor _
    = "\n\
      \\EOTPipe\DC2\ESC\n\
      \\EOTpath\CAN\SOH \SOH(\tR\EOTpathB\a\250B\EOTr\STX\DLE\SOH\DC2\FS\n\
      \\EOTmode\CAN\STX \SOH(\rR\EOTmodeB\b\250B\ENQ*\ETX\CAN\255\ETX:\GS\154\197\136\RS\CAN\n\
      \\SYNenvoy.api.v2.core.Pipe"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"path")) ::
              Data.ProtoLens.FieldDescriptor Pipe
        mode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"mode")) ::
              Data.ProtoLens.FieldDescriptor Pipe
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, path__field_descriptor),
           (Data.ProtoLens.Tag 2, mode__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Pipe'_unknownFields
        (\ x__ y__ -> x__ {_Pipe'_unknownFields = y__})
  defMessage
    = Pipe'_constructor
        {_Pipe'path = Data.ProtoLens.fieldDefault,
         _Pipe'mode = Data.ProtoLens.fieldDefault,
         _Pipe'_unknownFields = []}
  parseMessage
    = let
        loop :: Pipe -> Data.ProtoLens.Encoding.Bytes.Parser Pipe
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
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mode") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Pipe"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"path") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"mode") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Pipe where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Pipe'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Pipe'path x__) (Control.DeepSeq.deepseq (_Pipe'mode x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.protocol' @:: Lens' SocketAddress SocketAddress'Protocol@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.address' @:: Lens' SocketAddress Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.resolverName' @:: Lens' SocketAddress Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.ipv4Compat' @:: Lens' SocketAddress Prelude.Bool@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.maybe'portSpecifier' @:: Lens' SocketAddress (Prelude.Maybe SocketAddress'PortSpecifier)@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.maybe'portValue' @:: Lens' SocketAddress (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.portValue' @:: Lens' SocketAddress Data.Word.Word32@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.maybe'namedPort' @:: Lens' SocketAddress (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.namedPort' @:: Lens' SocketAddress Data.Text.Text@ -}
data SocketAddress
  = SocketAddress'_constructor {_SocketAddress'protocol :: !SocketAddress'Protocol,
                                _SocketAddress'address :: !Data.Text.Text,
                                _SocketAddress'resolverName :: !Data.Text.Text,
                                _SocketAddress'ipv4Compat :: !Prelude.Bool,
                                _SocketAddress'portSpecifier :: !(Prelude.Maybe SocketAddress'PortSpecifier),
                                _SocketAddress'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SocketAddress where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data SocketAddress'PortSpecifier
  = SocketAddress'PortValue !Data.Word.Word32 |
    SocketAddress'NamedPort !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField SocketAddress "protocol" SocketAddress'Protocol where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketAddress'protocol
           (\ x__ y__ -> x__ {_SocketAddress'protocol = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketAddress "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketAddress'address
           (\ x__ y__ -> x__ {_SocketAddress'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketAddress "resolverName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketAddress'resolverName
           (\ x__ y__ -> x__ {_SocketAddress'resolverName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketAddress "ipv4Compat" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketAddress'ipv4Compat
           (\ x__ y__ -> x__ {_SocketAddress'ipv4Compat = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketAddress "maybe'portSpecifier" (Prelude.Maybe SocketAddress'PortSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketAddress'portSpecifier
           (\ x__ y__ -> x__ {_SocketAddress'portSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketAddress "maybe'portValue" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketAddress'portSpecifier
           (\ x__ y__ -> x__ {_SocketAddress'portSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SocketAddress'PortValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SocketAddress'PortValue y__))
instance Data.ProtoLens.Field.HasField SocketAddress "portValue" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketAddress'portSpecifier
           (\ x__ y__ -> x__ {_SocketAddress'portSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SocketAddress'PortValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SocketAddress'PortValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField SocketAddress "maybe'namedPort" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketAddress'portSpecifier
           (\ x__ y__ -> x__ {_SocketAddress'portSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SocketAddress'NamedPort x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SocketAddress'NamedPort y__))
instance Data.ProtoLens.Field.HasField SocketAddress "namedPort" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketAddress'portSpecifier
           (\ x__ y__ -> x__ {_SocketAddress'portSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SocketAddress'NamedPort x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SocketAddress'NamedPort y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message SocketAddress where
  messageName _ = Data.Text.pack "envoy.config.core.v3.SocketAddress"
  packedMessageDescriptor _
    = "\n\
      \\rSocketAddress\DC2R\n\
      \\bprotocol\CAN\SOH \SOH(\SO2,.envoy.config.core.v3.SocketAddress.ProtocolR\bprotocolB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2!\n\
      \\aaddress\CAN\STX \SOH(\tR\aaddressB\a\250B\EOTr\STX\DLE\SOH\DC2*\n\
      \\n\
      \port_value\CAN\ETX \SOH(\rH\NULR\tportValueB\t\250B\ACK*\EOT\CAN\255\255\ETX\DC2\US\n\
      \\n\
      \named_port\CAN\EOT \SOH(\tH\NULR\tnamedPort\DC2#\n\
      \\rresolver_name\CAN\ENQ \SOH(\tR\fresolverName\DC2\US\n\
      \\vipv4_compat\CAN\ACK \SOH(\bR\n\
      \ipv4Compat\"\FS\n\
      \\bProtocol\DC2\a\n\
      \\ETXTCP\DLE\NUL\DC2\a\n\
      \\ETXUDP\DLE\SOHB\NAK\n\
      \\SOport_specifier\DC2\ETX\248B\SOH:&\154\197\136\RS!\n\
      \\USenvoy.api.v2.core.SocketAddress"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        protocol__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor SocketAddress'Protocol)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"protocol")) ::
              Data.ProtoLens.FieldDescriptor SocketAddress
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor SocketAddress
        resolverName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resolver_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resolverName")) ::
              Data.ProtoLens.FieldDescriptor SocketAddress
        ipv4Compat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ipv4_compat"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"ipv4Compat")) ::
              Data.ProtoLens.FieldDescriptor SocketAddress
        portValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "port_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'portValue")) ::
              Data.ProtoLens.FieldDescriptor SocketAddress
        namedPort__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "named_port"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'namedPort")) ::
              Data.ProtoLens.FieldDescriptor SocketAddress
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, protocol__field_descriptor),
           (Data.ProtoLens.Tag 2, address__field_descriptor),
           (Data.ProtoLens.Tag 5, resolverName__field_descriptor),
           (Data.ProtoLens.Tag 6, ipv4Compat__field_descriptor),
           (Data.ProtoLens.Tag 3, portValue__field_descriptor),
           (Data.ProtoLens.Tag 4, namedPort__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SocketAddress'_unknownFields
        (\ x__ y__ -> x__ {_SocketAddress'_unknownFields = y__})
  defMessage
    = SocketAddress'_constructor
        {_SocketAddress'protocol = Data.ProtoLens.fieldDefault,
         _SocketAddress'address = Data.ProtoLens.fieldDefault,
         _SocketAddress'resolverName = Data.ProtoLens.fieldDefault,
         _SocketAddress'ipv4Compat = Data.ProtoLens.fieldDefault,
         _SocketAddress'portSpecifier = Prelude.Nothing,
         _SocketAddress'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SocketAddress -> Data.ProtoLens.Encoding.Bytes.Parser SocketAddress
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
                                       "protocol"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"protocol") y x)
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
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "resolver_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resolverName") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ipv4_compat"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ipv4Compat") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "port_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"portValue") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "named_port"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"namedPort") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SocketAddress"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"protocol") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"address") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"resolverName") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"ipv4Compat") _x
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
                                (Data.ProtoLens.Field.field @"maybe'portSpecifier") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just (SocketAddress'PortValue v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                      Prelude.fromIntegral
                                      v)
                            (Prelude.Just (SocketAddress'NamedPort v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.Text.Encoding.encodeUtf8
                                      v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData SocketAddress where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SocketAddress'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SocketAddress'protocol x__)
                (Control.DeepSeq.deepseq
                   (_SocketAddress'address x__)
                   (Control.DeepSeq.deepseq
                      (_SocketAddress'resolverName x__)
                      (Control.DeepSeq.deepseq
                         (_SocketAddress'ipv4Compat x__)
                         (Control.DeepSeq.deepseq (_SocketAddress'portSpecifier x__) ())))))
instance Control.DeepSeq.NFData SocketAddress'PortSpecifier where
  rnf (SocketAddress'PortValue x__) = Control.DeepSeq.rnf x__
  rnf (SocketAddress'NamedPort x__) = Control.DeepSeq.rnf x__
_SocketAddress'PortValue ::
  Data.ProtoLens.Prism.Prism' SocketAddress'PortSpecifier Data.Word.Word32
_SocketAddress'PortValue
  = Data.ProtoLens.Prism.prism'
      SocketAddress'PortValue
      (\ p__
         -> case p__ of
              (SocketAddress'PortValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_SocketAddress'NamedPort ::
  Data.ProtoLens.Prism.Prism' SocketAddress'PortSpecifier Data.Text.Text
_SocketAddress'NamedPort
  = Data.ProtoLens.Prism.prism'
      SocketAddress'NamedPort
      (\ p__
         -> case p__ of
              (SocketAddress'NamedPort p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
newtype SocketAddress'Protocol'UnrecognizedValue
  = SocketAddress'Protocol'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data SocketAddress'Protocol
  = SocketAddress'TCP |
    SocketAddress'UDP |
    SocketAddress'Protocol'Unrecognized !SocketAddress'Protocol'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum SocketAddress'Protocol where
  maybeToEnum 0 = Prelude.Just SocketAddress'TCP
  maybeToEnum 1 = Prelude.Just SocketAddress'UDP
  maybeToEnum k
    = Prelude.Just
        (SocketAddress'Protocol'Unrecognized
           (SocketAddress'Protocol'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum SocketAddress'TCP = "TCP"
  showEnum SocketAddress'UDP = "UDP"
  showEnum
    (SocketAddress'Protocol'Unrecognized (SocketAddress'Protocol'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "TCP" = Prelude.Just SocketAddress'TCP
    | (Prelude.==) k "UDP" = Prelude.Just SocketAddress'UDP
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded SocketAddress'Protocol where
  minBound = SocketAddress'TCP
  maxBound = SocketAddress'UDP
instance Prelude.Enum SocketAddress'Protocol where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Protocol: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum SocketAddress'TCP = 0
  fromEnum SocketAddress'UDP = 1
  fromEnum
    (SocketAddress'Protocol'Unrecognized (SocketAddress'Protocol'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ SocketAddress'UDP
    = Prelude.error
        "SocketAddress'Protocol.succ: bad argument SocketAddress'UDP. This value would be out of bounds."
  succ SocketAddress'TCP = SocketAddress'UDP
  succ (SocketAddress'Protocol'Unrecognized _)
    = Prelude.error
        "SocketAddress'Protocol.succ: bad argument: unrecognized value"
  pred SocketAddress'TCP
    = Prelude.error
        "SocketAddress'Protocol.pred: bad argument SocketAddress'TCP. This value would be out of bounds."
  pred SocketAddress'UDP = SocketAddress'TCP
  pred (SocketAddress'Protocol'Unrecognized _)
    = Prelude.error
        "SocketAddress'Protocol.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault SocketAddress'Protocol where
  fieldDefault = SocketAddress'TCP
instance Control.DeepSeq.NFData SocketAddress'Protocol where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.keepaliveProbes' @:: Lens' TcpKeepalive Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.maybe'keepaliveProbes' @:: Lens' TcpKeepalive (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.keepaliveTime' @:: Lens' TcpKeepalive Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.maybe'keepaliveTime' @:: Lens' TcpKeepalive (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.keepaliveInterval' @:: Lens' TcpKeepalive Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Address_Fields.maybe'keepaliveInterval' @:: Lens' TcpKeepalive (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data TcpKeepalive
  = TcpKeepalive'_constructor {_TcpKeepalive'keepaliveProbes :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                               _TcpKeepalive'keepaliveTime :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                               _TcpKeepalive'keepaliveInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                               _TcpKeepalive'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TcpKeepalive where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TcpKeepalive "keepaliveProbes" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpKeepalive'keepaliveProbes
           (\ x__ y__ -> x__ {_TcpKeepalive'keepaliveProbes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TcpKeepalive "maybe'keepaliveProbes" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpKeepalive'keepaliveProbes
           (\ x__ y__ -> x__ {_TcpKeepalive'keepaliveProbes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpKeepalive "keepaliveTime" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpKeepalive'keepaliveTime
           (\ x__ y__ -> x__ {_TcpKeepalive'keepaliveTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TcpKeepalive "maybe'keepaliveTime" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpKeepalive'keepaliveTime
           (\ x__ y__ -> x__ {_TcpKeepalive'keepaliveTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpKeepalive "keepaliveInterval" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpKeepalive'keepaliveInterval
           (\ x__ y__ -> x__ {_TcpKeepalive'keepaliveInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TcpKeepalive "maybe'keepaliveInterval" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpKeepalive'keepaliveInterval
           (\ x__ y__ -> x__ {_TcpKeepalive'keepaliveInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Message TcpKeepalive where
  messageName _ = Data.Text.pack "envoy.config.core.v3.TcpKeepalive"
  packedMessageDescriptor _
    = "\n\
      \\fTcpKeepalive\DC2G\n\
      \\DLEkeepalive_probes\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\SIkeepaliveProbes\DC2C\n\
      \\SOkeepalive_time\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\rkeepaliveTime\DC2K\n\
      \\DC2keepalive_interval\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC1keepaliveInterval:%\154\197\136\RS \n\
      \\RSenvoy.api.v2.core.TcpKeepalive"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        keepaliveProbes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "keepalive_probes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'keepaliveProbes")) ::
              Data.ProtoLens.FieldDescriptor TcpKeepalive
        keepaliveTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "keepalive_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'keepaliveTime")) ::
              Data.ProtoLens.FieldDescriptor TcpKeepalive
        keepaliveInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "keepalive_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'keepaliveInterval")) ::
              Data.ProtoLens.FieldDescriptor TcpKeepalive
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, keepaliveProbes__field_descriptor),
           (Data.ProtoLens.Tag 2, keepaliveTime__field_descriptor),
           (Data.ProtoLens.Tag 3, keepaliveInterval__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TcpKeepalive'_unknownFields
        (\ x__ y__ -> x__ {_TcpKeepalive'_unknownFields = y__})
  defMessage
    = TcpKeepalive'_constructor
        {_TcpKeepalive'keepaliveProbes = Prelude.Nothing,
         _TcpKeepalive'keepaliveTime = Prelude.Nothing,
         _TcpKeepalive'keepaliveInterval = Prelude.Nothing,
         _TcpKeepalive'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TcpKeepalive -> Data.ProtoLens.Encoding.Bytes.Parser TcpKeepalive
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
                                       "keepalive_probes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"keepaliveProbes") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "keepalive_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"keepaliveTime") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "keepalive_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"keepaliveInterval") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TcpKeepalive"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'keepaliveProbes") _x
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
                       (Data.ProtoLens.Field.field @"maybe'keepaliveTime") _x
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
                          (Data.ProtoLens.Field.field @"maybe'keepaliveInterval") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData TcpKeepalive where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TcpKeepalive'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TcpKeepalive'keepaliveProbes x__)
                (Control.DeepSeq.deepseq
                   (_TcpKeepalive'keepaliveTime x__)
                   (Control.DeepSeq.deepseq
                      (_TcpKeepalive'keepaliveInterval x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"envoy/config/core/v3/address.proto\DC2\DC4envoy.config.core.v3\SUB(envoy/config/core/v3/socket_option.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"`\n\
    \\EOTPipe\DC2\ESC\n\
    \\EOTpath\CAN\SOH \SOH(\tR\EOTpathB\a\250B\EOTr\STX\DLE\SOH\DC2\FS\n\
    \\EOTmode\CAN\STX \SOH(\rR\EOTmodeB\b\250B\ENQ*\ETX\CAN\255\ETX:\GS\154\197\136\RS\CAN\n\
    \\SYNenvoy.api.v2.core.Pipe\"i\n\
    \\DC4EnvoyInternalAddress\DC22\n\
    \\DC4server_listener_name\CAN\SOH \SOH(\tH\NULR\DC2serverListenerNameB\GS\n\
    \\SYNaddress_name_specifier\DC2\ETX\248B\SOH\"\246\STX\n\
    \\rSocketAddress\DC2R\n\
    \\bprotocol\CAN\SOH \SOH(\SO2,.envoy.config.core.v3.SocketAddress.ProtocolR\bprotocolB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2!\n\
    \\aaddress\CAN\STX \SOH(\tR\aaddressB\a\250B\EOTr\STX\DLE\SOH\DC2*\n\
    \\n\
    \port_value\CAN\ETX \SOH(\rH\NULR\tportValueB\t\250B\ACK*\EOT\CAN\255\255\ETX\DC2\US\n\
    \\n\
    \named_port\CAN\EOT \SOH(\tH\NULR\tnamedPort\DC2#\n\
    \\rresolver_name\CAN\ENQ \SOH(\tR\fresolverName\DC2\US\n\
    \\vipv4_compat\CAN\ACK \SOH(\bR\n\
    \ipv4Compat\"\FS\n\
    \\bProtocol\DC2\a\n\
    \\ETXTCP\DLE\NUL\DC2\a\n\
    \\ETXUDP\DLE\SOHB\NAK\n\
    \\SOport_specifier\DC2\ETX\248B\SOH:&\154\197\136\RS!\n\
    \\USenvoy.api.v2.core.SocketAddress\"\144\STX\n\
    \\fTcpKeepalive\DC2G\n\
    \\DLEkeepalive_probes\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\SIkeepaliveProbes\DC2C\n\
    \\SOkeepalive_time\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\rkeepaliveTime\DC2K\n\
    \\DC2keepalive_interval\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC1keepaliveInterval:%\154\197\136\RS \n\
    \\RSenvoy.api.v2.core.TcpKeepalive\"\138\STX\n\
    \\n\
    \BindConfig\DC2T\n\
    \\SOsource_address\CAN\SOH \SOH(\v2#.envoy.config.core.v3.SocketAddressR\rsourceAddressB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC26\n\
    \\bfreebind\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\bfreebind\DC2I\n\
    \\SOsocket_options\CAN\ETX \ETX(\v2\".envoy.config.core.v3.SocketOptionR\rsocketOptions:#\154\197\136\RS\RS\n\
    \\FSenvoy.api.v2.core.BindConfig\"\159\STX\n\
    \\aAddress\DC2L\n\
    \\SOsocket_address\CAN\SOH \SOH(\v2#.envoy.config.core.v3.SocketAddressH\NULR\rsocketAddress\DC20\n\
    \\EOTpipe\CAN\STX \SOH(\v2\SUB.envoy.config.core.v3.PipeH\NULR\EOTpipe\DC2b\n\
    \\SYNenvoy_internal_address\CAN\ETX \SOH(\v2*.envoy.config.core.v3.EnvoyInternalAddressH\NULR\DC4envoyInternalAddressB\SO\n\
    \\aaddress\DC2\ETX\248B\SOH: \154\197\136\RS\ESC\n\
    \\EMenvoy.api.v2.core.Address\"\166\SOH\n\
    \\tCidrRange\DC2.\n\
    \\SOaddress_prefix\CAN\SOH \SOH(\tR\raddressPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2E\n\
    \\n\
    \prefix_len\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\tprefixLenB\b\250B\ENQ*\ETX\CAN\128\SOH:\"\154\197\136\RS\GS\n\
    \\ESCenvoy.api.v2.core.CidrRangeB<\n\
    \\"io.envoyproxy.envoy.config.core.v3B\fAddressProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\249\&1\n\
    \\a\DC2\ENQ\NUL\NUL\159\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL2\n\
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
    \\SOH\b\DC2\ETX\f\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \2\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL\RS\SOH2& [#protodoc-title: Network addresses]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\f\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC4\STXX\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC4\STXX\n\
    \\246\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\STX;\SUB\232\SOH Unix Domain Socket path. On Linux, paths starting with '@' will use the\n\
    \ abstract namespace. The starting '@' is replaced by a null byte by Envoy.\n\
    \ Paths starting with '@' will result in an error in environments other than\n\
    \ Linux.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SUB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\SUB\DC2:\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\SUB\DC39\n\
    \J\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\GS\STX9\SUB= The mode for the Pipe. Not applicable for abstract sockets.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\GS\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\GS\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\GS\DC28\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\ENQ\DC2\ETX\GS\DC37\n\
    \\130\STX\n\
    \\STX\EOT\SOH\DC2\EOT#\NUL*\SOH\SUB\245\SOH [#not-implemented-hide:] The address represents an envoy internal listener.\n\
    \ TODO(lambdai): Make this address available for listener and endpoint.\n\
    \ TODO(asraa): When address available, remove workaround from test/server/server_fuzz_test.cc:30.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX#\b\FS\n\
    \\f\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOT$\STX)\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETX$\b\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\STX\DC2\ETX%\EOT&\n\
    \\SO\n\
    \\a\EOT\SOH\b\NUL\STX\175\b\DC2\ETX%\EOT&\n\
    \\157\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX(\EOT$\SUB\143\SOH [#not-implemented-hide:] The :ref:`listener name <envoy_v3_api_field_config.listener.v3.Listener.name>` of the destination internal listener.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX(\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX(\v\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX(\"#\n\
    \#\n\
    \\STX\EOT\STX\DC2\EOT-\NUL[\SOH\SUB\ETB [#next-free-field: 7]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX-\b\NAK\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX.\STXa\n\
    \\SI\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\ETX.\STXa\n\
    \\f\n\
    \\EOT\EOT\STX\EOT\NUL\DC2\EOT0\STX3\ETX\n\
    \\f\n\
    \\ENQ\EOT\STX\EOT\NUL\SOH\DC2\ETX0\a\SI\n\
    \\r\n\
    \\ACK\EOT\STX\EOT\NUL\STX\NUL\DC2\ETX1\EOT\f\n\
    \\SO\n\
    \\a\EOT\STX\EOT\NUL\STX\NUL\SOH\DC2\ETX1\EOT\a\n\
    \\SO\n\
    \\a\EOT\STX\EOT\NUL\STX\NUL\STX\DC2\ETX1\n\
    \\v\n\
    \\r\n\
    \\ACK\EOT\STX\EOT\NUL\STX\SOH\DC2\ETX2\EOT\f\n\
    \\SO\n\
    \\a\EOT\STX\EOT\NUL\STX\SOH\SOH\DC2\ETX2\EOT\a\n\
    \\SO\n\
    \\a\EOT\STX\EOT\NUL\STX\SOH\STX\DC2\ETX2\n\
    \\v\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX5\STXG\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX5\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX5\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX5\CANF\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\175\b\DLE\DC2\ETX5\EME\n\
    \\166\a\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXB\STX>\SUB\152\a The address for this socket. :ref:`Listeners <config_listeners>` will bind\n\
    \ to the address. An empty address is not allowed. Specify ``0.0.0.0`` or ``::``\n\
    \ to bind to any address. [#comment:TODO(zuercher) reinstate when implemented:\n\
    \ It is possible to distinguish a Listener address via the prefix/suffix matching\n\
    \ in :ref:`FilterChainMatch <envoy_v3_api_msg_config.listener.v3.FilterChainMatch>`.] When used\n\
    \ within an upstream :ref:`BindConfig <envoy_v3_api_msg_config.core.v3.BindConfig>`, the address\n\
    \ controls the source address of outbound connections. For :ref:`clusters\n\
    \ <envoy_v3_api_msg_config.cluster.v3.Cluster>`, the cluster type determines whether the\n\
    \ address must be an IP (*STATIC* or *EDS* clusters) or a hostname resolved by DNS\n\
    \ (*STRICT_DNS* or *LOGICAL_DNS* clusters). Address resolution can be customized\n\
    \ via :ref:`resolver_name <envoy_v3_api_field_config.core.v3.SocketAddress.resolver_name>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXB\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXB\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETXB\NAK=\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\175\b\SO\DC2\ETXB\SYN<\n\
    \\f\n\
    \\EOT\EOT\STX\b\NUL\DC2\EOTD\STXM\ETX\n\
    \\f\n\
    \\ENQ\EOT\STX\b\NUL\SOH\DC2\ETXD\b\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\b\NUL\STX\DC2\ETXE\EOT&\n\
    \\SO\n\
    \\a\EOT\STX\b\NUL\STX\175\b\DC2\ETXE\EOT&\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETXG\EOTC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETXG\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXG\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXG\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\b\DC2\ETXG\SUBB\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\175\b\ENQ\DC2\ETXG\ESCA\n\
    \\203\SOH\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETXL\EOT\SUB\SUB\189\SOH This is only valid if :ref:`resolver_name\n\
    \ <envoy_v3_api_field_config.core.v3.SocketAddress.resolver_name>` is specified below and the\n\
    \ named resolver is capable of named port resolution.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETXL\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETXL\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETXL\CAN\EM\n\
    \\135\ETX\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETXT\STX\ESC\SUB\249\STX The name of the custom resolver. This must have been registered with Envoy. If\n\
    \ this is empty, a context dependent default applies. If the address is a concrete\n\
    \ IP address, no resolution will occur. If address is a hostname this\n\
    \ should be set for resolution other than DNS. Specifying a custom resolver with\n\
    \ *STRICT_DNS* or *LOGICAL_DNS* will generate an error at runtime.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETXT\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETXT\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETXT\EM\SUB\n\
    \\150\STX\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETXZ\STX\ETB\SUB\136\STX When binding to an IPv6 address above, this enables `IPv4 compatibility\n\
    \ <https://tools.ietf.org/html/rfc3493#page-11>`_. Binding to ``::`` will\n\
    \ allow both IPv4 and IPv6 connections, with peer IPv4 addresses mapped into\n\
    \ IPv6 space as ``::FFFF:<IPv4-address>``.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\ETXZ\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETXZ\a\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETXZ\NAK\SYN\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT]\NULm\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX]\b\DC4\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\a\DC2\ETX^\STX`\n\
    \\SI\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\ETX^\STX`\n\
    \\204\SOH\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXc\STX3\SUB\190\SOH Maximum number of keepalive probes to send without response before deciding\n\
    \ the connection is dead. Default is to use the OS level configuration (unless\n\
    \ overridden, Linux defaults to 9.)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXc\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXc\RS.\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXc12\n\
    \\218\SOH\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXh\STX1\SUB\204\SOH The number of seconds a connection needs to be idle before keep-alive probes\n\
    \ start being sent. Default is to use the OS level configuration (unless\n\
    \ overridden, Linux defaults to 7200s (i.e., 2 hours.)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETXh\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXh\RS,\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXh/0\n\
    \\154\SOH\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETXl\STX5\SUB\140\SOH The number of seconds between keep-alive probes. Default is to use the OS\n\
    \ level configuration (unless overridden, Linux defaults to 75s.)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\ETXl\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXl\RS0\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXl34\n\
    \\v\n\
    \\STX\EOT\EOT\DC2\ENQo\NUL\129\SOH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXo\b\DC2\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXp\STX^\n\
    \\SI\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\ETXp\STX^\n\
    \=\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXs\STXQ\SUB0 The address to bind to when creating a socket.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETXs\STX\SI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXs\DLE\RS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXs!\"\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXs#P\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\175\b\DC1\DC2\ETXs$O\n\
    \\238\ETX\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX|\STX)\SUB\224\ETX Whether to set the *IP_FREEBIND* option when creating the socket. When this\n\
    \ flag is set to true, allows the :ref:`source_address\n\
    \ <envoy_v3_api_field_config.cluster.v3.UpstreamBindConfig.source_address>` to be an IP address\n\
    \ that is not configured on the system running Envoy. When this flag is set\n\
    \ to false, the option *IP_FREEBIND* is disabled on the socket. When this\n\
    \ flag is not set (default), the socket is not modified, i.e. the option is\n\
    \ neither enabled nor disabled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETX|\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX|\FS$\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX|'(\n\
    \p\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT\128\SOH\STX+\SUBb Additional socket options that may not be present in Envoy source code or\n\
    \ precompiled binaries.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\EOT\128\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\EOT\128\SOH\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\128\SOH\CAN&\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\128\SOH)*\n\
    \\183\SOH\n\
    \\STX\EOT\ENQ\DC2\ACK\134\SOH\NUL\147\SOH\SOH\SUB\168\SOH Addresses specify either a logical or physical address and port, which are\n\
    \ used to tell Envoy where to bind/listen, connect to upstream and find\n\
    \ management servers.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\134\SOH\b\SI\n\
    \\v\n\
    \\ETX\EOT\ENQ\a\DC2\EOT\135\SOH\STX[\n\
    \\DLE\n\
    \\b\EOT\ENQ\a\211\136\225\ETX\SOH\DC2\EOT\135\SOH\STX[\n\
    \\SO\n\
    \\EOT\EOT\ENQ\b\NUL\DC2\ACK\137\SOH\STX\146\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\ENQ\b\NUL\SOH\DC2\EOT\137\SOH\b\SI\n\
    \\r\n\
    \\ENQ\EOT\ENQ\b\NUL\STX\DC2\EOT\138\SOH\EOT&\n\
    \\SI\n\
    \\a\EOT\ENQ\b\NUL\STX\175\b\DC2\EOT\138\SOH\EOT&\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\140\SOH\EOT%\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\140\SOH\EOT\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\140\SOH\DC2 \n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\140\SOH#$\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\142\SOH\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\EOT\142\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\142\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\142\SOH\DLE\DC1\n\
    \(\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\145\SOH\EOT4\SUB\SUB [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ACK\DC2\EOT\145\SOH\EOT\CAN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\145\SOH\EM/\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\145\SOH23\n\
    \\159\SOH\n\
    \\STX\EOT\ACK\DC2\ACK\151\SOH\NUL\159\SOH\SOH\SUB\144\SOH CidrRange specifies an IP Address and a prefix length to construct\n\
    \ the subnet mask for a `CIDR <https://tools.ietf.org/html/rfc4632>`_ range.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\151\SOH\b\DC1\n\
    \\v\n\
    \\ETX\EOT\ACK\a\DC2\EOT\152\SOH\STX]\n\
    \\DLE\n\
    \\b\EOT\ACK\a\211\136\225\ETX\SOH\DC2\EOT\152\SOH\STX]\n\
    \K\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\155\SOH\STXE\SUB= IPv4 or IPv6 address, e.g. ``192.0.0.0`` or ``2001:db8::``.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\155\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\155\SOH\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\155\SOH\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\EOT\155\SOH\FSD\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\175\b\SO\DC2\EOT\155\SOH\GSC\n\
    \G\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\158\SOH\STXT\SUB9 Length of prefix, e.g. 0, 32. Defaults to 0 when unset.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\EOT\158\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\158\SOH\RS(\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\158\SOH+,\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\b\DC2\EOT\158\SOH-S\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\SOH\b\175\b\ENQ\DC2\EOT\158\SOH.Rb\ACKproto3"