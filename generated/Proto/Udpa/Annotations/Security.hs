{- This file was auto-generated from udpa/annotations/security.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Udpa.Annotations.Security (
        FieldSecurityAnnotation()
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
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Descriptor
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Udpa.Annotations.Security_Fields.configureForUntrustedDownstream' @:: Lens' FieldSecurityAnnotation Prelude.Bool@
         * 'Proto.Udpa.Annotations.Security_Fields.configureForUntrustedUpstream' @:: Lens' FieldSecurityAnnotation Prelude.Bool@ -}
data FieldSecurityAnnotation
  = FieldSecurityAnnotation'_constructor {_FieldSecurityAnnotation'configureForUntrustedDownstream :: !Prelude.Bool,
                                          _FieldSecurityAnnotation'configureForUntrustedUpstream :: !Prelude.Bool,
                                          _FieldSecurityAnnotation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FieldSecurityAnnotation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FieldSecurityAnnotation "configureForUntrustedDownstream" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldSecurityAnnotation'configureForUntrustedDownstream
           (\ x__ y__
              -> x__
                   {_FieldSecurityAnnotation'configureForUntrustedDownstream = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FieldSecurityAnnotation "configureForUntrustedUpstream" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldSecurityAnnotation'configureForUntrustedUpstream
           (\ x__ y__
              -> x__
                   {_FieldSecurityAnnotation'configureForUntrustedUpstream = y__}))
        Prelude.id
instance Data.ProtoLens.Message FieldSecurityAnnotation where
  messageName _
    = Data.Text.pack "udpa.annotations.FieldSecurityAnnotation"
  packedMessageDescriptor _
    = "\n\
      \\ETBFieldSecurityAnnotation\DC2K\n\
      \\"configure_for_untrusted_downstream\CAN\SOH \SOH(\bR\USconfigureForUntrustedDownstream\DC2G\n\
      \ configure_for_untrusted_upstream\CAN\STX \SOH(\bR\GSconfigureForUntrustedUpstream"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        configureForUntrustedDownstream__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "configure_for_untrusted_downstream"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"configureForUntrustedDownstream")) ::
              Data.ProtoLens.FieldDescriptor FieldSecurityAnnotation
        configureForUntrustedUpstream__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "configure_for_untrusted_upstream"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"configureForUntrustedUpstream")) ::
              Data.ProtoLens.FieldDescriptor FieldSecurityAnnotation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            configureForUntrustedDownstream__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            configureForUntrustedUpstream__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FieldSecurityAnnotation'_unknownFields
        (\ x__ y__ -> x__ {_FieldSecurityAnnotation'_unknownFields = y__})
  defMessage
    = FieldSecurityAnnotation'_constructor
        {_FieldSecurityAnnotation'configureForUntrustedDownstream = Data.ProtoLens.fieldDefault,
         _FieldSecurityAnnotation'configureForUntrustedUpstream = Data.ProtoLens.fieldDefault,
         _FieldSecurityAnnotation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FieldSecurityAnnotation
          -> Data.ProtoLens.Encoding.Bytes.Parser FieldSecurityAnnotation
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
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "configure_for_untrusted_downstream"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"configureForUntrustedDownstream")
                                     y
                                     x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "configure_for_untrusted_upstream"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"configureForUntrustedUpstream")
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
          (do loop Data.ProtoLens.defMessage) "FieldSecurityAnnotation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"configureForUntrustedDownstream") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt
                         (\ b -> if b then 1 else 0)
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"configureForUntrustedUpstream") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt
                            (\ b -> if b then 1 else 0)
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData FieldSecurityAnnotation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FieldSecurityAnnotation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FieldSecurityAnnotation'configureForUntrustedDownstream x__)
                (Control.DeepSeq.deepseq
                   (_FieldSecurityAnnotation'configureForUntrustedUpstream x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\USudpa/annotations/security.proto\DC2\DLEudpa.annotations\SUB\GSudpa/annotations/status.proto\SUB\EMgoogle/protobuf/any.proto\SUB google/protobuf/descriptor.proto\SUB\ETBvalidate/validate.proto\"\175\SOH\n\
    \\ETBFieldSecurityAnnotation\DC2K\n\
    \\"configure_for_untrusted_downstream\CAN\SOH \SOH(\bR\USconfigureForUntrustedDownstream\DC2G\n\
    \ configure_for_untrusted_upstream\CAN\STX \SOH(\bR\GSconfigureForUntrustedUpstream:g\n\
    \\bsecurity\CAN\177\242\166\ENQ \SOH(\v2).udpa.annotations.FieldSecurityAnnotation\DC2\GS.google.protobuf.FieldOptionsR\bsecurityB\b\186\128\200\209\ACK\STX\b\SOHJ\182\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL\RS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\EM\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL*\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL>\n\
    \\197\SOH\n\
    \\ACK\b\135\128\153j\SOH\DC2\ETX\SO\NUL>\SUB\181\SOH All annotations in this file are experimental and subject to change. Their\n\
    \ only consumer today is the Envoy APIs and SecuritAnnotationValidator protoc\n\
    \ plugin in this repository.\n\
    \\n\
    \\t\n\
    \\SOH\a\DC2\EOT\DLE\NUL\DC4\SOH\n\
    \k\n\
    \\STX\a\NUL\DC2\ETX\DC3\STX.\SUB` Magic number is the 28 most significant bits in the sha256sum of\n\
    \ \"udpa.annotations.security\".\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\NUL\STX\DC2\ETX\DLE\a#\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ACK\DC2\ETX\DC3\STX\EM\n\
    \\n\
    \\n\
    \\ETX\a\NUL\SOH\DC2\ETX\DC3\SUB\"\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ETX\DC2\ETX\DC3%-\n\
    \x\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NUL\RS\SOH\SUBl These annotations indicate metadata for the purpose of understanding the\n\
    \ security significance of fields.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\US\n\
    \L\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\STX.\SUB? Field should be set in the presence of untrusted downstreams.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SUB\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\a)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB,-\n\
    \J\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\GS\STX,\SUB= Field should be set in the presence of untrusted upstreams.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\GS\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\GS\a'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\GS*+b\ACKproto3"