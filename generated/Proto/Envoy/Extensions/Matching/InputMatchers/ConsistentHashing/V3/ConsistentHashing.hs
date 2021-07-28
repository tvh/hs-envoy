{- This file was auto-generated from envoy/extensions/matching/input_matchers/consistent_hashing/v3/consistent_hashing.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Matching.InputMatchers.ConsistentHashing.V3.ConsistentHashing (
        ConsistentHashing()
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
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Matching.InputMatchers.ConsistentHashing.V3.ConsistentHashing_Fields.threshold' @:: Lens' ConsistentHashing Data.Word.Word32@
         * 'Proto.Envoy.Extensions.Matching.InputMatchers.ConsistentHashing.V3.ConsistentHashing_Fields.modulo' @:: Lens' ConsistentHashing Data.Word.Word32@
         * 'Proto.Envoy.Extensions.Matching.InputMatchers.ConsistentHashing.V3.ConsistentHashing_Fields.seed' @:: Lens' ConsistentHashing Data.Word.Word64@ -}
data ConsistentHashing
  = ConsistentHashing'_constructor {_ConsistentHashing'threshold :: !Data.Word.Word32,
                                    _ConsistentHashing'modulo :: !Data.Word.Word32,
                                    _ConsistentHashing'seed :: !Data.Word.Word64,
                                    _ConsistentHashing'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConsistentHashing where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConsistentHashing "threshold" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConsistentHashing'threshold
           (\ x__ y__ -> x__ {_ConsistentHashing'threshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConsistentHashing "modulo" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConsistentHashing'modulo
           (\ x__ y__ -> x__ {_ConsistentHashing'modulo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConsistentHashing "seed" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConsistentHashing'seed
           (\ x__ y__ -> x__ {_ConsistentHashing'seed = y__}))
        Prelude.id
instance Data.ProtoLens.Message ConsistentHashing where
  messageName _
    = Data.Text.pack
        "envoy.extensions.matching.input_matchers.consistent_hashing.v3.ConsistentHashing"
  packedMessageDescriptor _
    = "\n\
      \\DC1ConsistentHashing\DC2\FS\n\
      \\tthreshold\CAN\SOH \SOH(\rR\tthreshold\DC2\US\n\
      \\ACKmodulo\CAN\STX \SOH(\rR\ACKmoduloB\a\250B\EOT*\STX \NUL\DC2\DC2\n\
      \\EOTseed\CAN\ETX \SOH(\EOTR\EOTseed"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        threshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "threshold"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"threshold")) ::
              Data.ProtoLens.FieldDescriptor ConsistentHashing
        modulo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "modulo"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"modulo")) ::
              Data.ProtoLens.FieldDescriptor ConsistentHashing
        seed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"seed")) ::
              Data.ProtoLens.FieldDescriptor ConsistentHashing
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, threshold__field_descriptor),
           (Data.ProtoLens.Tag 2, modulo__field_descriptor),
           (Data.ProtoLens.Tag 3, seed__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConsistentHashing'_unknownFields
        (\ x__ y__ -> x__ {_ConsistentHashing'_unknownFields = y__})
  defMessage
    = ConsistentHashing'_constructor
        {_ConsistentHashing'threshold = Data.ProtoLens.fieldDefault,
         _ConsistentHashing'modulo = Data.ProtoLens.fieldDefault,
         _ConsistentHashing'seed = Data.ProtoLens.fieldDefault,
         _ConsistentHashing'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConsistentHashing
          -> Data.ProtoLens.Encoding.Bytes.Parser ConsistentHashing
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
                                       "threshold"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"threshold") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "modulo"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"modulo") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "seed"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seed") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ConsistentHashing"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"threshold") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"modulo") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"seed") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ConsistentHashing where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConsistentHashing'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ConsistentHashing'threshold x__)
                (Control.DeepSeq.deepseq
                   (_ConsistentHashing'modulo x__)
                   (Control.DeepSeq.deepseq (_ConsistentHashing'seed x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Wenvoy/extensions/matching/input_matchers/consistent_hashing/v3/consistent_hashing.proto\DC2>envoy.extensions.matching.input_matchers.consistent_hashing.v3\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"f\n\
    \\DC1ConsistentHashing\DC2\FS\n\
    \\tthreshold\CAN\SOH \SOH(\rR\tthreshold\DC2\US\n\
    \\ACKmodulo\CAN\STX \SOH(\rR\ACKmoduloB\a\250B\EOT*\STX \NUL\DC2\DC2\n\
    \\EOTseed\CAN\ETX \SOH(\EOTR\EOTseedBp\n\
    \Lio.envoyproxy.envoy.extensions.matching.input_matchers.consistent_hashing.v3B\SYNConsistentHashingProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\224\f\n\
    \\ACK\DC2\EOT\NUL\NUL$\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NULG\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULe\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\a\NULe\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL7\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\b\NUL7\n\
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
    \\212\EOT\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL$\SOH\SUB\214\ETX The consistent hashing matchers computes a consistent hash from the input and matches if the resulting hash\n\
    \ is within the configured threshold.\n\
    \ More specifically, this matcher evaluates to true if hash(input, seed) % modulo >= threshold.\n\
    \ Note that the consistency of the match result relies on the internal hash function (xxhash) remaining\n\
    \ unchanged. While this is unlikely to happen intentionally, this could cause inconsistent match results\n\
    \ between deployments.\n\
    \2o [#protodoc-title: Consistent Hashing Matcher]\n\
    \ [#extension: envoy.matching.input_matchers.consistent_hashing]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\EM\n\
    \\229\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\EM\STX\ETB\SUB\215\SOH The threshold the resulting hash must be over in order for this matcher to evaluate to true.\n\
    \ This value must be below the configured modulo value.\n\
    \ Setting this to 0 is equivalent to this matcher always matching.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\EM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\EM\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\EM\NAK\SYN\n\
    \\204\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\RS\STX8\SUB\190\SOH The value to use for the modulus in the calculation. This effectively  bounds the hash output,\n\
    \ specifying the range of possible values.\n\
    \ This value must be above the configured threshold.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\RS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\RS\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\RS\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\RS\DC47\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\ENQ\DC2\ETX\RS\NAK6\n\
    \\156\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX#\STX\DC2\SUB\142\STX Optional seed passed through the hash function. This allows using additional information when computing\n\
    \ the hash value: by changing the seed value, a different partition of matching and non-matching inputs will\n\
    \ be created that remains consistent for that seed value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX#\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX#\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX#\DLE\DC1b\ACKproto3"