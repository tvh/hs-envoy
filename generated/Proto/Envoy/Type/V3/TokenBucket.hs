{- This file was auto-generated from envoy/type/v3/token_bucket.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.V3.TokenBucket (
        TokenBucket()
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Type.V3.TokenBucket_Fields.maxTokens' @:: Lens' TokenBucket Data.Word.Word32@
         * 'Proto.Envoy.Type.V3.TokenBucket_Fields.tokensPerFill' @:: Lens' TokenBucket Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Type.V3.TokenBucket_Fields.maybe'tokensPerFill' @:: Lens' TokenBucket (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Type.V3.TokenBucket_Fields.fillInterval' @:: Lens' TokenBucket Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Type.V3.TokenBucket_Fields.maybe'fillInterval' @:: Lens' TokenBucket (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data TokenBucket
  = TokenBucket'_constructor {_TokenBucket'maxTokens :: !Data.Word.Word32,
                              _TokenBucket'tokensPerFill :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                              _TokenBucket'fillInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                              _TokenBucket'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TokenBucket where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TokenBucket "maxTokens" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TokenBucket'maxTokens
           (\ x__ y__ -> x__ {_TokenBucket'maxTokens = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TokenBucket "tokensPerFill" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TokenBucket'tokensPerFill
           (\ x__ y__ -> x__ {_TokenBucket'tokensPerFill = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TokenBucket "maybe'tokensPerFill" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TokenBucket'tokensPerFill
           (\ x__ y__ -> x__ {_TokenBucket'tokensPerFill = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TokenBucket "fillInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TokenBucket'fillInterval
           (\ x__ y__ -> x__ {_TokenBucket'fillInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TokenBucket "maybe'fillInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TokenBucket'fillInterval
           (\ x__ y__ -> x__ {_TokenBucket'fillInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Message TokenBucket where
  messageName _ = Data.Text.pack "envoy.type.v3.TokenBucket"
  packedMessageDescriptor _
    = "\n\
      \\vTokenBucket\DC2&\n\
      \\n\
      \max_tokens\CAN\SOH \SOH(\rR\tmaxTokensB\a\250B\EOT*\STX \NUL\DC2M\n\
      \\SItokens_per_fill\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\rtokensPerFillB\a\250B\EOT*\STX \NUL\DC2J\n\
      \\rfill_interval\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\ffillIntervalB\n\
      \\250B\a\170\SOH\EOT\b\SOH*\NUL:\GS\154\197\136\RS\CAN\n\
      \\SYNenvoy.type.TokenBucket"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxTokens__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_tokens"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxTokens")) ::
              Data.ProtoLens.FieldDescriptor TokenBucket
        tokensPerFill__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tokens_per_fill"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tokensPerFill")) ::
              Data.ProtoLens.FieldDescriptor TokenBucket
        fillInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fill_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fillInterval")) ::
              Data.ProtoLens.FieldDescriptor TokenBucket
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxTokens__field_descriptor),
           (Data.ProtoLens.Tag 2, tokensPerFill__field_descriptor),
           (Data.ProtoLens.Tag 3, fillInterval__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TokenBucket'_unknownFields
        (\ x__ y__ -> x__ {_TokenBucket'_unknownFields = y__})
  defMessage
    = TokenBucket'_constructor
        {_TokenBucket'maxTokens = Data.ProtoLens.fieldDefault,
         _TokenBucket'tokensPerFill = Prelude.Nothing,
         _TokenBucket'fillInterval = Prelude.Nothing,
         _TokenBucket'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TokenBucket -> Data.ProtoLens.Encoding.Bytes.Parser TokenBucket
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
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_tokens"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxTokens") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tokens_per_fill"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tokensPerFill") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "fill_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fillInterval") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TokenBucket"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"maxTokens") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'tokensPerFill") _x
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
                          (Data.ProtoLens.Field.field @"maybe'fillInterval") _x
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
instance Control.DeepSeq.NFData TokenBucket where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TokenBucket'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TokenBucket'maxTokens x__)
                (Control.DeepSeq.deepseq
                   (_TokenBucket'tokensPerFill x__)
                   (Control.DeepSeq.deepseq (_TokenBucket'fillInterval x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ envoy/type/v3/token_bucket.proto\DC2\renvoy.type.v3\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\239\SOH\n\
    \\vTokenBucket\DC2&\n\
    \\n\
    \max_tokens\CAN\SOH \SOH(\rR\tmaxTokensB\a\250B\EOT*\STX \NUL\DC2M\n\
    \\SItokens_per_fill\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\rtokensPerFillB\a\250B\EOT*\STX \NUL\DC2J\n\
    \\rfill_interval\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\ffillIntervalB\n\
    \\250B\a\170\SOH\EOT\b\SOH*\NUL:\GS\154\197\136\RS\CAN\n\
    \\SYNenvoy.type.TokenBucketB9\n\
    \\ESCio.envoyproxy.envoy.type.v3B\DLETokenBucketProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\247\a\n\
    \\ACK\DC2\EOT\NUL\NUL%\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SYN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL4\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL1\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL1\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \m\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL%\SOH\SUB> Configures a token bucket, typically used for rate limiting.\n\
    \2! [#protodoc-title: Token bucket]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\DC3\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC4\STXX\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC4\STXX\n\
    \\130\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\CAN\STX<\SUBu The maximum tokens that the bucket can hold. This is also the number of tokens that the bucket\n\
    \ initially contains.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\CAN\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\CAN\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\CAN\CAN;\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\ENQ\DC2\ETX\CAN\EM:\n\
    \\129\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\FS\STXV\SUBt The number of tokens added to the bucket during each fill interval. If not specified, defaults\n\
    \ to a single token.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\FS\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\FS\RS-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\FS01\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\FS2U\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\ENQ\DC2\ETX\FS3T\n\
    \\203\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT!\STX$\ENQ\SUB\188\SOH The fill interval that tokens are added to the bucket. During each fill interval\n\
    \ `tokens_per_fill` are added to the bucket. The bucket will never contain more than\n\
    \ `max_tokens` tokens.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX!\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX!\ESC(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX!+,\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\EOT!-$\EOT\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\STX\b\175\b\NAK\DC2\EOT!.$\ETXb\ACKproto3"