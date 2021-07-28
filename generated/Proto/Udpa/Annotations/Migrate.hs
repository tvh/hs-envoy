{- This file was auto-generated from udpa/annotations/migrate.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Udpa.Annotations.Migrate (
        FieldMigrateAnnotation(), FileMigrateAnnotation(),
        MigrateAnnotation()
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
     
         * 'Proto.Udpa.Annotations.Migrate_Fields.rename' @:: Lens' FieldMigrateAnnotation Data.Text.Text@
         * 'Proto.Udpa.Annotations.Migrate_Fields.oneofPromotion' @:: Lens' FieldMigrateAnnotation Data.Text.Text@ -}
data FieldMigrateAnnotation
  = FieldMigrateAnnotation'_constructor {_FieldMigrateAnnotation'rename :: !Data.Text.Text,
                                         _FieldMigrateAnnotation'oneofPromotion :: !Data.Text.Text,
                                         _FieldMigrateAnnotation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FieldMigrateAnnotation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FieldMigrateAnnotation "rename" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldMigrateAnnotation'rename
           (\ x__ y__ -> x__ {_FieldMigrateAnnotation'rename = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FieldMigrateAnnotation "oneofPromotion" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldMigrateAnnotation'oneofPromotion
           (\ x__ y__ -> x__ {_FieldMigrateAnnotation'oneofPromotion = y__}))
        Prelude.id
instance Data.ProtoLens.Message FieldMigrateAnnotation where
  messageName _
    = Data.Text.pack "udpa.annotations.FieldMigrateAnnotation"
  packedMessageDescriptor _
    = "\n\
      \\SYNFieldMigrateAnnotation\DC2\SYN\n\
      \\ACKrename\CAN\SOH \SOH(\tR\ACKrename\DC2'\n\
      \\SIoneof_promotion\CAN\STX \SOH(\tR\SOoneofPromotion"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rename__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rename"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"rename")) ::
              Data.ProtoLens.FieldDescriptor FieldMigrateAnnotation
        oneofPromotion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "oneof_promotion"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"oneofPromotion")) ::
              Data.ProtoLens.FieldDescriptor FieldMigrateAnnotation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rename__field_descriptor),
           (Data.ProtoLens.Tag 2, oneofPromotion__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FieldMigrateAnnotation'_unknownFields
        (\ x__ y__ -> x__ {_FieldMigrateAnnotation'_unknownFields = y__})
  defMessage
    = FieldMigrateAnnotation'_constructor
        {_FieldMigrateAnnotation'rename = Data.ProtoLens.fieldDefault,
         _FieldMigrateAnnotation'oneofPromotion = Data.ProtoLens.fieldDefault,
         _FieldMigrateAnnotation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FieldMigrateAnnotation
          -> Data.ProtoLens.Encoding.Bytes.Parser FieldMigrateAnnotation
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
                                       "rename"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rename") y x)
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
                                       "oneof_promotion"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"oneofPromotion") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FieldMigrateAnnotation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"rename") _x
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
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"oneofPromotion") _x
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
instance Control.DeepSeq.NFData FieldMigrateAnnotation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FieldMigrateAnnotation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FieldMigrateAnnotation'rename x__)
                (Control.DeepSeq.deepseq
                   (_FieldMigrateAnnotation'oneofPromotion x__) ()))
{- | Fields :
     
         * 'Proto.Udpa.Annotations.Migrate_Fields.moveToPackage' @:: Lens' FileMigrateAnnotation Data.Text.Text@ -}
data FileMigrateAnnotation
  = FileMigrateAnnotation'_constructor {_FileMigrateAnnotation'moveToPackage :: !Data.Text.Text,
                                        _FileMigrateAnnotation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FileMigrateAnnotation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FileMigrateAnnotation "moveToPackage" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileMigrateAnnotation'moveToPackage
           (\ x__ y__ -> x__ {_FileMigrateAnnotation'moveToPackage = y__}))
        Prelude.id
instance Data.ProtoLens.Message FileMigrateAnnotation where
  messageName _
    = Data.Text.pack "udpa.annotations.FileMigrateAnnotation"
  packedMessageDescriptor _
    = "\n\
      \\NAKFileMigrateAnnotation\DC2&\n\
      \\SImove_to_package\CAN\STX \SOH(\tR\rmoveToPackage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        moveToPackage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "move_to_package"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"moveToPackage")) ::
              Data.ProtoLens.FieldDescriptor FileMigrateAnnotation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, moveToPackage__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FileMigrateAnnotation'_unknownFields
        (\ x__ y__ -> x__ {_FileMigrateAnnotation'_unknownFields = y__})
  defMessage
    = FileMigrateAnnotation'_constructor
        {_FileMigrateAnnotation'moveToPackage = Data.ProtoLens.fieldDefault,
         _FileMigrateAnnotation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FileMigrateAnnotation
          -> Data.ProtoLens.Encoding.Bytes.Parser FileMigrateAnnotation
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
                                       "move_to_package"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"moveToPackage") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FileMigrateAnnotation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"moveToPackage") _x
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
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData FileMigrateAnnotation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FileMigrateAnnotation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FileMigrateAnnotation'moveToPackage x__) ())
{- | Fields :
     
         * 'Proto.Udpa.Annotations.Migrate_Fields.rename' @:: Lens' MigrateAnnotation Data.Text.Text@ -}
data MigrateAnnotation
  = MigrateAnnotation'_constructor {_MigrateAnnotation'rename :: !Data.Text.Text,
                                    _MigrateAnnotation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MigrateAnnotation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MigrateAnnotation "rename" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MigrateAnnotation'rename
           (\ x__ y__ -> x__ {_MigrateAnnotation'rename = y__}))
        Prelude.id
instance Data.ProtoLens.Message MigrateAnnotation where
  messageName _ = Data.Text.pack "udpa.annotations.MigrateAnnotation"
  packedMessageDescriptor _
    = "\n\
      \\DC1MigrateAnnotation\DC2\SYN\n\
      \\ACKrename\CAN\SOH \SOH(\tR\ACKrename"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rename__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rename"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"rename")) ::
              Data.ProtoLens.FieldDescriptor MigrateAnnotation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rename__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MigrateAnnotation'_unknownFields
        (\ x__ y__ -> x__ {_MigrateAnnotation'_unknownFields = y__})
  defMessage
    = MigrateAnnotation'_constructor
        {_MigrateAnnotation'rename = Data.ProtoLens.fieldDefault,
         _MigrateAnnotation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MigrateAnnotation
          -> Data.ProtoLens.Encoding.Bytes.Parser MigrateAnnotation
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
                                       "rename"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rename") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MigrateAnnotation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"rename") _x
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
instance Control.DeepSeq.NFData MigrateAnnotation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MigrateAnnotation'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MigrateAnnotation'rename x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RSudpa/annotations/migrate.proto\DC2\DLEudpa.annotations\SUB google/protobuf/descriptor.proto\"+\n\
    \\DC1MigrateAnnotation\DC2\SYN\n\
    \\ACKrename\CAN\SOH \SOH(\tR\ACKrename\"Y\n\
    \\SYNFieldMigrateAnnotation\DC2\SYN\n\
    \\ACKrename\CAN\SOH \SOH(\tR\ACKrename\DC2'\n\
    \\SIoneof_promotion\CAN\STX \SOH(\tR\SOoneofPromotion\"?\n\
    \\NAKFileMigrateAnnotation\DC2&\n\
    \\SImove_to_package\CAN\STX \SOH(\tR\rmoveToPackage:p\n\
    \\SImessage_migrate\CAN\142\227\255Q \SOH(\v2#.udpa.annotations.MigrateAnnotation\DC2\US.google.protobuf.MessageOptionsR\SOmessageMigrate:o\n\
    \\rfield_migrate\CAN\142\227\255Q \SOH(\v2(.udpa.annotations.FieldMigrateAnnotation\DC2\GS.google.protobuf.FieldOptionsR\ffieldMigrate:g\n\
    \\fenum_migrate\CAN\142\227\255Q \SOH(\v2#.udpa.annotations.MigrateAnnotation\DC2\FS.google.protobuf.EnumOptionsR\venumMigrate:w\n\
    \\DC2enum_value_migrate\CAN\142\227\255Q \SOH(\v2#.udpa.annotations.MigrateAnnotation\DC2!.google.protobuf.EnumValueOptionsR\DLEenumValueMigrate:k\n\
    \\ffile_migrate\CAN\142\227\255Q \SOH(\v2'.udpa.annotations.FileMigrateAnnotation\DC2\FS.google.protobuf.FileOptionsR\vfileMigrateJ\255\b\n\
    \\ACK\DC2\EOT\NUL\NUL0\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\EM\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \m\n\
    \\SOH\a\DC2\EOT\t\NUL\v\SOH2b Magic number in this file derived from top 28bit of SHA256 digest of\n\
    \ \"udpa.annotation.migrate\".\n\
    \\n\
    \\t\n\
    \\STX\a\NUL\DC2\ETX\n\
    \\STX0\n\
    \\n\
    \\n\
    \\ETX\a\NUL\STX\DC2\ETX\t\a%\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ACK\DC2\ETX\n\
    \\STX\DC3\n\
    \\n\
    \\n\
    \\ETX\a\NUL\SOH\DC2\ETX\n\
    \\DC4#\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ETX\DC2\ETX\n\
    \&/\n\
    \\t\n\
    \\SOH\a\DC2\EOT\r\NUL\SI\SOH\n\
    \\t\n\
    \\STX\a\SOH\DC2\ETX\SO\STX3\n\
    \\n\
    \\n\
    \\ETX\a\SOH\STX\DC2\ETX\r\a#\n\
    \\n\
    \\n\
    \\ETX\a\SOH\ACK\DC2\ETX\SO\STX\CAN\n\
    \\n\
    \\n\
    \\ETX\a\SOH\SOH\DC2\ETX\SO\EM&\n\
    \\n\
    \\n\
    \\ETX\a\SOH\ETX\DC2\ETX\SO)2\n\
    \\t\n\
    \\SOH\a\DC2\EOT\DC1\NUL\DC3\SOH\n\
    \\t\n\
    \\STX\a\STX\DC2\ETX\DC2\STX-\n\
    \\n\
    \\n\
    \\ETX\a\STX\STX\DC2\ETX\DC1\a\"\n\
    \\n\
    \\n\
    \\ETX\a\STX\ACK\DC2\ETX\DC2\STX\DC3\n\
    \\n\
    \\n\
    \\ETX\a\STX\SOH\DC2\ETX\DC2\DC4 \n\
    \\n\
    \\n\
    \\ETX\a\STX\ETX\DC2\ETX\DC2#,\n\
    \\t\n\
    \\SOH\a\DC2\EOT\NAK\NUL\ETB\SOH\n\
    \\t\n\
    \\STX\a\ETX\DC2\ETX\SYN\STX3\n\
    \\n\
    \\n\
    \\ETX\a\ETX\STX\DC2\ETX\NAK\a'\n\
    \\n\
    \\n\
    \\ETX\a\ETX\ACK\DC2\ETX\SYN\STX\DC3\n\
    \\n\
    \\n\
    \\ETX\a\ETX\SOH\DC2\ETX\SYN\DC4&\n\
    \\n\
    \\n\
    \\ETX\a\ETX\ETX\DC2\ETX\SYN)2\n\
    \\t\n\
    \\SOH\a\DC2\EOT\EM\NUL\ESC\SOH\n\
    \\t\n\
    \\STX\a\EOT\DC2\ETX\SUB\STX1\n\
    \\n\
    \\n\
    \\ETX\a\EOT\STX\DC2\ETX\EM\a\"\n\
    \\n\
    \\n\
    \\ETX\a\EOT\ACK\DC2\ETX\SUB\STX\ETB\n\
    \\n\
    \\n\
    \\ETX\a\EOT\SOH\DC2\ETX\SUB\CAN$\n\
    \\n\
    \\n\
    \\ETX\a\EOT\ETX\DC2\ETX\SUB'0\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\GS\NUL \SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\GS\b\EM\n\
    \B\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\US\STX\DC4\SUB5 Rename the message/enum/enum value in next version.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\US\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\US\DC2\DC3\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\"\NUL*\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\"\b\RS\n\
    \0\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX$\STX\DC4\SUB# Rename the field in next version.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX$\t\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX$\DC2\DC3\n\
    \\198\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX)\STX\GS\SUB\184\SOH Add the field to a named oneof in next version. If this already exists, the\n\
    \ field will join its siblings under the oneof, otherwise a new oneof will be\n\
    \ created with the given name.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX)\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX)\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX)\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT,\NUL0\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX,\b\GS\n\
    \e\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX/\STX\GS\SUBX Move all types in the file to another package, this implies changing proto\n\
    \ file path.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX/\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX/\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX/\ESC\FSb\ACKproto3"