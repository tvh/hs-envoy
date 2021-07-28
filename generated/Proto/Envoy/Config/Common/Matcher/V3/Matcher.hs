{- This file was auto-generated from envoy/config/common/matcher/v3/matcher.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Common.Matcher.V3.Matcher (
        HttpGenericBodyMatch(), HttpGenericBodyMatch'GenericTextMatch(),
        HttpGenericBodyMatch'GenericTextMatch'Rule(..),
        _HttpGenericBodyMatch'GenericTextMatch'StringMatch,
        _HttpGenericBodyMatch'GenericTextMatch'BinaryMatch,
        HttpHeadersMatch(), MatchPredicate(), MatchPredicate'Rule(..),
        _MatchPredicate'OrMatch, _MatchPredicate'AndMatch,
        _MatchPredicate'NotMatch, _MatchPredicate'AnyMatch,
        _MatchPredicate'HttpRequestHeadersMatch,
        _MatchPredicate'HttpRequestTrailersMatch,
        _MatchPredicate'HttpResponseHeadersMatch,
        _MatchPredicate'HttpResponseTrailersMatch,
        _MatchPredicate'HttpRequestGenericBodyMatch,
        _MatchPredicate'HttpResponseGenericBodyMatch,
        MatchPredicate'MatchSet(), Matcher(), Matcher'MatcherType(..),
        _Matcher'MatcherList', _Matcher'MatcherTree',
        Matcher'MatcherList(), Matcher'MatcherList'FieldMatcher(),
        Matcher'MatcherList'Predicate(),
        Matcher'MatcherList'Predicate'MatchType(..),
        _Matcher'MatcherList'Predicate'SinglePredicate',
        _Matcher'MatcherList'Predicate'OrMatcher,
        _Matcher'MatcherList'Predicate'AndMatcher,
        _Matcher'MatcherList'Predicate'NotMatcher,
        Matcher'MatcherList'Predicate'PredicateList(),
        Matcher'MatcherList'Predicate'SinglePredicate(),
        Matcher'MatcherList'Predicate'SinglePredicate'Matcher(..),
        _Matcher'MatcherList'Predicate'SinglePredicate'ValueMatch,
        _Matcher'MatcherList'Predicate'SinglePredicate'CustomMatch,
        Matcher'MatcherTree(), Matcher'MatcherTree'TreeType(..),
        _Matcher'MatcherTree'ExactMatchMap,
        _Matcher'MatcherTree'PrefixMatchMap,
        _Matcher'MatcherTree'CustomMatch, Matcher'MatcherTree'MatchMap(),
        Matcher'MatcherTree'MatchMap'MapEntry(), Matcher'OnMatch(),
        Matcher'OnMatch'OnMatch(..), _Matcher'OnMatch'Matcher,
        _Matcher'OnMatch'Action
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
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.bytesLimit' @:: Lens' HttpGenericBodyMatch Data.Word.Word32@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.patterns' @:: Lens' HttpGenericBodyMatch [HttpGenericBodyMatch'GenericTextMatch]@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.vec'patterns' @:: Lens' HttpGenericBodyMatch (Data.Vector.Vector HttpGenericBodyMatch'GenericTextMatch)@ -}
data HttpGenericBodyMatch
  = HttpGenericBodyMatch'_constructor {_HttpGenericBodyMatch'bytesLimit :: !Data.Word.Word32,
                                       _HttpGenericBodyMatch'patterns :: !(Data.Vector.Vector HttpGenericBodyMatch'GenericTextMatch),
                                       _HttpGenericBodyMatch'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpGenericBodyMatch where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpGenericBodyMatch "bytesLimit" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGenericBodyMatch'bytesLimit
           (\ x__ y__ -> x__ {_HttpGenericBodyMatch'bytesLimit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpGenericBodyMatch "patterns" [HttpGenericBodyMatch'GenericTextMatch] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGenericBodyMatch'patterns
           (\ x__ y__ -> x__ {_HttpGenericBodyMatch'patterns = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HttpGenericBodyMatch "vec'patterns" (Data.Vector.Vector HttpGenericBodyMatch'GenericTextMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGenericBodyMatch'patterns
           (\ x__ y__ -> x__ {_HttpGenericBodyMatch'patterns = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpGenericBodyMatch where
  messageName _
    = Data.Text.pack
        "envoy.config.common.matcher.v3.HttpGenericBodyMatch"
  packedMessageDescriptor _
    = "\n\
      \\DC4HttpGenericBodyMatch\DC2\US\n\
      \\vbytes_limit\CAN\SOH \SOH(\rR\n\
      \bytesLimit\DC2k\n\
      \\bpatterns\CAN\STX \ETX(\v2E.envoy.config.common.matcher.v3.HttpGenericBodyMatch.GenericTextMatchR\bpatternsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB{\n\
      \\DLEGenericTextMatch\DC2,\n\
      \\fstring_match\CAN\SOH \SOH(\tH\NULR\vstringMatchB\a\250B\EOTr\STX\DLE\SOH\DC2,\n\
      \\fbinary_match\CAN\STX \SOH(\fH\NULR\vbinaryMatchB\a\250B\EOTz\STX\DLE\SOHB\v\n\
      \\EOTrule\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bytesLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_limit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bytesLimit")) ::
              Data.ProtoLens.FieldDescriptor HttpGenericBodyMatch
        patterns__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "patterns"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpGenericBodyMatch'GenericTextMatch)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"patterns")) ::
              Data.ProtoLens.FieldDescriptor HttpGenericBodyMatch
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bytesLimit__field_descriptor),
           (Data.ProtoLens.Tag 2, patterns__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpGenericBodyMatch'_unknownFields
        (\ x__ y__ -> x__ {_HttpGenericBodyMatch'_unknownFields = y__})
  defMessage
    = HttpGenericBodyMatch'_constructor
        {_HttpGenericBodyMatch'bytesLimit = Data.ProtoLens.fieldDefault,
         _HttpGenericBodyMatch'patterns = Data.Vector.Generic.empty,
         _HttpGenericBodyMatch'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpGenericBodyMatch
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld HttpGenericBodyMatch'GenericTextMatch
             -> Data.ProtoLens.Encoding.Bytes.Parser HttpGenericBodyMatch
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bytes_limit"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesLimit") y x)
                                  mutable'patterns
                        18
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
          "HttpGenericBodyMatch"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"bytesLimit") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'patterns") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData HttpGenericBodyMatch where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpGenericBodyMatch'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpGenericBodyMatch'bytesLimit x__)
                (Control.DeepSeq.deepseq (_HttpGenericBodyMatch'patterns x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'rule' @:: Lens' HttpGenericBodyMatch'GenericTextMatch (Prelude.Maybe HttpGenericBodyMatch'GenericTextMatch'Rule)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'stringMatch' @:: Lens' HttpGenericBodyMatch'GenericTextMatch (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.stringMatch' @:: Lens' HttpGenericBodyMatch'GenericTextMatch Data.Text.Text@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'binaryMatch' @:: Lens' HttpGenericBodyMatch'GenericTextMatch (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.binaryMatch' @:: Lens' HttpGenericBodyMatch'GenericTextMatch Data.ByteString.ByteString@ -}
data HttpGenericBodyMatch'GenericTextMatch
  = HttpGenericBodyMatch'GenericTextMatch'_constructor {_HttpGenericBodyMatch'GenericTextMatch'rule :: !(Prelude.Maybe HttpGenericBodyMatch'GenericTextMatch'Rule),
                                                        _HttpGenericBodyMatch'GenericTextMatch'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpGenericBodyMatch'GenericTextMatch where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data HttpGenericBodyMatch'GenericTextMatch'Rule
  = HttpGenericBodyMatch'GenericTextMatch'StringMatch !Data.Text.Text |
    HttpGenericBodyMatch'GenericTextMatch'BinaryMatch !Data.ByteString.ByteString
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField HttpGenericBodyMatch'GenericTextMatch "maybe'rule" (Prelude.Maybe HttpGenericBodyMatch'GenericTextMatch'Rule) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGenericBodyMatch'GenericTextMatch'rule
           (\ x__ y__
              -> x__ {_HttpGenericBodyMatch'GenericTextMatch'rule = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpGenericBodyMatch'GenericTextMatch "maybe'stringMatch" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGenericBodyMatch'GenericTextMatch'rule
           (\ x__ y__
              -> x__ {_HttpGenericBodyMatch'GenericTextMatch'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpGenericBodyMatch'GenericTextMatch'StringMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   HttpGenericBodyMatch'GenericTextMatch'StringMatch y__))
instance Data.ProtoLens.Field.HasField HttpGenericBodyMatch'GenericTextMatch "stringMatch" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGenericBodyMatch'GenericTextMatch'rule
           (\ x__ y__
              -> x__ {_HttpGenericBodyMatch'GenericTextMatch'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpGenericBodyMatch'GenericTextMatch'StringMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      HttpGenericBodyMatch'GenericTextMatch'StringMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField HttpGenericBodyMatch'GenericTextMatch "maybe'binaryMatch" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGenericBodyMatch'GenericTextMatch'rule
           (\ x__ y__
              -> x__ {_HttpGenericBodyMatch'GenericTextMatch'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpGenericBodyMatch'GenericTextMatch'BinaryMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   HttpGenericBodyMatch'GenericTextMatch'BinaryMatch y__))
instance Data.ProtoLens.Field.HasField HttpGenericBodyMatch'GenericTextMatch "binaryMatch" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGenericBodyMatch'GenericTextMatch'rule
           (\ x__ y__
              -> x__ {_HttpGenericBodyMatch'GenericTextMatch'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpGenericBodyMatch'GenericTextMatch'BinaryMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      HttpGenericBodyMatch'GenericTextMatch'BinaryMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message HttpGenericBodyMatch'GenericTextMatch where
  messageName _
    = Data.Text.pack
        "envoy.config.common.matcher.v3.HttpGenericBodyMatch.GenericTextMatch"
  packedMessageDescriptor _
    = "\n\
      \\DLEGenericTextMatch\DC2,\n\
      \\fstring_match\CAN\SOH \SOH(\tH\NULR\vstringMatchB\a\250B\EOTr\STX\DLE\SOH\DC2,\n\
      \\fbinary_match\CAN\STX \SOH(\fH\NULR\vbinaryMatchB\a\250B\EOTz\STX\DLE\SOHB\v\n\
      \\EOTrule\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        stringMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string_match"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stringMatch")) ::
              Data.ProtoLens.FieldDescriptor HttpGenericBodyMatch'GenericTextMatch
        binaryMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "binary_match"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'binaryMatch")) ::
              Data.ProtoLens.FieldDescriptor HttpGenericBodyMatch'GenericTextMatch
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, stringMatch__field_descriptor),
           (Data.ProtoLens.Tag 2, binaryMatch__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpGenericBodyMatch'GenericTextMatch'_unknownFields
        (\ x__ y__
           -> x__
                {_HttpGenericBodyMatch'GenericTextMatch'_unknownFields = y__})
  defMessage
    = HttpGenericBodyMatch'GenericTextMatch'_constructor
        {_HttpGenericBodyMatch'GenericTextMatch'rule = Prelude.Nothing,
         _HttpGenericBodyMatch'GenericTextMatch'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpGenericBodyMatch'GenericTextMatch
          -> Data.ProtoLens.Encoding.Bytes.Parser HttpGenericBodyMatch'GenericTextMatch
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
                                       "string_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stringMatch") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "binary_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"binaryMatch") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GenericTextMatch"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rule") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (HttpGenericBodyMatch'GenericTextMatch'StringMatch v))
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
                (Prelude.Just (HttpGenericBodyMatch'GenericTextMatch'BinaryMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HttpGenericBodyMatch'GenericTextMatch where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpGenericBodyMatch'GenericTextMatch'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpGenericBodyMatch'GenericTextMatch'rule x__) ())
instance Control.DeepSeq.NFData HttpGenericBodyMatch'GenericTextMatch'Rule where
  rnf (HttpGenericBodyMatch'GenericTextMatch'StringMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (HttpGenericBodyMatch'GenericTextMatch'BinaryMatch x__)
    = Control.DeepSeq.rnf x__
_HttpGenericBodyMatch'GenericTextMatch'StringMatch ::
  Data.ProtoLens.Prism.Prism' HttpGenericBodyMatch'GenericTextMatch'Rule Data.Text.Text
_HttpGenericBodyMatch'GenericTextMatch'StringMatch
  = Data.ProtoLens.Prism.prism'
      HttpGenericBodyMatch'GenericTextMatch'StringMatch
      (\ p__
         -> case p__ of
              (HttpGenericBodyMatch'GenericTextMatch'StringMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpGenericBodyMatch'GenericTextMatch'BinaryMatch ::
  Data.ProtoLens.Prism.Prism' HttpGenericBodyMatch'GenericTextMatch'Rule Data.ByteString.ByteString
_HttpGenericBodyMatch'GenericTextMatch'BinaryMatch
  = Data.ProtoLens.Prism.prism'
      HttpGenericBodyMatch'GenericTextMatch'BinaryMatch
      (\ p__
         -> case p__ of
              (HttpGenericBodyMatch'GenericTextMatch'BinaryMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.headers' @:: Lens' HttpHeadersMatch [Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher]@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.vec'headers' @:: Lens' HttpHeadersMatch (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)@ -}
data HttpHeadersMatch
  = HttpHeadersMatch'_constructor {_HttpHeadersMatch'headers :: !(Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher),
                                   _HttpHeadersMatch'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpHeadersMatch where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpHeadersMatch "headers" [Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpHeadersMatch'headers
           (\ x__ y__ -> x__ {_HttpHeadersMatch'headers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HttpHeadersMatch "vec'headers" (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpHeadersMatch'headers
           (\ x__ y__ -> x__ {_HttpHeadersMatch'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpHeadersMatch where
  messageName _
    = Data.Text.pack "envoy.config.common.matcher.v3.HttpHeadersMatch"
  packedMessageDescriptor _
    = "\n\
      \\DLEHttpHeadersMatch\DC2>\n\
      \\aheaders\CAN\SOH \ETX(\v2$.envoy.config.route.v3.HeaderMatcherR\aheaders"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor HttpHeadersMatch
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, headers__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpHeadersMatch'_unknownFields
        (\ x__ y__ -> x__ {_HttpHeadersMatch'_unknownFields = y__})
  defMessage
    = HttpHeadersMatch'_constructor
        {_HttpHeadersMatch'headers = Data.Vector.Generic.empty,
         _HttpHeadersMatch'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpHeadersMatch
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher
             -> Data.ProtoLens.Encoding.Bytes.Parser HttpHeadersMatch
        loop x mutable'headers
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'headers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'headers)
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
                              (Data.ProtoLens.Field.field @"vec'headers") frozen'headers x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "headers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'headers y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'headers
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'headers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'headers)
          "HttpHeadersMatch"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'headers") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HttpHeadersMatch where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpHeadersMatch'_unknownFields x__)
             (Control.DeepSeq.deepseq (_HttpHeadersMatch'headers x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'rule' @:: Lens' MatchPredicate (Prelude.Maybe MatchPredicate'Rule)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'orMatch' @:: Lens' MatchPredicate (Prelude.Maybe MatchPredicate'MatchSet)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.orMatch' @:: Lens' MatchPredicate MatchPredicate'MatchSet@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'andMatch' @:: Lens' MatchPredicate (Prelude.Maybe MatchPredicate'MatchSet)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.andMatch' @:: Lens' MatchPredicate MatchPredicate'MatchSet@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'notMatch' @:: Lens' MatchPredicate (Prelude.Maybe MatchPredicate)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.notMatch' @:: Lens' MatchPredicate MatchPredicate@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'anyMatch' @:: Lens' MatchPredicate (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.anyMatch' @:: Lens' MatchPredicate Prelude.Bool@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'httpRequestHeadersMatch' @:: Lens' MatchPredicate (Prelude.Maybe HttpHeadersMatch)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.httpRequestHeadersMatch' @:: Lens' MatchPredicate HttpHeadersMatch@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'httpRequestTrailersMatch' @:: Lens' MatchPredicate (Prelude.Maybe HttpHeadersMatch)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.httpRequestTrailersMatch' @:: Lens' MatchPredicate HttpHeadersMatch@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'httpResponseHeadersMatch' @:: Lens' MatchPredicate (Prelude.Maybe HttpHeadersMatch)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.httpResponseHeadersMatch' @:: Lens' MatchPredicate HttpHeadersMatch@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'httpResponseTrailersMatch' @:: Lens' MatchPredicate (Prelude.Maybe HttpHeadersMatch)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.httpResponseTrailersMatch' @:: Lens' MatchPredicate HttpHeadersMatch@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'httpRequestGenericBodyMatch' @:: Lens' MatchPredicate (Prelude.Maybe HttpGenericBodyMatch)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.httpRequestGenericBodyMatch' @:: Lens' MatchPredicate HttpGenericBodyMatch@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'httpResponseGenericBodyMatch' @:: Lens' MatchPredicate (Prelude.Maybe HttpGenericBodyMatch)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.httpResponseGenericBodyMatch' @:: Lens' MatchPredicate HttpGenericBodyMatch@ -}
data MatchPredicate
  = MatchPredicate'_constructor {_MatchPredicate'rule :: !(Prelude.Maybe MatchPredicate'Rule),
                                 _MatchPredicate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MatchPredicate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data MatchPredicate'Rule
  = MatchPredicate'OrMatch !MatchPredicate'MatchSet |
    MatchPredicate'AndMatch !MatchPredicate'MatchSet |
    MatchPredicate'NotMatch !MatchPredicate |
    MatchPredicate'AnyMatch !Prelude.Bool |
    MatchPredicate'HttpRequestHeadersMatch !HttpHeadersMatch |
    MatchPredicate'HttpRequestTrailersMatch !HttpHeadersMatch |
    MatchPredicate'HttpResponseHeadersMatch !HttpHeadersMatch |
    MatchPredicate'HttpResponseTrailersMatch !HttpHeadersMatch |
    MatchPredicate'HttpRequestGenericBodyMatch !HttpGenericBodyMatch |
    MatchPredicate'HttpResponseGenericBodyMatch !HttpGenericBodyMatch
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'rule" (Prelude.Maybe MatchPredicate'Rule) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'orMatch" (Prelude.Maybe MatchPredicate'MatchSet) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'OrMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap MatchPredicate'OrMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "orMatch" MatchPredicate'MatchSet where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'OrMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap MatchPredicate'OrMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'andMatch" (Prelude.Maybe MatchPredicate'MatchSet) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'AndMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap MatchPredicate'AndMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "andMatch" MatchPredicate'MatchSet where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'AndMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap MatchPredicate'AndMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'notMatch" (Prelude.Maybe MatchPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'NotMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap MatchPredicate'NotMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "notMatch" MatchPredicate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'NotMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap MatchPredicate'NotMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'anyMatch" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'AnyMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap MatchPredicate'AnyMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "anyMatch" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'AnyMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap MatchPredicate'AnyMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'httpRequestHeadersMatch" (Prelude.Maybe HttpHeadersMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'HttpRequestHeadersMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap MatchPredicate'HttpRequestHeadersMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "httpRequestHeadersMatch" HttpHeadersMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'HttpRequestHeadersMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap MatchPredicate'HttpRequestHeadersMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'httpRequestTrailersMatch" (Prelude.Maybe HttpHeadersMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'HttpRequestTrailersMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap MatchPredicate'HttpRequestTrailersMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "httpRequestTrailersMatch" HttpHeadersMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'HttpRequestTrailersMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap MatchPredicate'HttpRequestTrailersMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'httpResponseHeadersMatch" (Prelude.Maybe HttpHeadersMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'HttpResponseHeadersMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap MatchPredicate'HttpResponseHeadersMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "httpResponseHeadersMatch" HttpHeadersMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'HttpResponseHeadersMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap MatchPredicate'HttpResponseHeadersMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'httpResponseTrailersMatch" (Prelude.Maybe HttpHeadersMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'HttpResponseTrailersMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap MatchPredicate'HttpResponseTrailersMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "httpResponseTrailersMatch" HttpHeadersMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'HttpResponseTrailersMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap MatchPredicate'HttpResponseTrailersMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'httpRequestGenericBodyMatch" (Prelude.Maybe HttpGenericBodyMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'HttpRequestGenericBodyMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap MatchPredicate'HttpRequestGenericBodyMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "httpRequestGenericBodyMatch" HttpGenericBodyMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'HttpRequestGenericBodyMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap MatchPredicate'HttpRequestGenericBodyMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MatchPredicate "maybe'httpResponseGenericBodyMatch" (Prelude.Maybe HttpGenericBodyMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MatchPredicate'HttpResponseGenericBodyMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap MatchPredicate'HttpResponseGenericBodyMatch y__))
instance Data.ProtoLens.Field.HasField MatchPredicate "httpResponseGenericBodyMatch" HttpGenericBodyMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'rule
           (\ x__ y__ -> x__ {_MatchPredicate'rule = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MatchPredicate'HttpResponseGenericBodyMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap MatchPredicate'HttpResponseGenericBodyMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message MatchPredicate where
  messageName _
    = Data.Text.pack "envoy.config.common.matcher.v3.MatchPredicate"
  packedMessageDescriptor _
    = "\n\
      \\SOMatchPredicate\DC2T\n\
      \\bor_match\CAN\SOH \SOH(\v27.envoy.config.common.matcher.v3.MatchPredicate.MatchSetH\NULR\aorMatch\DC2V\n\
      \\tand_match\CAN\STX \SOH(\v27.envoy.config.common.matcher.v3.MatchPredicate.MatchSetH\NULR\bandMatch\DC2M\n\
      \\tnot_match\CAN\ETX \SOH(\v2..envoy.config.common.matcher.v3.MatchPredicateH\NULR\bnotMatch\DC2&\n\
      \\tany_match\CAN\EOT \SOH(\bH\NULR\banyMatchB\a\250B\EOTj\STX\b\SOH\DC2o\n\
      \\SUBhttp_request_headers_match\CAN\ENQ \SOH(\v20.envoy.config.common.matcher.v3.HttpHeadersMatchH\NULR\ETBhttpRequestHeadersMatch\DC2q\n\
      \\ESChttp_request_trailers_match\CAN\ACK \SOH(\v20.envoy.config.common.matcher.v3.HttpHeadersMatchH\NULR\CANhttpRequestTrailersMatch\DC2q\n\
      \\ESChttp_response_headers_match\CAN\a \SOH(\v20.envoy.config.common.matcher.v3.HttpHeadersMatchH\NULR\CANhttpResponseHeadersMatch\DC2s\n\
      \\FShttp_response_trailers_match\CAN\b \SOH(\v20.envoy.config.common.matcher.v3.HttpHeadersMatchH\NULR\EMhttpResponseTrailersMatch\DC2|\n\
      \\UShttp_request_generic_body_match\CAN\t \SOH(\v24.envoy.config.common.matcher.v3.HttpGenericBodyMatchH\NULR\ESChttpRequestGenericBodyMatch\DC2~\n\
      \ http_response_generic_body_match\CAN\n\
      \ \SOH(\v24.envoy.config.common.matcher.v3.HttpGenericBodyMatchH\NULR\FShttpResponseGenericBodyMatch\SUBZ\n\
      \\bMatchSet\DC2N\n\
      \\ENQrules\CAN\SOH \ETX(\v2..envoy.config.common.matcher.v3.MatchPredicateR\ENQrulesB\b\250B\ENQ\146\SOH\STX\b\STXB\v\n\
      \\EOTrule\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        orMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "or_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MatchPredicate'MatchSet)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'orMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        andMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "and_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MatchPredicate'MatchSet)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'andMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        notMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MatchPredicate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'notMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        anyMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "any_match"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'anyMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        httpRequestHeadersMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_request_headers_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpHeadersMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpRequestHeadersMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        httpRequestTrailersMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_request_trailers_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpHeadersMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpRequestTrailersMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        httpResponseHeadersMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_response_headers_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpHeadersMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpResponseHeadersMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        httpResponseTrailersMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_response_trailers_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpHeadersMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpResponseTrailersMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        httpRequestGenericBodyMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_request_generic_body_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpGenericBodyMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'httpRequestGenericBodyMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
        httpResponseGenericBodyMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_response_generic_body_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpGenericBodyMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'httpResponseGenericBodyMatch")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, orMatch__field_descriptor),
           (Data.ProtoLens.Tag 2, andMatch__field_descriptor),
           (Data.ProtoLens.Tag 3, notMatch__field_descriptor),
           (Data.ProtoLens.Tag 4, anyMatch__field_descriptor),
           (Data.ProtoLens.Tag 5, httpRequestHeadersMatch__field_descriptor),
           (Data.ProtoLens.Tag 6, httpRequestTrailersMatch__field_descriptor),
           (Data.ProtoLens.Tag 7, httpResponseHeadersMatch__field_descriptor),
           (Data.ProtoLens.Tag 8, 
            httpResponseTrailersMatch__field_descriptor),
           (Data.ProtoLens.Tag 9, 
            httpRequestGenericBodyMatch__field_descriptor),
           (Data.ProtoLens.Tag 10, 
            httpResponseGenericBodyMatch__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MatchPredicate'_unknownFields
        (\ x__ y__ -> x__ {_MatchPredicate'_unknownFields = y__})
  defMessage
    = MatchPredicate'_constructor
        {_MatchPredicate'rule = Prelude.Nothing,
         _MatchPredicate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MatchPredicate
          -> Data.ProtoLens.Encoding.Bytes.Parser MatchPredicate
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
                                       "or_match"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"orMatch") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "and_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"andMatch") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "not_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"notMatch") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "any_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"anyMatch") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_request_headers_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpRequestHeadersMatch") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_request_trailers_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpRequestTrailersMatch") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_response_headers_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpResponseHeadersMatch") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_response_trailers_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpResponseTrailersMatch") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_request_generic_body_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpRequestGenericBodyMatch")
                                     y
                                     x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_response_generic_body_match"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpResponseGenericBodyMatch")
                                     y
                                     x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MatchPredicate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rule") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (MatchPredicate'OrMatch v))
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
                (Prelude.Just (MatchPredicate'AndMatch v))
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
                (Prelude.Just (MatchPredicate'NotMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (MatchPredicate'AnyMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (MatchPredicate'HttpRequestHeadersMatch v))
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
                (Prelude.Just (MatchPredicate'HttpRequestTrailersMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (MatchPredicate'HttpResponseHeadersMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (MatchPredicate'HttpResponseTrailersMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (MatchPredicate'HttpRequestGenericBodyMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (MatchPredicate'HttpResponseGenericBodyMatch v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
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
instance Control.DeepSeq.NFData MatchPredicate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MatchPredicate'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MatchPredicate'rule x__) ())
instance Control.DeepSeq.NFData MatchPredicate'Rule where
  rnf (MatchPredicate'OrMatch x__) = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'AndMatch x__) = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'NotMatch x__) = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'AnyMatch x__) = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'HttpRequestHeadersMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'HttpRequestTrailersMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'HttpResponseHeadersMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'HttpResponseTrailersMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'HttpRequestGenericBodyMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (MatchPredicate'HttpResponseGenericBodyMatch x__)
    = Control.DeepSeq.rnf x__
_MatchPredicate'OrMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule MatchPredicate'MatchSet
_MatchPredicate'OrMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'OrMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'OrMatch p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'AndMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule MatchPredicate'MatchSet
_MatchPredicate'AndMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'AndMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'AndMatch p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'NotMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule MatchPredicate
_MatchPredicate'NotMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'NotMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'NotMatch p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'AnyMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule Prelude.Bool
_MatchPredicate'AnyMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'AnyMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'AnyMatch p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'HttpRequestHeadersMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule HttpHeadersMatch
_MatchPredicate'HttpRequestHeadersMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'HttpRequestHeadersMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'HttpRequestHeadersMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'HttpRequestTrailersMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule HttpHeadersMatch
_MatchPredicate'HttpRequestTrailersMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'HttpRequestTrailersMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'HttpRequestTrailersMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'HttpResponseHeadersMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule HttpHeadersMatch
_MatchPredicate'HttpResponseHeadersMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'HttpResponseHeadersMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'HttpResponseHeadersMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'HttpResponseTrailersMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule HttpHeadersMatch
_MatchPredicate'HttpResponseTrailersMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'HttpResponseTrailersMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'HttpResponseTrailersMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'HttpRequestGenericBodyMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule HttpGenericBodyMatch
_MatchPredicate'HttpRequestGenericBodyMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'HttpRequestGenericBodyMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'HttpRequestGenericBodyMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MatchPredicate'HttpResponseGenericBodyMatch ::
  Data.ProtoLens.Prism.Prism' MatchPredicate'Rule HttpGenericBodyMatch
_MatchPredicate'HttpResponseGenericBodyMatch
  = Data.ProtoLens.Prism.prism'
      MatchPredicate'HttpResponseGenericBodyMatch
      (\ p__
         -> case p__ of
              (MatchPredicate'HttpResponseGenericBodyMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.rules' @:: Lens' MatchPredicate'MatchSet [MatchPredicate]@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.vec'rules' @:: Lens' MatchPredicate'MatchSet (Data.Vector.Vector MatchPredicate)@ -}
data MatchPredicate'MatchSet
  = MatchPredicate'MatchSet'_constructor {_MatchPredicate'MatchSet'rules :: !(Data.Vector.Vector MatchPredicate),
                                          _MatchPredicate'MatchSet'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MatchPredicate'MatchSet where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MatchPredicate'MatchSet "rules" [MatchPredicate] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'MatchSet'rules
           (\ x__ y__ -> x__ {_MatchPredicate'MatchSet'rules = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MatchPredicate'MatchSet "vec'rules" (Data.Vector.Vector MatchPredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchPredicate'MatchSet'rules
           (\ x__ y__ -> x__ {_MatchPredicate'MatchSet'rules = y__}))
        Prelude.id
instance Data.ProtoLens.Message MatchPredicate'MatchSet where
  messageName _
    = Data.Text.pack
        "envoy.config.common.matcher.v3.MatchPredicate.MatchSet"
  packedMessageDescriptor _
    = "\n\
      \\bMatchSet\DC2N\n\
      \\ENQrules\CAN\SOH \ETX(\v2..envoy.config.common.matcher.v3.MatchPredicateR\ENQrulesB\b\250B\ENQ\146\SOH\STX\b\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rules__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rules"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MatchPredicate)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"rules")) ::
              Data.ProtoLens.FieldDescriptor MatchPredicate'MatchSet
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, rules__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MatchPredicate'MatchSet'_unknownFields
        (\ x__ y__ -> x__ {_MatchPredicate'MatchSet'_unknownFields = y__})
  defMessage
    = MatchPredicate'MatchSet'_constructor
        {_MatchPredicate'MatchSet'rules = Data.Vector.Generic.empty,
         _MatchPredicate'MatchSet'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MatchPredicate'MatchSet
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld MatchPredicate
             -> Data.ProtoLens.Encoding.Bytes.Parser MatchPredicate'MatchSet
        loop x mutable'rules
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'rules <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'rules)
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
                              (Data.ProtoLens.Field.field @"vec'rules") frozen'rules x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "rules"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'rules y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'rules
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'rules <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'rules)
          "MatchSet"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'rules") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MatchPredicate'MatchSet where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MatchPredicate'MatchSet'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MatchPredicate'MatchSet'rules x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.onNoMatch' @:: Lens' Matcher Matcher'OnMatch@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'onNoMatch' @:: Lens' Matcher (Prelude.Maybe Matcher'OnMatch)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'matcherType' @:: Lens' Matcher (Prelude.Maybe Matcher'MatcherType)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'matcherList' @:: Lens' Matcher (Prelude.Maybe Matcher'MatcherList)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.matcherList' @:: Lens' Matcher Matcher'MatcherList@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'matcherTree' @:: Lens' Matcher (Prelude.Maybe Matcher'MatcherTree)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.matcherTree' @:: Lens' Matcher Matcher'MatcherTree@ -}
data Matcher
  = Matcher'_constructor {_Matcher'onNoMatch :: !(Prelude.Maybe Matcher'OnMatch),
                          _Matcher'matcherType :: !(Prelude.Maybe Matcher'MatcherType),
                          _Matcher'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Matcher where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Matcher'MatcherType
  = Matcher'MatcherList' !Matcher'MatcherList |
    Matcher'MatcherTree' !Matcher'MatcherTree
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Matcher "onNoMatch" Matcher'OnMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'onNoMatch (\ x__ y__ -> x__ {_Matcher'onNoMatch = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Matcher "maybe'onNoMatch" (Prelude.Maybe Matcher'OnMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'onNoMatch (\ x__ y__ -> x__ {_Matcher'onNoMatch = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Matcher "maybe'matcherType" (Prelude.Maybe Matcher'MatcherType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'matcherType
           (\ x__ y__ -> x__ {_Matcher'matcherType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Matcher "maybe'matcherList" (Prelude.Maybe Matcher'MatcherList) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'matcherType
           (\ x__ y__ -> x__ {_Matcher'matcherType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Matcher'MatcherList' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Matcher'MatcherList' y__))
instance Data.ProtoLens.Field.HasField Matcher "matcherList" Matcher'MatcherList where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'matcherType
           (\ x__ y__ -> x__ {_Matcher'matcherType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Matcher'MatcherList' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Matcher'MatcherList' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Matcher "maybe'matcherTree" (Prelude.Maybe Matcher'MatcherTree) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'matcherType
           (\ x__ y__ -> x__ {_Matcher'matcherType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Matcher'MatcherTree' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Matcher'MatcherTree' y__))
instance Data.ProtoLens.Field.HasField Matcher "matcherTree" Matcher'MatcherTree where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'matcherType
           (\ x__ y__ -> x__ {_Matcher'matcherType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Matcher'MatcherTree' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Matcher'MatcherTree' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Matcher where
  messageName _
    = Data.Text.pack "envoy.config.common.matcher.v3.Matcher"
  packedMessageDescriptor _
    = "\n\
      \\aMatcher\DC2X\n\
      \\fmatcher_list\CAN\SOH \SOH(\v23.envoy.config.common.matcher.v3.Matcher.MatcherListH\NULR\vmatcherList\DC2X\n\
      \\fmatcher_tree\CAN\STX \SOH(\v23.envoy.config.common.matcher.v3.Matcher.MatcherTreeH\NULR\vmatcherTree\DC2O\n\
      \\von_no_match\CAN\ETX \SOH(\v2/.envoy.config.common.matcher.v3.Matcher.OnMatchR\tonNoMatch\SUB\165\SOH\n\
      \\aOnMatch\DC2C\n\
      \\amatcher\CAN\SOH \SOH(\v2'.envoy.config.common.matcher.v3.MatcherH\NULR\amatcher\DC2D\n\
      \\ACKaction\CAN\STX \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigH\NULR\ACKactionB\SI\n\
      \\bon_match\DC2\ETX\248B\SOH\SUB\162\t\n\
      \\vMatcherList\DC2f\n\
      \\bmatchers\CAN\SOH \ETX(\v2@.envoy.config.common.matcher.v3.Matcher.MatcherList.FieldMatcherR\bmatchersB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\220\ACK\n\
      \\tPredicate\DC2z\n\
      \\DLEsingle_predicate\CAN\SOH \SOH(\v2M.envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate.SinglePredicateH\NULR\SIsinglePredicate\DC2l\n\
      \\n\
      \or_matcher\CAN\STX \SOH(\v2K.envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate.PredicateListH\NULR\torMatcher\DC2n\n\
      \\vand_matcher\CAN\ETX \SOH(\v2K.envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate.PredicateListH\NULR\n\
      \andMatcher\DC2`\n\
      \\vnot_matcher\CAN\EOT \SOH(\v2=.envoy.config.common.matcher.v3.Matcher.MatcherList.PredicateH\NULR\n\
      \notMatcher\SUB\135\STX\n\
      \\SISinglePredicate\DC2J\n\
      \\ENQinput\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\ENQinputB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2G\n\
      \\vvalue_match\CAN\STX \SOH(\v2$.envoy.type.matcher.v3.StringMatcherH\NULR\n\
      \valueMatch\DC2O\n\
      \\fcustom_match\CAN\ETX \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigH\NULR\vcustomMatchB\SO\n\
      \\amatcher\DC2\ETX\248B\SOH\SUBv\n\
      \\rPredicateList\DC2e\n\
      \\tpredicate\CAN\SOH \ETX(\v2=.envoy.config.common.matcher.v3.Matcher.MatcherList.PredicateR\tpredicateB\b\250B\ENQ\146\SOH\STX\b\STXB\DC1\n\
      \\n\
      \match_type\DC2\ETX\248B\SOH\SUB\203\SOH\n\
      \\fFieldMatcher\DC2e\n\
      \\tpredicate\CAN\SOH \SOH(\v2=.envoy.config.common.matcher.v3.Matcher.MatcherList.PredicateR\tpredicateB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2T\n\
      \\bon_match\CAN\STX \SOH(\v2/.envoy.config.common.matcher.v3.Matcher.OnMatchR\aonMatchB\b\250B\ENQ\138\SOH\STX\DLE\SOH\SUB\231\EOT\n\
      \\vMatcherTree\DC2J\n\
      \\ENQinput\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\ENQinputB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2f\n\
      \\SIexact_match_map\CAN\STX \SOH(\v2<.envoy.config.common.matcher.v3.Matcher.MatcherTree.MatchMapH\NULR\rexactMatchMap\DC2h\n\
      \\DLEprefix_match_map\CAN\ETX \SOH(\v2<.envoy.config.common.matcher.v3.Matcher.MatcherTree.MatchMapH\NULR\SOprefixMatchMap\DC2O\n\
      \\fcustom_match\CAN\EOT \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigH\NULR\vcustomMatch\SUB\214\SOH\n\
      \\bMatchMap\DC2a\n\
      \\ETXmap\CAN\SOH \ETX(\v2E.envoy.config.common.matcher.v3.Matcher.MatcherTree.MatchMap.MapEntryR\ETXmapB\b\250B\ENQ\154\SOH\STX\b\SOH\SUBg\n\
      \\bMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2E\n\
      \\ENQvalue\CAN\STX \SOH(\v2/.envoy.config.common.matcher.v3.Matcher.OnMatchR\ENQvalue:\STX8\SOHB\DLE\n\
      \\ttree_type\DC2\ETX\248B\SOHB\DC3\n\
      \\fmatcher_type\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        onNoMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "on_no_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Matcher'OnMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'onNoMatch")) ::
              Data.ProtoLens.FieldDescriptor Matcher
        matcherList__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "matcher_list"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Matcher'MatcherList)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'matcherList")) ::
              Data.ProtoLens.FieldDescriptor Matcher
        matcherTree__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "matcher_tree"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Matcher'MatcherTree)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'matcherTree")) ::
              Data.ProtoLens.FieldDescriptor Matcher
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, onNoMatch__field_descriptor),
           (Data.ProtoLens.Tag 1, matcherList__field_descriptor),
           (Data.ProtoLens.Tag 2, matcherTree__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Matcher'_unknownFields
        (\ x__ y__ -> x__ {_Matcher'_unknownFields = y__})
  defMessage
    = Matcher'_constructor
        {_Matcher'onNoMatch = Prelude.Nothing,
         _Matcher'matcherType = Prelude.Nothing,
         _Matcher'_unknownFields = []}
  parseMessage
    = let
        loop :: Matcher -> Data.ProtoLens.Encoding.Bytes.Parser Matcher
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
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "on_no_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"onNoMatch") y x)
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "matcher_list"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"matcherList") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "matcher_tree"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"matcherTree") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Matcher"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'onNoMatch") _x
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'matcherType") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (Matcher'MatcherList' v))
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
                   (Prelude.Just (Matcher'MatcherTree' v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
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
instance Control.DeepSeq.NFData Matcher where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Matcher'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Matcher'onNoMatch x__)
                (Control.DeepSeq.deepseq (_Matcher'matcherType x__) ()))
instance Control.DeepSeq.NFData Matcher'MatcherType where
  rnf (Matcher'MatcherList' x__) = Control.DeepSeq.rnf x__
  rnf (Matcher'MatcherTree' x__) = Control.DeepSeq.rnf x__
_Matcher'MatcherList' ::
  Data.ProtoLens.Prism.Prism' Matcher'MatcherType Matcher'MatcherList
_Matcher'MatcherList'
  = Data.ProtoLens.Prism.prism'
      Matcher'MatcherList'
      (\ p__
         -> case p__ of
              (Matcher'MatcherList' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Matcher'MatcherTree' ::
  Data.ProtoLens.Prism.Prism' Matcher'MatcherType Matcher'MatcherTree
_Matcher'MatcherTree'
  = Data.ProtoLens.Prism.prism'
      Matcher'MatcherTree'
      (\ p__
         -> case p__ of
              (Matcher'MatcherTree' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.matchers' @:: Lens' Matcher'MatcherList [Matcher'MatcherList'FieldMatcher]@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.vec'matchers' @:: Lens' Matcher'MatcherList (Data.Vector.Vector Matcher'MatcherList'FieldMatcher)@ -}
data Matcher'MatcherList
  = Matcher'MatcherList'_constructor {_Matcher'MatcherList'matchers :: !(Data.Vector.Vector Matcher'MatcherList'FieldMatcher),
                                      _Matcher'MatcherList'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Matcher'MatcherList where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Matcher'MatcherList "matchers" [Matcher'MatcherList'FieldMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'matchers
           (\ x__ y__ -> x__ {_Matcher'MatcherList'matchers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Matcher'MatcherList "vec'matchers" (Data.Vector.Vector Matcher'MatcherList'FieldMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'matchers
           (\ x__ y__ -> x__ {_Matcher'MatcherList'matchers = y__}))
        Prelude.id
instance Data.ProtoLens.Message Matcher'MatcherList where
  messageName _
    = Data.Text.pack
        "envoy.config.common.matcher.v3.Matcher.MatcherList"
  packedMessageDescriptor _
    = "\n\
      \\vMatcherList\DC2f\n\
      \\bmatchers\CAN\SOH \ETX(\v2@.envoy.config.common.matcher.v3.Matcher.MatcherList.FieldMatcherR\bmatchersB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\220\ACK\n\
      \\tPredicate\DC2z\n\
      \\DLEsingle_predicate\CAN\SOH \SOH(\v2M.envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate.SinglePredicateH\NULR\SIsinglePredicate\DC2l\n\
      \\n\
      \or_matcher\CAN\STX \SOH(\v2K.envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate.PredicateListH\NULR\torMatcher\DC2n\n\
      \\vand_matcher\CAN\ETX \SOH(\v2K.envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate.PredicateListH\NULR\n\
      \andMatcher\DC2`\n\
      \\vnot_matcher\CAN\EOT \SOH(\v2=.envoy.config.common.matcher.v3.Matcher.MatcherList.PredicateH\NULR\n\
      \notMatcher\SUB\135\STX\n\
      \\SISinglePredicate\DC2J\n\
      \\ENQinput\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\ENQinputB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2G\n\
      \\vvalue_match\CAN\STX \SOH(\v2$.envoy.type.matcher.v3.StringMatcherH\NULR\n\
      \valueMatch\DC2O\n\
      \\fcustom_match\CAN\ETX \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigH\NULR\vcustomMatchB\SO\n\
      \\amatcher\DC2\ETX\248B\SOH\SUBv\n\
      \\rPredicateList\DC2e\n\
      \\tpredicate\CAN\SOH \ETX(\v2=.envoy.config.common.matcher.v3.Matcher.MatcherList.PredicateR\tpredicateB\b\250B\ENQ\146\SOH\STX\b\STXB\DC1\n\
      \\n\
      \match_type\DC2\ETX\248B\SOH\SUB\203\SOH\n\
      \\fFieldMatcher\DC2e\n\
      \\tpredicate\CAN\SOH \SOH(\v2=.envoy.config.common.matcher.v3.Matcher.MatcherList.PredicateR\tpredicateB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2T\n\
      \\bon_match\CAN\STX \SOH(\v2/.envoy.config.common.matcher.v3.Matcher.OnMatchR\aonMatchB\b\250B\ENQ\138\SOH\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        matchers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "matchers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Matcher'MatcherList'FieldMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"matchers")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherList
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, matchers__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Matcher'MatcherList'_unknownFields
        (\ x__ y__ -> x__ {_Matcher'MatcherList'_unknownFields = y__})
  defMessage
    = Matcher'MatcherList'_constructor
        {_Matcher'MatcherList'matchers = Data.Vector.Generic.empty,
         _Matcher'MatcherList'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Matcher'MatcherList
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Matcher'MatcherList'FieldMatcher
             -> Data.ProtoLens.Encoding.Bytes.Parser Matcher'MatcherList
        loop x mutable'matchers
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'matchers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'matchers)
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
                              (Data.ProtoLens.Field.field @"vec'matchers") frozen'matchers x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "matchers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'matchers y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'matchers
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'matchers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'matchers)
          "MatcherList"
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
                   (Data.ProtoLens.Field.field @"vec'matchers") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Matcher'MatcherList where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Matcher'MatcherList'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Matcher'MatcherList'matchers x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.predicate' @:: Lens' Matcher'MatcherList'FieldMatcher Matcher'MatcherList'Predicate@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'predicate' @:: Lens' Matcher'MatcherList'FieldMatcher (Prelude.Maybe Matcher'MatcherList'Predicate)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.onMatch' @:: Lens' Matcher'MatcherList'FieldMatcher Matcher'OnMatch@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'onMatch' @:: Lens' Matcher'MatcherList'FieldMatcher (Prelude.Maybe Matcher'OnMatch)@ -}
data Matcher'MatcherList'FieldMatcher
  = Matcher'MatcherList'FieldMatcher'_constructor {_Matcher'MatcherList'FieldMatcher'predicate :: !(Prelude.Maybe Matcher'MatcherList'Predicate),
                                                   _Matcher'MatcherList'FieldMatcher'onMatch :: !(Prelude.Maybe Matcher'OnMatch),
                                                   _Matcher'MatcherList'FieldMatcher'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Matcher'MatcherList'FieldMatcher where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'FieldMatcher "predicate" Matcher'MatcherList'Predicate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'FieldMatcher'predicate
           (\ x__ y__
              -> x__ {_Matcher'MatcherList'FieldMatcher'predicate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'FieldMatcher "maybe'predicate" (Prelude.Maybe Matcher'MatcherList'Predicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'FieldMatcher'predicate
           (\ x__ y__
              -> x__ {_Matcher'MatcherList'FieldMatcher'predicate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'FieldMatcher "onMatch" Matcher'OnMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'FieldMatcher'onMatch
           (\ x__ y__
              -> x__ {_Matcher'MatcherList'FieldMatcher'onMatch = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'FieldMatcher "maybe'onMatch" (Prelude.Maybe Matcher'OnMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'FieldMatcher'onMatch
           (\ x__ y__
              -> x__ {_Matcher'MatcherList'FieldMatcher'onMatch = y__}))
        Prelude.id
instance Data.ProtoLens.Message Matcher'MatcherList'FieldMatcher where
  messageName _
    = Data.Text.pack
        "envoy.config.common.matcher.v3.Matcher.MatcherList.FieldMatcher"
  packedMessageDescriptor _
    = "\n\
      \\fFieldMatcher\DC2e\n\
      \\tpredicate\CAN\SOH \SOH(\v2=.envoy.config.common.matcher.v3.Matcher.MatcherList.PredicateR\tpredicateB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2T\n\
      \\bon_match\CAN\STX \SOH(\v2/.envoy.config.common.matcher.v3.Matcher.OnMatchR\aonMatchB\b\250B\ENQ\138\SOH\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        predicate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "predicate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Matcher'MatcherList'Predicate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'predicate")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherList'FieldMatcher
        onMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "on_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Matcher'OnMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'onMatch")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherList'FieldMatcher
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, predicate__field_descriptor),
           (Data.ProtoLens.Tag 2, onMatch__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Matcher'MatcherList'FieldMatcher'_unknownFields
        (\ x__ y__
           -> x__ {_Matcher'MatcherList'FieldMatcher'_unknownFields = y__})
  defMessage
    = Matcher'MatcherList'FieldMatcher'_constructor
        {_Matcher'MatcherList'FieldMatcher'predicate = Prelude.Nothing,
         _Matcher'MatcherList'FieldMatcher'onMatch = Prelude.Nothing,
         _Matcher'MatcherList'FieldMatcher'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Matcher'MatcherList'FieldMatcher
          -> Data.ProtoLens.Encoding.Bytes.Parser Matcher'MatcherList'FieldMatcher
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
                                       "predicate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"predicate") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "on_match"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"onMatch") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FieldMatcher"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'predicate") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'onMatch") _x
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
instance Control.DeepSeq.NFData Matcher'MatcherList'FieldMatcher where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Matcher'MatcherList'FieldMatcher'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Matcher'MatcherList'FieldMatcher'predicate x__)
                (Control.DeepSeq.deepseq
                   (_Matcher'MatcherList'FieldMatcher'onMatch x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'matchType' @:: Lens' Matcher'MatcherList'Predicate (Prelude.Maybe Matcher'MatcherList'Predicate'MatchType)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'singlePredicate' @:: Lens' Matcher'MatcherList'Predicate (Prelude.Maybe Matcher'MatcherList'Predicate'SinglePredicate)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.singlePredicate' @:: Lens' Matcher'MatcherList'Predicate Matcher'MatcherList'Predicate'SinglePredicate@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'orMatcher' @:: Lens' Matcher'MatcherList'Predicate (Prelude.Maybe Matcher'MatcherList'Predicate'PredicateList)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.orMatcher' @:: Lens' Matcher'MatcherList'Predicate Matcher'MatcherList'Predicate'PredicateList@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'andMatcher' @:: Lens' Matcher'MatcherList'Predicate (Prelude.Maybe Matcher'MatcherList'Predicate'PredicateList)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.andMatcher' @:: Lens' Matcher'MatcherList'Predicate Matcher'MatcherList'Predicate'PredicateList@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'notMatcher' @:: Lens' Matcher'MatcherList'Predicate (Prelude.Maybe Matcher'MatcherList'Predicate)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.notMatcher' @:: Lens' Matcher'MatcherList'Predicate Matcher'MatcherList'Predicate@ -}
data Matcher'MatcherList'Predicate
  = Matcher'MatcherList'Predicate'_constructor {_Matcher'MatcherList'Predicate'matchType :: !(Prelude.Maybe Matcher'MatcherList'Predicate'MatchType),
                                                _Matcher'MatcherList'Predicate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Matcher'MatcherList'Predicate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Matcher'MatcherList'Predicate'MatchType
  = Matcher'MatcherList'Predicate'SinglePredicate' !Matcher'MatcherList'Predicate'SinglePredicate |
    Matcher'MatcherList'Predicate'OrMatcher !Matcher'MatcherList'Predicate'PredicateList |
    Matcher'MatcherList'Predicate'AndMatcher !Matcher'MatcherList'Predicate'PredicateList |
    Matcher'MatcherList'Predicate'NotMatcher !Matcher'MatcherList'Predicate
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate "maybe'matchType" (Prelude.Maybe Matcher'MatcherList'Predicate'MatchType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'matchType
           (\ x__ y__
              -> x__ {_Matcher'MatcherList'Predicate'matchType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate "maybe'singlePredicate" (Prelude.Maybe Matcher'MatcherList'Predicate'SinglePredicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'matchType
           (\ x__ y__
              -> x__ {_Matcher'MatcherList'Predicate'matchType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Matcher'MatcherList'Predicate'SinglePredicate' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Matcher'MatcherList'Predicate'SinglePredicate' y__))
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate "singlePredicate" Matcher'MatcherList'Predicate'SinglePredicate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'matchType
           (\ x__ y__
              -> x__ {_Matcher'MatcherList'Predicate'matchType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Matcher'MatcherList'Predicate'SinglePredicate' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Matcher'MatcherList'Predicate'SinglePredicate' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate "maybe'orMatcher" (Prelude.Maybe Matcher'MatcherList'Predicate'PredicateList) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'matchType
           (\ x__ y__
              -> x__ {_Matcher'MatcherList'Predicate'matchType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Matcher'MatcherList'Predicate'OrMatcher x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap Matcher'MatcherList'Predicate'OrMatcher y__))
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate "orMatcher" Matcher'MatcherList'Predicate'PredicateList where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'matchType
           (\ x__ y__
              -> x__ {_Matcher'MatcherList'Predicate'matchType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Matcher'MatcherList'Predicate'OrMatcher x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap Matcher'MatcherList'Predicate'OrMatcher y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate "maybe'andMatcher" (Prelude.Maybe Matcher'MatcherList'Predicate'PredicateList) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'matchType
           (\ x__ y__
              -> x__ {_Matcher'MatcherList'Predicate'matchType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Matcher'MatcherList'Predicate'AndMatcher x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap Matcher'MatcherList'Predicate'AndMatcher y__))
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate "andMatcher" Matcher'MatcherList'Predicate'PredicateList where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'matchType
           (\ x__ y__
              -> x__ {_Matcher'MatcherList'Predicate'matchType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Matcher'MatcherList'Predicate'AndMatcher x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap Matcher'MatcherList'Predicate'AndMatcher y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate "maybe'notMatcher" (Prelude.Maybe Matcher'MatcherList'Predicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'matchType
           (\ x__ y__
              -> x__ {_Matcher'MatcherList'Predicate'matchType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Matcher'MatcherList'Predicate'NotMatcher x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap Matcher'MatcherList'Predicate'NotMatcher y__))
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate "notMatcher" Matcher'MatcherList'Predicate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'matchType
           (\ x__ y__
              -> x__ {_Matcher'MatcherList'Predicate'matchType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Matcher'MatcherList'Predicate'NotMatcher x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap Matcher'MatcherList'Predicate'NotMatcher y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Matcher'MatcherList'Predicate where
  messageName _
    = Data.Text.pack
        "envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate"
  packedMessageDescriptor _
    = "\n\
      \\tPredicate\DC2z\n\
      \\DLEsingle_predicate\CAN\SOH \SOH(\v2M.envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate.SinglePredicateH\NULR\SIsinglePredicate\DC2l\n\
      \\n\
      \or_matcher\CAN\STX \SOH(\v2K.envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate.PredicateListH\NULR\torMatcher\DC2n\n\
      \\vand_matcher\CAN\ETX \SOH(\v2K.envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate.PredicateListH\NULR\n\
      \andMatcher\DC2`\n\
      \\vnot_matcher\CAN\EOT \SOH(\v2=.envoy.config.common.matcher.v3.Matcher.MatcherList.PredicateH\NULR\n\
      \notMatcher\SUB\135\STX\n\
      \\SISinglePredicate\DC2J\n\
      \\ENQinput\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\ENQinputB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2G\n\
      \\vvalue_match\CAN\STX \SOH(\v2$.envoy.type.matcher.v3.StringMatcherH\NULR\n\
      \valueMatch\DC2O\n\
      \\fcustom_match\CAN\ETX \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigH\NULR\vcustomMatchB\SO\n\
      \\amatcher\DC2\ETX\248B\SOH\SUBv\n\
      \\rPredicateList\DC2e\n\
      \\tpredicate\CAN\SOH \ETX(\v2=.envoy.config.common.matcher.v3.Matcher.MatcherList.PredicateR\tpredicateB\b\250B\ENQ\146\SOH\STX\b\STXB\DC1\n\
      \\n\
      \match_type\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        singlePredicate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "single_predicate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Matcher'MatcherList'Predicate'SinglePredicate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'singlePredicate")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherList'Predicate
        orMatcher__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "or_matcher"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Matcher'MatcherList'Predicate'PredicateList)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'orMatcher")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherList'Predicate
        andMatcher__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "and_matcher"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Matcher'MatcherList'Predicate'PredicateList)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'andMatcher")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherList'Predicate
        notMatcher__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_matcher"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Matcher'MatcherList'Predicate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'notMatcher")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherList'Predicate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, singlePredicate__field_descriptor),
           (Data.ProtoLens.Tag 2, orMatcher__field_descriptor),
           (Data.ProtoLens.Tag 3, andMatcher__field_descriptor),
           (Data.ProtoLens.Tag 4, notMatcher__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Matcher'MatcherList'Predicate'_unknownFields
        (\ x__ y__
           -> x__ {_Matcher'MatcherList'Predicate'_unknownFields = y__})
  defMessage
    = Matcher'MatcherList'Predicate'_constructor
        {_Matcher'MatcherList'Predicate'matchType = Prelude.Nothing,
         _Matcher'MatcherList'Predicate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Matcher'MatcherList'Predicate
          -> Data.ProtoLens.Encoding.Bytes.Parser Matcher'MatcherList'Predicate
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
                                       "single_predicate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"singlePredicate") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "or_matcher"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"orMatcher") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "and_matcher"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"andMatcher") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "not_matcher"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"notMatcher") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Predicate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'matchType") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Matcher'MatcherList'Predicate'SinglePredicate' v))
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
                (Prelude.Just (Matcher'MatcherList'Predicate'OrMatcher v))
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
                (Prelude.Just (Matcher'MatcherList'Predicate'AndMatcher v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (Matcher'MatcherList'Predicate'NotMatcher v))
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
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Matcher'MatcherList'Predicate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Matcher'MatcherList'Predicate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Matcher'MatcherList'Predicate'matchType x__) ())
instance Control.DeepSeq.NFData Matcher'MatcherList'Predicate'MatchType where
  rnf (Matcher'MatcherList'Predicate'SinglePredicate' x__)
    = Control.DeepSeq.rnf x__
  rnf (Matcher'MatcherList'Predicate'OrMatcher x__)
    = Control.DeepSeq.rnf x__
  rnf (Matcher'MatcherList'Predicate'AndMatcher x__)
    = Control.DeepSeq.rnf x__
  rnf (Matcher'MatcherList'Predicate'NotMatcher x__)
    = Control.DeepSeq.rnf x__
_Matcher'MatcherList'Predicate'SinglePredicate' ::
  Data.ProtoLens.Prism.Prism' Matcher'MatcherList'Predicate'MatchType Matcher'MatcherList'Predicate'SinglePredicate
_Matcher'MatcherList'Predicate'SinglePredicate'
  = Data.ProtoLens.Prism.prism'
      Matcher'MatcherList'Predicate'SinglePredicate'
      (\ p__
         -> case p__ of
              (Matcher'MatcherList'Predicate'SinglePredicate' p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Matcher'MatcherList'Predicate'OrMatcher ::
  Data.ProtoLens.Prism.Prism' Matcher'MatcherList'Predicate'MatchType Matcher'MatcherList'Predicate'PredicateList
_Matcher'MatcherList'Predicate'OrMatcher
  = Data.ProtoLens.Prism.prism'
      Matcher'MatcherList'Predicate'OrMatcher
      (\ p__
         -> case p__ of
              (Matcher'MatcherList'Predicate'OrMatcher p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Matcher'MatcherList'Predicate'AndMatcher ::
  Data.ProtoLens.Prism.Prism' Matcher'MatcherList'Predicate'MatchType Matcher'MatcherList'Predicate'PredicateList
_Matcher'MatcherList'Predicate'AndMatcher
  = Data.ProtoLens.Prism.prism'
      Matcher'MatcherList'Predicate'AndMatcher
      (\ p__
         -> case p__ of
              (Matcher'MatcherList'Predicate'AndMatcher p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Matcher'MatcherList'Predicate'NotMatcher ::
  Data.ProtoLens.Prism.Prism' Matcher'MatcherList'Predicate'MatchType Matcher'MatcherList'Predicate
_Matcher'MatcherList'Predicate'NotMatcher
  = Data.ProtoLens.Prism.prism'
      Matcher'MatcherList'Predicate'NotMatcher
      (\ p__
         -> case p__ of
              (Matcher'MatcherList'Predicate'NotMatcher p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.predicate' @:: Lens' Matcher'MatcherList'Predicate'PredicateList [Matcher'MatcherList'Predicate]@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.vec'predicate' @:: Lens' Matcher'MatcherList'Predicate'PredicateList (Data.Vector.Vector Matcher'MatcherList'Predicate)@ -}
data Matcher'MatcherList'Predicate'PredicateList
  = Matcher'MatcherList'Predicate'PredicateList'_constructor {_Matcher'MatcherList'Predicate'PredicateList'predicate :: !(Data.Vector.Vector Matcher'MatcherList'Predicate),
                                                              _Matcher'MatcherList'Predicate'PredicateList'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Matcher'MatcherList'Predicate'PredicateList where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate'PredicateList "predicate" [Matcher'MatcherList'Predicate] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'PredicateList'predicate
           (\ x__ y__
              -> x__
                   {_Matcher'MatcherList'Predicate'PredicateList'predicate = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate'PredicateList "vec'predicate" (Data.Vector.Vector Matcher'MatcherList'Predicate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'PredicateList'predicate
           (\ x__ y__
              -> x__
                   {_Matcher'MatcherList'Predicate'PredicateList'predicate = y__}))
        Prelude.id
instance Data.ProtoLens.Message Matcher'MatcherList'Predicate'PredicateList where
  messageName _
    = Data.Text.pack
        "envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate.PredicateList"
  packedMessageDescriptor _
    = "\n\
      \\rPredicateList\DC2e\n\
      \\tpredicate\CAN\SOH \ETX(\v2=.envoy.config.common.matcher.v3.Matcher.MatcherList.PredicateR\tpredicateB\b\250B\ENQ\146\SOH\STX\b\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        predicate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "predicate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Matcher'MatcherList'Predicate)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"predicate")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherList'Predicate'PredicateList
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, predicate__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Matcher'MatcherList'Predicate'PredicateList'_unknownFields
        (\ x__ y__
           -> x__
                {_Matcher'MatcherList'Predicate'PredicateList'_unknownFields = y__})
  defMessage
    = Matcher'MatcherList'Predicate'PredicateList'_constructor
        {_Matcher'MatcherList'Predicate'PredicateList'predicate = Data.Vector.Generic.empty,
         _Matcher'MatcherList'Predicate'PredicateList'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Matcher'MatcherList'Predicate'PredicateList
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Matcher'MatcherList'Predicate
             -> Data.ProtoLens.Encoding.Bytes.Parser Matcher'MatcherList'Predicate'PredicateList
        loop x mutable'predicate
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'predicate <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'predicate)
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
                              (Data.ProtoLens.Field.field @"vec'predicate") frozen'predicate x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "predicate"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'predicate y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'predicate
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'predicate <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'predicate)
          "PredicateList"
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
                   (Data.ProtoLens.Field.field @"vec'predicate") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Matcher'MatcherList'Predicate'PredicateList where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Matcher'MatcherList'Predicate'PredicateList'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Matcher'MatcherList'Predicate'PredicateList'predicate x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.input' @:: Lens' Matcher'MatcherList'Predicate'SinglePredicate Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'input' @:: Lens' Matcher'MatcherList'Predicate'SinglePredicate (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'matcher' @:: Lens' Matcher'MatcherList'Predicate'SinglePredicate (Prelude.Maybe Matcher'MatcherList'Predicate'SinglePredicate'Matcher)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'valueMatch' @:: Lens' Matcher'MatcherList'Predicate'SinglePredicate (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.valueMatch' @:: Lens' Matcher'MatcherList'Predicate'SinglePredicate Proto.Envoy.Type.Matcher.V3.String.StringMatcher@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'customMatch' @:: Lens' Matcher'MatcherList'Predicate'SinglePredicate (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.customMatch' @:: Lens' Matcher'MatcherList'Predicate'SinglePredicate Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@ -}
data Matcher'MatcherList'Predicate'SinglePredicate
  = Matcher'MatcherList'Predicate'SinglePredicate'_constructor {_Matcher'MatcherList'Predicate'SinglePredicate'input :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                                                                _Matcher'MatcherList'Predicate'SinglePredicate'matcher :: !(Prelude.Maybe Matcher'MatcherList'Predicate'SinglePredicate'Matcher),
                                                                _Matcher'MatcherList'Predicate'SinglePredicate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Matcher'MatcherList'Predicate'SinglePredicate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Matcher'MatcherList'Predicate'SinglePredicate'Matcher
  = Matcher'MatcherList'Predicate'SinglePredicate'ValueMatch !Proto.Envoy.Type.Matcher.V3.String.StringMatcher |
    Matcher'MatcherList'Predicate'SinglePredicate'CustomMatch !Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate'SinglePredicate "input" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'SinglePredicate'input
           (\ x__ y__
              -> x__
                   {_Matcher'MatcherList'Predicate'SinglePredicate'input = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate'SinglePredicate "maybe'input" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'SinglePredicate'input
           (\ x__ y__
              -> x__
                   {_Matcher'MatcherList'Predicate'SinglePredicate'input = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate'SinglePredicate "maybe'matcher" (Prelude.Maybe Matcher'MatcherList'Predicate'SinglePredicate'Matcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'SinglePredicate'matcher
           (\ x__ y__
              -> x__
                   {_Matcher'MatcherList'Predicate'SinglePredicate'matcher = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate'SinglePredicate "maybe'valueMatch" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.String.StringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'SinglePredicate'matcher
           (\ x__ y__
              -> x__
                   {_Matcher'MatcherList'Predicate'SinglePredicate'matcher = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Matcher'MatcherList'Predicate'SinglePredicate'ValueMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Matcher'MatcherList'Predicate'SinglePredicate'ValueMatch y__))
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate'SinglePredicate "valueMatch" Proto.Envoy.Type.Matcher.V3.String.StringMatcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'SinglePredicate'matcher
           (\ x__ y__
              -> x__
                   {_Matcher'MatcherList'Predicate'SinglePredicate'matcher = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Matcher'MatcherList'Predicate'SinglePredicate'ValueMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Matcher'MatcherList'Predicate'SinglePredicate'ValueMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate'SinglePredicate "maybe'customMatch" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'SinglePredicate'matcher
           (\ x__ y__
              -> x__
                   {_Matcher'MatcherList'Predicate'SinglePredicate'matcher = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Matcher'MatcherList'Predicate'SinglePredicate'CustomMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Matcher'MatcherList'Predicate'SinglePredicate'CustomMatch y__))
instance Data.ProtoLens.Field.HasField Matcher'MatcherList'Predicate'SinglePredicate "customMatch" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherList'Predicate'SinglePredicate'matcher
           (\ x__ y__
              -> x__
                   {_Matcher'MatcherList'Predicate'SinglePredicate'matcher = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Matcher'MatcherList'Predicate'SinglePredicate'CustomMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Matcher'MatcherList'Predicate'SinglePredicate'CustomMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Matcher'MatcherList'Predicate'SinglePredicate where
  messageName _
    = Data.Text.pack
        "envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate.SinglePredicate"
  packedMessageDescriptor _
    = "\n\
      \\SISinglePredicate\DC2J\n\
      \\ENQinput\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\ENQinputB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2G\n\
      \\vvalue_match\CAN\STX \SOH(\v2$.envoy.type.matcher.v3.StringMatcherH\NULR\n\
      \valueMatch\DC2O\n\
      \\fcustom_match\CAN\ETX \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigH\NULR\vcustomMatchB\SO\n\
      \\amatcher\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        input__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'input")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherList'Predicate'SinglePredicate
        valueMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.StringMatcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'valueMatch")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherList'Predicate'SinglePredicate
        customMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "custom_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'customMatch")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherList'Predicate'SinglePredicate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, input__field_descriptor),
           (Data.ProtoLens.Tag 2, valueMatch__field_descriptor),
           (Data.ProtoLens.Tag 3, customMatch__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Matcher'MatcherList'Predicate'SinglePredicate'_unknownFields
        (\ x__ y__
           -> x__
                {_Matcher'MatcherList'Predicate'SinglePredicate'_unknownFields = y__})
  defMessage
    = Matcher'MatcherList'Predicate'SinglePredicate'_constructor
        {_Matcher'MatcherList'Predicate'SinglePredicate'input = Prelude.Nothing,
         _Matcher'MatcherList'Predicate'SinglePredicate'matcher = Prelude.Nothing,
         _Matcher'MatcherList'Predicate'SinglePredicate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Matcher'MatcherList'Predicate'SinglePredicate
          -> Data.ProtoLens.Encoding.Bytes.Parser Matcher'MatcherList'Predicate'SinglePredicate
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
                                       "input"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"input") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"valueMatch") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "custom_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"customMatch") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SinglePredicate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'input") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'matcher") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (Matcher'MatcherList'Predicate'SinglePredicate'ValueMatch v))
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
                   (Prelude.Just (Matcher'MatcherList'Predicate'SinglePredicate'CustomMatch v))
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
instance Control.DeepSeq.NFData Matcher'MatcherList'Predicate'SinglePredicate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Matcher'MatcherList'Predicate'SinglePredicate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Matcher'MatcherList'Predicate'SinglePredicate'input x__)
                (Control.DeepSeq.deepseq
                   (_Matcher'MatcherList'Predicate'SinglePredicate'matcher x__) ()))
instance Control.DeepSeq.NFData Matcher'MatcherList'Predicate'SinglePredicate'Matcher where
  rnf (Matcher'MatcherList'Predicate'SinglePredicate'ValueMatch x__)
    = Control.DeepSeq.rnf x__
  rnf (Matcher'MatcherList'Predicate'SinglePredicate'CustomMatch x__)
    = Control.DeepSeq.rnf x__
_Matcher'MatcherList'Predicate'SinglePredicate'ValueMatch ::
  Data.ProtoLens.Prism.Prism' Matcher'MatcherList'Predicate'SinglePredicate'Matcher Proto.Envoy.Type.Matcher.V3.String.StringMatcher
_Matcher'MatcherList'Predicate'SinglePredicate'ValueMatch
  = Data.ProtoLens.Prism.prism'
      Matcher'MatcherList'Predicate'SinglePredicate'ValueMatch
      (\ p__
         -> case p__ of
              (Matcher'MatcherList'Predicate'SinglePredicate'ValueMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Matcher'MatcherList'Predicate'SinglePredicate'CustomMatch ::
  Data.ProtoLens.Prism.Prism' Matcher'MatcherList'Predicate'SinglePredicate'Matcher Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig
_Matcher'MatcherList'Predicate'SinglePredicate'CustomMatch
  = Data.ProtoLens.Prism.prism'
      Matcher'MatcherList'Predicate'SinglePredicate'CustomMatch
      (\ p__
         -> case p__ of
              (Matcher'MatcherList'Predicate'SinglePredicate'CustomMatch p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.input' @:: Lens' Matcher'MatcherTree Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'input' @:: Lens' Matcher'MatcherTree (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'treeType' @:: Lens' Matcher'MatcherTree (Prelude.Maybe Matcher'MatcherTree'TreeType)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'exactMatchMap' @:: Lens' Matcher'MatcherTree (Prelude.Maybe Matcher'MatcherTree'MatchMap)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.exactMatchMap' @:: Lens' Matcher'MatcherTree Matcher'MatcherTree'MatchMap@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'prefixMatchMap' @:: Lens' Matcher'MatcherTree (Prelude.Maybe Matcher'MatcherTree'MatchMap)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.prefixMatchMap' @:: Lens' Matcher'MatcherTree Matcher'MatcherTree'MatchMap@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'customMatch' @:: Lens' Matcher'MatcherTree (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.customMatch' @:: Lens' Matcher'MatcherTree Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@ -}
data Matcher'MatcherTree
  = Matcher'MatcherTree'_constructor {_Matcher'MatcherTree'input :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                                      _Matcher'MatcherTree'treeType :: !(Prelude.Maybe Matcher'MatcherTree'TreeType),
                                      _Matcher'MatcherTree'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Matcher'MatcherTree where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Matcher'MatcherTree'TreeType
  = Matcher'MatcherTree'ExactMatchMap !Matcher'MatcherTree'MatchMap |
    Matcher'MatcherTree'PrefixMatchMap !Matcher'MatcherTree'MatchMap |
    Matcher'MatcherTree'CustomMatch !Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Matcher'MatcherTree "input" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherTree'input
           (\ x__ y__ -> x__ {_Matcher'MatcherTree'input = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Matcher'MatcherTree "maybe'input" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherTree'input
           (\ x__ y__ -> x__ {_Matcher'MatcherTree'input = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Matcher'MatcherTree "maybe'treeType" (Prelude.Maybe Matcher'MatcherTree'TreeType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherTree'treeType
           (\ x__ y__ -> x__ {_Matcher'MatcherTree'treeType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Matcher'MatcherTree "maybe'exactMatchMap" (Prelude.Maybe Matcher'MatcherTree'MatchMap) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherTree'treeType
           (\ x__ y__ -> x__ {_Matcher'MatcherTree'treeType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Matcher'MatcherTree'ExactMatchMap x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Matcher'MatcherTree'ExactMatchMap y__))
instance Data.ProtoLens.Field.HasField Matcher'MatcherTree "exactMatchMap" Matcher'MatcherTree'MatchMap where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherTree'treeType
           (\ x__ y__ -> x__ {_Matcher'MatcherTree'treeType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Matcher'MatcherTree'ExactMatchMap x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Matcher'MatcherTree'ExactMatchMap y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Matcher'MatcherTree "maybe'prefixMatchMap" (Prelude.Maybe Matcher'MatcherTree'MatchMap) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherTree'treeType
           (\ x__ y__ -> x__ {_Matcher'MatcherTree'treeType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Matcher'MatcherTree'PrefixMatchMap x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Matcher'MatcherTree'PrefixMatchMap y__))
instance Data.ProtoLens.Field.HasField Matcher'MatcherTree "prefixMatchMap" Matcher'MatcherTree'MatchMap where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherTree'treeType
           (\ x__ y__ -> x__ {_Matcher'MatcherTree'treeType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Matcher'MatcherTree'PrefixMatchMap x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Matcher'MatcherTree'PrefixMatchMap y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Matcher'MatcherTree "maybe'customMatch" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherTree'treeType
           (\ x__ y__ -> x__ {_Matcher'MatcherTree'treeType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Matcher'MatcherTree'CustomMatch x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Matcher'MatcherTree'CustomMatch y__))
instance Data.ProtoLens.Field.HasField Matcher'MatcherTree "customMatch" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherTree'treeType
           (\ x__ y__ -> x__ {_Matcher'MatcherTree'treeType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Matcher'MatcherTree'CustomMatch x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Matcher'MatcherTree'CustomMatch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Matcher'MatcherTree where
  messageName _
    = Data.Text.pack
        "envoy.config.common.matcher.v3.Matcher.MatcherTree"
  packedMessageDescriptor _
    = "\n\
      \\vMatcherTree\DC2J\n\
      \\ENQinput\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\ENQinputB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2f\n\
      \\SIexact_match_map\CAN\STX \SOH(\v2<.envoy.config.common.matcher.v3.Matcher.MatcherTree.MatchMapH\NULR\rexactMatchMap\DC2h\n\
      \\DLEprefix_match_map\CAN\ETX \SOH(\v2<.envoy.config.common.matcher.v3.Matcher.MatcherTree.MatchMapH\NULR\SOprefixMatchMap\DC2O\n\
      \\fcustom_match\CAN\EOT \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigH\NULR\vcustomMatch\SUB\214\SOH\n\
      \\bMatchMap\DC2a\n\
      \\ETXmap\CAN\SOH \ETX(\v2E.envoy.config.common.matcher.v3.Matcher.MatcherTree.MatchMap.MapEntryR\ETXmapB\b\250B\ENQ\154\SOH\STX\b\SOH\SUBg\n\
      \\bMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2E\n\
      \\ENQvalue\CAN\STX \SOH(\v2/.envoy.config.common.matcher.v3.Matcher.OnMatchR\ENQvalue:\STX8\SOHB\DLE\n\
      \\ttree_type\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        input__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'input")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherTree
        exactMatchMap__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exact_match_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Matcher'MatcherTree'MatchMap)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'exactMatchMap")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherTree
        prefixMatchMap__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prefix_match_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Matcher'MatcherTree'MatchMap)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prefixMatchMap")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherTree
        customMatch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "custom_match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'customMatch")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherTree
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, input__field_descriptor),
           (Data.ProtoLens.Tag 2, exactMatchMap__field_descriptor),
           (Data.ProtoLens.Tag 3, prefixMatchMap__field_descriptor),
           (Data.ProtoLens.Tag 4, customMatch__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Matcher'MatcherTree'_unknownFields
        (\ x__ y__ -> x__ {_Matcher'MatcherTree'_unknownFields = y__})
  defMessage
    = Matcher'MatcherTree'_constructor
        {_Matcher'MatcherTree'input = Prelude.Nothing,
         _Matcher'MatcherTree'treeType = Prelude.Nothing,
         _Matcher'MatcherTree'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Matcher'MatcherTree
          -> Data.ProtoLens.Encoding.Bytes.Parser Matcher'MatcherTree
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
                                       "input"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"input") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "exact_match_map"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"exactMatchMap") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "prefix_match_map"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"prefixMatchMap") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "custom_match"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"customMatch") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MatcherTree"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'input") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'treeType") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (Matcher'MatcherTree'ExactMatchMap v))
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
                   (Prelude.Just (Matcher'MatcherTree'PrefixMatchMap v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (Matcher'MatcherTree'CustomMatch v))
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
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Matcher'MatcherTree where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Matcher'MatcherTree'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Matcher'MatcherTree'input x__)
                (Control.DeepSeq.deepseq (_Matcher'MatcherTree'treeType x__) ()))
instance Control.DeepSeq.NFData Matcher'MatcherTree'TreeType where
  rnf (Matcher'MatcherTree'ExactMatchMap x__)
    = Control.DeepSeq.rnf x__
  rnf (Matcher'MatcherTree'PrefixMatchMap x__)
    = Control.DeepSeq.rnf x__
  rnf (Matcher'MatcherTree'CustomMatch x__) = Control.DeepSeq.rnf x__
_Matcher'MatcherTree'ExactMatchMap ::
  Data.ProtoLens.Prism.Prism' Matcher'MatcherTree'TreeType Matcher'MatcherTree'MatchMap
_Matcher'MatcherTree'ExactMatchMap
  = Data.ProtoLens.Prism.prism'
      Matcher'MatcherTree'ExactMatchMap
      (\ p__
         -> case p__ of
              (Matcher'MatcherTree'ExactMatchMap p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Matcher'MatcherTree'PrefixMatchMap ::
  Data.ProtoLens.Prism.Prism' Matcher'MatcherTree'TreeType Matcher'MatcherTree'MatchMap
_Matcher'MatcherTree'PrefixMatchMap
  = Data.ProtoLens.Prism.prism'
      Matcher'MatcherTree'PrefixMatchMap
      (\ p__
         -> case p__ of
              (Matcher'MatcherTree'PrefixMatchMap p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Matcher'MatcherTree'CustomMatch ::
  Data.ProtoLens.Prism.Prism' Matcher'MatcherTree'TreeType Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig
_Matcher'MatcherTree'CustomMatch
  = Data.ProtoLens.Prism.prism'
      Matcher'MatcherTree'CustomMatch
      (\ p__
         -> case p__ of
              (Matcher'MatcherTree'CustomMatch p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.map' @:: Lens' Matcher'MatcherTree'MatchMap (Data.Map.Map Data.Text.Text Matcher'OnMatch)@ -}
data Matcher'MatcherTree'MatchMap
  = Matcher'MatcherTree'MatchMap'_constructor {_Matcher'MatcherTree'MatchMap'map :: !(Data.Map.Map Data.Text.Text Matcher'OnMatch),
                                               _Matcher'MatcherTree'MatchMap'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Matcher'MatcherTree'MatchMap where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Matcher'MatcherTree'MatchMap "map" (Data.Map.Map Data.Text.Text Matcher'OnMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherTree'MatchMap'map
           (\ x__ y__ -> x__ {_Matcher'MatcherTree'MatchMap'map = y__}))
        Prelude.id
instance Data.ProtoLens.Message Matcher'MatcherTree'MatchMap where
  messageName _
    = Data.Text.pack
        "envoy.config.common.matcher.v3.Matcher.MatcherTree.MatchMap"
  packedMessageDescriptor _
    = "\n\
      \\bMatchMap\DC2a\n\
      \\ETXmap\CAN\SOH \ETX(\v2E.envoy.config.common.matcher.v3.Matcher.MatcherTree.MatchMap.MapEntryR\ETXmapB\b\250B\ENQ\154\SOH\STX\b\SOH\SUBg\n\
      \\bMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2E\n\
      \\ENQvalue\CAN\STX \SOH(\v2/.envoy.config.common.matcher.v3.Matcher.OnMatchR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        map__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Matcher'MatcherTree'MatchMap'MapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"map")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherTree'MatchMap
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, map__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Matcher'MatcherTree'MatchMap'_unknownFields
        (\ x__ y__
           -> x__ {_Matcher'MatcherTree'MatchMap'_unknownFields = y__})
  defMessage
    = Matcher'MatcherTree'MatchMap'_constructor
        {_Matcher'MatcherTree'MatchMap'map = Data.Map.empty,
         _Matcher'MatcherTree'MatchMap'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Matcher'MatcherTree'MatchMap
          -> Data.ProtoLens.Encoding.Bytes.Parser Matcher'MatcherTree'MatchMap
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
                          -> do !(entry :: Matcher'MatcherTree'MatchMap'MapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                           Data.ProtoLens.Encoding.Bytes.isolate
                                                                                             (Prelude.fromIntegral
                                                                                                len)
                                                                                             Data.ProtoLens.parseMessage)
                                                                                       "map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"map")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MatchMap"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.Monoid.mconcat
                (Prelude.map
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
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"key")
                                 (Prelude.fst _v)
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"value")
                                    (Prelude.snd _v)
                                    (Data.ProtoLens.defMessage ::
                                       Matcher'MatcherTree'MatchMap'MapEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"map") _x))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Matcher'MatcherTree'MatchMap where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Matcher'MatcherTree'MatchMap'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Matcher'MatcherTree'MatchMap'map x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.key' @:: Lens' Matcher'MatcherTree'MatchMap'MapEntry Data.Text.Text@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.value' @:: Lens' Matcher'MatcherTree'MatchMap'MapEntry Matcher'OnMatch@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'value' @:: Lens' Matcher'MatcherTree'MatchMap'MapEntry (Prelude.Maybe Matcher'OnMatch)@ -}
data Matcher'MatcherTree'MatchMap'MapEntry
  = Matcher'MatcherTree'MatchMap'MapEntry'_constructor {_Matcher'MatcherTree'MatchMap'MapEntry'key :: !Data.Text.Text,
                                                        _Matcher'MatcherTree'MatchMap'MapEntry'value :: !(Prelude.Maybe Matcher'OnMatch),
                                                        _Matcher'MatcherTree'MatchMap'MapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Matcher'MatcherTree'MatchMap'MapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Matcher'MatcherTree'MatchMap'MapEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherTree'MatchMap'MapEntry'key
           (\ x__ y__
              -> x__ {_Matcher'MatcherTree'MatchMap'MapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Matcher'MatcherTree'MatchMap'MapEntry "value" Matcher'OnMatch where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherTree'MatchMap'MapEntry'value
           (\ x__ y__
              -> x__ {_Matcher'MatcherTree'MatchMap'MapEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Matcher'MatcherTree'MatchMap'MapEntry "maybe'value" (Prelude.Maybe Matcher'OnMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'MatcherTree'MatchMap'MapEntry'value
           (\ x__ y__
              -> x__ {_Matcher'MatcherTree'MatchMap'MapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Matcher'MatcherTree'MatchMap'MapEntry where
  messageName _
    = Data.Text.pack
        "envoy.config.common.matcher.v3.Matcher.MatcherTree.MatchMap.MapEntry"
  packedMessageDescriptor _
    = "\n\
      \\bMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2E\n\
      \\ENQvalue\CAN\STX \SOH(\v2/.envoy.config.common.matcher.v3.Matcher.OnMatchR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherTree'MatchMap'MapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Matcher'OnMatch)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Matcher'MatcherTree'MatchMap'MapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Matcher'MatcherTree'MatchMap'MapEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_Matcher'MatcherTree'MatchMap'MapEntry'_unknownFields = y__})
  defMessage
    = Matcher'MatcherTree'MatchMap'MapEntry'_constructor
        {_Matcher'MatcherTree'MatchMap'MapEntry'key = Data.ProtoLens.fieldDefault,
         _Matcher'MatcherTree'MatchMap'MapEntry'value = Prelude.Nothing,
         _Matcher'MatcherTree'MatchMap'MapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Matcher'MatcherTree'MatchMap'MapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser Matcher'MatcherTree'MatchMap'MapEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MapEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
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
instance Control.DeepSeq.NFData Matcher'MatcherTree'MatchMap'MapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Matcher'MatcherTree'MatchMap'MapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Matcher'MatcherTree'MatchMap'MapEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_Matcher'MatcherTree'MatchMap'MapEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'onMatch' @:: Lens' Matcher'OnMatch (Prelude.Maybe Matcher'OnMatch'OnMatch)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'matcher' @:: Lens' Matcher'OnMatch (Prelude.Maybe Matcher)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.matcher' @:: Lens' Matcher'OnMatch Matcher@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.maybe'action' @:: Lens' Matcher'OnMatch (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@
         * 'Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields.action' @:: Lens' Matcher'OnMatch Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@ -}
data Matcher'OnMatch
  = Matcher'OnMatch'_constructor {_Matcher'OnMatch'onMatch :: !(Prelude.Maybe Matcher'OnMatch'OnMatch),
                                  _Matcher'OnMatch'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Matcher'OnMatch where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Matcher'OnMatch'OnMatch
  = Matcher'OnMatch'Matcher !Matcher |
    Matcher'OnMatch'Action !Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Matcher'OnMatch "maybe'onMatch" (Prelude.Maybe Matcher'OnMatch'OnMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'OnMatch'onMatch
           (\ x__ y__ -> x__ {_Matcher'OnMatch'onMatch = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Matcher'OnMatch "maybe'matcher" (Prelude.Maybe Matcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'OnMatch'onMatch
           (\ x__ y__ -> x__ {_Matcher'OnMatch'onMatch = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Matcher'OnMatch'Matcher x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Matcher'OnMatch'Matcher y__))
instance Data.ProtoLens.Field.HasField Matcher'OnMatch "matcher" Matcher where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'OnMatch'onMatch
           (\ x__ y__ -> x__ {_Matcher'OnMatch'onMatch = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Matcher'OnMatch'Matcher x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Matcher'OnMatch'Matcher y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Matcher'OnMatch "maybe'action" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'OnMatch'onMatch
           (\ x__ y__ -> x__ {_Matcher'OnMatch'onMatch = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Matcher'OnMatch'Action x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Matcher'OnMatch'Action y__))
instance Data.ProtoLens.Field.HasField Matcher'OnMatch "action" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Matcher'OnMatch'onMatch
           (\ x__ y__ -> x__ {_Matcher'OnMatch'onMatch = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Matcher'OnMatch'Action x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Matcher'OnMatch'Action y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Matcher'OnMatch where
  messageName _
    = Data.Text.pack "envoy.config.common.matcher.v3.Matcher.OnMatch"
  packedMessageDescriptor _
    = "\n\
      \\aOnMatch\DC2C\n\
      \\amatcher\CAN\SOH \SOH(\v2'.envoy.config.common.matcher.v3.MatcherH\NULR\amatcher\DC2D\n\
      \\ACKaction\CAN\STX \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigH\NULR\ACKactionB\SI\n\
      \\bon_match\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        matcher__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "matcher"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Matcher)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'matcher")) ::
              Data.ProtoLens.FieldDescriptor Matcher'OnMatch
        action__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "action"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'action")) ::
              Data.ProtoLens.FieldDescriptor Matcher'OnMatch
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, matcher__field_descriptor),
           (Data.ProtoLens.Tag 2, action__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Matcher'OnMatch'_unknownFields
        (\ x__ y__ -> x__ {_Matcher'OnMatch'_unknownFields = y__})
  defMessage
    = Matcher'OnMatch'_constructor
        {_Matcher'OnMatch'onMatch = Prelude.Nothing,
         _Matcher'OnMatch'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Matcher'OnMatch
          -> Data.ProtoLens.Encoding.Bytes.Parser Matcher'OnMatch
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
                                       "matcher"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"matcher") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "action"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"action") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OnMatch"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'onMatch") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Matcher'OnMatch'Matcher v))
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
                (Prelude.Just (Matcher'OnMatch'Action v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
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
instance Control.DeepSeq.NFData Matcher'OnMatch where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Matcher'OnMatch'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Matcher'OnMatch'onMatch x__) ())
instance Control.DeepSeq.NFData Matcher'OnMatch'OnMatch where
  rnf (Matcher'OnMatch'Matcher x__) = Control.DeepSeq.rnf x__
  rnf (Matcher'OnMatch'Action x__) = Control.DeepSeq.rnf x__
_Matcher'OnMatch'Matcher ::
  Data.ProtoLens.Prism.Prism' Matcher'OnMatch'OnMatch Matcher
_Matcher'OnMatch'Matcher
  = Data.ProtoLens.Prism.prism'
      Matcher'OnMatch'Matcher
      (\ p__
         -> case p__ of
              (Matcher'OnMatch'Matcher p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Matcher'OnMatch'Action ::
  Data.ProtoLens.Prism.Prism' Matcher'OnMatch'OnMatch Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig
_Matcher'OnMatch'Action
  = Data.ProtoLens.Prism.prism'
      Matcher'OnMatch'Action
      (\ p__
         -> case p__ of
              (Matcher'OnMatch'Action p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \,envoy/config/common/matcher/v3/matcher.proto\DC2\RSenvoy.config.common.matcher.v3\SUB$envoy/config/core/v3/extension.proto\SUB,envoy/config/route/v3/route_components.proto\SUB\"envoy/type/matcher/v3/string.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\218\DC1\n\
    \\aMatcher\DC2X\n\
    \\fmatcher_list\CAN\SOH \SOH(\v23.envoy.config.common.matcher.v3.Matcher.MatcherListH\NULR\vmatcherList\DC2X\n\
    \\fmatcher_tree\CAN\STX \SOH(\v23.envoy.config.common.matcher.v3.Matcher.MatcherTreeH\NULR\vmatcherTree\DC2O\n\
    \\von_no_match\CAN\ETX \SOH(\v2/.envoy.config.common.matcher.v3.Matcher.OnMatchR\tonNoMatch\SUB\165\SOH\n\
    \\aOnMatch\DC2C\n\
    \\amatcher\CAN\SOH \SOH(\v2'.envoy.config.common.matcher.v3.MatcherH\NULR\amatcher\DC2D\n\
    \\ACKaction\CAN\STX \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigH\NULR\ACKactionB\SI\n\
    \\bon_match\DC2\ETX\248B\SOH\SUB\162\t\n\
    \\vMatcherList\DC2f\n\
    \\bmatchers\CAN\SOH \ETX(\v2@.envoy.config.common.matcher.v3.Matcher.MatcherList.FieldMatcherR\bmatchersB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB\220\ACK\n\
    \\tPredicate\DC2z\n\
    \\DLEsingle_predicate\CAN\SOH \SOH(\v2M.envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate.SinglePredicateH\NULR\SIsinglePredicate\DC2l\n\
    \\n\
    \or_matcher\CAN\STX \SOH(\v2K.envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate.PredicateListH\NULR\torMatcher\DC2n\n\
    \\vand_matcher\CAN\ETX \SOH(\v2K.envoy.config.common.matcher.v3.Matcher.MatcherList.Predicate.PredicateListH\NULR\n\
    \andMatcher\DC2`\n\
    \\vnot_matcher\CAN\EOT \SOH(\v2=.envoy.config.common.matcher.v3.Matcher.MatcherList.PredicateH\NULR\n\
    \notMatcher\SUB\135\STX\n\
    \\SISinglePredicate\DC2J\n\
    \\ENQinput\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\ENQinputB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2G\n\
    \\vvalue_match\CAN\STX \SOH(\v2$.envoy.type.matcher.v3.StringMatcherH\NULR\n\
    \valueMatch\DC2O\n\
    \\fcustom_match\CAN\ETX \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigH\NULR\vcustomMatchB\SO\n\
    \\amatcher\DC2\ETX\248B\SOH\SUBv\n\
    \\rPredicateList\DC2e\n\
    \\tpredicate\CAN\SOH \ETX(\v2=.envoy.config.common.matcher.v3.Matcher.MatcherList.PredicateR\tpredicateB\b\250B\ENQ\146\SOH\STX\b\STXB\DC1\n\
    \\n\
    \match_type\DC2\ETX\248B\SOH\SUB\203\SOH\n\
    \\fFieldMatcher\DC2e\n\
    \\tpredicate\CAN\SOH \SOH(\v2=.envoy.config.common.matcher.v3.Matcher.MatcherList.PredicateR\tpredicateB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2T\n\
    \\bon_match\CAN\STX \SOH(\v2/.envoy.config.common.matcher.v3.Matcher.OnMatchR\aonMatchB\b\250B\ENQ\138\SOH\STX\DLE\SOH\SUB\231\EOT\n\
    \\vMatcherTree\DC2J\n\
    \\ENQinput\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\ENQinputB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2f\n\
    \\SIexact_match_map\CAN\STX \SOH(\v2<.envoy.config.common.matcher.v3.Matcher.MatcherTree.MatchMapH\NULR\rexactMatchMap\DC2h\n\
    \\DLEprefix_match_map\CAN\ETX \SOH(\v2<.envoy.config.common.matcher.v3.Matcher.MatcherTree.MatchMapH\NULR\SOprefixMatchMap\DC2O\n\
    \\fcustom_match\CAN\EOT \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigH\NULR\vcustomMatch\SUB\214\SOH\n\
    \\bMatchMap\DC2a\n\
    \\ETXmap\CAN\SOH \ETX(\v2E.envoy.config.common.matcher.v3.Matcher.MatcherTree.MatchMap.MapEntryR\ETXmapB\b\250B\ENQ\154\SOH\STX\b\SOH\SUBg\n\
    \\bMapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2E\n\
    \\ENQvalue\CAN\STX \SOH(\v2/.envoy.config.common.matcher.v3.Matcher.OnMatchR\ENQvalue:\STX8\SOHB\DLE\n\
    \\ttree_type\DC2\ETX\248B\SOHB\DC3\n\
    \\fmatcher_type\DC2\ETX\248B\SOH\"\232\b\n\
    \\SOMatchPredicate\DC2T\n\
    \\bor_match\CAN\SOH \SOH(\v27.envoy.config.common.matcher.v3.MatchPredicate.MatchSetH\NULR\aorMatch\DC2V\n\
    \\tand_match\CAN\STX \SOH(\v27.envoy.config.common.matcher.v3.MatchPredicate.MatchSetH\NULR\bandMatch\DC2M\n\
    \\tnot_match\CAN\ETX \SOH(\v2..envoy.config.common.matcher.v3.MatchPredicateH\NULR\bnotMatch\DC2&\n\
    \\tany_match\CAN\EOT \SOH(\bH\NULR\banyMatchB\a\250B\EOTj\STX\b\SOH\DC2o\n\
    \\SUBhttp_request_headers_match\CAN\ENQ \SOH(\v20.envoy.config.common.matcher.v3.HttpHeadersMatchH\NULR\ETBhttpRequestHeadersMatch\DC2q\n\
    \\ESChttp_request_trailers_match\CAN\ACK \SOH(\v20.envoy.config.common.matcher.v3.HttpHeadersMatchH\NULR\CANhttpRequestTrailersMatch\DC2q\n\
    \\ESChttp_response_headers_match\CAN\a \SOH(\v20.envoy.config.common.matcher.v3.HttpHeadersMatchH\NULR\CANhttpResponseHeadersMatch\DC2s\n\
    \\FShttp_response_trailers_match\CAN\b \SOH(\v20.envoy.config.common.matcher.v3.HttpHeadersMatchH\NULR\EMhttpResponseTrailersMatch\DC2|\n\
    \\UShttp_request_generic_body_match\CAN\t \SOH(\v24.envoy.config.common.matcher.v3.HttpGenericBodyMatchH\NULR\ESChttpRequestGenericBodyMatch\DC2~\n\
    \ http_response_generic_body_match\CAN\n\
    \ \SOH(\v24.envoy.config.common.matcher.v3.HttpGenericBodyMatchH\NULR\FShttpResponseGenericBodyMatch\SUBZ\n\
    \\bMatchSet\DC2N\n\
    \\ENQrules\CAN\SOH \ETX(\v2..envoy.config.common.matcher.v3.MatchPredicateR\ENQrulesB\b\250B\ENQ\146\SOH\STX\b\STXB\v\n\
    \\EOTrule\DC2\ETX\248B\SOH\"R\n\
    \\DLEHttpHeadersMatch\DC2>\n\
    \\aheaders\CAN\SOH \ETX(\v2$.envoy.config.route.v3.HeaderMatcherR\aheaders\"\161\STX\n\
    \\DC4HttpGenericBodyMatch\DC2\US\n\
    \\vbytes_limit\CAN\SOH \SOH(\rR\n\
    \bytesLimit\DC2k\n\
    \\bpatterns\CAN\STX \ETX(\v2E.envoy.config.common.matcher.v3.HttpGenericBodyMatch.GenericTextMatchR\bpatternsB\b\250B\ENQ\146\SOH\STX\b\SOH\SUB{\n\
    \\DLEGenericTextMatch\DC2,\n\
    \\fstring_match\CAN\SOH \SOH(\tH\NULR\vstringMatchB\a\250B\EOTr\STX\DLE\SOH\DC2,\n\
    \\fbinary_match\CAN\STX \SOH(\fH\NULR\vbinaryMatchB\a\250B\EOTz\STX\DLE\SOHB\v\n\
    \\EOTrule\DC2\ETX\248B\SOHBF\n\
    \,io.envoyproxy.envoy.config.common.matcher.v3B\fMatcherProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\135?\n\
    \\a\DC2\ENQ\NUL\NUL\225\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL'\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL.\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL6\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL,\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULE\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NULE\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\229\ETX\n\
    \\STX\EOT\NUL\DC2\ENQ\EM\NUL\142\SOH\SOH\SUB\173\ETX A matcher, which may traverse a matching tree in order to result in a match action.\n\
    \ During matching, the tree will be traversed until a match is found, or if no match\n\
    \ is found the action specified by the most specific on_no_match will be evaluated.\n\
    \ As an on_no_match might result in another matching tree being evaluated, this process\n\
    \ might repeat several times until the final OnMatch (or no match) is decided.\n\
    \\n\
    \ [#alpha:]\n\
    \2( [#protodoc-title: Unified Matcher API]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\EM\b\SI\n\
    \4\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\ESC\STX)\ETX\SUB& What to do if a match is successful.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\ESC\n\
    \\DC1\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\b\NUL\DC2\EOT\FS\EOT(\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\SOH\DC2\ETX\FS\n\
    \\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\STX\DC2\ETX\GS\ACK(\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\b\NUL\STX\175\b\DC2\ETX\GS\ACK(\n\
    \\231\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX$\ACK\SUB\SUB\215\SOH Nested matcher to evaluate.\n\
    \ If the nested matcher does not match and does not specify\n\
    \ on_no_match, then this matcher is considered not to have\n\
    \ matched, even if a predicate at this level or above returned\n\
    \ true.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX$\ACK\r\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX$\SO\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX$\CAN\EM\n\
    \2\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX'\ACK.\SUB# Protocol-specific action to take.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX'\ACK\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX'#)\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX',-\n\
    \w\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOT.\STXd\ETX\SUBi A linear list of field matchers.\n\
    \ The field matchers are evaluated in order, and the first match\n\
    \ wins.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX.\n\
    \\NAK\n\
    \B\n\
    \\ACK\EOT\NUL\ETX\SOH\ETX\NUL\DC2\EOT0\EOTW\ENQ\SUB2 Predicate to determine if a match is successful.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\ETX\NUL\SOH\DC2\ETX0\f\NAK\n\
    \7\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\DC2\EOT2\ACKA\a\SUB% Predicate for a single input field.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\SOH\DC2\ETX2\SO\GS\n\
    \\133\SOH\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\NUL\DC2\ETX5\b]\SUBr Protocol-specific specification of input field to match on.\n\
    \ [#extension-category: envoy.matching.common_inputs]\n\
    \\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX5\b$\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX5%*\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX5-.\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\NUL\b\DC2\ETX5/\\\n\
    \\NAK\n\
    \\SO\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\NUL\b\175\b\DC1\DC2\ETX50[\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\b\NUL\DC2\EOT7\b@\t\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\b\NUL\SOH\DC2\ETX7\SO\NAK\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\b\NUL\STX\DC2\ETX8\n\
    \,\n\
    \\DC4\n\
    \\r\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\b\NUL\STX\175\b\DC2\ETX8\n\
    \,\n\
    \-\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\SOH\DC2\ETX;\n\
    \8\SUB\SUB Built-in string matcher.\n\
    \\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX;\n\
    \'\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX;(3\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX;67\n\
    \o\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\STX\DC2\ETX?\n\
    \8\SUB\\ Extension for custom matching logic.\n\
    \ [#extension-category: envoy.matching.input_matchers]\n\
    \\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\STX\ACK\DC2\ETX?\n\
    \&\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX?'3\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX?67\n\
    \^\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\ETX\SOH\DC2\EOTD\ACKF\a\SUBL A list of two or more matchers. Used to allow using a list within a oneof.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\ETX\SOH\SOH\DC2\ETXD\SO\ESC\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\NUL\ETX\SOH\STX\NUL\DC2\ETXE\bV\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\SOH\STX\NUL\EOT\DC2\ETXE\b\DLE\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\SOH\STX\NUL\ACK\DC2\ETXE\DC1\SUB\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETXE\ESC$\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETXE'(\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\ETX\SOH\STX\NUL\b\DC2\ETXE)U\n\
    \\NAK\n\
    \\SO\EOT\NUL\ETX\SOH\ETX\NUL\ETX\SOH\STX\NUL\b\175\b\DC2\DC2\ETXE*T\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\b\NUL\DC2\EOTH\ACKV\a\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\b\NUL\SOH\DC2\ETXH\f\SYN\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\b\NUL\STX\DC2\ETXI\b*\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\NUL\b\NUL\STX\175\b\DC2\ETXI\b*\n\
    \2\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\DC2\ETXL\b-\SUB! A single predicate to evaluate.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\ACK\DC2\ETXL\b\ETB\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\SOH\DC2\ETXL\CAN(\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\ETX\DC2\ETXL+,\n\
    \=\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\DC2\ETXO\b%\SUB, A list of predicates to be OR-ed together.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\ACK\DC2\ETXO\b\NAK\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\SOH\DC2\ETXO\SYN \n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\ETX\DC2\ETXO#$\n\
    \>\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\DC2\ETXR\b&\SUB- A list of predicates to be AND-ed together.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\ACK\DC2\ETXR\b\NAK\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\SOH\DC2\ETXR\SYN!\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\ETX\DC2\ETXR$%\n\
    \,\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\STX\ETX\DC2\ETXU\b\"\SUB\ESC The invert of a predicate\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\ETX\ACK\DC2\ETXU\b\DC1\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\ETX\SOH\DC2\ETXU\DC2\GS\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\ETX\ETX\DC2\ETXU !\n\
    \(\n\
    \\ACK\EOT\NUL\ETX\SOH\ETX\SOH\DC2\EOTZ\EOT`\ENQ\SUB\CAN An individual matcher.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\ETX\SOH\SOH\DC2\ETXZ\f\CAN\n\
    \4\n\
    \\b\EOT\NUL\ETX\SOH\ETX\SOH\STX\NUL\DC2\ETX\\\ACKL\SUB# Determines if the match succeeds.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\SOH\STX\NUL\ACK\DC2\ETX\\\ACK\SI\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\SOH\STX\NUL\SOH\DC2\ETX\\\DLE\EM\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\SOH\STX\NUL\ETX\DC2\ETX\\\FS\GS\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\SOH\STX\NUL\b\DC2\ETX\\\RSK\n\
    \\DC3\n\
    \\f\EOT\NUL\ETX\SOH\ETX\SOH\STX\NUL\b\175\b\DC1\DC2\ETX\\\USJ\n\
    \4\n\
    \\b\EOT\NUL\ETX\SOH\ETX\SOH\STX\SOH\DC2\ETX_\ACKI\SUB# What to do if the match succeeds.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\SOH\STX\SOH\ACK\DC2\ETX_\ACK\r\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\SOH\STX\SOH\SOH\DC2\ETX_\SO\SYN\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\SOH\STX\SOH\ETX\DC2\ETX_\EM\SUB\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\SOH\STX\SOH\b\DC2\ETX_\ESCH\n\
    \\DC3\n\
    \\f\EOT\NUL\ETX\SOH\ETX\SOH\STX\SOH\b\175\b\DC1\DC2\ETX_\FSG\n\
    \6\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETXc\EOTT\SUB' A list of matchers. First match wins.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\EOT\DC2\ETXc\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ACK\DC2\ETXc\r\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETXc\SUB\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETXc%&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\b\DC2\ETXc'S\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\NUL\b\175\b\DC2\DC2\ETXc(R\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\EOTf\STX}\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\ETXf\n\
    \\NAK\n\
    \Y\n\
    \\ACK\EOT\NUL\ETX\STX\ETX\NUL\DC2\EOTh\EOTj\ENQ\SUBI A map of configured matchers. Used to allow using a map within a oneof.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\ETX\NUL\SOH\DC2\ETXh\f\DC4\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\STX\ETX\NUL\STX\NUL\DC2\ETXi\ACKK\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\STX\ETX\NUL\STX\NUL\ACK\DC2\ETXi\ACK\SUB\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\STX\ETX\NUL\STX\NUL\SOH\DC2\ETXi\ESC\RS\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\STX\ETX\NUL\STX\NUL\ETX\DC2\ETXi!\"\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\STX\ETX\NUL\STX\NUL\b\DC2\ETXi#J\n\
    \\DC3\n\
    \\f\EOT\NUL\ETX\STX\ETX\NUL\STX\NUL\b\175\b\DC3\DC2\ETXi$I\n\
    \L\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\ETXm\EOTY\SUB= Protocol-specific specification of input field to match on.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ACK\DC2\ETXm\EOT \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\ETXm!&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\ETXm)*\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\b\DC2\ETXm+X\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\STX\STX\NUL\b\175\b\DC1\DC2\ETXm,W\n\
    \\183\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\b\NUL\DC2\EOTr\EOT|\ENQ\SUB\166\SOH Exact or prefix match maps in which to look up the input value.\n\
    \ If the lookup succeeds, the match is considered successful, and\n\
    \ the corresponding OnMatch is used.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\b\NUL\SOH\DC2\ETXr\n\
    \\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\b\NUL\STX\DC2\ETXs\ACK(\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\STX\b\NUL\STX\175\b\DC2\ETXs\ACK(\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SOH\DC2\ETXu\ACK#\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ACK\DC2\ETXu\ACK\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\SOH\DC2\ETXu\SI\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ETX\DC2\ETXu!\"\n\
    \.\n\
    \\ACK\EOT\NUL\ETX\STX\STX\STX\DC2\ETXx\ACK$\SUB\US Longest matching prefix wins.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ACK\DC2\ETXx\ACK\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\SOH\DC2\ETXx\SI\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ETX\DC2\ETXx\"#\n\
    \5\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ETX\DC2\ETX{\ACK4\SUB& Extension for custom matching logic.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ACK\DC2\ETX{\ACK\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\SOH\DC2\ETX{#/\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ETX\DC2\ETX{23\n\
    \\r\n\
    \\EOT\EOT\NUL\b\NUL\DC2\ENQ\DEL\STX\135\SOH\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\DEL\b\DC4\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\EOT\128\SOH\EOT&\n\
    \\SI\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\EOT\128\SOH\EOT&\n\
    \6\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\131\SOH\EOT!\SUB( A linear list of matchers to evaluate.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\EOT\131\SOH\EOT\SI\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\EOT\131\SOH\DLE\FS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\EOT\131\SOH\US \n\
    \)\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\134\SOH\EOT!\SUB\ESC A match tree to evaluate.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\EOT\134\SOH\EOT\SI\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\134\SOH\DLE\FS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\EOT\134\SOH\US \n\
    \\213\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT\141\SOH\STX\SUB\SUB\198\SOH Optional OnMatch to use if the matcher failed.\n\
    \ If specified, the OnMatch is used, and the matcher is considered\n\
    \ to have matched.\n\
    \ If not specified, the matcher is considered not to have matched.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\EOT\141\SOH\STX\t\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\EOT\141\SOH\n\
    \\NAK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\EOT\141\SOH\CAN\EM\n\
    \\186\SOH\n\
    \\STX\EOT\SOH\DC2\ACK\147\SOH\NUL\189\SOH\SOH\SUB\171\SOH Match configuration. This is a recursive structure which allows complex nested match\n\
    \ configurations to be built using various logical operators.\n\
    \ [#next-free-field: 11]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SOH\SOH\DC2\EOT\147\SOH\b\SYN\n\
    \L\n\
    \\EOT\EOT\SOH\ETX\NUL\DC2\ACK\149\SOH\STX\152\SOH\ETX\SUB< A set of match configurations used for logical operations.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\NUL\SOH\DC2\EOT\149\SOH\n\
    \\DC2\n\
    \9\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\NUL\DC2\EOT\151\SOH\EOTS\SUB) The list of rules that make up the set.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\EOT\DC2\EOT\151\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ACK\DC2\EOT\151\SOH\r\ESC\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\SOH\DC2\EOT\151\SOH\FS!\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ETX\DC2\EOT\151\SOH$%\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\b\DC2\EOT\151\SOH&R\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\NUL\STX\NUL\b\175\b\DC2\DC2\EOT\151\SOH'Q\n\
    \\SO\n\
    \\EOT\EOT\SOH\b\NUL\DC2\ACK\154\SOH\STX\188\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\EOT\154\SOH\b\f\n\
    \\r\n\
    \\ENQ\EOT\SOH\b\NUL\STX\DC2\EOT\155\SOH\EOT&\n\
    \\SI\n\
    \\a\EOT\SOH\b\NUL\STX\175\b\DC2\EOT\155\SOH\EOT&\n\
    \v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\159\SOH\EOT\SUB\SUBh A set that describes a logical OR. If any member of the set matches, the match configuration\n\
    \ matches.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\EOT\159\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\159\SOH\r\NAK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\159\SOH\CAN\EM\n\
    \v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\163\SOH\EOT\ESC\SUBh A set that describes a logical AND. If all members of the set match, the match configuration\n\
    \ matches.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\EOT\163\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\163\SOH\r\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\163\SOH\EM\SUB\n\
    \l\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT\166\SOH\EOT!\SUB^ A negation match. The match configuration will match if the negated match condition matches.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\EOT\166\SOH\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\EOT\166\SOH\DC3\FS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\EOT\166\SOH\US \n\
    \:\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\EOT\169\SOH\EOT?\SUB, The match configuration will always match.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\EOT\169\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\EOT\169\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\EOT\169\SOH\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\b\DC2\EOT\169\SOH\ETB>\n\
    \\DLE\n\
    \\b\EOT\SOH\STX\ETX\b\175\b\r\DC2\EOT\169\SOH\CAN=\n\
    \9\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\EOT\172\SOH\EOT4\SUB+ HTTP request headers match configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\EOT\172\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\EOT\172\SOH\NAK/\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\EOT\172\SOH23\n\
    \:\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\EOT\175\SOH\EOT5\SUB, HTTP request trailers match configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\EOT\175\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\EOT\175\SOH\NAK0\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\EOT\175\SOH34\n\
    \:\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\EOT\178\SOH\EOT5\SUB, HTTP response headers match configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\EOT\178\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\EOT\178\SOH\NAK0\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\EOT\178\SOH34\n\
    \;\n\
    \\EOT\EOT\SOH\STX\a\DC2\EOT\181\SOH\EOT6\SUB- HTTP response trailers match configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ACK\DC2\EOT\181\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\EOT\181\SOH\NAK1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\EOT\181\SOH45\n\
    \>\n\
    \\EOT\EOT\SOH\STX\b\DC2\EOT\184\SOH\EOT=\SUB0 HTTP request generic body match configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\ACK\DC2\EOT\184\SOH\EOT\CAN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\EOT\184\SOH\EM8\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\EOT\184\SOH;<\n\
    \?\n\
    \\EOT\EOT\SOH\STX\t\DC2\EOT\187\SOH\EOT?\SUB1 HTTP response generic body match configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\ACK\DC2\EOT\187\SOH\EOT\CAN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\EOT\187\SOH\EM9\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\EOT\187\SOH<>\n\
    \1\n\
    \\STX\EOT\STX\DC2\ACK\192\SOH\NUL\195\SOH\SOH\SUB# HTTP headers match configuration.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\192\SOH\b\CAN\n\
    \&\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\194\SOH\STX.\SUB\CAN HTTP headers to match.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\EOT\194\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\EOT\194\SOH\v!\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\194\SOH\")\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\194\SOH,-\n\
    \\245\EOT\n\
    \\STX\EOT\ETX\DC2\ACK\207\SOH\NUL\225\SOH\SOH\SUB\230\EOT HTTP generic body match configuration.\n\
    \ List of text strings and hex strings to be located in HTTP body.\n\
    \ All specified strings must be found in the HTTP body for positive match.\n\
    \ The search may be limited to specified number of bytes from the body start.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   Searching for patterns in HTTP body is potentially cpu intensive. For each specified pattern, http body is scanned byte by byte to find a match.\n\
    \   If multiple patterns are specified, the process is repeated for each pattern. If location of a pattern is known, ``bytes_limit`` should be specified\n\
    \   to scan only part of the http body.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\207\SOH\b\FS\n\
    \\SO\n\
    \\EOT\EOT\ETX\ETX\NUL\DC2\ACK\208\SOH\STX\218\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\ETX\ETX\NUL\SOH\DC2\EOT\208\SOH\n\
    \\SUB\n\
    \\DLE\n\
    \\ACK\EOT\ETX\ETX\NUL\b\NUL\DC2\ACK\209\SOH\EOT\217\SOH\ENQ\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\b\NUL\SOH\DC2\EOT\209\SOH\n\
    \\SO\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\b\NUL\STX\DC2\EOT\210\SOH\ACK(\n\
    \\DC1\n\
    \\t\EOT\ETX\ETX\NUL\b\NUL\STX\175\b\DC2\EOT\210\SOH\ACK(\n\
    \9\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\NUL\DC2\EOT\213\SOH\ACKG\SUB) Text string to be located in HTTP body.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ENQ\DC2\EOT\213\SOH\ACK\f\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\SOH\DC2\EOT\213\SOH\r\EM\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ETX\DC2\EOT\213\SOH\FS\GS\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\b\DC2\EOT\213\SOH\RSF\n\
    \\DC2\n\
    \\n\
    \\EOT\ETX\ETX\NUL\STX\NUL\b\175\b\SO\DC2\EOT\213\SOH\USE\n\
    \?\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\SOH\DC2\EOT\216\SOH\ACKE\SUB/ Sequence of bytes to be located in HTTP body.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\ENQ\DC2\EOT\216\SOH\ACK\v\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\SOH\DC2\EOT\216\SOH\f\CAN\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\ETX\DC2\EOT\216\SOH\ESC\FS\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\b\DC2\EOT\216\SOH\GSD\n\
    \\DC2\n\
    \\n\
    \\EOT\ETX\ETX\NUL\STX\SOH\b\175\b\SI\DC2\EOT\216\SOH\RSC\n\
    \t\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\221\SOH\STX\EM\SUBf Limits search to specified number of bytes - default zero (no limit - match entire captured buffer).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\221\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\221\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\221\SOH\ETB\CAN\n\
    \*\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\224\SOH\STXV\SUB\FS List of patterns to match.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\EOT\224\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\EOT\224\SOH\v\ESC\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\224\SOH\FS$\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\224\SOH'(\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\b\DC2\EOT\224\SOH)U\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\SOH\b\175\b\DC2\DC2\EOT\224\SOH*Tb\ACKproto3"