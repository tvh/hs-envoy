{- This file was auto-generated from envoy/extensions/rate_limit_descriptors/expr/v3/expr.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.RateLimitDescriptors.Expr.V3.Expr (
        Descriptor(), Descriptor'ExprSpecifier(..), _Descriptor'Text,
        _Descriptor'Parsed
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
import qualified Proto.Google.Api.Expr.V1alpha1.Syntax
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.RateLimitDescriptors.Expr.V3.Expr_Fields.descriptorKey' @:: Lens' Descriptor Data.Text.Text@
         * 'Proto.Envoy.Extensions.RateLimitDescriptors.Expr.V3.Expr_Fields.skipIfError' @:: Lens' Descriptor Prelude.Bool@
         * 'Proto.Envoy.Extensions.RateLimitDescriptors.Expr.V3.Expr_Fields.maybe'exprSpecifier' @:: Lens' Descriptor (Prelude.Maybe Descriptor'ExprSpecifier)@
         * 'Proto.Envoy.Extensions.RateLimitDescriptors.Expr.V3.Expr_Fields.maybe'text' @:: Lens' Descriptor (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.RateLimitDescriptors.Expr.V3.Expr_Fields.text' @:: Lens' Descriptor Data.Text.Text@
         * 'Proto.Envoy.Extensions.RateLimitDescriptors.Expr.V3.Expr_Fields.maybe'parsed' @:: Lens' Descriptor (Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Syntax.Expr)@
         * 'Proto.Envoy.Extensions.RateLimitDescriptors.Expr.V3.Expr_Fields.parsed' @:: Lens' Descriptor Proto.Google.Api.Expr.V1alpha1.Syntax.Expr@ -}
data Descriptor
  = Descriptor'_constructor {_Descriptor'descriptorKey :: !Data.Text.Text,
                             _Descriptor'skipIfError :: !Prelude.Bool,
                             _Descriptor'exprSpecifier :: !(Prelude.Maybe Descriptor'ExprSpecifier),
                             _Descriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Descriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Descriptor'ExprSpecifier
  = Descriptor'Text !Data.Text.Text |
    Descriptor'Parsed !Proto.Google.Api.Expr.V1alpha1.Syntax.Expr
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Descriptor "descriptorKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Descriptor'descriptorKey
           (\ x__ y__ -> x__ {_Descriptor'descriptorKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Descriptor "skipIfError" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Descriptor'skipIfError
           (\ x__ y__ -> x__ {_Descriptor'skipIfError = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Descriptor "maybe'exprSpecifier" (Prelude.Maybe Descriptor'ExprSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Descriptor'exprSpecifier
           (\ x__ y__ -> x__ {_Descriptor'exprSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Descriptor "maybe'text" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Descriptor'exprSpecifier
           (\ x__ y__ -> x__ {_Descriptor'exprSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Descriptor'Text x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Descriptor'Text y__))
instance Data.ProtoLens.Field.HasField Descriptor "text" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Descriptor'exprSpecifier
           (\ x__ y__ -> x__ {_Descriptor'exprSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Descriptor'Text x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Descriptor'Text y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Descriptor "maybe'parsed" (Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Syntax.Expr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Descriptor'exprSpecifier
           (\ x__ y__ -> x__ {_Descriptor'exprSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Descriptor'Parsed x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Descriptor'Parsed y__))
instance Data.ProtoLens.Field.HasField Descriptor "parsed" Proto.Google.Api.Expr.V1alpha1.Syntax.Expr where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Descriptor'exprSpecifier
           (\ x__ y__ -> x__ {_Descriptor'exprSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Descriptor'Parsed x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Descriptor'Parsed y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Descriptor where
  messageName _
    = Data.Text.pack
        "envoy.extensions.rate_limit_descriptors.expr.v3.Descriptor"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Descriptor\DC2.\n\
      \\SOdescriptor_key\CAN\SOH \SOH(\tR\rdescriptorKeyB\a\250B\EOTr\STX\DLE\SOH\DC2\"\n\
      \\rskip_if_error\CAN\STX \SOH(\bR\vskipIfError\DC2\GS\n\
      \\EOTtext\CAN\ETX \SOH(\tH\NULR\EOTtextB\a\250B\EOTr\STX\DLE\SOH\DC28\n\
      \\ACKparsed\CAN\EOT \SOH(\v2\RS.google.api.expr.v1alpha1.ExprH\NULR\ACKparsedB\DLE\n\
      \\SOexpr_specifier"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        descriptorKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "descriptor_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"descriptorKey")) ::
              Data.ProtoLens.FieldDescriptor Descriptor
        skipIfError__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "skip_if_error"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"skipIfError")) ::
              Data.ProtoLens.FieldDescriptor Descriptor
        text__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "text"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'text")) ::
              Data.ProtoLens.FieldDescriptor Descriptor
        parsed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "parsed"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Api.Expr.V1alpha1.Syntax.Expr)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'parsed")) ::
              Data.ProtoLens.FieldDescriptor Descriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, descriptorKey__field_descriptor),
           (Data.ProtoLens.Tag 2, skipIfError__field_descriptor),
           (Data.ProtoLens.Tag 3, text__field_descriptor),
           (Data.ProtoLens.Tag 4, parsed__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Descriptor'_unknownFields
        (\ x__ y__ -> x__ {_Descriptor'_unknownFields = y__})
  defMessage
    = Descriptor'_constructor
        {_Descriptor'descriptorKey = Data.ProtoLens.fieldDefault,
         _Descriptor'skipIfError = Data.ProtoLens.fieldDefault,
         _Descriptor'exprSpecifier = Prelude.Nothing,
         _Descriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Descriptor -> Data.ProtoLens.Encoding.Bytes.Parser Descriptor
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
                                       "descriptor_key"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"descriptorKey") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "skip_if_error"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"skipIfError") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "text"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"text") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "parsed"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"parsed") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Descriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"descriptorKey") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"skipIfError") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt
                            (\ b -> if b then 1 else 0)
                            _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'exprSpecifier") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (Descriptor'Text v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8
                                v)
                      (Prelude.Just (Descriptor'Parsed v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Descriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Descriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Descriptor'descriptorKey x__)
                (Control.DeepSeq.deepseq
                   (_Descriptor'skipIfError x__)
                   (Control.DeepSeq.deepseq (_Descriptor'exprSpecifier x__) ())))
instance Control.DeepSeq.NFData Descriptor'ExprSpecifier where
  rnf (Descriptor'Text x__) = Control.DeepSeq.rnf x__
  rnf (Descriptor'Parsed x__) = Control.DeepSeq.rnf x__
_Descriptor'Text ::
  Data.ProtoLens.Prism.Prism' Descriptor'ExprSpecifier Data.Text.Text
_Descriptor'Text
  = Data.ProtoLens.Prism.prism'
      Descriptor'Text
      (\ p__
         -> case p__ of
              (Descriptor'Text p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Descriptor'Parsed ::
  Data.ProtoLens.Prism.Prism' Descriptor'ExprSpecifier Proto.Google.Api.Expr.V1alpha1.Syntax.Expr
_Descriptor'Parsed
  = Data.ProtoLens.Prism.prism'
      Descriptor'Parsed
      (\ p__
         -> case p__ of
              (Descriptor'Parsed p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \:envoy/extensions/rate_limit_descriptors/expr/v3/expr.proto\DC2/envoy.extensions.rate_limit_descriptors.expr.v3\SUB%google/api/expr/v1alpha1/syntax.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\203\SOH\n\
    \\n\
    \Descriptor\DC2.\n\
    \\SOdescriptor_key\CAN\SOH \SOH(\tR\rdescriptorKeyB\a\250B\EOTr\STX\DLE\SOH\DC2\"\n\
    \\rskip_if_error\CAN\STX \SOH(\bR\vskipIfError\DC2\GS\n\
    \\EOTtext\CAN\ETX \SOH(\tH\NULR\EOTtextB\a\250B\EOTr\STX\DLE\SOH\DC28\n\
    \\ACKparsed\CAN\EOT \SOH(\v2\RS.google.api.expr.v1alpha1.ExprH\NULR\ACKparsedB\DLE\n\
    \\SOexpr_specifierBT\n\
    \=io.envoyproxy.envoy.extensions.rate_limit_descriptors.expr.v3B\tExprProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\164\t\n\
    \\ACK\DC2\EOT\NUL\NUL(\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL8\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL/\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULV\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NULV\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \\140\ETX\n\
    \\STX\EOT\NUL\DC2\EOT\EM\NUL(\SOH\SUB\151\STX The following descriptor entry is appended with a value computed\n\
    \ from a symbolic Common Expression Language expression.\n\
    \ See :ref:`attributes <arch_overview_attributes>` for the set of\n\
    \ available attributes.\n\
    \\n\
    \ .. code-block:: cpp\n\
    \\n\
    \   (\"<descriptor_key>\", \"<expression_value>\")\n\
    \2f [#protodoc-title: Rate limit descriptor expression]\n\
    \ [#extension: envoy.rate_limit_descriptors.expr]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\EM\b\DC2\n\
    \6\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ESC\STXE\SUB) The key to use in the descriptor entry.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESC\SUB\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\ESC\FSD\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\ESC\GSC\n\
    \\180\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\US\STX\EM\SUB\166\SOH If set to true, Envoy skips the descriptor if the expression evaluates to an error.\n\
    \ By default, the rate limit is not applied when an expression produces an error.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\US\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\US\a\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\US\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT!\STX'\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX!\b\SYN\n\
    \R\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX#\EOT=\SUBE Expression in a text form, e.g. \"connection.requested_server_name\".\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX#\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX#\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX#\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX#\DC4<\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\SO\DC2\ETX#\NAK;\n\
    \-\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX&\EOT-\SUB  Parsed expression in AST form.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX&\EOT!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX&\"(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX&+,b\ACKproto3"