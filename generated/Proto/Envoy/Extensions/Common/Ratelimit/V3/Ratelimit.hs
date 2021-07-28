{- This file was auto-generated from envoy/extensions/common/ratelimit/v3/ratelimit.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit (
        LocalRateLimitDescriptor(), RateLimitDescriptor(),
        RateLimitDescriptor'Entry(),
        RateLimitDescriptor'RateLimitOverride()
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
import qualified Proto.Envoy.Type.V3.RatelimitUnit
import qualified Proto.Envoy.Type.V3.TokenBucket
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit_Fields.entries' @:: Lens' LocalRateLimitDescriptor [RateLimitDescriptor'Entry]@
         * 'Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit_Fields.vec'entries' @:: Lens' LocalRateLimitDescriptor (Data.Vector.Vector RateLimitDescriptor'Entry)@
         * 'Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit_Fields.tokenBucket' @:: Lens' LocalRateLimitDescriptor Proto.Envoy.Type.V3.TokenBucket.TokenBucket@
         * 'Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit_Fields.maybe'tokenBucket' @:: Lens' LocalRateLimitDescriptor (Prelude.Maybe Proto.Envoy.Type.V3.TokenBucket.TokenBucket)@ -}
data LocalRateLimitDescriptor
  = LocalRateLimitDescriptor'_constructor {_LocalRateLimitDescriptor'entries :: !(Data.Vector.Vector RateLimitDescriptor'Entry),
                                           _LocalRateLimitDescriptor'tokenBucket :: !(Prelude.Maybe Proto.Envoy.Type.V3.TokenBucket.TokenBucket),
                                           _LocalRateLimitDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LocalRateLimitDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LocalRateLimitDescriptor "entries" [RateLimitDescriptor'Entry] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimitDescriptor'entries
           (\ x__ y__ -> x__ {_LocalRateLimitDescriptor'entries = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField LocalRateLimitDescriptor "vec'entries" (Data.Vector.Vector RateLimitDescriptor'Entry) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimitDescriptor'entries
           (\ x__ y__ -> x__ {_LocalRateLimitDescriptor'entries = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalRateLimitDescriptor "tokenBucket" Proto.Envoy.Type.V3.TokenBucket.TokenBucket where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimitDescriptor'tokenBucket
           (\ x__ y__ -> x__ {_LocalRateLimitDescriptor'tokenBucket = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LocalRateLimitDescriptor "maybe'tokenBucket" (Prelude.Maybe Proto.Envoy.Type.V3.TokenBucket.TokenBucket) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimitDescriptor'tokenBucket
           (\ x__ y__ -> x__ {_LocalRateLimitDescriptor'tokenBucket = y__}))
        Prelude.id
instance Data.ProtoLens.Message LocalRateLimitDescriptor where
  messageName _
    = Data.Text.pack
        "envoy.extensions.common.ratelimit.v3.LocalRateLimitDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\CANLocalRateLimitDescriptor\DC2c\n\
      \\aentries\CAN\SOH \ETX(\v2?.envoy.extensions.common.ratelimit.v3.RateLimitDescriptor.EntryR\aentriesB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2G\n\
      \\ftoken_bucket\CAN\STX \SOH(\v2\SUB.envoy.type.v3.TokenBucketR\vtokenBucketB\b\250B\ENQ\138\SOH\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        entries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RateLimitDescriptor'Entry)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"entries")) ::
              Data.ProtoLens.FieldDescriptor LocalRateLimitDescriptor
        tokenBucket__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "token_bucket"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.TokenBucket.TokenBucket)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tokenBucket")) ::
              Data.ProtoLens.FieldDescriptor LocalRateLimitDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, entries__field_descriptor),
           (Data.ProtoLens.Tag 2, tokenBucket__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LocalRateLimitDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_LocalRateLimitDescriptor'_unknownFields = y__})
  defMessage
    = LocalRateLimitDescriptor'_constructor
        {_LocalRateLimitDescriptor'entries = Data.Vector.Generic.empty,
         _LocalRateLimitDescriptor'tokenBucket = Prelude.Nothing,
         _LocalRateLimitDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LocalRateLimitDescriptor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld RateLimitDescriptor'Entry
             -> Data.ProtoLens.Encoding.Bytes.Parser LocalRateLimitDescriptor
        loop x mutable'entries
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'entries)
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
                              (Data.ProtoLens.Field.field @"vec'entries") frozen'entries x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "entries"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'entries y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "token_bucket"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tokenBucket") y x)
                                  mutable'entries
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'entries
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'entries)
          "LocalRateLimitDescriptor"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'entries") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'tokenBucket") _x
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
instance Control.DeepSeq.NFData LocalRateLimitDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LocalRateLimitDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LocalRateLimitDescriptor'entries x__)
                (Control.DeepSeq.deepseq
                   (_LocalRateLimitDescriptor'tokenBucket x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit_Fields.entries' @:: Lens' RateLimitDescriptor [RateLimitDescriptor'Entry]@
         * 'Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit_Fields.vec'entries' @:: Lens' RateLimitDescriptor (Data.Vector.Vector RateLimitDescriptor'Entry)@
         * 'Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit_Fields.limit' @:: Lens' RateLimitDescriptor RateLimitDescriptor'RateLimitOverride@
         * 'Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit_Fields.maybe'limit' @:: Lens' RateLimitDescriptor (Prelude.Maybe RateLimitDescriptor'RateLimitOverride)@ -}
data RateLimitDescriptor
  = RateLimitDescriptor'_constructor {_RateLimitDescriptor'entries :: !(Data.Vector.Vector RateLimitDescriptor'Entry),
                                      _RateLimitDescriptor'limit :: !(Prelude.Maybe RateLimitDescriptor'RateLimitOverride),
                                      _RateLimitDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RateLimitDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RateLimitDescriptor "entries" [RateLimitDescriptor'Entry] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitDescriptor'entries
           (\ x__ y__ -> x__ {_RateLimitDescriptor'entries = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RateLimitDescriptor "vec'entries" (Data.Vector.Vector RateLimitDescriptor'Entry) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitDescriptor'entries
           (\ x__ y__ -> x__ {_RateLimitDescriptor'entries = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitDescriptor "limit" RateLimitDescriptor'RateLimitOverride where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitDescriptor'limit
           (\ x__ y__ -> x__ {_RateLimitDescriptor'limit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RateLimitDescriptor "maybe'limit" (Prelude.Maybe RateLimitDescriptor'RateLimitOverride) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitDescriptor'limit
           (\ x__ y__ -> x__ {_RateLimitDescriptor'limit = y__}))
        Prelude.id
instance Data.ProtoLens.Message RateLimitDescriptor where
  messageName _
    = Data.Text.pack
        "envoy.extensions.common.ratelimit.v3.RateLimitDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\DC3RateLimitDescriptor\DC2c\n\
      \\aentries\CAN\SOH \ETX(\v2?.envoy.extensions.common.ratelimit.v3.RateLimitDescriptor.EntryR\aentriesB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2a\n\
      \\ENQlimit\CAN\STX \SOH(\v2K.envoy.extensions.common.ratelimit.v3.RateLimitDescriptor.RateLimitOverrideR\ENQlimit\SUBz\n\
      \\ENQEntry\DC2\EM\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkeyB\a\250B\EOTr\STX\DLE\SOH\DC2\GS\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalueB\a\250B\EOTr\STX\DLE\SOH:7\154\197\136\RS2\n\
      \0envoy.api.v2.ratelimit.RateLimitDescriptor.Entry\SUB{\n\
      \\DC1RateLimitOverride\DC2*\n\
      \\DC1requests_per_unit\CAN\SOH \SOH(\rR\SIrequestsPerUnit\DC2:\n\
      \\EOTunit\CAN\STX \SOH(\SO2\FS.envoy.type.v3.RateLimitUnitR\EOTunitB\b\250B\ENQ\130\SOH\STX\DLE\SOH:1\154\197\136\RS,\n\
      \*envoy.api.v2.ratelimit.RateLimitDescriptor"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        entries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RateLimitDescriptor'Entry)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"entries")) ::
              Data.ProtoLens.FieldDescriptor RateLimitDescriptor
        limit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "limit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RateLimitDescriptor'RateLimitOverride)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'limit")) ::
              Data.ProtoLens.FieldDescriptor RateLimitDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, entries__field_descriptor),
           (Data.ProtoLens.Tag 2, limit__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RateLimitDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_RateLimitDescriptor'_unknownFields = y__})
  defMessage
    = RateLimitDescriptor'_constructor
        {_RateLimitDescriptor'entries = Data.Vector.Generic.empty,
         _RateLimitDescriptor'limit = Prelude.Nothing,
         _RateLimitDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RateLimitDescriptor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld RateLimitDescriptor'Entry
             -> Data.ProtoLens.Encoding.Bytes.Parser RateLimitDescriptor
        loop x mutable'entries
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'entries)
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
                              (Data.ProtoLens.Field.field @"vec'entries") frozen'entries x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "entries"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'entries y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "limit"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"limit") y x)
                                  mutable'entries
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'entries
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'entries)
          "RateLimitDescriptor"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'entries") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'limit") _x
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
instance Control.DeepSeq.NFData RateLimitDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RateLimitDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RateLimitDescriptor'entries x__)
                (Control.DeepSeq.deepseq (_RateLimitDescriptor'limit x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit_Fields.key' @:: Lens' RateLimitDescriptor'Entry Data.Text.Text@
         * 'Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit_Fields.value' @:: Lens' RateLimitDescriptor'Entry Data.Text.Text@ -}
data RateLimitDescriptor'Entry
  = RateLimitDescriptor'Entry'_constructor {_RateLimitDescriptor'Entry'key :: !Data.Text.Text,
                                            _RateLimitDescriptor'Entry'value :: !Data.Text.Text,
                                            _RateLimitDescriptor'Entry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RateLimitDescriptor'Entry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RateLimitDescriptor'Entry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitDescriptor'Entry'key
           (\ x__ y__ -> x__ {_RateLimitDescriptor'Entry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitDescriptor'Entry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitDescriptor'Entry'value
           (\ x__ y__ -> x__ {_RateLimitDescriptor'Entry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message RateLimitDescriptor'Entry where
  messageName _
    = Data.Text.pack
        "envoy.extensions.common.ratelimit.v3.RateLimitDescriptor.Entry"
  packedMessageDescriptor _
    = "\n\
      \\ENQEntry\DC2\EM\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkeyB\a\250B\EOTr\STX\DLE\SOH\DC2\GS\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalueB\a\250B\EOTr\STX\DLE\SOH:7\154\197\136\RS2\n\
      \0envoy.api.v2.ratelimit.RateLimitDescriptor.Entry"
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
              Data.ProtoLens.FieldDescriptor RateLimitDescriptor'Entry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor RateLimitDescriptor'Entry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RateLimitDescriptor'Entry'_unknownFields
        (\ x__ y__
           -> x__ {_RateLimitDescriptor'Entry'_unknownFields = y__})
  defMessage
    = RateLimitDescriptor'Entry'_constructor
        {_RateLimitDescriptor'Entry'key = Data.ProtoLens.fieldDefault,
         _RateLimitDescriptor'Entry'value = Data.ProtoLens.fieldDefault,
         _RateLimitDescriptor'Entry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RateLimitDescriptor'Entry
          -> Data.ProtoLens.Encoding.Bytes.Parser RateLimitDescriptor'Entry
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
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
          (do loop Data.ProtoLens.defMessage) "Entry"
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData RateLimitDescriptor'Entry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RateLimitDescriptor'Entry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RateLimitDescriptor'Entry'key x__)
                (Control.DeepSeq.deepseq
                   (_RateLimitDescriptor'Entry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit_Fields.requestsPerUnit' @:: Lens' RateLimitDescriptor'RateLimitOverride Data.Word.Word32@
         * 'Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit_Fields.unit' @:: Lens' RateLimitDescriptor'RateLimitOverride Proto.Envoy.Type.V3.RatelimitUnit.RateLimitUnit@ -}
data RateLimitDescriptor'RateLimitOverride
  = RateLimitDescriptor'RateLimitOverride'_constructor {_RateLimitDescriptor'RateLimitOverride'requestsPerUnit :: !Data.Word.Word32,
                                                        _RateLimitDescriptor'RateLimitOverride'unit :: !Proto.Envoy.Type.V3.RatelimitUnit.RateLimitUnit,
                                                        _RateLimitDescriptor'RateLimitOverride'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RateLimitDescriptor'RateLimitOverride where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RateLimitDescriptor'RateLimitOverride "requestsPerUnit" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitDescriptor'RateLimitOverride'requestsPerUnit
           (\ x__ y__
              -> x__
                   {_RateLimitDescriptor'RateLimitOverride'requestsPerUnit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitDescriptor'RateLimitOverride "unit" Proto.Envoy.Type.V3.RatelimitUnit.RateLimitUnit where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitDescriptor'RateLimitOverride'unit
           (\ x__ y__
              -> x__ {_RateLimitDescriptor'RateLimitOverride'unit = y__}))
        Prelude.id
instance Data.ProtoLens.Message RateLimitDescriptor'RateLimitOverride where
  messageName _
    = Data.Text.pack
        "envoy.extensions.common.ratelimit.v3.RateLimitDescriptor.RateLimitOverride"
  packedMessageDescriptor _
    = "\n\
      \\DC1RateLimitOverride\DC2*\n\
      \\DC1requests_per_unit\CAN\SOH \SOH(\rR\SIrequestsPerUnit\DC2:\n\
      \\EOTunit\CAN\STX \SOH(\SO2\FS.envoy.type.v3.RateLimitUnitR\EOTunitB\b\250B\ENQ\130\SOH\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        requestsPerUnit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "requests_per_unit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestsPerUnit")) ::
              Data.ProtoLens.FieldDescriptor RateLimitDescriptor'RateLimitOverride
        unit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.RatelimitUnit.RateLimitUnit)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"unit")) ::
              Data.ProtoLens.FieldDescriptor RateLimitDescriptor'RateLimitOverride
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, requestsPerUnit__field_descriptor),
           (Data.ProtoLens.Tag 2, unit__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RateLimitDescriptor'RateLimitOverride'_unknownFields
        (\ x__ y__
           -> x__
                {_RateLimitDescriptor'RateLimitOverride'_unknownFields = y__})
  defMessage
    = RateLimitDescriptor'RateLimitOverride'_constructor
        {_RateLimitDescriptor'RateLimitOverride'requestsPerUnit = Data.ProtoLens.fieldDefault,
         _RateLimitDescriptor'RateLimitOverride'unit = Data.ProtoLens.fieldDefault,
         _RateLimitDescriptor'RateLimitOverride'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RateLimitDescriptor'RateLimitOverride
          -> Data.ProtoLens.Encoding.Bytes.Parser RateLimitDescriptor'RateLimitOverride
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
                                       "requests_per_unit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestsPerUnit") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "unit"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"unit") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RateLimitOverride"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"requestsPerUnit") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"unit") _x
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
instance Control.DeepSeq.NFData RateLimitDescriptor'RateLimitOverride where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RateLimitDescriptor'RateLimitOverride'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RateLimitDescriptor'RateLimitOverride'requestsPerUnit x__)
                (Control.DeepSeq.deepseq
                   (_RateLimitDescriptor'RateLimitOverride'unit x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \4envoy/extensions/common/ratelimit/v3/ratelimit.proto\DC2$envoy.extensions.common.ratelimit.v3\SUB\"envoy/type/v3/ratelimit_unit.proto\SUB envoy/type/v3/token_bucket.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\137\EOT\n\
    \\DC3RateLimitDescriptor\DC2c\n\
    \\aentries\CAN\SOH \ETX(\v2?.envoy.extensions.common.ratelimit.v3.RateLimitDescriptor.EntryR\aentriesB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2a\n\
    \\ENQlimit\CAN\STX \SOH(\v2K.envoy.extensions.common.ratelimit.v3.RateLimitDescriptor.RateLimitOverrideR\ENQlimit\SUBz\n\
    \\ENQEntry\DC2\EM\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkeyB\a\250B\EOTr\STX\DLE\SOH\DC2\GS\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalueB\a\250B\EOTr\STX\DLE\SOH:7\154\197\136\RS2\n\
    \0envoy.api.v2.ratelimit.RateLimitDescriptor.Entry\SUB{\n\
    \\DC1RateLimitOverride\DC2*\n\
    \\DC1requests_per_unit\CAN\SOH \SOH(\rR\SIrequestsPerUnit\DC2:\n\
    \\EOTunit\CAN\STX \SOH(\SO2\FS.envoy.type.v3.RateLimitUnitR\EOTunitB\b\250B\ENQ\130\SOH\STX\DLE\SOH:1\154\197\136\RS,\n\
    \*envoy.api.v2.ratelimit.RateLimitDescriptor\"\200\SOH\n\
    \\CANLocalRateLimitDescriptor\DC2c\n\
    \\aentries\CAN\SOH \ETX(\v2?.envoy.extensions.common.ratelimit.v3.RateLimitDescriptor.EntryR\aentriesB\b\250B\ENQ\146\SOH\STX\b\SOH\DC2G\n\
    \\ftoken_bucket\CAN\STX \SOH(\v2\SUB.envoy.type.v3.TokenBucketR\vtokenBucketB\b\250B\ENQ\138\SOH\STX\DLE\SOHBN\n\
    \2io.envoyproxy.envoy.extensions.common.ratelimit.v3B\SORatelimitProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\168\SUB\n\
    \\ACK\DC2\EOT\NUL\NULf\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL-\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL*\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULK\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NULK\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\185\SO\n\
    \\STX\EOT\NUL\DC2\EOT?\NUL^\SOH\SUB\249\r A RateLimitDescriptor is a list of hierarchical entries that are used by the service to\n\
    \ determine the final rate limit key and overall allowed limit. Here are some examples of how\n\
    \ they might be used for the domain \"envoy\".\n\
    \\n\
    \ .. code-block:: cpp\n\
    \\n\
    \   [\"authenticated\": \"false\"], [\"remote_address\": \"10.0.0.1\"]\n\
    \\n\
    \ What it does: Limits all unauthenticated traffic for the IP address 10.0.0.1. The\n\
    \ configuration supplies a default limit for the *remote_address* key. If there is a desire to\n\
    \ raise the limit for 10.0.0.1 or block it entirely it can be specified directly in the\n\
    \ configuration.\n\
    \\n\
    \ .. code-block:: cpp\n\
    \\n\
    \   [\"authenticated\": \"false\"], [\"path\": \"/foo/bar\"]\n\
    \\n\
    \ What it does: Limits all unauthenticated traffic globally for a specific path (or prefix if\n\
    \ configured that way in the service).\n\
    \\n\
    \ .. code-block:: cpp\n\
    \\n\
    \   [\"authenticated\": \"false\"], [\"path\": \"/foo/bar\"], [\"remote_address\": \"10.0.0.1\"]\n\
    \\n\
    \ What it does: Limits unauthenticated traffic to a specific path for a specific IP address.\n\
    \ Like (1) we can raise/block specific IP addresses if we want with an override configuration.\n\
    \\n\
    \ .. code-block:: cpp\n\
    \\n\
    \   [\"authenticated\": \"true\"], [\"client_id\": \"foo\"]\n\
    \\n\
    \ What it does: Limits all traffic for an authenticated client \"foo\"\n\
    \\n\
    \ .. code-block:: cpp\n\
    \\n\
    \   [\"authenticated\": \"true\"], [\"client_id\": \"foo\"], [\"path\": \"/foo/bar\"]\n\
    \\n\
    \ What it does: Limits traffic to a specific path for an authenticated client \"foo\"\n\
    \\n\
    \ The idea behind the API is that (1)/(2)/(3) and (4)/(5) can be sent in 1 request if desired.\n\
    \ This enables building complex application scenarios with a generic backend.\n\
    \\n\
    \ Optionally the descriptor can contain a limit override under a \"limit\" key, that specifies\n\
    \ the number of requests per unit to use instead of the number configured in the\n\
    \ rate limiting service.\n\
    \21 [#protodoc-title: Common rate limit components]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX?\b\ESC\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT@\STXA3\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT@\STXA3\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOTC\STXL\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETXC\n\
    \\SI\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOTD\EOTE;\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOTD\EOTE;\n\
    \ \n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETXH\EOT<\SUB\DC1 Descriptor key.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETXH\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETXH\v\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETXH\DC1\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETXH\DC3;\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\SO\DC2\ETXH\DC4:\n\
    \\"\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETXK\EOT>\SUB\DC3 Descriptor value.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETXK\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETXK\v\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETXK\DC3\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\b\DC2\ETXK\NAK=\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\SOH\b\175\b\SO\DC2\ETXK\SYN<\n\
    \\231\SOH\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOTQ\STXW\ETX\SUB\216\SOH Override rate limit to apply to this descriptor instead of the limit\n\
    \ configured in the rate limit service. See :ref:`rate limit override\n\
    \ <config_http_filters_rate_limit_rate_limit_override>` for more information.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETXQ\n\
    \\ESC\n\
    \9\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETXS\EOT!\SUB* The number of requests per unit of time.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ENQ\DC2\ETXS\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETXS\v\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETXS\US \n\
    \\"\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\ETXV\EOTR\SUB\DC3 The unit of time.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ACK\DC2\ETXV\EOT\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETXV\SUB\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETXV!\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\b\DC2\ETXV#Q\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\SOH\b\175\b\DLE\DC2\ETXV$P\n\
    \\"\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXZ\STXJ\SUB\NAK Descriptor entries.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETXZ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXZ\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXZ\DC1\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXZ\ESC\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETXZ\GSI\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC2\DC2\ETXZ\RSH\n\
    \O\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX]\STX\RS\SUBB Optional rate limit override to supply to the ratelimit service.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX]\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX]\DC4\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX]\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT`\NULf\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX`\b \n\
    \\"\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXb\STXa\SUB\NAK Descriptor entries.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETXb\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXb\v'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXb(/\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXb23\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETXb4`\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\DC2\DC2\ETXb5_\n\
    \=\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXe\STXU\SUB0 Token Bucket algorithm for local ratelimiting.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXe\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXe\SYN\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXe%&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETXe'T\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\175\b\DC1\DC2\ETXe(Sb\ACKproto3"