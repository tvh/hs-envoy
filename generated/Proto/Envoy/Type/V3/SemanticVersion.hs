{- This file was auto-generated from envoy/type/v3/semantic_version.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.V3.SemanticVersion (
        SemanticVersion()
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
     
         * 'Proto.Envoy.Type.V3.SemanticVersion_Fields.majorNumber' @:: Lens' SemanticVersion Data.Word.Word32@
         * 'Proto.Envoy.Type.V3.SemanticVersion_Fields.minorNumber' @:: Lens' SemanticVersion Data.Word.Word32@
         * 'Proto.Envoy.Type.V3.SemanticVersion_Fields.patch' @:: Lens' SemanticVersion Data.Word.Word32@ -}
data SemanticVersion
  = SemanticVersion'_constructor {_SemanticVersion'majorNumber :: !Data.Word.Word32,
                                  _SemanticVersion'minorNumber :: !Data.Word.Word32,
                                  _SemanticVersion'patch :: !Data.Word.Word32,
                                  _SemanticVersion'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SemanticVersion where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SemanticVersion "majorNumber" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SemanticVersion'majorNumber
           (\ x__ y__ -> x__ {_SemanticVersion'majorNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SemanticVersion "minorNumber" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SemanticVersion'minorNumber
           (\ x__ y__ -> x__ {_SemanticVersion'minorNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SemanticVersion "patch" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SemanticVersion'patch
           (\ x__ y__ -> x__ {_SemanticVersion'patch = y__}))
        Prelude.id
instance Data.ProtoLens.Message SemanticVersion where
  messageName _ = Data.Text.pack "envoy.type.v3.SemanticVersion"
  packedMessageDescriptor _
    = "\n\
      \\SISemanticVersion\DC2!\n\
      \\fmajor_number\CAN\SOH \SOH(\rR\vmajorNumber\DC2!\n\
      \\fminor_number\CAN\STX \SOH(\rR\vminorNumber\DC2\DC4\n\
      \\ENQpatch\CAN\ETX \SOH(\rR\ENQpatch:!\154\197\136\RS\FS\n\
      \\SUBenvoy.type.SemanticVersion"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        majorNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "major_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"majorNumber")) ::
              Data.ProtoLens.FieldDescriptor SemanticVersion
        minorNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "minor_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"minorNumber")) ::
              Data.ProtoLens.FieldDescriptor SemanticVersion
        patch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "patch"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"patch")) ::
              Data.ProtoLens.FieldDescriptor SemanticVersion
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, majorNumber__field_descriptor),
           (Data.ProtoLens.Tag 2, minorNumber__field_descriptor),
           (Data.ProtoLens.Tag 3, patch__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SemanticVersion'_unknownFields
        (\ x__ y__ -> x__ {_SemanticVersion'_unknownFields = y__})
  defMessage
    = SemanticVersion'_constructor
        {_SemanticVersion'majorNumber = Data.ProtoLens.fieldDefault,
         _SemanticVersion'minorNumber = Data.ProtoLens.fieldDefault,
         _SemanticVersion'patch = Data.ProtoLens.fieldDefault,
         _SemanticVersion'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SemanticVersion
          -> Data.ProtoLens.Encoding.Bytes.Parser SemanticVersion
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
                                       "major_number"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"majorNumber") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "minor_number"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"minorNumber") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "patch"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"patch") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SemanticVersion"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"majorNumber") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"minorNumber") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"patch") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData SemanticVersion where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SemanticVersion'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SemanticVersion'majorNumber x__)
                (Control.DeepSeq.deepseq
                   (_SemanticVersion'minorNumber x__)
                   (Control.DeepSeq.deepseq (_SemanticVersion'patch x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$envoy/type/v3/semantic_version.proto\DC2\renvoy.type.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\144\SOH\n\
    \\SISemanticVersion\DC2!\n\
    \\fmajor_number\CAN\SOH \SOH(\rR\vmajorNumber\DC2!\n\
    \\fminor_number\CAN\STX \SOH(\rR\vminorNumber\DC2\DC4\n\
    \\ENQpatch\CAN\ETX \SOH(\rR\ENQpatch:!\154\197\136\RS\FS\n\
    \\SUBenvoy.type.SemanticVersionB=\n\
    \\ESCio.envoyproxy.envoy.type.v3B\DC4SemanticVersionProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\204\EOT\n\
    \\ACK\DC2\EOT\NUL\NUL\EM\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SYN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL4\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\a\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL5\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\b\NUL5\n\
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
    \\241\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC1\NUL\EM\SOH\SUB\189\SOH Envoy uses SemVer (https://semver.org/). Major/minor versions indicate\n\
    \ expected behaviors and APIs, the patch version field is used only\n\
    \ for security fixes and can be generally ignored.\n\
    \2% [#protodoc-title: Semantic Version]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC1\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC2\STX\\\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC2\STX\\\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC4\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC4\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC4\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SYN\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SYN\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SYN\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\CAN\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\CAN\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\CAN\DC1\DC2b\ACKproto3"