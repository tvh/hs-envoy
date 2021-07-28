{- This file was auto-generated from envoy/extensions/filters/http/original_src/v3/original_src.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.OriginalSrc.V3.OriginalSrc (
        OriginalSrc()
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
     
         * 'Proto.Envoy.Extensions.Filters.Http.OriginalSrc.V3.OriginalSrc_Fields.mark' @:: Lens' OriginalSrc Data.Word.Word32@ -}
data OriginalSrc
  = OriginalSrc'_constructor {_OriginalSrc'mark :: !Data.Word.Word32,
                              _OriginalSrc'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OriginalSrc where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OriginalSrc "mark" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OriginalSrc'mark (\ x__ y__ -> x__ {_OriginalSrc'mark = y__}))
        Prelude.id
instance Data.ProtoLens.Message OriginalSrc where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.original_src.v3.OriginalSrc"
  packedMessageDescriptor _
    = "\n\
      \\vOriginalSrc\DC2\DC2\n\
      \\EOTmark\CAN\SOH \SOH(\rR\EOTmark:A\154\197\136\RS<\n\
      \:envoy.config.filter.http.original_src.v2alpha1.OriginalSrc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        mark__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mark"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"mark")) ::
              Data.ProtoLens.FieldDescriptor OriginalSrc
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, mark__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OriginalSrc'_unknownFields
        (\ x__ y__ -> x__ {_OriginalSrc'_unknownFields = y__})
  defMessage
    = OriginalSrc'_constructor
        {_OriginalSrc'mark = Data.ProtoLens.fieldDefault,
         _OriginalSrc'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OriginalSrc -> Data.ProtoLens.Encoding.Bytes.Parser OriginalSrc
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
                                       "mark"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mark") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OriginalSrc"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"mark") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData OriginalSrc where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OriginalSrc'_unknownFields x__)
             (Control.DeepSeq.deepseq (_OriginalSrc'mark x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \@envoy/extensions/filters/http/original_src/v3/original_src.proto\DC2-envoy.extensions.filters.http.original_src.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"d\n\
    \\vOriginalSrc\DC2\DC2\n\
    \\EOTmark\CAN\SOH \SOH(\rR\EOTmark:A\154\197\136\RS<\n\
    \:envoy.config.filter.http.original_src.v2alpha1.OriginalSrcBY\n\
    \;io.envoyproxy.envoy.extensions.filters.http.original_src.v3B\DLEOriginalSrcProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\244\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL\ESC\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL6\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULT\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\a\NULT\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL1\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\b\NUL1\n\
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
    \\132\ETX\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL\ESC\SOH\SUB\147\STX The Original Src filter binds upstream connections to the original source address determined\n\
    \ for the request. This address could come from something like the Proxy Protocol filter, or it\n\
    \ could come from trusted http headers.\n\
    \ [#extension: envoy.filters.http.original_src]\n\
    \2b [#protodoc-title: Original Src Filter]\n\
    \ Use the Original source address on upstream connections.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\DC3\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC4\STX\NAKC\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC4\STX\NAKC\n\
    \\139\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\STX\DC2\SUB\253\SOH Sets the SO_MARK option on the upstream connection's socket to the provided value. Used to\n\
    \ ensure that non-local addresses may be routed back through envoy when binding to the original\n\
    \ source address. The option will not be applied if the mark is 0.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SUB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB\DLE\DC1b\ACKproto3"