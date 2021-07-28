{- This file was auto-generated from envoy/type/http/v3/path_transformation.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.Http.V3.PathTransformation (
        PathTransformation(), PathTransformation'Operation(),
        PathTransformation'Operation'OperationSpecifier(..),
        _PathTransformation'Operation'NormalizePathRfc3986,
        _PathTransformation'Operation'MergeSlashes',
        PathTransformation'Operation'MergeSlashes(),
        PathTransformation'Operation'NormalizePathRFC3986()
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
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Type.Http.V3.PathTransformation_Fields.operations' @:: Lens' PathTransformation [PathTransformation'Operation]@
         * 'Proto.Envoy.Type.Http.V3.PathTransformation_Fields.vec'operations' @:: Lens' PathTransformation (Data.Vector.Vector PathTransformation'Operation)@ -}
data PathTransformation
  = PathTransformation'_constructor {_PathTransformation'operations :: !(Data.Vector.Vector PathTransformation'Operation),
                                     _PathTransformation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PathTransformation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PathTransformation "operations" [PathTransformation'Operation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PathTransformation'operations
           (\ x__ y__ -> x__ {_PathTransformation'operations = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField PathTransformation "vec'operations" (Data.Vector.Vector PathTransformation'Operation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PathTransformation'operations
           (\ x__ y__ -> x__ {_PathTransformation'operations = y__}))
        Prelude.id
instance Data.ProtoLens.Message PathTransformation where
  messageName _
    = Data.Text.pack "envoy.type.http.v3.PathTransformation"
  packedMessageDescriptor _
    = "\n\
      \\DC2PathTransformation\DC2P\n\
      \\n\
      \operations\CAN\SOH \ETX(\v20.envoy.type.http.v3.PathTransformation.OperationR\n\
      \operations\SUB\181\STX\n\
      \\tOperation\DC2~\n\
      \\ETBnormalize_path_rfc_3986\CAN\STX \SOH(\v2E.envoy.type.http.v3.PathTransformation.Operation.NormalizePathRFC3986H\NULR\DC4normalizePathRfc3986\DC2d\n\
      \\rmerge_slashes\CAN\ETX \SOH(\v2=.envoy.type.http.v3.PathTransformation.Operation.MergeSlashesH\NULR\fmergeSlashes\SUB\SYN\n\
      \\DC4NormalizePathRFC3986\SUB\SO\n\
      \\fMergeSlashesB\SUB\n\
      \\DC3operation_specifier\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operations"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PathTransformation'Operation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"operations")) ::
              Data.ProtoLens.FieldDescriptor PathTransformation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operations__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PathTransformation'_unknownFields
        (\ x__ y__ -> x__ {_PathTransformation'_unknownFields = y__})
  defMessage
    = PathTransformation'_constructor
        {_PathTransformation'operations = Data.Vector.Generic.empty,
         _PathTransformation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PathTransformation
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld PathTransformation'Operation
             -> Data.ProtoLens.Encoding.Bytes.Parser PathTransformation
        loop x mutable'operations
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'operations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'operations)
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
                              (Data.ProtoLens.Field.field @"vec'operations")
                              frozen'operations
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "operations"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'operations y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'operations
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'operations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'operations)
          "PathTransformation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage
                           _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'operations") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PathTransformation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PathTransformation'_unknownFields x__)
             (Control.DeepSeq.deepseq (_PathTransformation'operations x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Type.Http.V3.PathTransformation_Fields.maybe'operationSpecifier' @:: Lens' PathTransformation'Operation (Prelude.Maybe PathTransformation'Operation'OperationSpecifier)@
         * 'Proto.Envoy.Type.Http.V3.PathTransformation_Fields.maybe'normalizePathRfc3986' @:: Lens' PathTransformation'Operation (Prelude.Maybe PathTransformation'Operation'NormalizePathRFC3986)@
         * 'Proto.Envoy.Type.Http.V3.PathTransformation_Fields.normalizePathRfc3986' @:: Lens' PathTransformation'Operation PathTransformation'Operation'NormalizePathRFC3986@
         * 'Proto.Envoy.Type.Http.V3.PathTransformation_Fields.maybe'mergeSlashes' @:: Lens' PathTransformation'Operation (Prelude.Maybe PathTransformation'Operation'MergeSlashes)@
         * 'Proto.Envoy.Type.Http.V3.PathTransformation_Fields.mergeSlashes' @:: Lens' PathTransformation'Operation PathTransformation'Operation'MergeSlashes@ -}
data PathTransformation'Operation
  = PathTransformation'Operation'_constructor {_PathTransformation'Operation'operationSpecifier :: !(Prelude.Maybe PathTransformation'Operation'OperationSpecifier),
                                               _PathTransformation'Operation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PathTransformation'Operation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data PathTransformation'Operation'OperationSpecifier
  = PathTransformation'Operation'NormalizePathRfc3986 !PathTransformation'Operation'NormalizePathRFC3986 |
    PathTransformation'Operation'MergeSlashes' !PathTransformation'Operation'MergeSlashes
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField PathTransformation'Operation "maybe'operationSpecifier" (Prelude.Maybe PathTransformation'Operation'OperationSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PathTransformation'Operation'operationSpecifier
           (\ x__ y__
              -> x__ {_PathTransformation'Operation'operationSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PathTransformation'Operation "maybe'normalizePathRfc3986" (Prelude.Maybe PathTransformation'Operation'NormalizePathRFC3986) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PathTransformation'Operation'operationSpecifier
           (\ x__ y__
              -> x__ {_PathTransformation'Operation'operationSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PathTransformation'Operation'NormalizePathRfc3986 x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   PathTransformation'Operation'NormalizePathRfc3986 y__))
instance Data.ProtoLens.Field.HasField PathTransformation'Operation "normalizePathRfc3986" PathTransformation'Operation'NormalizePathRFC3986 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PathTransformation'Operation'operationSpecifier
           (\ x__ y__
              -> x__ {_PathTransformation'Operation'operationSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PathTransformation'Operation'NormalizePathRfc3986 x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      PathTransformation'Operation'NormalizePathRfc3986 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PathTransformation'Operation "maybe'mergeSlashes" (Prelude.Maybe PathTransformation'Operation'MergeSlashes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PathTransformation'Operation'operationSpecifier
           (\ x__ y__
              -> x__ {_PathTransformation'Operation'operationSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PathTransformation'Operation'MergeSlashes' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap PathTransformation'Operation'MergeSlashes' y__))
instance Data.ProtoLens.Field.HasField PathTransformation'Operation "mergeSlashes" PathTransformation'Operation'MergeSlashes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PathTransformation'Operation'operationSpecifier
           (\ x__ y__
              -> x__ {_PathTransformation'Operation'operationSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PathTransformation'Operation'MergeSlashes' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap PathTransformation'Operation'MergeSlashes' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message PathTransformation'Operation where
  messageName _
    = Data.Text.pack "envoy.type.http.v3.PathTransformation.Operation"
  packedMessageDescriptor _
    = "\n\
      \\tOperation\DC2~\n\
      \\ETBnormalize_path_rfc_3986\CAN\STX \SOH(\v2E.envoy.type.http.v3.PathTransformation.Operation.NormalizePathRFC3986H\NULR\DC4normalizePathRfc3986\DC2d\n\
      \\rmerge_slashes\CAN\ETX \SOH(\v2=.envoy.type.http.v3.PathTransformation.Operation.MergeSlashesH\NULR\fmergeSlashes\SUB\SYN\n\
      \\DC4NormalizePathRFC3986\SUB\SO\n\
      \\fMergeSlashesB\SUB\n\
      \\DC3operation_specifier\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        normalizePathRfc3986__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "normalize_path_rfc_3986"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PathTransformation'Operation'NormalizePathRFC3986)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'normalizePathRfc3986")) ::
              Data.ProtoLens.FieldDescriptor PathTransformation'Operation
        mergeSlashes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "merge_slashes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PathTransformation'Operation'MergeSlashes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mergeSlashes")) ::
              Data.ProtoLens.FieldDescriptor PathTransformation'Operation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, normalizePathRfc3986__field_descriptor),
           (Data.ProtoLens.Tag 3, mergeSlashes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PathTransformation'Operation'_unknownFields
        (\ x__ y__
           -> x__ {_PathTransformation'Operation'_unknownFields = y__})
  defMessage
    = PathTransformation'Operation'_constructor
        {_PathTransformation'Operation'operationSpecifier = Prelude.Nothing,
         _PathTransformation'Operation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PathTransformation'Operation
          -> Data.ProtoLens.Encoding.Bytes.Parser PathTransformation'Operation
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "normalize_path_rfc_3986"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"normalizePathRfc3986") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "merge_slashes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"mergeSlashes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Operation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'operationSpecifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (PathTransformation'Operation'NormalizePathRfc3986 v))
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
                (Prelude.Just (PathTransformation'Operation'MergeSlashes' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
instance Control.DeepSeq.NFData PathTransformation'Operation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PathTransformation'Operation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PathTransformation'Operation'operationSpecifier x__) ())
instance Control.DeepSeq.NFData PathTransformation'Operation'OperationSpecifier where
  rnf (PathTransformation'Operation'NormalizePathRfc3986 x__)
    = Control.DeepSeq.rnf x__
  rnf (PathTransformation'Operation'MergeSlashes' x__)
    = Control.DeepSeq.rnf x__
_PathTransformation'Operation'NormalizePathRfc3986 ::
  Data.ProtoLens.Prism.Prism' PathTransformation'Operation'OperationSpecifier PathTransformation'Operation'NormalizePathRFC3986
_PathTransformation'Operation'NormalizePathRfc3986
  = Data.ProtoLens.Prism.prism'
      PathTransformation'Operation'NormalizePathRfc3986
      (\ p__
         -> case p__ of
              (PathTransformation'Operation'NormalizePathRfc3986 p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PathTransformation'Operation'MergeSlashes' ::
  Data.ProtoLens.Prism.Prism' PathTransformation'Operation'OperationSpecifier PathTransformation'Operation'MergeSlashes
_PathTransformation'Operation'MergeSlashes'
  = Data.ProtoLens.Prism.prism'
      PathTransformation'Operation'MergeSlashes'
      (\ p__
         -> case p__ of
              (PathTransformation'Operation'MergeSlashes' p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
      -}
data PathTransformation'Operation'MergeSlashes
  = PathTransformation'Operation'MergeSlashes'_constructor {_PathTransformation'Operation'MergeSlashes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PathTransformation'Operation'MergeSlashes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message PathTransformation'Operation'MergeSlashes where
  messageName _
    = Data.Text.pack
        "envoy.type.http.v3.PathTransformation.Operation.MergeSlashes"
  packedMessageDescriptor _
    = "\n\
      \\fMergeSlashes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PathTransformation'Operation'MergeSlashes'_unknownFields
        (\ x__ y__
           -> x__
                {_PathTransformation'Operation'MergeSlashes'_unknownFields = y__})
  defMessage
    = PathTransformation'Operation'MergeSlashes'_constructor
        {_PathTransformation'Operation'MergeSlashes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PathTransformation'Operation'MergeSlashes
          -> Data.ProtoLens.Encoding.Bytes.Parser PathTransformation'Operation'MergeSlashes
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
          (do loop Data.ProtoLens.defMessage) "MergeSlashes"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData PathTransformation'Operation'MergeSlashes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PathTransformation'Operation'MergeSlashes'_unknownFields x__) ()
{- | Fields :
      -}
data PathTransformation'Operation'NormalizePathRFC3986
  = PathTransformation'Operation'NormalizePathRFC3986'_constructor {_PathTransformation'Operation'NormalizePathRFC3986'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PathTransformation'Operation'NormalizePathRFC3986 where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message PathTransformation'Operation'NormalizePathRFC3986 where
  messageName _
    = Data.Text.pack
        "envoy.type.http.v3.PathTransformation.Operation.NormalizePathRFC3986"
  packedMessageDescriptor _
    = "\n\
      \\DC4NormalizePathRFC3986"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PathTransformation'Operation'NormalizePathRFC3986'_unknownFields
        (\ x__ y__
           -> x__
                {_PathTransformation'Operation'NormalizePathRFC3986'_unknownFields = y__})
  defMessage
    = PathTransformation'Operation'NormalizePathRFC3986'_constructor
        {_PathTransformation'Operation'NormalizePathRFC3986'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PathTransformation'Operation'NormalizePathRFC3986
          -> Data.ProtoLens.Encoding.Bytes.Parser PathTransformation'Operation'NormalizePathRFC3986
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
          (do loop Data.ProtoLens.defMessage) "NormalizePathRFC3986"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData PathTransformation'Operation'NormalizePathRFC3986 where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PathTransformation'Operation'NormalizePathRFC3986'_unknownFields
                x__)
             ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \,envoy/type/http/v3/path_transformation.proto\DC2\DC2envoy.type.http.v3\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\158\ETX\n\
    \\DC2PathTransformation\DC2P\n\
    \\n\
    \operations\CAN\SOH \ETX(\v20.envoy.type.http.v3.PathTransformation.OperationR\n\
    \operations\SUB\181\STX\n\
    \\tOperation\DC2~\n\
    \\ETBnormalize_path_rfc_3986\CAN\STX \SOH(\v2E.envoy.type.http.v3.PathTransformation.Operation.NormalizePathRFC3986H\NULR\DC4normalizePathRfc3986\DC2d\n\
    \\rmerge_slashes\CAN\ETX \SOH(\v2=.envoy.type.http.v3.PathTransformation.Operation.MergeSlashesH\NULR\fmergeSlashes\SUB\SYN\n\
    \\DC4NormalizePathRFC3986\SUB\SO\n\
    \\fMergeSlashesB\SUB\n\
    \\DC3operation_specifier\DC2\ETX\248B\SOHBE\n\
    \ io.envoyproxy.envoy.type.http.v3B\ETBPathTransformationProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\152\DC1\n\
    \\ACK\DC2\EOT\NUL\NUL8\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL9\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\a\NUL9\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL8\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\b\NUL8\n\
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
    \\144\ETX\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL8\SOH2- [#protodoc-title: Path Transformations API]\n\
    \2\212\STX PathTransformation defines an API to apply a sequence of operations that can be used to alter\n\
    \ text before it is used for matching or routing. Multiple actions can be applied in the same\n\
    \ Transformation, forming a sequential pipeline. The transformations will be performed in the order\n\
    \ that they appear.\n\
    \\n\
    \ This API is a work in progress.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\SUB\n\
    \2\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\ETB\STX4\ETX\SUB$ A type of operation to alter text.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\ETB\n\
    \\DC3\n\
    \\149\EOT\n\
    \\ACK\EOT\NUL\ETX\NUL\ETX\NUL\DC2\EOT\US\EOT \ENQ\SUB\132\EOT Should text be normalized according to RFC 3986? This typically is used for path headers\n\
    \ before any processing of requests by HTTP filters or routing. This applies percent-encoded\n\
    \ normalization and path segment normalization. Fails on characters disallowed in URLs\n\
    \ (e.g. NULLs). See `Normalization and Comparison\n\
    \ <https://tools.ietf.org/html/rfc3986#section-6>`_ for details of normalization. Note that\n\
    \ this options does not perform `case normalization\n\
    \ <https://tools.ietf.org/html/rfc3986#section-6.2.2.1>`_\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\ETX\NUL\SOH\DC2\ETX\US\f \n\
    \\187\EOT\n\
    \\ACK\EOT\NUL\ETX\NUL\ETX\SOH\DC2\EOT(\EOT)\ENQ\SUB\170\EOT Determines if adjacent slashes are merged into one. A common use case is for a request path\n\
    \ header. Using this option in `:ref: PathNormalizationOptions\n\
    \ <envoy_v3_api_msg_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.PathNormalizationOptions>`\n\
    \ will allow incoming requests with path `//dir///file` to match against route with `prefix`\n\
    \ match set to `/dir`. When using for header transformations, note that slash merging is not\n\
    \ part of `HTTP spec <https://tools.ietf.org/html/rfc3986>`_ and is provided for convenience.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\ETX\SOH\SOH\DC2\ETX(\f\CAN\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\b\NUL\DC2\EOT+\EOT3\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\SOH\DC2\ETX+\n\
    \\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\STX\DC2\ETX,\ACK(\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\b\NUL\STX\175\b\DC2\ETX,\ACK(\n\
    \8\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX/\ACK7\SUB) Enable path normalization per RFC 3986.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX/\ACK\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX/\ESC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX/56\n\
    \1\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX2\ACK%\SUB\" Enable merging adjacent slashes.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX2\ACK\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX2\DC3 \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX2#$\n\
    \n\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX7\STX$\SUBa A list of operations to apply. Transformations will be performed in the order that they appear.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX7\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX7\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX7\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX7\"#b\ACKproto3"