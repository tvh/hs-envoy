{- This file was auto-generated from envoy/admin/v3/mutex_stats.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Admin.V3.MutexStats (
        MutexStats()
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
     
         * 'Proto.Envoy.Admin.V3.MutexStats_Fields.numContentions' @:: Lens' MutexStats Data.Word.Word64@
         * 'Proto.Envoy.Admin.V3.MutexStats_Fields.currentWaitCycles' @:: Lens' MutexStats Data.Word.Word64@
         * 'Proto.Envoy.Admin.V3.MutexStats_Fields.lifetimeWaitCycles' @:: Lens' MutexStats Data.Word.Word64@ -}
data MutexStats
  = MutexStats'_constructor {_MutexStats'numContentions :: !Data.Word.Word64,
                             _MutexStats'currentWaitCycles :: !Data.Word.Word64,
                             _MutexStats'lifetimeWaitCycles :: !Data.Word.Word64,
                             _MutexStats'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MutexStats where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MutexStats "numContentions" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MutexStats'numContentions
           (\ x__ y__ -> x__ {_MutexStats'numContentions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MutexStats "currentWaitCycles" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MutexStats'currentWaitCycles
           (\ x__ y__ -> x__ {_MutexStats'currentWaitCycles = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MutexStats "lifetimeWaitCycles" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MutexStats'lifetimeWaitCycles
           (\ x__ y__ -> x__ {_MutexStats'lifetimeWaitCycles = y__}))
        Prelude.id
instance Data.ProtoLens.Message MutexStats where
  messageName _ = Data.Text.pack "envoy.admin.v3.MutexStats"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \MutexStats\DC2'\n\
      \\SInum_contentions\CAN\SOH \SOH(\EOTR\SOnumContentions\DC2.\n\
      \\DC3current_wait_cycles\CAN\STX \SOH(\EOTR\DC1currentWaitCycles\DC20\n\
      \\DC4lifetime_wait_cycles\CAN\ETX \SOH(\EOTR\DC2lifetimeWaitCycles:%\154\197\136\RS \n\
      \\RSenvoy.admin.v2alpha.MutexStats"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        numContentions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num_contentions"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"numContentions")) ::
              Data.ProtoLens.FieldDescriptor MutexStats
        currentWaitCycles__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_wait_cycles"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"currentWaitCycles")) ::
              Data.ProtoLens.FieldDescriptor MutexStats
        lifetimeWaitCycles__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lifetime_wait_cycles"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lifetimeWaitCycles")) ::
              Data.ProtoLens.FieldDescriptor MutexStats
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, numContentions__field_descriptor),
           (Data.ProtoLens.Tag 2, currentWaitCycles__field_descriptor),
           (Data.ProtoLens.Tag 3, lifetimeWaitCycles__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MutexStats'_unknownFields
        (\ x__ y__ -> x__ {_MutexStats'_unknownFields = y__})
  defMessage
    = MutexStats'_constructor
        {_MutexStats'numContentions = Data.ProtoLens.fieldDefault,
         _MutexStats'currentWaitCycles = Data.ProtoLens.fieldDefault,
         _MutexStats'lifetimeWaitCycles = Data.ProtoLens.fieldDefault,
         _MutexStats'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MutexStats -> Data.ProtoLens.Encoding.Bytes.Parser MutexStats
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "num_contentions"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"numContentions") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "current_wait_cycles"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentWaitCycles") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "lifetime_wait_cycles"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lifetimeWaitCycles") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MutexStats"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"numContentions") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"currentWaitCycles") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"lifetimeWaitCycles") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MutexStats where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MutexStats'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MutexStats'numContentions x__)
                (Control.DeepSeq.deepseq
                   (_MutexStats'currentWaitCycles x__)
                   (Control.DeepSeq.deepseq (_MutexStats'lifetimeWaitCycles x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ envoy/admin/v3/mutex_stats.proto\DC2\SOenvoy.admin.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\190\SOH\n\
    \\n\
    \MutexStats\DC2'\n\
    \\SInum_contentions\CAN\SOH \SOH(\EOTR\SOnumContentions\DC2.\n\
    \\DC3current_wait_cycles\CAN\STX \SOH(\EOTR\DC1currentWaitCycles\DC20\n\
    \\DC4lifetime_wait_cycles\CAN\ETX \SOH(\EOTR\DC2lifetimeWaitCycles:%\154\197\136\RS \n\
    \\RSenvoy.admin.v2alpha.MutexStatsB9\n\
    \\FSio.envoyproxy.envoy.admin.v3B\SIMutexStatsProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\189\b\n\
    \\ACK\DC2\EOT\NUL\NUL \SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ETB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL5\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\a\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL0\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\b\NUL0\n\
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
    \\168\EOT\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL \SOH\SUB\250\ETX Proto representation of the statistics collected upon absl::Mutex contention, if Envoy is run\n\
    \ under :option:`--enable-mutex-tracing`. For more information, see the `absl::Mutex`\n\
    \ [docs](https://abseil.io/about/design/mutex#extra-features).\n\
    \\n\
    \ *NB*: The wait cycles below are measured by `absl::base_internal::CycleClock`, and may not\n\
    \ correspond to core clock frequency. For more information, see the `CycleClock`\n\
    \ [docs](https://github.com/abseil/abseil-cpp/blob/master/absl/base/internal/cycleclock.h).\n\
    \2\US [#protodoc-title: MutexStats]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\DC2\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SYN\STX`\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\SYN\STX`\n\
    \\\\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\EM\STX\GS\SUBO The number of individual mutex contentions which have occurred since startup.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\EM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\EM\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\EM\ESC\FS\n\
    \?\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\FS\STX!\SUB2 The length of the current contention wait cycle.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\FS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\FS\t\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\FS\US \n\
    \@\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\US\STX\"\SUB3 The lifetime total of all contention wait cycles.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\US\t\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\US !b\ACKproto3"