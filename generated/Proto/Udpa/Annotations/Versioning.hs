{- This file was auto-generated from udpa/annotations/versioning.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Udpa.Annotations.Versioning (
        VersioningAnnotation()
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
import qualified Proto.Google.Protobuf.Descriptor
{- | Fields :
     
         * 'Proto.Udpa.Annotations.Versioning_Fields.previousMessageType' @:: Lens' VersioningAnnotation Data.Text.Text@ -}
data VersioningAnnotation
  = VersioningAnnotation'_constructor {_VersioningAnnotation'previousMessageType :: !Data.Text.Text,
                                       _VersioningAnnotation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VersioningAnnotation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VersioningAnnotation "previousMessageType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersioningAnnotation'previousMessageType
           (\ x__ y__
              -> x__ {_VersioningAnnotation'previousMessageType = y__}))
        Prelude.id
instance Data.ProtoLens.Message VersioningAnnotation where
  messageName _
    = Data.Text.pack "udpa.annotations.VersioningAnnotation"
  packedMessageDescriptor _
    = "\n\
      \\DC4VersioningAnnotation\DC22\n\
      \\NAKprevious_message_type\CAN\SOH \SOH(\tR\DC3previousMessageType"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        previousMessageType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "previous_message_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"previousMessageType")) ::
              Data.ProtoLens.FieldDescriptor VersioningAnnotation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, previousMessageType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VersioningAnnotation'_unknownFields
        (\ x__ y__ -> x__ {_VersioningAnnotation'_unknownFields = y__})
  defMessage
    = VersioningAnnotation'_constructor
        {_VersioningAnnotation'previousMessageType = Data.ProtoLens.fieldDefault,
         _VersioningAnnotation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          VersioningAnnotation
          -> Data.ProtoLens.Encoding.Bytes.Parser VersioningAnnotation
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
                                       "previous_message_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"previousMessageType") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "VersioningAnnotation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"previousMessageType") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData VersioningAnnotation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VersioningAnnotation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_VersioningAnnotation'previousMessageType x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!udpa/annotations/versioning.proto\DC2\DLEudpa.annotations\SUB google/protobuf/descriptor.proto\"J\n\
    \\DC4VersioningAnnotation\DC22\n\
    \\NAKprevious_message_type\CAN\SOH \SOH(\tR\DC3previousMessageType:j\n\
    \\n\
    \versioning\CAN\211\136\225\ETX \SOH(\v2&.udpa.annotations.VersioningAnnotation\DC2\US.google.protobuf.MessageOptionsR\n\
    \versioningJ\181\ETX\n\
    \\ACK\DC2\EOT\NUL\NUL\DLE\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\EM\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \\t\n\
    \\SOH\a\DC2\EOT\ACK\NUL\t\SOH\n\
    \G\n\
    \\STX\a\NUL\DC2\ETX\b\STX,\SUB< Magic number derived from 0x78 ('x') 0x44 ('D') 0x53 ('S')\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\NUL\STX\DC2\ETX\ACK\a%\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ACK\DC2\ETX\b\STX\SYN\n\
    \\n\
    \\n\
    \\ETX\a\NUL\SOH\DC2\ETX\b\ETB!\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ETX\DC2\ETX\b$+\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\v\NUL\DLE\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\v\b\FS\n\
    \\197\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SI\STX#\SUB\183\SOH Track the previous message type. E.g. this message might be\n\
    \ udpa.foo.v3alpha.Foo and it was previously udpa.bar.v2.Bar. This\n\
    \ information is consumed by UDPA via proto descriptors.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SI\t\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SI!\"b\ACKproto3"