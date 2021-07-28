{- This file was auto-generated from envoy/type/matcher/v3/string.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.Matcher.V3.String (
        ListStringMatcher(), StringMatcher(),
        StringMatcher'MatchPattern(..), _StringMatcher'Exact,
        _StringMatcher'Prefix, _StringMatcher'Suffix,
        _StringMatcher'SafeRegex, _StringMatcher'Contains
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
import qualified Proto.Envoy.Type.Matcher.V3.Regex
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.V3.String_Fields.patterns' @:: Lens' ListStringMatcher [StringMatcher]@
         * 'Proto.Envoy.Type.Matcher.V3.String_Fields.vec'patterns' @:: Lens' ListStringMatcher (Data.Vector.Vector StringMatcher)@ -}
data ListStringMatcher
  = ListStringMatcher'_constructor {_ListStringMatcher'patterns :: !(Data.Vector.Vector StringMatcher),
                                    _ListStringMatcher'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListStringMatcher where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListStringMatcher "patterns" [StringMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListStringMatcher'patterns
           (\ x__ y__ -> x__ {_ListStringMatcher'patterns = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ListStringMatcher "vec'patterns" (Data.Vector.Vector StringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListStringMatcher'patterns
           (\ x__ y__ -> x__ {_ListStringMatcher'patterns = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListStringMatcher where
  messageName _
    = Data.Text.pack "envoy.type.matcher.v3.ListStringMatcher"
  packedMessageDescriptor _
    = "\n\
      \\DC1ListStringMatcher\DC2J\n\
      \\bpatterns\CAN\SOH \ETX(\v2$.envoy.type.matcher.v3.StringMatcherR\bpatternsB\b\250B\ENQ\146\SOH\STX\b\SOH:+\154\197\136\RS&\n\
      \$envoy.type.matcher.ListStringMatcher"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        patterns__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "patterns"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StringMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"patterns")) ::
              Data.ProtoLens.FieldDescriptor ListStringMatcher
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, patterns__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListStringMatcher'_unknownFields
        (\ x__ y__ -> x__ {_ListStringMatcher'_unknownFields = y__})
  defMessage
    = ListStringMatcher'_constructor
        {_ListStringMatcher'patterns = Data.Vector.Generic.empty,
         _ListStringMatcher'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListStringMatcher
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld StringMatcher
             -> Data.ProtoLens.Encoding.Bytes.Parser ListStringMatcher
        loop x mutable'patterns
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'patterns <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'patterns)
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
                              (Data.ProtoLens.Field.field @"vec'patterns") frozen'patterns x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "patterns"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'patterns y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'patterns
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'patterns <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'patterns)
          "ListStringMatcher"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'patterns") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ListStringMatcher where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListStringMatcher'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ListStringMatcher'patterns x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Type.Matcher.V3.String_Fields.ignoreCase' @:: Lens' StringMatcher Prelude.Bool@
         * 'Proto.Envoy.Type.Matcher.V3.String_Fields.maybe'matchPattern' @:: Lens' StringMatcher (Prelude.Maybe StringMatcher'MatchPattern)@
         * 'Proto.Envoy.Type.Matcher.V3.String_Fields.maybe'exact' @:: Lens' StringMatcher (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Type.Matcher.V3.String_Fields.exact' @:: Lens' StringMatcher Data.Text.Text@
         * 'Proto.Envoy.Type.Matcher.V3.String_Fields.maybe'prefix' @:: Lens' StringMatcher (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Type.Matcher.V3.String_Fields.prefix' @:: Lens' StringMatcher Data.Text.Text@
         * 'Proto.Envoy.Type.Matcher.V3.String_Fields.maybe'suffix' @:: Lens' StringMatcher (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Type.Matcher.V3.String_Fields.suffix' @:: Lens' StringMatcher Data.Text.Text@
         * 'Proto.Envoy.Type.Matcher.V3.String_Fields.maybe'safeRegex' @:: Lens' StringMatcher (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Regex.RegexMatcher)@
         * 'Proto.Envoy.Type.Matcher.V3.String_Fields.safeRegex' @:: Lens' StringMatcher Proto.Envoy.Type.Matcher.V3.Regex.RegexMatcher@
         * 'Proto.Envoy.Type.Matcher.V3.String_Fields.maybe'contains' @:: Lens' StringMatcher (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Type.Matcher.V3.String_Fields.contains' @:: Lens' StringMatcher Data.Text.Text@ -}
data StringMatcher
  = StringMatcher'_constructor {_StringMatcher'ignoreCase :: !Prelude.Bool,
                                _StringMatcher'matchPattern :: !(Prelude.Maybe StringMatcher'MatchPattern),
                                _StringMatcher'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StringMatcher where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data StringMatcher'MatchPattern
  = StringMatcher'Exact !Data.Text.Text |
    StringMatcher'Prefix !Data.Text.Text |
    StringMatcher'Suffix !Data.Text.Text |
    StringMatcher'SafeRegex !Proto.Envoy.Type.Matcher.V3.Regex.RegexMatcher |
    StringMatcher'Contains !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField StringMatcher "ignoreCase" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringMatcher'ignoreCase
           (\ x__ y__ -> x__ {_StringMatcher'ignoreCase = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringMatcher "maybe'matchPattern" (Prelude.Maybe StringMatcher'MatchPattern) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringMatcher'matchPattern
           (\ x__ y__ -> x__ {_StringMatcher'matchPattern = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringMatcher "maybe'exact" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringMatcher'matchPattern
           (\ x__ y__ -> x__ {_StringMatcher'matchPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StringMatcher'Exact x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StringMatcher'Exact y__))
instance Data.ProtoLens.Field.HasField StringMatcher "exact" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringMatcher'matchPattern
           (\ x__ y__ -> x__ {_StringMatcher'matchPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StringMatcher'Exact x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StringMatcher'Exact y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField StringMatcher "maybe'prefix" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringMatcher'matchPattern
           (\ x__ y__ -> x__ {_StringMatcher'matchPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StringMatcher'Prefix x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StringMatcher'Prefix y__))
instance Data.ProtoLens.Field.HasField StringMatcher "prefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringMatcher'matchPattern
           (\ x__ y__ -> x__ {_StringMatcher'matchPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StringMatcher'Prefix x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StringMatcher'Prefix y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField StringMatcher "maybe'suffix" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringMatcher'matchPattern
           (\ x__ y__ -> x__ {_StringMatcher'matchPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StringMatcher'Suffix x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StringMatcher'Suffix y__))
instance Data.ProtoLens.Field.HasField StringMatcher "suffix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringMatcher'matchPattern
           (\ x__ y__ -> x__ {_StringMatcher'matchPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StringMatcher'Suffix x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StringMatcher'Suffix y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField StringMatcher "maybe'safeRegex" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Regex.RegexMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringMatcher'matchPattern
           (\ x__ y__ -> x__ {_StringMatcher'matchPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StringMatcher'SafeRegex x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StringMatcher'SafeRegex y__))
instance Data.ProtoLens.Field.HasField StringMatcher "safeRegex" Proto.Envoy.Type.Matcher.V3.Regex.RegexMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringMatcher'matchPattern
           (\ x__ y__ -> x__ {_StringMatcher'matchPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StringMatcher'SafeRegex x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StringMatcher'SafeRegex y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField StringMatcher "maybe'contains" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringMatcher'matchPattern
           (\ x__ y__ -> x__ {_StringMatcher'matchPattern = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StringMatcher'Contains x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StringMatcher'Contains y__))
instance Data.ProtoLens.Field.HasField StringMatcher "contains" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringMatcher'matchPattern
           (\ x__ y__ -> x__ {_StringMatcher'matchPattern = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StringMatcher'Contains x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StringMatcher'Contains y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message StringMatcher where
  messageName _
    = Data.Text.pack "envoy.type.matcher.v3.StringMatcher"
  packedMessageDescriptor _
    = "\n\
      \\rStringMatcher\DC2\SYN\n\
      \\ENQexact\CAN\SOH \SOH(\tH\NULR\ENQexact\DC2!\n\
      \\ACKprefix\CAN\STX \SOH(\tH\NULR\ACKprefixB\a\250B\EOTr\STX\DLE\SOH\DC2!\n\
      \\ACKsuffix\CAN\ETX \SOH(\tH\NULR\ACKsuffixB\a\250B\EOTr\STX\DLE\SOH\DC2N\n\
      \\n\
      \safe_regex\CAN\ENQ \SOH(\v2#.envoy.type.matcher.v3.RegexMatcherH\NULR\tsafeRegexB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2%\n\
      \\bcontains\CAN\a \SOH(\tH\NULR\bcontainsB\a\250B\EOTr\STX\DLE\SOH\DC2\US\n\
      \\vignore_case\CAN\ACK \SOH(\bR\n\
      \ignoreCaseB\DC4\n\
      \\rmatch_pattern\DC2\ETX\248B\SOH:'\154\197\136\RS\"\n\
      \ envoy.type.matcher.StringMatcherJ\EOT\b\EOT\DLE\ENQR\ENQregex"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ignoreCase__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_case"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"ignoreCase")) ::
              Data.ProtoLens.FieldDescriptor StringMatcher
        exact__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exact"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'exact")) ::
              Data.ProtoLens.FieldDescriptor StringMatcher
        prefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prefix")) ::
              Data.ProtoLens.FieldDescriptor StringMatcher
        suffix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "suffix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'suffix")) ::
              Data.ProtoLens.FieldDescriptor StringMatcher
        safeRegex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "safe_regex"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.Regex.RegexMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'safeRegex")) ::
              Data.ProtoLens.FieldDescriptor StringMatcher
        contains__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "contains"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'contains")) ::
              Data.ProtoLens.FieldDescriptor StringMatcher
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 6, ignoreCase__field_descriptor),
           (Data.ProtoLens.Tag 1, exact__field_descriptor),
           (Data.ProtoLens.Tag 2, prefix__field_descriptor),
           (Data.ProtoLens.Tag 3, suffix__field_descriptor),
           (Data.ProtoLens.Tag 5, safeRegex__field_descriptor),
           (Data.ProtoLens.Tag 7, contains__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StringMatcher'_unknownFields
        (\ x__ y__ -> x__ {_StringMatcher'_unknownFields = y__})
  defMessage
    = StringMatcher'_constructor
        {_StringMatcher'ignoreCase = Data.ProtoLens.fieldDefault,
         _StringMatcher'matchPattern = Prelude.Nothing,
         _StringMatcher'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StringMatcher -> Data.ProtoLens.Encoding.Bytes.Parser StringMatcher
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
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_case"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ignoreCase") y x)
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
                                       "exact"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"exact") y x)
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
                                       "prefix"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"prefix") y x)
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
                                       "suffix"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"suffix") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "safe_regex"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"safeRegex") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "contains"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"contains") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StringMatcher"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"ignoreCase") _x
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
                       (Data.ProtoLens.Field.field @"maybe'matchPattern") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (StringMatcher'Exact v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.Text.Encoding.encodeUtf8
                             v)
                   (Prelude.Just (StringMatcher'Prefix v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.Text.Encoding.encodeUtf8
                             v)
                   (Prelude.Just (StringMatcher'Suffix v))
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
                   (Prelude.Just (StringMatcher'SafeRegex v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (StringMatcher'Contains v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
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
instance Control.DeepSeq.NFData StringMatcher where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StringMatcher'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StringMatcher'ignoreCase x__)
                (Control.DeepSeq.deepseq (_StringMatcher'matchPattern x__) ()))
instance Control.DeepSeq.NFData StringMatcher'MatchPattern where
  rnf (StringMatcher'Exact x__) = Control.DeepSeq.rnf x__
  rnf (StringMatcher'Prefix x__) = Control.DeepSeq.rnf x__
  rnf (StringMatcher'Suffix x__) = Control.DeepSeq.rnf x__
  rnf (StringMatcher'SafeRegex x__) = Control.DeepSeq.rnf x__
  rnf (StringMatcher'Contains x__) = Control.DeepSeq.rnf x__
_StringMatcher'Exact ::
  Data.ProtoLens.Prism.Prism' StringMatcher'MatchPattern Data.Text.Text
_StringMatcher'Exact
  = Data.ProtoLens.Prism.prism'
      StringMatcher'Exact
      (\ p__
         -> case p__ of
              (StringMatcher'Exact p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StringMatcher'Prefix ::
  Data.ProtoLens.Prism.Prism' StringMatcher'MatchPattern Data.Text.Text
_StringMatcher'Prefix
  = Data.ProtoLens.Prism.prism'
      StringMatcher'Prefix
      (\ p__
         -> case p__ of
              (StringMatcher'Prefix p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StringMatcher'Suffix ::
  Data.ProtoLens.Prism.Prism' StringMatcher'MatchPattern Data.Text.Text
_StringMatcher'Suffix
  = Data.ProtoLens.Prism.prism'
      StringMatcher'Suffix
      (\ p__
         -> case p__ of
              (StringMatcher'Suffix p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StringMatcher'SafeRegex ::
  Data.ProtoLens.Prism.Prism' StringMatcher'MatchPattern Proto.Envoy.Type.Matcher.V3.Regex.RegexMatcher
_StringMatcher'SafeRegex
  = Data.ProtoLens.Prism.prism'
      StringMatcher'SafeRegex
      (\ p__
         -> case p__ of
              (StringMatcher'SafeRegex p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StringMatcher'Contains ::
  Data.ProtoLens.Prism.Prism' StringMatcher'MatchPattern Data.Text.Text
_StringMatcher'Contains
  = Data.ProtoLens.Prism.prism'
      StringMatcher'Contains
      (\ p__
         -> case p__ of
              (StringMatcher'Contains p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"envoy/type/matcher/v3/string.proto\DC2\NAKenvoy.type.matcher.v3\SUB!envoy/type/matcher/v3/regex.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\209\STX\n\
    \\rStringMatcher\DC2\SYN\n\
    \\ENQexact\CAN\SOH \SOH(\tH\NULR\ENQexact\DC2!\n\
    \\ACKprefix\CAN\STX \SOH(\tH\NULR\ACKprefixB\a\250B\EOTr\STX\DLE\SOH\DC2!\n\
    \\ACKsuffix\CAN\ETX \SOH(\tH\NULR\ACKsuffixB\a\250B\EOTr\STX\DLE\SOH\DC2N\n\
    \\n\
    \safe_regex\CAN\ENQ \SOH(\v2#.envoy.type.matcher.v3.RegexMatcherH\NULR\tsafeRegexB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2%\n\
    \\bcontains\CAN\a \SOH(\tH\NULR\bcontainsB\a\250B\EOTr\STX\DLE\SOH\DC2\US\n\
    \\vignore_case\CAN\ACK \SOH(\bR\n\
    \ignoreCaseB\DC4\n\
    \\rmatch_pattern\DC2\ETX\248B\SOH:'\154\197\136\RS\"\n\
    \ envoy.type.matcher.StringMatcherJ\EOT\b\EOT\DLE\ENQR\ENQregex\"\140\SOH\n\
    \\DC1ListStringMatcher\DC2J\n\
    \\bpatterns\CAN\SOH \ETX(\v2$.envoy.type.matcher.v3.StringMatcherR\bpatternsB\b\250B\ENQ\146\SOH\STX\b\SOH:+\154\197\136\RS&\n\
    \$envoy.type.matcher.ListStringMatcherB<\n\
    \#io.envoyproxy.envoy.type.matcher.v3B\vStringProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\129\DLE\n\
    \\ACK\DC2\EOT\NUL\NULL\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL+\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \n\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NULD\SOH\SUB= Specifies the way to match a string.\n\
    \ [#next-free-field: 8]\n\
    \2# [#protodoc-title: String matcher]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\NAK\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC4\STXb\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC4\STXb\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\t\DC2\ETX\SYN\STX\r\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETX\SYN\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETX\SYN\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETX\SYN\v\f\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\n\
    \\DC2\ETX\CAN\STX\DC3\n\
    \\v\n\
    \\EOT\EOT\NUL\n\
    \\NUL\DC2\ETX\CAN\v\DC2\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\SUB\STX>\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\SUB\b\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX\ESC\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX\ESC\EOT&\n\
    \\129\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\"\EOT\NAK\SUBt The input string must match exactly the string specified here.\n\
    \\n\
    \ Examples:\n\
    \\n\
    \ * *abc* only matches the value *abc*.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\"\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\"\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\"\DC3\DC4\n\
    \\181\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX*\EOT?\SUB\167\SOH The input string must have the prefix specified here.\n\
    \ Note: empty prefix is not allowed, please use regex instead.\n\
    \\n\
    \ Examples:\n\
    \\n\
    \ * *abc* matches the value *abc.xyz*\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX*\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX*\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX*\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX*\SYN>\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\SO\DC2\ETX*\ETB=\n\
    \\181\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX2\EOT?\SUB\167\SOH The input string must have the suffix specified here.\n\
    \ Note: empty prefix is not allowed, please use regex instead.\n\
    \\n\
    \ Examples:\n\
    \\n\
    \ * *abc* matches the value *xyz.abc*\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX2\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX2\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX2\SYN>\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\SO\DC2\ETX2\ETB=\n\
    \Q\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX5\EOTN\SUBD The input string must match the regular expression specified here.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX5\EOT\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX5\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX5\RS\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX5 M\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\175\b\DC1\DC2\ETX5!L\n\
    \\196\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX=\EOTA\SUB\182\SOH The input string must have the substring specified here.\n\
    \ Note: empty contains match is not allowed, please use regex instead.\n\
    \\n\
    \ Examples:\n\
    \\n\
    \ * *abc* matches the value *xyz.abc.def*\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX=\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX=\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX=\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX=\CAN@\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\175\b\SO\DC2\ETX=\EM?\n\
    \\237\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXC\STX\ETB\SUB\223\SOH If true, indicates the exact/prefix/suffix matching should be case insensitive. This has no\n\
    \ effect for the safe_regex match.\n\
    \ For example, the matcher *data* will match both input string *Data* and *data* if set to true.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETXC\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXC\a\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXC\NAK\SYN\n\
    \9\n\
    \\STX\EOT\SOH\DC2\EOTG\NULL\SOH\SUB- Specifies a list of ways to match a string.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXG\b\EM\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOTH\STXI-\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOTH\STXI-\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXK\STXS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETXK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXK\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXK\EM!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXK$%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETXK&R\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\DC2\DC2\ETXK'Qb\ACKproto3"