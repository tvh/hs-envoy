{- This file was auto-generated from envoy/type/matcher/number.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.Matcher.Number (
        DoubleMatcher(), DoubleMatcher'MatchPattern(..),
        _DoubleMatcher'Range, _DoubleMatcher'Exact
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
import qualified Proto.Envoy.Type.Range
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.Number_Fields.maybe'matchPattern' @:: Lens' DoubleMatcher (Prelude.Maybe DoubleMatcher'MatchPattern)@
         * 'Proto.Envoy.Type.Matcher.Number_Fields.maybe'range' @:: Lens' DoubleMatcher (Prelude.Maybe Proto.Envoy.Type.Range.DoubleRange)@
         * 'Proto.Envoy.Type.Matcher.Number_Fields.range' @:: Lens' DoubleMatcher Proto.Envoy.Type.Range.DoubleRange@
         * 'Proto.Envoy.Type.Matcher.Number_Fields.maybe'exact' @:: Lens' DoubleMatcher (Prelude.Maybe Prelude.Double)@
         * 'Proto.Envoy.Type.Matcher.Number_Fields.exact' @:: Lens' DoubleMatcher Prelude.Double@ -}
data DoubleMatcher
  = DoubleMatcher'_constructor {_DoubleMatcher'matchPattern :: !(Prelude.Maybe DoubleMatcher'MatchPattern),
                                _DoubleMatcher'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DoubleMatcher where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data DoubleMatcher'MatchPattern
  = DoubleMatcher'Range !Proto.Envoy.Type.Range.DoubleRange |
    DoubleMatcher'Exact !Prelude.Double
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField DoubleMatcher "maybe'matchPattern" (Prelude.Maybe DoubleMatcher'MatchPattern) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleMatcher'matchPattern
           (\ x__ y__ -> x__ {_DoubleMatcher'matchPattern = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoubleMatcher "maybe'range" (Prelude.Maybe Proto.Envoy.Type.Range.DoubleRange) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleMatcher'matchPattern
           (\ x__ y__ -> x__ {_DoubleMatcher'matchPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DoubleMatcher'Range x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DoubleMatcher'Range y__))
instance Data.ProtoLens.Field.HasField DoubleMatcher "range" Proto.Envoy.Type.Range.DoubleRange where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleMatcher'matchPattern
           (\ x__ y__ -> x__ {_DoubleMatcher'matchPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DoubleMatcher'Range x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DoubleMatcher'Range y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField DoubleMatcher "maybe'exact" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleMatcher'matchPattern
           (\ x__ y__ -> x__ {_DoubleMatcher'matchPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DoubleMatcher'Exact x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DoubleMatcher'Exact y__))
instance Data.ProtoLens.Field.HasField DoubleMatcher "exact" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleMatcher'matchPattern
           (\ x__ y__ -> x__ {_DoubleMatcher'matchPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DoubleMatcher'Exact x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DoubleMatcher'Exact y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message DoubleMatcher where
  messageName _ = Data.Text.pack "envoy.type.matcher.DoubleMatcher"
  packedMessageDescriptor _
    = "\n\
      \\rDoubleMatcher\DC2/\n\
      \\ENQrange\CAN\SOH \SOH(\v2\ETB.envoy.type.DoubleRangeH\NULR\ENQrange\DC2\SYN\n\
      \\ENQexact\CAN\STX \SOH(\SOHH\NULR\ENQexactB\DC4\n\
      \\rmatch_pattern\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        range__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "range"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Range.DoubleRange)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'range")) ::
              Data.ProtoLens.FieldDescriptor DoubleMatcher
        exact__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exact"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'exact")) ::
              Data.ProtoLens.FieldDescriptor DoubleMatcher
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, range__field_descriptor),
           (Data.ProtoLens.Tag 2, exact__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DoubleMatcher'_unknownFields
        (\ x__ y__ -> x__ {_DoubleMatcher'_unknownFields = y__})
  defMessage
    = DoubleMatcher'_constructor
        {_DoubleMatcher'matchPattern = Prelude.Nothing,
         _DoubleMatcher'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DoubleMatcher -> Data.ProtoLens.Encoding.Bytes.Parser DoubleMatcher
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
                                       "range"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"range") y x)
                        17
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "exact"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"exact") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DoubleMatcher"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'matchPattern") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (DoubleMatcher'Range v))
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
                (Prelude.Just (DoubleMatcher'Exact v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 17)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putFixed64
                          Data.ProtoLens.Encoding.Bytes.doubleToWord
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DoubleMatcher where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DoubleMatcher'_unknownFields x__)
             (Control.DeepSeq.deepseq (_DoubleMatcher'matchPattern x__) ())
instance Control.DeepSeq.NFData DoubleMatcher'MatchPattern where
  rnf (DoubleMatcher'Range x__) = Control.DeepSeq.rnf x__
  rnf (DoubleMatcher'Exact x__) = Control.DeepSeq.rnf x__
_DoubleMatcher'Range ::
  Data.ProtoLens.Prism.Prism' DoubleMatcher'MatchPattern Proto.Envoy.Type.Range.DoubleRange
_DoubleMatcher'Range
  = Data.ProtoLens.Prism.prism'
      DoubleMatcher'Range
      (\ p__
         -> case p__ of
              (DoubleMatcher'Range p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DoubleMatcher'Exact ::
  Data.ProtoLens.Prism.Prism' DoubleMatcher'MatchPattern Prelude.Double
_DoubleMatcher'Exact
  = Data.ProtoLens.Prism.prism'
      DoubleMatcher'Exact
      (\ p__
         -> case p__ of
              (DoubleMatcher'Exact p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\USenvoy/type/matcher/number.proto\DC2\DC2envoy.type.matcher\SUB\SYNenvoy/type/range.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"n\n\
    \\rDoubleMatcher\DC2/\n\
    \\ENQrange\CAN\SOH \SOH(\v2\ETB.envoy.type.DoubleRangeH\NULR\ENQrange\DC2\SYN\n\
    \\ENQexact\CAN\STX \SOH(\SOHH\NULR\ENQexactB\DC4\n\
    \\rmatch_pattern\DC2\ETX\248B\SOHB9\n\
    \ io.envoyproxy.envoy.type.matcherB\vNumberProtoP\SOH\186\128\200\209\ACK\STX\DLE\SOHJ\143\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\FS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL \n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL9\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NUL9\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \]\n\
    \\STX\EOT\NUL\DC2\EOT\DC1\NUL\FS\SOH\SUB, Specifies the way to match a double value.\n\
    \2# [#protodoc-title: Number matcher]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC1\b\NAK\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\DC2\STX\ESC\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\DC2\b\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX\DC3\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX\DC3\EOT&\n\
    \\158\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ETB\EOT\SUB\SUB\144\SOH If specified, the input double value must be in the range specified here.\n\
    \ Note: The range is using half-open interval semantics [start, end).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ETB\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB\DLE\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETB\CAN\EM\n\
    \^\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SUB\EOT\NAK\SUBQ If specified, the input double value must be equal to the value specified here.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SUB\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SUB\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SUB\DC3\DC4b\ACKproto3"