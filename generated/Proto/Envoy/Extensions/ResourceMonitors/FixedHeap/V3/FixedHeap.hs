{- This file was auto-generated from envoy/extensions/resource_monitors/fixed_heap/v3/fixed_heap.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.ResourceMonitors.FixedHeap.V3.FixedHeap (
        FixedHeapConfig()
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
     
         * 'Proto.Envoy.Extensions.ResourceMonitors.FixedHeap.V3.FixedHeap_Fields.maxHeapSizeBytes' @:: Lens' FixedHeapConfig Data.Word.Word64@ -}
data FixedHeapConfig
  = FixedHeapConfig'_constructor {_FixedHeapConfig'maxHeapSizeBytes :: !Data.Word.Word64,
                                  _FixedHeapConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FixedHeapConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FixedHeapConfig "maxHeapSizeBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FixedHeapConfig'maxHeapSizeBytes
           (\ x__ y__ -> x__ {_FixedHeapConfig'maxHeapSizeBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message FixedHeapConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.resource_monitors.fixed_heap.v3.FixedHeapConfig"
  packedMessageDescriptor _
    = "\n\
      \\SIFixedHeapConfig\DC26\n\
      \\DC3max_heap_size_bytes\CAN\SOH \SOH(\EOTR\DLEmaxHeapSizeBytesB\a\250B\EOT2\STX \NUL:G\154\197\136\RSB\n\
      \@envoy.config.resource_monitor.fixed_heap.v2alpha.FixedHeapConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxHeapSizeBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_heap_size_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxHeapSizeBytes")) ::
              Data.ProtoLens.FieldDescriptor FixedHeapConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxHeapSizeBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FixedHeapConfig'_unknownFields
        (\ x__ y__ -> x__ {_FixedHeapConfig'_unknownFields = y__})
  defMessage
    = FixedHeapConfig'_constructor
        {_FixedHeapConfig'maxHeapSizeBytes = Data.ProtoLens.fieldDefault,
         _FixedHeapConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FixedHeapConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser FixedHeapConfig
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "max_heap_size_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxHeapSizeBytes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FixedHeapConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"maxHeapSizeBytes") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData FixedHeapConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FixedHeapConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FixedHeapConfig'maxHeapSizeBytes x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Aenvoy/extensions/resource_monitors/fixed_heap/v3/fixed_heap.proto\DC20envoy.extensions.resource_monitors.fixed_heap.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\146\SOH\n\
    \\SIFixedHeapConfig\DC26\n\
    \\DC3max_heap_size_bytes\CAN\SOH \SOH(\EOTR\DLEmaxHeapSizeBytesB\a\250B\EOT2\STX \NUL:G\154\197\136\RSB\n\
    \@envoy.config.resource_monitor.fixed_heap.v2alpha.FixedHeapConfigBZ\n\
    \>io.envoyproxy.envoy.extensions.resource_monitors.fixed_heap.v3B\SOFixedHeapProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\205\EOT\n\
    \\ACK\DC2\EOT\NUL\NUL\CAN\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL9\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULW\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NULW\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL/\n\
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
    \\180\STX\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL\CAN\SOH\SUB\212\SOH The fixed heap resource monitor reports the Envoy process memory pressure, computed as a\n\
    \ fraction of currently reserved heap memory divided by a statically configured maximum\n\
    \ specified in the FixedHeapConfig.\n\
    \2Q [#protodoc-title: Fixed heap]\n\
    \ [#extension: envoy.resource_monitors.fixed_heap]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\ETB\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC4\STX\NAKI\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC4\STX\NAKI\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ETB\STXE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB\t\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETB\US \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\ETB!D\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\ACK\DC2\ETX\ETB\"Cb\ACKproto3"