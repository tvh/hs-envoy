{- This file was auto-generated from envoy/data/tap/v3/common.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Data.Tap.V3.Common (
        Body(), Body'BodyType(..), _Body'AsBytes, _Body'AsString
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
{- | Fields :
     
         * 'Proto.Envoy.Data.Tap.V3.Common_Fields.truncated' @:: Lens' Body Prelude.Bool@
         * 'Proto.Envoy.Data.Tap.V3.Common_Fields.maybe'bodyType' @:: Lens' Body (Prelude.Maybe Body'BodyType)@
         * 'Proto.Envoy.Data.Tap.V3.Common_Fields.maybe'asBytes' @:: Lens' Body (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Envoy.Data.Tap.V3.Common_Fields.asBytes' @:: Lens' Body Data.ByteString.ByteString@
         * 'Proto.Envoy.Data.Tap.V3.Common_Fields.maybe'asString' @:: Lens' Body (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Data.Tap.V3.Common_Fields.asString' @:: Lens' Body Data.Text.Text@ -}
data Body
  = Body'_constructor {_Body'truncated :: !Prelude.Bool,
                       _Body'bodyType :: !(Prelude.Maybe Body'BodyType),
                       _Body'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Body where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Body'BodyType
  = Body'AsBytes !Data.ByteString.ByteString |
    Body'AsString !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Body "truncated" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Body'truncated (\ x__ y__ -> x__ {_Body'truncated = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Body "maybe'bodyType" (Prelude.Maybe Body'BodyType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Body'bodyType (\ x__ y__ -> x__ {_Body'bodyType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Body "maybe'asBytes" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Body'bodyType (\ x__ y__ -> x__ {_Body'bodyType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Body'AsBytes x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Body'AsBytes y__))
instance Data.ProtoLens.Field.HasField Body "asBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Body'bodyType (\ x__ y__ -> x__ {_Body'bodyType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Body'AsBytes x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Body'AsBytes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Body "maybe'asString" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Body'bodyType (\ x__ y__ -> x__ {_Body'bodyType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Body'AsString x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Body'AsString y__))
instance Data.ProtoLens.Field.HasField Body "asString" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Body'bodyType (\ x__ y__ -> x__ {_Body'bodyType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Body'AsString x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Body'AsString y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message Body where
  messageName _ = Data.Text.pack "envoy.data.tap.v3.Body"
  packedMessageDescriptor _
    = "\n\
      \\EOTBody\DC2\ESC\n\
      \\bas_bytes\CAN\SOH \SOH(\fH\NULR\aasBytes\DC2\GS\n\
      \\tas_string\CAN\STX \SOH(\tH\NULR\basString\DC2\FS\n\
      \\ttruncated\CAN\ETX \SOH(\bR\ttruncatedB\v\n\
      \\tbody_type:\"\154\197\136\RS\GS\n\
      \\ESCenvoy.data.tap.v2alpha.Body"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        truncated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "truncated"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"truncated")) ::
              Data.ProtoLens.FieldDescriptor Body
        asBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "as_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'asBytes")) ::
              Data.ProtoLens.FieldDescriptor Body
        asString__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "as_string"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'asString")) ::
              Data.ProtoLens.FieldDescriptor Body
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, truncated__field_descriptor),
           (Data.ProtoLens.Tag 1, asBytes__field_descriptor),
           (Data.ProtoLens.Tag 2, asString__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Body'_unknownFields
        (\ x__ y__ -> x__ {_Body'_unknownFields = y__})
  defMessage
    = Body'_constructor
        {_Body'truncated = Data.ProtoLens.fieldDefault,
         _Body'bodyType = Prelude.Nothing, _Body'_unknownFields = []}
  parseMessage
    = let
        loop :: Body -> Data.ProtoLens.Encoding.Bytes.Parser Body
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
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "truncated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"truncated") y x)
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "as_bytes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"asBytes") y x)
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
                                       "as_string"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"asString") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Body"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"truncated") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt
                         (\ b -> if b then 1 else 0)
                         _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bodyType") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (Body'AsBytes v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                          ((\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             v)
                   (Prelude.Just (Body'AsString v))
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
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Body where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Body'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Body'truncated x__)
                (Control.DeepSeq.deepseq (_Body'bodyType x__) ()))
instance Control.DeepSeq.NFData Body'BodyType where
  rnf (Body'AsBytes x__) = Control.DeepSeq.rnf x__
  rnf (Body'AsString x__) = Control.DeepSeq.rnf x__
_Body'AsBytes ::
  Data.ProtoLens.Prism.Prism' Body'BodyType Data.ByteString.ByteString
_Body'AsBytes
  = Data.ProtoLens.Prism.prism'
      Body'AsBytes
      (\ p__
         -> case p__ of
              (Body'AsBytes p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Body'AsString ::
  Data.ProtoLens.Prism.Prism' Body'BodyType Data.Text.Text
_Body'AsString
  = Data.ProtoLens.Prism.prism'
      Body'AsString
      (\ p__
         -> case p__ of
              (Body'AsString p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RSenvoy/data/tap/v3/common.proto\DC2\DC1envoy.data.tap.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\145\SOH\n\
    \\EOTBody\DC2\ESC\n\
    \\bas_bytes\CAN\SOH \SOH(\fH\NULR\aasBytes\DC2\GS\n\
    \\tas_string\CAN\STX \SOH(\tH\NULR\basString\DC2\FS\n\
    \\ttruncated\CAN\ETX \SOH(\bR\ttruncatedB\v\n\
    \\tbody_type:\"\154\197\136\RS\GS\n\
    \\ESCenvoy.data.tap.v2alpha.BodyB8\n\
    \\USio.envoyproxy.envoy.data.tap.v3B\vCommonProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\219\t\n\
    \\ACK\DC2\EOT\NUL\NUL$\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SUB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL8\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\a\NUL8\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\b\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\t\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\n\
    \\NULF\n\
    \\177\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DLE\NUL$\SOH\SUB\DEL Wrapper for tapped body data. This includes HTTP request/response body, transport socket received\n\
    \ and transmitted data, etc.\n\
    \2$ [#protodoc-title: Tap common data]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DLE\b\f\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC1\STX]\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC1\STX]\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\DC3\STX\FS\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\DC3\b\DC1\n\
    \\147\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SYN\EOT\ETB\SUB\133\SOH Body data as bytes. By default, tap body data will be present in this field, as the proto\n\
    \ `bytes` type can contain any valid byte.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SYN\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SYN\n\
    \\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SYN\NAK\SYN\n\
    \\140\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\ESC\EOT\EM\SUB\254\SOH Body data as string. This field is only used when the :ref:`JSON_BODY_AS_STRING\n\
    \ <envoy_v3_api_enum_value_config.tap.v3.OutputSink.Format.JSON_BODY_AS_STRING>` sink\n\
    \ format type is selected. See the documentation for that option for why this is useful.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\ESC\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\ESC\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\ESC\ETB\CAN\n\
    \\178\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX#\STX\NAK\SUB\164\STX Specifies whether body data has been truncated to fit within the specified\n\
    \ :ref:`max_buffered_rx_bytes\n\
    \ <envoy_v3_api_field_config.tap.v3.OutputConfig.max_buffered_rx_bytes>` and\n\
    \ :ref:`max_buffered_tx_bytes\n\
    \ <envoy_v3_api_field_config.tap.v3.OutputConfig.max_buffered_tx_bytes>` settings.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX#\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX#\a\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX#\DC3\DC4b\ACKproto3"