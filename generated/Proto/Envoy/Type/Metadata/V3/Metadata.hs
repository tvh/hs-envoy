{- This file was auto-generated from envoy/type/metadata/v3/metadata.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.Metadata.V3.Metadata (
        MetadataKey(), MetadataKey'PathSegment(),
        MetadataKey'PathSegment'Segment(..), _MetadataKey'PathSegment'Key,
        MetadataKind(), MetadataKind'Kind(..), _MetadataKind'Request',
        _MetadataKind'Route', _MetadataKind'Cluster', _MetadataKind'Host',
        MetadataKind'Cluster(), MetadataKind'Host(),
        MetadataKind'Request(), MetadataKind'Route()
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
     
         * 'Proto.Envoy.Type.Metadata.V3.Metadata_Fields.key' @:: Lens' MetadataKey Data.Text.Text@
         * 'Proto.Envoy.Type.Metadata.V3.Metadata_Fields.path' @:: Lens' MetadataKey [MetadataKey'PathSegment]@
         * 'Proto.Envoy.Type.Metadata.V3.Metadata_Fields.vec'path' @:: Lens' MetadataKey (Data.Vector.Vector MetadataKey'PathSegment)@ -}
data MetadataKey
  = MetadataKey'_constructor {_MetadataKey'key :: !Data.Text.Text,
                              _MetadataKey'path :: !(Data.Vector.Vector MetadataKey'PathSegment),
                              _MetadataKey'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MetadataKey where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MetadataKey "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataKey'key (\ x__ y__ -> x__ {_MetadataKey'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MetadataKey "path" [MetadataKey'PathSegment] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataKey'path (\ x__ y__ -> x__ {_MetadataKey'path = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MetadataKey "vec'path" (Data.Vector.Vector MetadataKey'PathSegment) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataKey'path (\ x__ y__ -> x__ {_MetadataKey'path = y__}))
        Prelude.id
instance Data.ProtoLens.Message MetadataKey where
  messageName _ = Data.Text.pack "envoy.type.metadata.v3.MetadataKey"
  packedMessageDescriptor _
    = "\n\
      \\vMetadataKey\DC2\EM\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkeyB\a\250B\EOTr\STX\DLE\SOH\DC2M\n\
      \\EOTpath\CAN\STX \ETX(\v2/.envoy.type.metadata.v3.MetadataKey.PathSegmentR\EOTpathB\b\250B\ENQ\146\SOH\STX\b\SOH\SUBq\n\
      \\vPathSegment\DC2\ESC\n\
      \\ETXkey\CAN\SOH \SOH(\tH\NULR\ETXkeyB\a\250B\EOTr\STX\DLE\SOHB\SO\n\
      \\asegment\DC2\ETX\248B\SOH:5\154\197\136\RS0\n\
      \.envoy.type.metadata.v2.MetadataKey.PathSegment:)\154\197\136\RS$\n\
      \\"envoy.type.metadata.v2.MetadataKey"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor MetadataKey
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MetadataKey'PathSegment)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"path")) ::
              Data.ProtoLens.FieldDescriptor MetadataKey
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, path__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MetadataKey'_unknownFields
        (\ x__ y__ -> x__ {_MetadataKey'_unknownFields = y__})
  defMessage
    = MetadataKey'_constructor
        {_MetadataKey'key = Data.ProtoLens.fieldDefault,
         _MetadataKey'path = Data.Vector.Generic.empty,
         _MetadataKey'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MetadataKey
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld MetadataKey'PathSegment
             -> Data.ProtoLens.Encoding.Bytes.Parser MetadataKey
        loop x mutable'path
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'path <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'path)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'path") frozen'path x))
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
                                       "key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                                  mutable'path
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "path"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'path y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'path
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'path <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'path)
          "MetadataKey"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage
                              _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'path") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MetadataKey where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MetadataKey'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MetadataKey'key x__)
                (Control.DeepSeq.deepseq (_MetadataKey'path x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Type.Metadata.V3.Metadata_Fields.maybe'segment' @:: Lens' MetadataKey'PathSegment (Prelude.Maybe MetadataKey'PathSegment'Segment)@
         * 'Proto.Envoy.Type.Metadata.V3.Metadata_Fields.maybe'key' @:: Lens' MetadataKey'PathSegment (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Type.Metadata.V3.Metadata_Fields.key' @:: Lens' MetadataKey'PathSegment Data.Text.Text@ -}
data MetadataKey'PathSegment
  = MetadataKey'PathSegment'_constructor {_MetadataKey'PathSegment'segment :: !(Prelude.Maybe MetadataKey'PathSegment'Segment),
                                          _MetadataKey'PathSegment'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MetadataKey'PathSegment where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data MetadataKey'PathSegment'Segment
  = MetadataKey'PathSegment'Key !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField MetadataKey'PathSegment "maybe'segment" (Prelude.Maybe MetadataKey'PathSegment'Segment) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataKey'PathSegment'segment
           (\ x__ y__ -> x__ {_MetadataKey'PathSegment'segment = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MetadataKey'PathSegment "maybe'key" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataKey'PathSegment'segment
           (\ x__ y__ -> x__ {_MetadataKey'PathSegment'segment = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MetadataKey'PathSegment'Key x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap MetadataKey'PathSegment'Key y__))
instance Data.ProtoLens.Field.HasField MetadataKey'PathSegment "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataKey'PathSegment'segment
           (\ x__ y__ -> x__ {_MetadataKey'PathSegment'segment = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MetadataKey'PathSegment'Key x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap MetadataKey'PathSegment'Key y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message MetadataKey'PathSegment where
  messageName _
    = Data.Text.pack "envoy.type.metadata.v3.MetadataKey.PathSegment"
  packedMessageDescriptor _
    = "\n\
      \\vPathSegment\DC2\ESC\n\
      \\ETXkey\CAN\SOH \SOH(\tH\NULR\ETXkeyB\a\250B\EOTr\STX\DLE\SOHB\SO\n\
      \\asegment\DC2\ETX\248B\SOH:5\154\197\136\RS0\n\
      \.envoy.type.metadata.v2.MetadataKey.PathSegment"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'key")) ::
              Data.ProtoLens.FieldDescriptor MetadataKey'PathSegment
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, key__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MetadataKey'PathSegment'_unknownFields
        (\ x__ y__ -> x__ {_MetadataKey'PathSegment'_unknownFields = y__})
  defMessage
    = MetadataKey'PathSegment'_constructor
        {_MetadataKey'PathSegment'segment = Prelude.Nothing,
         _MetadataKey'PathSegment'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MetadataKey'PathSegment
          -> Data.ProtoLens.Encoding.Bytes.Parser MetadataKey'PathSegment
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PathSegment"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'segment") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (MetadataKey'PathSegment'Key v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MetadataKey'PathSegment where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MetadataKey'PathSegment'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MetadataKey'PathSegment'segment x__) ())
instance Control.DeepSeq.NFData MetadataKey'PathSegment'Segment where
  rnf (MetadataKey'PathSegment'Key x__) = Control.DeepSeq.rnf x__
_MetadataKey'PathSegment'Key ::
  Data.ProtoLens.Prism.Prism' MetadataKey'PathSegment'Segment Data.Text.Text
_MetadataKey'PathSegment'Key
  = Data.ProtoLens.Prism.prism'
      MetadataKey'PathSegment'Key
      (\ p__
         -> case p__ of {
              (MetadataKey'PathSegment'Key p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Type.Metadata.V3.Metadata_Fields.maybe'kind' @:: Lens' MetadataKind (Prelude.Maybe MetadataKind'Kind)@
         * 'Proto.Envoy.Type.Metadata.V3.Metadata_Fields.maybe'request' @:: Lens' MetadataKind (Prelude.Maybe MetadataKind'Request)@
         * 'Proto.Envoy.Type.Metadata.V3.Metadata_Fields.request' @:: Lens' MetadataKind MetadataKind'Request@
         * 'Proto.Envoy.Type.Metadata.V3.Metadata_Fields.maybe'route' @:: Lens' MetadataKind (Prelude.Maybe MetadataKind'Route)@
         * 'Proto.Envoy.Type.Metadata.V3.Metadata_Fields.route' @:: Lens' MetadataKind MetadataKind'Route@
         * 'Proto.Envoy.Type.Metadata.V3.Metadata_Fields.maybe'cluster' @:: Lens' MetadataKind (Prelude.Maybe MetadataKind'Cluster)@
         * 'Proto.Envoy.Type.Metadata.V3.Metadata_Fields.cluster' @:: Lens' MetadataKind MetadataKind'Cluster@
         * 'Proto.Envoy.Type.Metadata.V3.Metadata_Fields.maybe'host' @:: Lens' MetadataKind (Prelude.Maybe MetadataKind'Host)@
         * 'Proto.Envoy.Type.Metadata.V3.Metadata_Fields.host' @:: Lens' MetadataKind MetadataKind'Host@ -}
data MetadataKind
  = MetadataKind'_constructor {_MetadataKind'kind :: !(Prelude.Maybe MetadataKind'Kind),
                               _MetadataKind'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MetadataKind where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data MetadataKind'Kind
  = MetadataKind'Request' !MetadataKind'Request |
    MetadataKind'Route' !MetadataKind'Route |
    MetadataKind'Cluster' !MetadataKind'Cluster |
    MetadataKind'Host' !MetadataKind'Host
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField MetadataKind "maybe'kind" (Prelude.Maybe MetadataKind'Kind) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataKind'kind (\ x__ y__ -> x__ {_MetadataKind'kind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MetadataKind "maybe'request" (Prelude.Maybe MetadataKind'Request) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataKind'kind (\ x__ y__ -> x__ {_MetadataKind'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MetadataKind'Request' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap MetadataKind'Request' y__))
instance Data.ProtoLens.Field.HasField MetadataKind "request" MetadataKind'Request where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataKind'kind (\ x__ y__ -> x__ {_MetadataKind'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MetadataKind'Request' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap MetadataKind'Request' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MetadataKind "maybe'route" (Prelude.Maybe MetadataKind'Route) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataKind'kind (\ x__ y__ -> x__ {_MetadataKind'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MetadataKind'Route' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap MetadataKind'Route' y__))
instance Data.ProtoLens.Field.HasField MetadataKind "route" MetadataKind'Route where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataKind'kind (\ x__ y__ -> x__ {_MetadataKind'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MetadataKind'Route' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap MetadataKind'Route' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MetadataKind "maybe'cluster" (Prelude.Maybe MetadataKind'Cluster) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataKind'kind (\ x__ y__ -> x__ {_MetadataKind'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MetadataKind'Cluster' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap MetadataKind'Cluster' y__))
instance Data.ProtoLens.Field.HasField MetadataKind "cluster" MetadataKind'Cluster where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataKind'kind (\ x__ y__ -> x__ {_MetadataKind'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MetadataKind'Cluster' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap MetadataKind'Cluster' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField MetadataKind "maybe'host" (Prelude.Maybe MetadataKind'Host) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataKind'kind (\ x__ y__ -> x__ {_MetadataKind'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (MetadataKind'Host' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap MetadataKind'Host' y__))
instance Data.ProtoLens.Field.HasField MetadataKind "host" MetadataKind'Host where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetadataKind'kind (\ x__ y__ -> x__ {_MetadataKind'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (MetadataKind'Host' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap MetadataKind'Host' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message MetadataKind where
  messageName _
    = Data.Text.pack "envoy.type.metadata.v3.MetadataKind"
  packedMessageDescriptor _
    = "\n\
      \\fMetadataKind\DC2H\n\
      \\arequest\CAN\SOH \SOH(\v2,.envoy.type.metadata.v3.MetadataKind.RequestH\NULR\arequest\DC2B\n\
      \\ENQroute\CAN\STX \SOH(\v2*.envoy.type.metadata.v3.MetadataKind.RouteH\NULR\ENQroute\DC2H\n\
      \\acluster\CAN\ETX \SOH(\v2,.envoy.type.metadata.v3.MetadataKind.ClusterH\NULR\acluster\DC2?\n\
      \\EOThost\CAN\EOT \SOH(\v2).envoy.type.metadata.v3.MetadataKind.HostH\NULR\EOThost\SUB=\n\
      \\aRequest:2\154\197\136\RS-\n\
      \+envoy.type.metadata.v2.MetadataKind.Request\SUB9\n\
      \\ENQRoute:0\154\197\136\RS+\n\
      \)envoy.type.metadata.v2.MetadataKind.Route\SUB=\n\
      \\aCluster:2\154\197\136\RS-\n\
      \+envoy.type.metadata.v2.MetadataKind.Cluster\SUB7\n\
      \\EOTHost:/\154\197\136\RS*\n\
      \(envoy.type.metadata.v2.MetadataKind.HostB\v\n\
      \\EOTkind\DC2\ETX\248B\SOH:*\154\197\136\RS%\n\
      \#envoy.type.metadata.v2.MetadataKind"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        request__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MetadataKind'Request)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'request")) ::
              Data.ProtoLens.FieldDescriptor MetadataKind
        route__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "route"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MetadataKind'Route)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'route")) ::
              Data.ProtoLens.FieldDescriptor MetadataKind
        cluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MetadataKind'Cluster)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cluster")) ::
              Data.ProtoLens.FieldDescriptor MetadataKind
        host__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MetadataKind'Host)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'host")) ::
              Data.ProtoLens.FieldDescriptor MetadataKind
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, request__field_descriptor),
           (Data.ProtoLens.Tag 2, route__field_descriptor),
           (Data.ProtoLens.Tag 3, cluster__field_descriptor),
           (Data.ProtoLens.Tag 4, host__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MetadataKind'_unknownFields
        (\ x__ y__ -> x__ {_MetadataKind'_unknownFields = y__})
  defMessage
    = MetadataKind'_constructor
        {_MetadataKind'kind = Prelude.Nothing,
         _MetadataKind'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MetadataKind -> Data.ProtoLens.Encoding.Bytes.Parser MetadataKind
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
                                       "request"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"request") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "route"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"route") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cluster"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cluster") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "host"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"host") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MetadataKind"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kind") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (MetadataKind'Request' v))
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
                (Prelude.Just (MetadataKind'Route' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (MetadataKind'Cluster' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (MetadataKind'Host' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
instance Control.DeepSeq.NFData MetadataKind where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MetadataKind'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MetadataKind'kind x__) ())
instance Control.DeepSeq.NFData MetadataKind'Kind where
  rnf (MetadataKind'Request' x__) = Control.DeepSeq.rnf x__
  rnf (MetadataKind'Route' x__) = Control.DeepSeq.rnf x__
  rnf (MetadataKind'Cluster' x__) = Control.DeepSeq.rnf x__
  rnf (MetadataKind'Host' x__) = Control.DeepSeq.rnf x__
_MetadataKind'Request' ::
  Data.ProtoLens.Prism.Prism' MetadataKind'Kind MetadataKind'Request
_MetadataKind'Request'
  = Data.ProtoLens.Prism.prism'
      MetadataKind'Request'
      (\ p__
         -> case p__ of
              (MetadataKind'Request' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MetadataKind'Route' ::
  Data.ProtoLens.Prism.Prism' MetadataKind'Kind MetadataKind'Route
_MetadataKind'Route'
  = Data.ProtoLens.Prism.prism'
      MetadataKind'Route'
      (\ p__
         -> case p__ of
              (MetadataKind'Route' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MetadataKind'Cluster' ::
  Data.ProtoLens.Prism.Prism' MetadataKind'Kind MetadataKind'Cluster
_MetadataKind'Cluster'
  = Data.ProtoLens.Prism.prism'
      MetadataKind'Cluster'
      (\ p__
         -> case p__ of
              (MetadataKind'Cluster' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_MetadataKind'Host' ::
  Data.ProtoLens.Prism.Prism' MetadataKind'Kind MetadataKind'Host
_MetadataKind'Host'
  = Data.ProtoLens.Prism.prism'
      MetadataKind'Host'
      (\ p__
         -> case p__ of
              (MetadataKind'Host' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
      -}
data MetadataKind'Cluster
  = MetadataKind'Cluster'_constructor {_MetadataKind'Cluster'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MetadataKind'Cluster where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MetadataKind'Cluster where
  messageName _
    = Data.Text.pack "envoy.type.metadata.v3.MetadataKind.Cluster"
  packedMessageDescriptor _
    = "\n\
      \\aCluster:2\154\197\136\RS-\n\
      \+envoy.type.metadata.v2.MetadataKind.Cluster"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MetadataKind'Cluster'_unknownFields
        (\ x__ y__ -> x__ {_MetadataKind'Cluster'_unknownFields = y__})
  defMessage
    = MetadataKind'Cluster'_constructor
        {_MetadataKind'Cluster'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MetadataKind'Cluster
          -> Data.ProtoLens.Encoding.Bytes.Parser MetadataKind'Cluster
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
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Cluster"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MetadataKind'Cluster where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MetadataKind'Cluster'_unknownFields x__) ()
{- | Fields :
      -}
data MetadataKind'Host
  = MetadataKind'Host'_constructor {_MetadataKind'Host'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MetadataKind'Host where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MetadataKind'Host where
  messageName _
    = Data.Text.pack "envoy.type.metadata.v3.MetadataKind.Host"
  packedMessageDescriptor _
    = "\n\
      \\EOTHost:/\154\197\136\RS*\n\
      \(envoy.type.metadata.v2.MetadataKind.Host"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MetadataKind'Host'_unknownFields
        (\ x__ y__ -> x__ {_MetadataKind'Host'_unknownFields = y__})
  defMessage
    = MetadataKind'Host'_constructor
        {_MetadataKind'Host'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MetadataKind'Host
          -> Data.ProtoLens.Encoding.Bytes.Parser MetadataKind'Host
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
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Host"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MetadataKind'Host where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MetadataKind'Host'_unknownFields x__) ()
{- | Fields :
      -}
data MetadataKind'Request
  = MetadataKind'Request'_constructor {_MetadataKind'Request'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MetadataKind'Request where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MetadataKind'Request where
  messageName _
    = Data.Text.pack "envoy.type.metadata.v3.MetadataKind.Request"
  packedMessageDescriptor _
    = "\n\
      \\aRequest:2\154\197\136\RS-\n\
      \+envoy.type.metadata.v2.MetadataKind.Request"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MetadataKind'Request'_unknownFields
        (\ x__ y__ -> x__ {_MetadataKind'Request'_unknownFields = y__})
  defMessage
    = MetadataKind'Request'_constructor
        {_MetadataKind'Request'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MetadataKind'Request
          -> Data.ProtoLens.Encoding.Bytes.Parser MetadataKind'Request
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
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Request"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MetadataKind'Request where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MetadataKind'Request'_unknownFields x__) ()
{- | Fields :
      -}
data MetadataKind'Route
  = MetadataKind'Route'_constructor {_MetadataKind'Route'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MetadataKind'Route where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MetadataKind'Route where
  messageName _
    = Data.Text.pack "envoy.type.metadata.v3.MetadataKind.Route"
  packedMessageDescriptor _
    = "\n\
      \\ENQRoute:0\154\197\136\RS+\n\
      \)envoy.type.metadata.v2.MetadataKind.Route"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MetadataKind'Route'_unknownFields
        (\ x__ y__ -> x__ {_MetadataKind'Route'_unknownFields = y__})
  defMessage
    = MetadataKind'Route'_constructor
        {_MetadataKind'Route'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MetadataKind'Route
          -> Data.ProtoLens.Encoding.Bytes.Parser MetadataKind'Route
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
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Route"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MetadataKind'Route where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MetadataKind'Route'_unknownFields x__) ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \%envoy/type/metadata/v3/metadata.proto\DC2\SYNenvoy.type.metadata.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\149\STX\n\
    \\vMetadataKey\DC2\EM\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkeyB\a\250B\EOTr\STX\DLE\SOH\DC2M\n\
    \\EOTpath\CAN\STX \ETX(\v2/.envoy.type.metadata.v3.MetadataKey.PathSegmentR\EOTpathB\b\250B\ENQ\146\SOH\STX\b\SOH\SUBq\n\
    \\vPathSegment\DC2\ESC\n\
    \\ETXkey\CAN\SOH \SOH(\tH\NULR\ETXkeyB\a\250B\EOTr\STX\DLE\SOHB\SO\n\
    \\asegment\DC2\ETX\248B\SOH:5\154\197\136\RS0\n\
    \.envoy.type.metadata.v2.MetadataKey.PathSegment:)\154\197\136\RS$\n\
    \\"envoy.type.metadata.v2.MetadataKey\"\210\EOT\n\
    \\fMetadataKind\DC2H\n\
    \\arequest\CAN\SOH \SOH(\v2,.envoy.type.metadata.v3.MetadataKind.RequestH\NULR\arequest\DC2B\n\
    \\ENQroute\CAN\STX \SOH(\v2*.envoy.type.metadata.v3.MetadataKind.RouteH\NULR\ENQroute\DC2H\n\
    \\acluster\CAN\ETX \SOH(\v2,.envoy.type.metadata.v3.MetadataKind.ClusterH\NULR\acluster\DC2?\n\
    \\EOThost\CAN\EOT \SOH(\v2).envoy.type.metadata.v3.MetadataKind.HostH\NULR\EOThost\SUB=\n\
    \\aRequest:2\154\197\136\RS-\n\
    \+envoy.type.metadata.v2.MetadataKind.Request\SUB9\n\
    \\ENQRoute:0\154\197\136\RS+\n\
    \)envoy.type.metadata.v2.MetadataKind.Route\SUB=\n\
    \\aCluster:2\154\197\136\RS-\n\
    \+envoy.type.metadata.v2.MetadataKind.Cluster\SUB7\n\
    \\EOTHost:/\154\197\136\RS*\n\
    \(envoy.type.metadata.v2.MetadataKind.HostB\v\n\
    \\EOTkind\DC2\ETX\248B\SOH:*\154\197\136\RS%\n\
    \#envoy.type.metadata.v2.MetadataKindB?\n\
    \$io.envoyproxy.envoy.type.metadata.v3B\rMetadataProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\155\ETB\n\
    \\ACK\DC2\EOT\NUL\NULq\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\US\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL=\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NUL=\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL.\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL.\n\
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
    \\154\EOT\n\
    \\STX\EOT\NUL\DC2\EOT&\NULB\SOH\SUB\238\ETX MetadataKey provides a general interface using `key` and `path` to retrieve value from\n\
    \ :ref:`Metadata <envoy_v3_api_msg_config.core.v3.Metadata>`.\n\
    \\n\
    \ For example, for the following Metadata:\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    filter_metadata:\n\
    \      envoy.xxx:\n\
    \        prop:\n\
    \          foo: bar\n\
    \          xyz:\n\
    \            hello: envoy\n\
    \\n\
    \ The following MetadataKey will retrieve a string value \"bar\" from the Metadata.\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \    key: envoy.xxx\n\
    \    path:\n\
    \    - key: prop\n\
    \    - key: foo\n\
    \\n\
    \2\GS [#protodoc-title: Metadata]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX&\b\DC3\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX'\STXd\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX'\STXd\n\
    \\176\SOH\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT+\STX5\ETX\SUB\161\SOH Specifies the segment in a path to retrieve value from Metadata.\n\
    \ Currently it is only supported to specify the key, i.e. field name, as one segment of a path.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX+\n\
    \\NAK\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT,\EOT-9\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT,\EOT-9\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\b\NUL\DC2\EOT/\EOT4\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\SOH\DC2\ETX/\n\
    \\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\STX\DC2\ETX0\ACK(\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\b\NUL\STX\175\b\DC2\ETX0\ACK(\n\
    \M\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX3\ACK>\SUB> If specified, use the key to retrieve the value in a Struct.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX3\ACK\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX3\r\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX3\DC3\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETX3\NAK=\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\SO\DC2\ETX3\SYN<\n\
    \\149\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX9\STX:\SUB\135\SOH The key name of Metadata to retrieve the Struct from the metadata.\n\
    \ Typically, it represents a builtin subsystem or custom extension.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX9\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX9\t\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX9\SI\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX9\DC19\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX9\DC28\n\
    \\226\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXA\STXM\SUB\212\STX The path to retrieve the Value from the Struct. It can be a prefix or a full path,\n\
    \ e.g. ``[prop, xyz]`` for a struct or ``[prop, foo]`` for a string in the example,\n\
    \ which depends on the particular scenario.\n\
    \\n\
    \ Note: Due to that only the key type segment is supported, the path can not specify a list\n\
    \ unless the list is the last segment.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETXA\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXA\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXA\ETB\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXA\RS\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETXA L\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DC2\DC2\ETXA!K\n\
    \.\n\
    \\STX\EOT\SOH\DC2\EOTE\NULq\SOH\SUB\" Describes what kind of metadata.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXE\b\DC4\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOTF\STXG,\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOTF\STXG,\n\
    \H\n\
    \\EOT\EOT\SOH\ETX\NUL\DC2\EOTJ\STXM\ETX\SUB: Represents dynamic metadata associated with the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\NUL\SOH\DC2\ETXJ\n\
    \\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\NUL\a\DC2\EOTK\EOTL6\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOTK\EOTL6\n\
    \m\n\
    \\EOT\EOT\SOH\ETX\SOH\DC2\EOTP\STXS\ETX\SUB_ Represents metadata from :ref:`the route<envoy_v3_api_field_config.route.v3.Route.metadata>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\SOH\SOH\DC2\ETXP\n\
    \\SI\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\SOH\a\DC2\EOTQ\EOTR4\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\SOH\a\211\136\225\ETX\SOH\DC2\EOTQ\EOTR4\n\
    \|\n\
    \\EOT\EOT\SOH\ETX\STX\DC2\EOTV\STXY\ETX\SUBn Represents metadata from :ref:`the upstream cluster<envoy_v3_api_field_config.cluster.v3.Cluster.metadata>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\STX\SOH\DC2\ETXV\n\
    \\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\STX\a\DC2\EOTW\EOTX6\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\STX\a\211\136\225\ETX\SOH\DC2\EOTW\EOTX6\n\
    \~\n\
    \\EOT\EOT\SOH\ETX\ETX\DC2\EOT]\STX`\ETX\SUBp Represents metadata from :ref:`the upstream\n\
    \ host<envoy_v3_api_field_config.endpoint.v3.LbEndpoint.metadata>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\ETX\SOH\DC2\ETX]\n\
    \\SO\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\ETX\a\DC2\EOT^\EOT_3\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\ETX\a\211\136\225\ETX\SOH\DC2\EOT^\EOT_3\n\
    \\f\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOTb\STXp\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETXb\b\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\STX\DC2\ETXc\EOT&\n\
    \\SO\n\
    \\a\EOT\SOH\b\NUL\STX\175\b\DC2\ETXc\EOT&\n\
    \(\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXf\EOT\CAN\SUB\ESC Request kind of metadata.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXf\EOT\v\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXf\f\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXf\SYN\ETB\n\
    \&\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXi\EOT\DC4\SUB\EM Route kind of metadata.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXi\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXi\n\
    \\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXi\DC2\DC3\n\
    \(\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXl\EOT\CAN\SUB\ESC Cluster kind of metadata.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETXl\EOT\v\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXl\f\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXl\SYN\ETB\n\
    \%\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETXo\EOT\DC2\SUB\CAN Host kind of metadata.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETXo\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETXo\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETXo\DLE\DC1b\ACKproto3"