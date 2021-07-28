{- This file was auto-generated from envoy/config/core/v3/socket_option.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.SocketOption (
        SocketOption(), SocketOption'Value(..), _SocketOption'IntValue,
        _SocketOption'BufValue, SocketOption'SocketState(..),
        SocketOption'SocketState(),
        SocketOption'SocketState'UnrecognizedValue
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
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.SocketOption_Fields.description' @:: Lens' SocketOption Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.SocketOption_Fields.level' @:: Lens' SocketOption Data.Int.Int64@
         * 'Proto.Envoy.Config.Core.V3.SocketOption_Fields.name' @:: Lens' SocketOption Data.Int.Int64@
         * 'Proto.Envoy.Config.Core.V3.SocketOption_Fields.state' @:: Lens' SocketOption SocketOption'SocketState@
         * 'Proto.Envoy.Config.Core.V3.SocketOption_Fields.maybe'value' @:: Lens' SocketOption (Prelude.Maybe SocketOption'Value)@
         * 'Proto.Envoy.Config.Core.V3.SocketOption_Fields.maybe'intValue' @:: Lens' SocketOption (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Envoy.Config.Core.V3.SocketOption_Fields.intValue' @:: Lens' SocketOption Data.Int.Int64@
         * 'Proto.Envoy.Config.Core.V3.SocketOption_Fields.maybe'bufValue' @:: Lens' SocketOption (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Envoy.Config.Core.V3.SocketOption_Fields.bufValue' @:: Lens' SocketOption Data.ByteString.ByteString@ -}
data SocketOption
  = SocketOption'_constructor {_SocketOption'description :: !Data.Text.Text,
                               _SocketOption'level :: !Data.Int.Int64,
                               _SocketOption'name :: !Data.Int.Int64,
                               _SocketOption'state :: !SocketOption'SocketState,
                               _SocketOption'value :: !(Prelude.Maybe SocketOption'Value),
                               _SocketOption'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SocketOption where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data SocketOption'Value
  = SocketOption'IntValue !Data.Int.Int64 |
    SocketOption'BufValue !Data.ByteString.ByteString
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField SocketOption "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketOption'description
           (\ x__ y__ -> x__ {_SocketOption'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketOption "level" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketOption'level (\ x__ y__ -> x__ {_SocketOption'level = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketOption "name" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketOption'name (\ x__ y__ -> x__ {_SocketOption'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketOption "state" SocketOption'SocketState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketOption'state (\ x__ y__ -> x__ {_SocketOption'state = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketOption "maybe'value" (Prelude.Maybe SocketOption'Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketOption'value (\ x__ y__ -> x__ {_SocketOption'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SocketOption "maybe'intValue" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketOption'value (\ x__ y__ -> x__ {_SocketOption'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SocketOption'IntValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SocketOption'IntValue y__))
instance Data.ProtoLens.Field.HasField SocketOption "intValue" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketOption'value (\ x__ y__ -> x__ {_SocketOption'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SocketOption'IntValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SocketOption'IntValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField SocketOption "maybe'bufValue" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketOption'value (\ x__ y__ -> x__ {_SocketOption'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SocketOption'BufValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SocketOption'BufValue y__))
instance Data.ProtoLens.Field.HasField SocketOption "bufValue" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SocketOption'value (\ x__ y__ -> x__ {_SocketOption'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SocketOption'BufValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SocketOption'BufValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message SocketOption where
  messageName _ = Data.Text.pack "envoy.config.core.v3.SocketOption"
  packedMessageDescriptor _
    = "\n\
      \\fSocketOption\DC2 \n\
      \\vdescription\CAN\SOH \SOH(\tR\vdescription\DC2\DC4\n\
      \\ENQlevel\CAN\STX \SOH(\ETXR\ENQlevel\DC2\DC2\n\
      \\EOTname\CAN\ETX \SOH(\ETXR\EOTname\DC2\GS\n\
      \\tint_value\CAN\EOT \SOH(\ETXH\NULR\bintValue\DC2\GS\n\
      \\tbuf_value\CAN\ENQ \SOH(\fH\NULR\bbufValue\DC2N\n\
      \\ENQstate\CAN\ACK \SOH(\SO2..envoy.config.core.v3.SocketOption.SocketStateR\ENQstateB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"F\n\
      \\vSocketState\DC2\DC1\n\
      \\rSTATE_PREBIND\DLE\NUL\DC2\SI\n\
      \\vSTATE_BOUND\DLE\SOH\DC2\DC3\n\
      \\SISTATE_LISTENING\DLE\STXB\f\n\
      \\ENQvalue\DC2\ETX\248B\SOH:%\154\197\136\RS \n\
      \\RSenvoy.api.v2.core.SocketOption"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor SocketOption
        level__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"level")) ::
              Data.ProtoLens.FieldDescriptor SocketOption
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor SocketOption
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor SocketOption'SocketState)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"state")) ::
              Data.ProtoLens.FieldDescriptor SocketOption
        intValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'intValue")) ::
              Data.ProtoLens.FieldDescriptor SocketOption
        bufValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buf_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bufValue")) ::
              Data.ProtoLens.FieldDescriptor SocketOption
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, description__field_descriptor),
           (Data.ProtoLens.Tag 2, level__field_descriptor),
           (Data.ProtoLens.Tag 3, name__field_descriptor),
           (Data.ProtoLens.Tag 6, state__field_descriptor),
           (Data.ProtoLens.Tag 4, intValue__field_descriptor),
           (Data.ProtoLens.Tag 5, bufValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SocketOption'_unknownFields
        (\ x__ y__ -> x__ {_SocketOption'_unknownFields = y__})
  defMessage
    = SocketOption'_constructor
        {_SocketOption'description = Data.ProtoLens.fieldDefault,
         _SocketOption'level = Data.ProtoLens.fieldDefault,
         _SocketOption'name = Data.ProtoLens.fieldDefault,
         _SocketOption'state = Data.ProtoLens.fieldDefault,
         _SocketOption'value = Prelude.Nothing,
         _SocketOption'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SocketOption -> Data.ProtoLens.Encoding.Bytes.Parser SocketOption
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
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "level"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"level") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "state"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"state") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "int_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"intValue") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "buf_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bufValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SocketOption"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"description") _x
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"level") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"state") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                               ((Prelude..)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                  Prelude.fromEnum
                                  _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just (SocketOption'IntValue v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                      Prelude.fromIntegral
                                      v)
                            (Prelude.Just (SocketOption'BufValue v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData SocketOption where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SocketOption'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SocketOption'description x__)
                (Control.DeepSeq.deepseq
                   (_SocketOption'level x__)
                   (Control.DeepSeq.deepseq
                      (_SocketOption'name x__)
                      (Control.DeepSeq.deepseq
                         (_SocketOption'state x__)
                         (Control.DeepSeq.deepseq (_SocketOption'value x__) ())))))
instance Control.DeepSeq.NFData SocketOption'Value where
  rnf (SocketOption'IntValue x__) = Control.DeepSeq.rnf x__
  rnf (SocketOption'BufValue x__) = Control.DeepSeq.rnf x__
_SocketOption'IntValue ::
  Data.ProtoLens.Prism.Prism' SocketOption'Value Data.Int.Int64
_SocketOption'IntValue
  = Data.ProtoLens.Prism.prism'
      SocketOption'IntValue
      (\ p__
         -> case p__ of
              (SocketOption'IntValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_SocketOption'BufValue ::
  Data.ProtoLens.Prism.Prism' SocketOption'Value Data.ByteString.ByteString
_SocketOption'BufValue
  = Data.ProtoLens.Prism.prism'
      SocketOption'BufValue
      (\ p__
         -> case p__ of
              (SocketOption'BufValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
newtype SocketOption'SocketState'UnrecognizedValue
  = SocketOption'SocketState'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data SocketOption'SocketState
  = SocketOption'STATE_PREBIND |
    SocketOption'STATE_BOUND |
    SocketOption'STATE_LISTENING |
    SocketOption'SocketState'Unrecognized !SocketOption'SocketState'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum SocketOption'SocketState where
  maybeToEnum 0 = Prelude.Just SocketOption'STATE_PREBIND
  maybeToEnum 1 = Prelude.Just SocketOption'STATE_BOUND
  maybeToEnum 2 = Prelude.Just SocketOption'STATE_LISTENING
  maybeToEnum k
    = Prelude.Just
        (SocketOption'SocketState'Unrecognized
           (SocketOption'SocketState'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum SocketOption'STATE_PREBIND = "STATE_PREBIND"
  showEnum SocketOption'STATE_BOUND = "STATE_BOUND"
  showEnum SocketOption'STATE_LISTENING = "STATE_LISTENING"
  showEnum
    (SocketOption'SocketState'Unrecognized (SocketOption'SocketState'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "STATE_PREBIND"
    = Prelude.Just SocketOption'STATE_PREBIND
    | (Prelude.==) k "STATE_BOUND"
    = Prelude.Just SocketOption'STATE_BOUND
    | (Prelude.==) k "STATE_LISTENING"
    = Prelude.Just SocketOption'STATE_LISTENING
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded SocketOption'SocketState where
  minBound = SocketOption'STATE_PREBIND
  maxBound = SocketOption'STATE_LISTENING
instance Prelude.Enum SocketOption'SocketState where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum SocketState: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum SocketOption'STATE_PREBIND = 0
  fromEnum SocketOption'STATE_BOUND = 1
  fromEnum SocketOption'STATE_LISTENING = 2
  fromEnum
    (SocketOption'SocketState'Unrecognized (SocketOption'SocketState'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ SocketOption'STATE_LISTENING
    = Prelude.error
        "SocketOption'SocketState.succ: bad argument SocketOption'STATE_LISTENING. This value would be out of bounds."
  succ SocketOption'STATE_PREBIND = SocketOption'STATE_BOUND
  succ SocketOption'STATE_BOUND = SocketOption'STATE_LISTENING
  succ (SocketOption'SocketState'Unrecognized _)
    = Prelude.error
        "SocketOption'SocketState.succ: bad argument: unrecognized value"
  pred SocketOption'STATE_PREBIND
    = Prelude.error
        "SocketOption'SocketState.pred: bad argument SocketOption'STATE_PREBIND. This value would be out of bounds."
  pred SocketOption'STATE_BOUND = SocketOption'STATE_PREBIND
  pred SocketOption'STATE_LISTENING = SocketOption'STATE_BOUND
  pred (SocketOption'SocketState'Unrecognized _)
    = Prelude.error
        "SocketOption'SocketState.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault SocketOption'SocketState where
  fieldDefault = SocketOption'STATE_PREBIND
instance Control.DeepSeq.NFData SocketOption'SocketState where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \(envoy/config/core/v3/socket_option.proto\DC2\DC4envoy.config.core.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\229\STX\n\
    \\fSocketOption\DC2 \n\
    \\vdescription\CAN\SOH \SOH(\tR\vdescription\DC2\DC4\n\
    \\ENQlevel\CAN\STX \SOH(\ETXR\ENQlevel\DC2\DC2\n\
    \\EOTname\CAN\ETX \SOH(\ETXR\EOTname\DC2\GS\n\
    \\tint_value\CAN\EOT \SOH(\ETXH\NULR\bintValue\DC2\GS\n\
    \\tbuf_value\CAN\ENQ \SOH(\fH\NULR\bbufValue\DC2N\n\
    \\ENQstate\CAN\ACK \SOH(\SO2..envoy.config.core.v3.SocketOption.SocketStateR\ENQstateB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"F\n\
    \\vSocketState\DC2\DC1\n\
    \\rSTATE_PREBIND\DLE\NUL\DC2\SI\n\
    \\vSTATE_BOUND\DLE\SOH\DC2\DC3\n\
    \\SISTATE_LISTENING\DLE\STXB\f\n\
    \\ENQvalue\DC2\ETX\248B\SOH:%\154\197\136\RS \n\
    \\RSenvoy.api.v2.core.SocketOptionBA\n\
    \\"io.envoyproxy.envoy.config.core.v3B\DC1SocketOptionProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\158\r\n\
    \\ACK\DC2\EOT\NUL\NUL7\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL2\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL2\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\n\
    \\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\v\NULF\n\
    \\219\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL7\SOH\SUB\169\SOH Generic socket option message. This would be used to set socket options that\n\
    \ might not exist in upstream kernels or precompiled Envoy binaries.\n\
    \ [#next-free-field: 7]\n\
    \2# [#protodoc-title: Socket Option ]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\DC4\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC3\STX`\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC3\STX`\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\NAK\STX\RS\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\NAK\a\DC2\n\
    \i\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\ETB\EOT\SYN\SUBZ Socket options are applied after socket creation but before binding the socket to a port\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB\EOT\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\ETB\DC4\NAK\n\
    \j\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\SUB\EOT\DC4\SUB[ Socket options are applied after binding the socket to a port but before calling listen()\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\SUB\EOT\SI\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\SUB\DC2\DC3\n\
    \B\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX\GS\EOT\CAN\SUB3 Socket options are applied after calling listen()\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX\GS\EOT\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX\GS\SYN\ETB\n\
    \\142\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\"\STX\EM\SUB\128\SOH An optional name to give this socket option for debugging, etc.\n\
    \ Uniqueness is not required and no special meaning is assumed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\"\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\"\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\"\ETB\CAN\n\
    \Y\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX%\STX\DC2\SUBL Corresponding to the level value passed to setsockopt, such as IPPROTO_TCP\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX%\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX%\b\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX%\DLE\DC1\n\
    \7\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX(\STX\DC1\SUB* The numeric name as passed to setsockopt\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX(\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX(\b\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX(\SI\DLE\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT*\STX2\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX*\b\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX+\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX+\EOT&\n\
    \7\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX.\EOT\CAN\SUB* Because many sockopts take an int value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX.\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX.\n\
    \\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX.\SYN\ETB\n\
    \,\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX1\EOT\CAN\SUB\US Otherwise it's a byte buffer.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX1\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX1\n\
    \\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX1\SYN\ETB\n\
    \\135\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX6\STXG\SUBz The state in which the option will be applied. When used in BindConfig\n\
    \ STATE_PREBIND is currently the only valid value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX6\STX\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX6\SO\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX6\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\ETX6\CANF\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\175\b\DLE\DC2\ETX6\EMEb\ACKproto3"