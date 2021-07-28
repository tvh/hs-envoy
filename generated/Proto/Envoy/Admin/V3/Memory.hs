{- This file was auto-generated from envoy/admin/v3/memory.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Admin.V3.Memory (
        Memory()
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
     
         * 'Proto.Envoy.Admin.V3.Memory_Fields.allocated' @:: Lens' Memory Data.Word.Word64@
         * 'Proto.Envoy.Admin.V3.Memory_Fields.heapSize' @:: Lens' Memory Data.Word.Word64@
         * 'Proto.Envoy.Admin.V3.Memory_Fields.pageheapUnmapped' @:: Lens' Memory Data.Word.Word64@
         * 'Proto.Envoy.Admin.V3.Memory_Fields.pageheapFree' @:: Lens' Memory Data.Word.Word64@
         * 'Proto.Envoy.Admin.V3.Memory_Fields.totalThreadCache' @:: Lens' Memory Data.Word.Word64@
         * 'Proto.Envoy.Admin.V3.Memory_Fields.totalPhysicalBytes' @:: Lens' Memory Data.Word.Word64@ -}
data Memory
  = Memory'_constructor {_Memory'allocated :: !Data.Word.Word64,
                         _Memory'heapSize :: !Data.Word.Word64,
                         _Memory'pageheapUnmapped :: !Data.Word.Word64,
                         _Memory'pageheapFree :: !Data.Word.Word64,
                         _Memory'totalThreadCache :: !Data.Word.Word64,
                         _Memory'totalPhysicalBytes :: !Data.Word.Word64,
                         _Memory'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Memory where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Memory "allocated" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Memory'allocated (\ x__ y__ -> x__ {_Memory'allocated = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Memory "heapSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Memory'heapSize (\ x__ y__ -> x__ {_Memory'heapSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Memory "pageheapUnmapped" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Memory'pageheapUnmapped
           (\ x__ y__ -> x__ {_Memory'pageheapUnmapped = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Memory "pageheapFree" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Memory'pageheapFree
           (\ x__ y__ -> x__ {_Memory'pageheapFree = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Memory "totalThreadCache" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Memory'totalThreadCache
           (\ x__ y__ -> x__ {_Memory'totalThreadCache = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Memory "totalPhysicalBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Memory'totalPhysicalBytes
           (\ x__ y__ -> x__ {_Memory'totalPhysicalBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message Memory where
  messageName _ = Data.Text.pack "envoy.admin.v3.Memory"
  packedMessageDescriptor _
    = "\n\
      \\ACKMemory\DC2\FS\n\
      \\tallocated\CAN\SOH \SOH(\EOTR\tallocated\DC2\ESC\n\
      \\theap_size\CAN\STX \SOH(\EOTR\bheapSize\DC2+\n\
      \\DC1pageheap_unmapped\CAN\ETX \SOH(\EOTR\DLEpageheapUnmapped\DC2#\n\
      \\rpageheap_free\CAN\EOT \SOH(\EOTR\fpageheapFree\DC2,\n\
      \\DC2total_thread_cache\CAN\ENQ \SOH(\EOTR\DLEtotalThreadCache\DC20\n\
      \\DC4total_physical_bytes\CAN\ACK \SOH(\EOTR\DC2totalPhysicalBytes:!\154\197\136\RS\FS\n\
      \\SUBenvoy.admin.v2alpha.Memory"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        allocated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allocated"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"allocated")) ::
              Data.ProtoLens.FieldDescriptor Memory
        heapSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heap_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"heapSize")) ::
              Data.ProtoLens.FieldDescriptor Memory
        pageheapUnmapped__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pageheap_unmapped"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pageheapUnmapped")) ::
              Data.ProtoLens.FieldDescriptor Memory
        pageheapFree__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pageheap_free"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pageheapFree")) ::
              Data.ProtoLens.FieldDescriptor Memory
        totalThreadCache__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_thread_cache"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalThreadCache")) ::
              Data.ProtoLens.FieldDescriptor Memory
        totalPhysicalBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_physical_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalPhysicalBytes")) ::
              Data.ProtoLens.FieldDescriptor Memory
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, allocated__field_descriptor),
           (Data.ProtoLens.Tag 2, heapSize__field_descriptor),
           (Data.ProtoLens.Tag 3, pageheapUnmapped__field_descriptor),
           (Data.ProtoLens.Tag 4, pageheapFree__field_descriptor),
           (Data.ProtoLens.Tag 5, totalThreadCache__field_descriptor),
           (Data.ProtoLens.Tag 6, totalPhysicalBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Memory'_unknownFields
        (\ x__ y__ -> x__ {_Memory'_unknownFields = y__})
  defMessage
    = Memory'_constructor
        {_Memory'allocated = Data.ProtoLens.fieldDefault,
         _Memory'heapSize = Data.ProtoLens.fieldDefault,
         _Memory'pageheapUnmapped = Data.ProtoLens.fieldDefault,
         _Memory'pageheapFree = Data.ProtoLens.fieldDefault,
         _Memory'totalThreadCache = Data.ProtoLens.fieldDefault,
         _Memory'totalPhysicalBytes = Data.ProtoLens.fieldDefault,
         _Memory'_unknownFields = []}
  parseMessage
    = let
        loop :: Memory -> Data.ProtoLens.Encoding.Bytes.Parser Memory
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "allocated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"allocated") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "heap_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"heapSize") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pageheap_unmapped"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pageheapUnmapped") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pageheap_free"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pageheapFree") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "total_thread_cache"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalThreadCache") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "total_physical_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalPhysicalBytes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Memory"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"allocated") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"heapSize") _x
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
                            (Data.ProtoLens.Field.field @"pageheapUnmapped") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"pageheapFree") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"totalThreadCache") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"totalPhysicalBytes") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData Memory where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Memory'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Memory'allocated x__)
                (Control.DeepSeq.deepseq
                   (_Memory'heapSize x__)
                   (Control.DeepSeq.deepseq
                      (_Memory'pageheapUnmapped x__)
                      (Control.DeepSeq.deepseq
                         (_Memory'pageheapFree x__)
                         (Control.DeepSeq.deepseq
                            (_Memory'totalThreadCache x__)
                            (Control.DeepSeq.deepseq (_Memory'totalPhysicalBytes x__) ()))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\ESCenvoy/admin/v3/memory.proto\DC2\SOenvoy.admin.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\152\STX\n\
    \\ACKMemory\DC2\FS\n\
    \\tallocated\CAN\SOH \SOH(\EOTR\tallocated\DC2\ESC\n\
    \\theap_size\CAN\STX \SOH(\EOTR\bheapSize\DC2+\n\
    \\DC1pageheap_unmapped\CAN\ETX \SOH(\EOTR\DLEpageheapUnmapped\DC2#\n\
    \\rpageheap_free\CAN\EOT \SOH(\EOTR\fpageheapFree\DC2,\n\
    \\DC2total_thread_cache\CAN\ENQ \SOH(\EOTR\DLEtotalThreadCache\DC20\n\
    \\DC4total_physical_bytes\CAN\ACK \SOH(\EOTR\DC2totalPhysicalBytes:!\154\197\136\RS\FS\n\
    \\SUBenvoy.admin.v2alpha.MemoryB5\n\
    \\FSio.envoyproxy.envoy.admin.v3B\vMemoryProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\253\SO\n\
    \\ACK\DC2\EOT\NUL\NUL.\SOH\n\
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
    \\230\STX\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL.\SOH\SUB\188\STX Proto representation of the internal memory consumption of an Envoy instance. These represent\n\
    \ values extracted from an internal TCMalloc instance. For more information, see the section of the\n\
    \ docs entitled [\"Generic Tcmalloc Status\"](https://gperftools.github.io/gperftools/tcmalloc.html).\n\
    \ [#next-free-field: 7]\n\
    \2\ESC [#protodoc-title: Memory]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\SO\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC3\STX\\\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC3\STX\\\n\
    \|\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ETB\STX\ETB\SUBo The number of bytes allocated by the heap for Envoy. This is an alias for\n\
    \ `generic.current_allocated_bytes`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETB\NAK\SYN\n\
    \\129\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\ESC\STX\ETB\SUBt The number of bytes reserved by the heap but not necessarily allocated. This is an alias for\n\
    \ `generic.heap_size`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\ESC\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\ESC\NAK\SYN\n\
    \\142\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX \STX\US\SUB\128\STX The number of bytes in free, unmapped pages in the page heap. These bytes always count towards\n\
    \ virtual memory usage, and depending on the OS, typically do not count towards physical memory\n\
    \ usage. This is an alias for `tcmalloc.pageheap_unmapped_bytes`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX \STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX \t\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX \GS\RS\n\
    \\163\STX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX%\STX\ESC\SUB\149\STX The number of bytes in free, mapped pages in the page heap. These bytes always count towards\n\
    \ virtual memory usage, and unless the underlying memory is swapped out by the OS, they also\n\
    \ count towards physical memory usage. This is an alias for `tcmalloc.pageheap_free_bytes`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX%\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX%\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX%\EM\SUB\n\
    \\159\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX)\STX \SUB\145\SOH The amount of memory used by the TCMalloc thread caches (for small objects). This is an alias\n\
    \ for `tcmalloc.current_total_thread_cache_bytes`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX)\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX)\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX)\RS\US\n\
    \\135\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX-\STX\"\SUBz The number of bytes of the physical memory usage by the allocator. This is an alias for\n\
    \ `generic.total_physical_bytes`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX-\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX-\t\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX- !b\ACKproto3"