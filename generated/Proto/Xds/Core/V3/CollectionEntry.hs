{- This file was auto-generated from xds/core/v3/collection_entry.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Xds.Core.V3.CollectionEntry (
        CollectionEntry(), CollectionEntry'ResourceSpecifier(..),
        _CollectionEntry'Locator, _CollectionEntry'InlineEntry',
        CollectionEntry'InlineEntry()
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
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
import qualified Proto.Xds.Core.V3.ResourceLocator
{- | Fields :
     
         * 'Proto.Xds.Core.V3.CollectionEntry_Fields.maybe'resourceSpecifier' @:: Lens' CollectionEntry (Prelude.Maybe CollectionEntry'ResourceSpecifier)@
         * 'Proto.Xds.Core.V3.CollectionEntry_Fields.maybe'locator' @:: Lens' CollectionEntry (Prelude.Maybe Proto.Xds.Core.V3.ResourceLocator.ResourceLocator)@
         * 'Proto.Xds.Core.V3.CollectionEntry_Fields.locator' @:: Lens' CollectionEntry Proto.Xds.Core.V3.ResourceLocator.ResourceLocator@
         * 'Proto.Xds.Core.V3.CollectionEntry_Fields.maybe'inlineEntry' @:: Lens' CollectionEntry (Prelude.Maybe CollectionEntry'InlineEntry)@
         * 'Proto.Xds.Core.V3.CollectionEntry_Fields.inlineEntry' @:: Lens' CollectionEntry CollectionEntry'InlineEntry@ -}
data CollectionEntry
  = CollectionEntry'_constructor {_CollectionEntry'resourceSpecifier :: !(Prelude.Maybe CollectionEntry'ResourceSpecifier),
                                  _CollectionEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CollectionEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data CollectionEntry'ResourceSpecifier
  = CollectionEntry'Locator !Proto.Xds.Core.V3.ResourceLocator.ResourceLocator |
    CollectionEntry'InlineEntry' !CollectionEntry'InlineEntry
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField CollectionEntry "maybe'resourceSpecifier" (Prelude.Maybe CollectionEntry'ResourceSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CollectionEntry'resourceSpecifier
           (\ x__ y__ -> x__ {_CollectionEntry'resourceSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CollectionEntry "maybe'locator" (Prelude.Maybe Proto.Xds.Core.V3.ResourceLocator.ResourceLocator) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CollectionEntry'resourceSpecifier
           (\ x__ y__ -> x__ {_CollectionEntry'resourceSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CollectionEntry'Locator x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CollectionEntry'Locator y__))
instance Data.ProtoLens.Field.HasField CollectionEntry "locator" Proto.Xds.Core.V3.ResourceLocator.ResourceLocator where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CollectionEntry'resourceSpecifier
           (\ x__ y__ -> x__ {_CollectionEntry'resourceSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CollectionEntry'Locator x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CollectionEntry'Locator y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CollectionEntry "maybe'inlineEntry" (Prelude.Maybe CollectionEntry'InlineEntry) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CollectionEntry'resourceSpecifier
           (\ x__ y__ -> x__ {_CollectionEntry'resourceSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CollectionEntry'InlineEntry' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CollectionEntry'InlineEntry' y__))
instance Data.ProtoLens.Field.HasField CollectionEntry "inlineEntry" CollectionEntry'InlineEntry where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CollectionEntry'resourceSpecifier
           (\ x__ y__ -> x__ {_CollectionEntry'resourceSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CollectionEntry'InlineEntry' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CollectionEntry'InlineEntry' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message CollectionEntry where
  messageName _ = Data.Text.pack "xds.core.v3.CollectionEntry"
  packedMessageDescriptor _
    = "\n\
      \\SICollectionEntry\DC28\n\
      \\alocator\CAN\SOH \SOH(\v2\FS.xds.core.v3.ResourceLocatorH\NULR\alocator\DC2M\n\
      \\finline_entry\CAN\STX \SOH(\v2(.xds.core.v3.CollectionEntry.InlineEntryH\NULR\vinlineEntry\SUB\139\SOH\n\
      \\vInlineEntry\DC20\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\FS\250B\EMr\ETB2\NAK^[0-9a-zA-Z_\\-\\.~:]+$\DC2\CAN\n\
      \\aversion\CAN\STX \SOH(\tR\aversion\DC20\n\
      \\bresource\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\bresourceB\EM\n\
      \\DC2resource_specifier\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        locator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "locator"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Xds.Core.V3.ResourceLocator.ResourceLocator)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'locator")) ::
              Data.ProtoLens.FieldDescriptor CollectionEntry
        inlineEntry__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inline_entry"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CollectionEntry'InlineEntry)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'inlineEntry")) ::
              Data.ProtoLens.FieldDescriptor CollectionEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, locator__field_descriptor),
           (Data.ProtoLens.Tag 2, inlineEntry__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CollectionEntry'_unknownFields
        (\ x__ y__ -> x__ {_CollectionEntry'_unknownFields = y__})
  defMessage
    = CollectionEntry'_constructor
        {_CollectionEntry'resourceSpecifier = Prelude.Nothing,
         _CollectionEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CollectionEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser CollectionEntry
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "locator"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"locator") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "inline_entry"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"inlineEntry") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CollectionEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'resourceSpecifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (CollectionEntry'Locator v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (CollectionEntry'InlineEntry' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CollectionEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CollectionEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CollectionEntry'resourceSpecifier x__) ())
instance Control.DeepSeq.NFData CollectionEntry'ResourceSpecifier where
  rnf (CollectionEntry'Locator x__) = Control.DeepSeq.rnf x__
  rnf (CollectionEntry'InlineEntry' x__) = Control.DeepSeq.rnf x__
_CollectionEntry'Locator ::
  Data.ProtoLens.Prism.Prism' CollectionEntry'ResourceSpecifier Proto.Xds.Core.V3.ResourceLocator.ResourceLocator
_CollectionEntry'Locator
  = Data.ProtoLens.Prism.prism'
      CollectionEntry'Locator
      (\ p__
         -> case p__ of
              (CollectionEntry'Locator p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CollectionEntry'InlineEntry' ::
  Data.ProtoLens.Prism.Prism' CollectionEntry'ResourceSpecifier CollectionEntry'InlineEntry
_CollectionEntry'InlineEntry'
  = Data.ProtoLens.Prism.prism'
      CollectionEntry'InlineEntry'
      (\ p__
         -> case p__ of
              (CollectionEntry'InlineEntry' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Xds.Core.V3.CollectionEntry_Fields.name' @:: Lens' CollectionEntry'InlineEntry Data.Text.Text@
         * 'Proto.Xds.Core.V3.CollectionEntry_Fields.version' @:: Lens' CollectionEntry'InlineEntry Data.Text.Text@
         * 'Proto.Xds.Core.V3.CollectionEntry_Fields.resource' @:: Lens' CollectionEntry'InlineEntry Proto.Google.Protobuf.Any.Any@
         * 'Proto.Xds.Core.V3.CollectionEntry_Fields.maybe'resource' @:: Lens' CollectionEntry'InlineEntry (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data CollectionEntry'InlineEntry
  = CollectionEntry'InlineEntry'_constructor {_CollectionEntry'InlineEntry'name :: !Data.Text.Text,
                                              _CollectionEntry'InlineEntry'version :: !Data.Text.Text,
                                              _CollectionEntry'InlineEntry'resource :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                              _CollectionEntry'InlineEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CollectionEntry'InlineEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CollectionEntry'InlineEntry "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CollectionEntry'InlineEntry'name
           (\ x__ y__ -> x__ {_CollectionEntry'InlineEntry'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CollectionEntry'InlineEntry "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CollectionEntry'InlineEntry'version
           (\ x__ y__ -> x__ {_CollectionEntry'InlineEntry'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CollectionEntry'InlineEntry "resource" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CollectionEntry'InlineEntry'resource
           (\ x__ y__ -> x__ {_CollectionEntry'InlineEntry'resource = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CollectionEntry'InlineEntry "maybe'resource" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CollectionEntry'InlineEntry'resource
           (\ x__ y__ -> x__ {_CollectionEntry'InlineEntry'resource = y__}))
        Prelude.id
instance Data.ProtoLens.Message CollectionEntry'InlineEntry where
  messageName _
    = Data.Text.pack "xds.core.v3.CollectionEntry.InlineEntry"
  packedMessageDescriptor _
    = "\n\
      \\vInlineEntry\DC20\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\FS\250B\EMr\ETB2\NAK^[0-9a-zA-Z_\\-\\.~:]+$\DC2\CAN\n\
      \\aversion\CAN\STX \SOH(\tR\aversion\DC20\n\
      \\bresource\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\bresource"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor CollectionEntry'InlineEntry
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor CollectionEntry'InlineEntry
        resource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'resource")) ::
              Data.ProtoLens.FieldDescriptor CollectionEntry'InlineEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, version__field_descriptor),
           (Data.ProtoLens.Tag 3, resource__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CollectionEntry'InlineEntry'_unknownFields
        (\ x__ y__
           -> x__ {_CollectionEntry'InlineEntry'_unknownFields = y__})
  defMessage
    = CollectionEntry'InlineEntry'_constructor
        {_CollectionEntry'InlineEntry'name = Data.ProtoLens.fieldDefault,
         _CollectionEntry'InlineEntry'version = Data.ProtoLens.fieldDefault,
         _CollectionEntry'InlineEntry'resource = Prelude.Nothing,
         _CollectionEntry'InlineEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CollectionEntry'InlineEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser CollectionEntry'InlineEntry
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
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
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "resource"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"resource") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "InlineEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
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
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'resource") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData CollectionEntry'InlineEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CollectionEntry'InlineEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CollectionEntry'InlineEntry'name x__)
                (Control.DeepSeq.deepseq
                   (_CollectionEntry'InlineEntry'version x__)
                   (Control.DeepSeq.deepseq
                      (_CollectionEntry'InlineEntry'resource x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"xds/core/v3/collection_entry.proto\DC2\vxds.core.v3\SUB\EMgoogle/protobuf/any.proto\SUB\GSudpa/annotations/status.proto\SUB\"xds/core/v3/resource_locator.proto\SUB\ETBvalidate/validate.proto\"\195\STX\n\
    \\SICollectionEntry\DC28\n\
    \\alocator\CAN\SOH \SOH(\v2\FS.xds.core.v3.ResourceLocatorH\NULR\alocator\DC2M\n\
    \\finline_entry\CAN\STX \SOH(\v2(.xds.core.v3.CollectionEntry.InlineEntryH\NULR\vinlineEntry\SUB\139\SOH\n\
    \\vInlineEntry\DC20\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\FS\250B\EMr\ETB2\NAK^[0-9a-zA-Z_\\-\\.~:]+$\DC2\CAN\n\
    \\aversion\CAN\STX \SOH(\tR\aversion\DC20\n\
    \\bresource\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\bresourceB\EM\n\
    \\DC2resource_specifier\DC2\ETX\248B\SOHB=\n\
    \\ESCcom.github.udpa.xds.core.v3B\DC4CollectionEntryProtoP\SOH\186\128\200\209\ACK\STX\b\SOHJ\195\v\n\
    \\ACK\DC2\EOT\NUL\NUL3\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\DC4\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL,\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL5\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL4\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL>\n\
    \\r\n\
    \\ACK\b\135\128\153j\SOH\DC2\ETX\SI\NUL>\n\
    \\142\STX\n\
    \\STX\EOT\NUL\DC2\EOT\EM\NUL3\SOH\SUB\129\STX xDS collection resource wrapper. This encapsulates a xDS resource when\n\
    \ appearing inside a list collection resource. List collection resources are\n\
    \ regular Resource messages of type:\n\
    \\n\
    \ message <T>Collection {\n\
    \   repeated CollectionEntry resources = 1;\n\
    \ }\n\
    \\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\EM\b\ETB\n\
    \'\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\ESC\STX(\ETX\SUB\EM Inlined resource entry.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\ESC\n\
    \\NAK\n\
    \\149\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX \EOTR\SUB\133\STX Optional name to describe the inlined resource. Resource names must\n\
    \ [a-zA-Z0-9_-\\./]+ (TODO(htuch): turn this into a PGV constraint once\n\
    \ finalized, probably should be a RFC3986 pchar). This name allows\n\
    \ reference via the #entry directive in ResourceLocator.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX \EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX \v\SI\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX \DC2\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETX \DC4Q\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\SO\ACK\DC2\ETX \NAKP\n\
    \\158\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX$\EOT\ETB\SUB\142\SOH The resource's logical version. It is illegal to have the same named xDS\n\
    \ resource name at a given version with different resource payloads.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX$\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX$\v\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX$\NAK\SYN\n\
    \:\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETX'\EOT%\SUB+ The resource payload, including type URL.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ACK\DC2\ETX'\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX'\CAN \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX'#$\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT*\STX2\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX*\b\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX+\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX+\EOT&\n\
    \V\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX.\EOT \SUBI A resource locator describing how the member resource is to be located.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX.\EOT\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX.\DC4\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX.\RS\US\n\
    \>\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX1\EOT!\SUB1 The resource is inlined in the list collection.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX1\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX1\DLE\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX1\US b\ACKproto3"