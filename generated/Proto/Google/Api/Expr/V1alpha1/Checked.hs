{- This file was auto-generated from google/api/expr/v1alpha1/checked.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Google.Api.Expr.V1alpha1.Checked (
        CheckedExpr(), CheckedExpr'ReferenceMapEntry(),
        CheckedExpr'TypeMapEntry(), Decl(), Decl'DeclKind(..), _Decl'Ident,
        _Decl'Function, Decl'FunctionDecl(), Decl'FunctionDecl'Overload(),
        Decl'IdentDecl(), Reference(), Type(), Type'TypeKind(..),
        _Type'Dyn, _Type'Null, _Type'Primitive, _Type'Wrapper,
        _Type'WellKnown, _Type'ListType', _Type'MapType', _Type'Function,
        _Type'MessageType, _Type'TypeParam, _Type'Type, _Type'Error,
        _Type'AbstractType', Type'AbstractType(), Type'FunctionType(),
        Type'ListType(), Type'MapType(), Type'PrimitiveType(..),
        Type'PrimitiveType(), Type'PrimitiveType'UnrecognizedValue,
        Type'WellKnownType(..), Type'WellKnownType(),
        Type'WellKnownType'UnrecognizedValue
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
import qualified Proto.Google.Api.Expr.V1alpha1.Syntax
import qualified Proto.Google.Protobuf.Empty
import qualified Proto.Google.Protobuf.Struct
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.referenceMap' @:: Lens' CheckedExpr (Data.Map.Map Data.Int.Int64 Reference)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.typeMap' @:: Lens' CheckedExpr (Data.Map.Map Data.Int.Int64 Type)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.sourceInfo' @:: Lens' CheckedExpr Proto.Google.Api.Expr.V1alpha1.Syntax.SourceInfo@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'sourceInfo' @:: Lens' CheckedExpr (Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Syntax.SourceInfo)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.expr' @:: Lens' CheckedExpr Proto.Google.Api.Expr.V1alpha1.Syntax.Expr@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'expr' @:: Lens' CheckedExpr (Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Syntax.Expr)@ -}
data CheckedExpr
  = CheckedExpr'_constructor {_CheckedExpr'referenceMap :: !(Data.Map.Map Data.Int.Int64 Reference),
                              _CheckedExpr'typeMap :: !(Data.Map.Map Data.Int.Int64 Type),
                              _CheckedExpr'sourceInfo :: !(Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Syntax.SourceInfo),
                              _CheckedExpr'expr :: !(Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Syntax.Expr),
                              _CheckedExpr'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CheckedExpr where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CheckedExpr "referenceMap" (Data.Map.Map Data.Int.Int64 Reference) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckedExpr'referenceMap
           (\ x__ y__ -> x__ {_CheckedExpr'referenceMap = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CheckedExpr "typeMap" (Data.Map.Map Data.Int.Int64 Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckedExpr'typeMap
           (\ x__ y__ -> x__ {_CheckedExpr'typeMap = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CheckedExpr "sourceInfo" Proto.Google.Api.Expr.V1alpha1.Syntax.SourceInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckedExpr'sourceInfo
           (\ x__ y__ -> x__ {_CheckedExpr'sourceInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CheckedExpr "maybe'sourceInfo" (Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Syntax.SourceInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckedExpr'sourceInfo
           (\ x__ y__ -> x__ {_CheckedExpr'sourceInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CheckedExpr "expr" Proto.Google.Api.Expr.V1alpha1.Syntax.Expr where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckedExpr'expr (\ x__ y__ -> x__ {_CheckedExpr'expr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CheckedExpr "maybe'expr" (Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Syntax.Expr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckedExpr'expr (\ x__ y__ -> x__ {_CheckedExpr'expr = y__}))
        Prelude.id
instance Data.ProtoLens.Message CheckedExpr where
  messageName _
    = Data.Text.pack "google.api.expr.v1alpha1.CheckedExpr"
  packedMessageDescriptor _
    = "\n\
      \\vCheckedExpr\DC2\\\n\
      \\rreference_map\CAN\STX \ETX(\v27.google.api.expr.v1alpha1.CheckedExpr.ReferenceMapEntryR\freferenceMap\DC2M\n\
      \\btype_map\CAN\ETX \ETX(\v22.google.api.expr.v1alpha1.CheckedExpr.TypeMapEntryR\atypeMap\DC2E\n\
      \\vsource_info\CAN\ENQ \SOH(\v2$.google.api.expr.v1alpha1.SourceInfoR\n\
      \sourceInfo\DC22\n\
      \\EOTexpr\CAN\EOT \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\EOTexpr\SUBd\n\
      \\DC1ReferenceMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC29\n\
      \\ENQvalue\CAN\STX \SOH(\v2#.google.api.expr.v1alpha1.ReferenceR\ENQvalue:\STX8\SOH\SUBZ\n\
      \\fTypeMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC24\n\
      \\ENQvalue\CAN\STX \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        referenceMap__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reference_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CheckedExpr'ReferenceMapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"referenceMap")) ::
              Data.ProtoLens.FieldDescriptor CheckedExpr
        typeMap__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CheckedExpr'TypeMapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"typeMap")) ::
              Data.ProtoLens.FieldDescriptor CheckedExpr
        sourceInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Api.Expr.V1alpha1.Syntax.SourceInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sourceInfo")) ::
              Data.ProtoLens.FieldDescriptor CheckedExpr
        expr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expr"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Api.Expr.V1alpha1.Syntax.Expr)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'expr")) ::
              Data.ProtoLens.FieldDescriptor CheckedExpr
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, referenceMap__field_descriptor),
           (Data.ProtoLens.Tag 3, typeMap__field_descriptor),
           (Data.ProtoLens.Tag 5, sourceInfo__field_descriptor),
           (Data.ProtoLens.Tag 4, expr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CheckedExpr'_unknownFields
        (\ x__ y__ -> x__ {_CheckedExpr'_unknownFields = y__})
  defMessage
    = CheckedExpr'_constructor
        {_CheckedExpr'referenceMap = Data.Map.empty,
         _CheckedExpr'typeMap = Data.Map.empty,
         _CheckedExpr'sourceInfo = Prelude.Nothing,
         _CheckedExpr'expr = Prelude.Nothing,
         _CheckedExpr'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CheckedExpr -> Data.ProtoLens.Encoding.Bytes.Parser CheckedExpr
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
                          -> do !(entry :: CheckedExpr'ReferenceMapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                               (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                                                     (Prelude.fromIntegral
                                                                                        len)
                                                                                     Data.ProtoLens.parseMessage)
                                                                               "reference_map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"referenceMap")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        26
                          -> do !(entry :: CheckedExpr'TypeMapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                          (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                              Data.ProtoLens.Encoding.Bytes.isolate
                                                                                (Prelude.fromIntegral
                                                                                   len)
                                                                                Data.ProtoLens.parseMessage)
                                                                          "type_map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"typeMap")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "source_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sourceInfo") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "expr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"expr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CheckedExpr"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.Monoid.mconcat
                (Prelude.map
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
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"key")
                                 (Prelude.fst _v)
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"value")
                                    (Prelude.snd _v)
                                    (Data.ProtoLens.defMessage :: CheckedExpr'ReferenceMapEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"referenceMap") _x))))
             ((Data.Monoid.<>)
                (Data.Monoid.mconcat
                   (Prelude.map
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"key")
                                    (Prelude.fst _v)
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"value")
                                       (Prelude.snd _v)
                                       (Data.ProtoLens.defMessage :: CheckedExpr'TypeMapEntry)))))
                      (Data.Map.toList
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"typeMap") _x))))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'sourceInfo") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'expr") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage
                                   _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData CheckedExpr where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CheckedExpr'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CheckedExpr'referenceMap x__)
                (Control.DeepSeq.deepseq
                   (_CheckedExpr'typeMap x__)
                   (Control.DeepSeq.deepseq
                      (_CheckedExpr'sourceInfo x__)
                      (Control.DeepSeq.deepseq (_CheckedExpr'expr x__) ()))))
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.key' @:: Lens' CheckedExpr'ReferenceMapEntry Data.Int.Int64@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.value' @:: Lens' CheckedExpr'ReferenceMapEntry Reference@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'value' @:: Lens' CheckedExpr'ReferenceMapEntry (Prelude.Maybe Reference)@ -}
data CheckedExpr'ReferenceMapEntry
  = CheckedExpr'ReferenceMapEntry'_constructor {_CheckedExpr'ReferenceMapEntry'key :: !Data.Int.Int64,
                                                _CheckedExpr'ReferenceMapEntry'value :: !(Prelude.Maybe Reference),
                                                _CheckedExpr'ReferenceMapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CheckedExpr'ReferenceMapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CheckedExpr'ReferenceMapEntry "key" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckedExpr'ReferenceMapEntry'key
           (\ x__ y__ -> x__ {_CheckedExpr'ReferenceMapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CheckedExpr'ReferenceMapEntry "value" Reference where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckedExpr'ReferenceMapEntry'value
           (\ x__ y__ -> x__ {_CheckedExpr'ReferenceMapEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CheckedExpr'ReferenceMapEntry "maybe'value" (Prelude.Maybe Reference) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckedExpr'ReferenceMapEntry'value
           (\ x__ y__ -> x__ {_CheckedExpr'ReferenceMapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message CheckedExpr'ReferenceMapEntry where
  messageName _
    = Data.Text.pack
        "google.api.expr.v1alpha1.CheckedExpr.ReferenceMapEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC1ReferenceMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC29\n\
      \\ENQvalue\CAN\STX \SOH(\v2#.google.api.expr.v1alpha1.ReferenceR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor CheckedExpr'ReferenceMapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Reference)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor CheckedExpr'ReferenceMapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CheckedExpr'ReferenceMapEntry'_unknownFields
        (\ x__ y__
           -> x__ {_CheckedExpr'ReferenceMapEntry'_unknownFields = y__})
  defMessage
    = CheckedExpr'ReferenceMapEntry'_constructor
        {_CheckedExpr'ReferenceMapEntry'key = Data.ProtoLens.fieldDefault,
         _CheckedExpr'ReferenceMapEntry'value = Prelude.Nothing,
         _CheckedExpr'ReferenceMapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CheckedExpr'ReferenceMapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser CheckedExpr'ReferenceMapEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ReferenceMapEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CheckedExpr'ReferenceMapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CheckedExpr'ReferenceMapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CheckedExpr'ReferenceMapEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_CheckedExpr'ReferenceMapEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.key' @:: Lens' CheckedExpr'TypeMapEntry Data.Int.Int64@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.value' @:: Lens' CheckedExpr'TypeMapEntry Type@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'value' @:: Lens' CheckedExpr'TypeMapEntry (Prelude.Maybe Type)@ -}
data CheckedExpr'TypeMapEntry
  = CheckedExpr'TypeMapEntry'_constructor {_CheckedExpr'TypeMapEntry'key :: !Data.Int.Int64,
                                           _CheckedExpr'TypeMapEntry'value :: !(Prelude.Maybe Type),
                                           _CheckedExpr'TypeMapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CheckedExpr'TypeMapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CheckedExpr'TypeMapEntry "key" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckedExpr'TypeMapEntry'key
           (\ x__ y__ -> x__ {_CheckedExpr'TypeMapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CheckedExpr'TypeMapEntry "value" Type where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckedExpr'TypeMapEntry'value
           (\ x__ y__ -> x__ {_CheckedExpr'TypeMapEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CheckedExpr'TypeMapEntry "maybe'value" (Prelude.Maybe Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CheckedExpr'TypeMapEntry'value
           (\ x__ y__ -> x__ {_CheckedExpr'TypeMapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message CheckedExpr'TypeMapEntry where
  messageName _
    = Data.Text.pack
        "google.api.expr.v1alpha1.CheckedExpr.TypeMapEntry"
  packedMessageDescriptor _
    = "\n\
      \\fTypeMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC24\n\
      \\ENQvalue\CAN\STX \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor CheckedExpr'TypeMapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Type)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor CheckedExpr'TypeMapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CheckedExpr'TypeMapEntry'_unknownFields
        (\ x__ y__ -> x__ {_CheckedExpr'TypeMapEntry'_unknownFields = y__})
  defMessage
    = CheckedExpr'TypeMapEntry'_constructor
        {_CheckedExpr'TypeMapEntry'key = Data.ProtoLens.fieldDefault,
         _CheckedExpr'TypeMapEntry'value = Prelude.Nothing,
         _CheckedExpr'TypeMapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CheckedExpr'TypeMapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser CheckedExpr'TypeMapEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TypeMapEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CheckedExpr'TypeMapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CheckedExpr'TypeMapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CheckedExpr'TypeMapEntry'key x__)
                (Control.DeepSeq.deepseq (_CheckedExpr'TypeMapEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.name' @:: Lens' Decl Data.Text.Text@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'declKind' @:: Lens' Decl (Prelude.Maybe Decl'DeclKind)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'ident' @:: Lens' Decl (Prelude.Maybe Decl'IdentDecl)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.ident' @:: Lens' Decl Decl'IdentDecl@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'function' @:: Lens' Decl (Prelude.Maybe Decl'FunctionDecl)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.function' @:: Lens' Decl Decl'FunctionDecl@ -}
data Decl
  = Decl'_constructor {_Decl'name :: !Data.Text.Text,
                       _Decl'declKind :: !(Prelude.Maybe Decl'DeclKind),
                       _Decl'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Decl where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Decl'DeclKind
  = Decl'Ident !Decl'IdentDecl | Decl'Function !Decl'FunctionDecl
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Decl "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'name (\ x__ y__ -> x__ {_Decl'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Decl "maybe'declKind" (Prelude.Maybe Decl'DeclKind) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'declKind (\ x__ y__ -> x__ {_Decl'declKind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Decl "maybe'ident" (Prelude.Maybe Decl'IdentDecl) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'declKind (\ x__ y__ -> x__ {_Decl'declKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Decl'Ident x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Decl'Ident y__))
instance Data.ProtoLens.Field.HasField Decl "ident" Decl'IdentDecl where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'declKind (\ x__ y__ -> x__ {_Decl'declKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Decl'Ident x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Decl'Ident y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Decl "maybe'function" (Prelude.Maybe Decl'FunctionDecl) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'declKind (\ x__ y__ -> x__ {_Decl'declKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Decl'Function x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Decl'Function y__))
instance Data.ProtoLens.Field.HasField Decl "function" Decl'FunctionDecl where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'declKind (\ x__ y__ -> x__ {_Decl'declKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Decl'Function x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Decl'Function y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Decl where
  messageName _ = Data.Text.pack "google.api.expr.v1alpha1.Decl"
  packedMessageDescriptor _
    = "\n\
      \\EOTDecl\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2@\n\
      \\ENQident\CAN\STX \SOH(\v2(.google.api.expr.v1alpha1.Decl.IdentDeclH\NULR\ENQident\DC2I\n\
      \\bfunction\CAN\ETX \SOH(\v2+.google.api.expr.v1alpha1.Decl.FunctionDeclH\NULR\bfunction\SUB\139\SOH\n\
      \\tIdentDecl\DC22\n\
      \\EOTtype\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\EOTtype\DC28\n\
      \\ENQvalue\CAN\STX \SOH(\v2\".google.api.expr.v1alpha1.ConstantR\ENQvalue\DC2\DLE\n\
      \\ETXdoc\CAN\ETX \SOH(\tR\ETXdoc\SUB\238\STX\n\
      \\fFunctionDecl\DC2R\n\
      \\toverloads\CAN\SOH \ETX(\v24.google.api.expr.v1alpha1.Decl.FunctionDecl.OverloadR\toverloads\SUB\137\STX\n\
      \\bOverload\DC2\US\n\
      \\voverload_id\CAN\SOH \SOH(\tR\n\
      \overloadId\DC26\n\
      \\ACKparams\CAN\STX \ETX(\v2\RS.google.api.expr.v1alpha1.TypeR\ACKparams\DC2\US\n\
      \\vtype_params\CAN\ETX \ETX(\tR\n\
      \typeParams\DC2?\n\
      \\vresult_type\CAN\EOT \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\n\
      \resultType\DC20\n\
      \\DC4is_instance_function\CAN\ENQ \SOH(\bR\DC2isInstanceFunction\DC2\DLE\n\
      \\ETXdoc\CAN\ACK \SOH(\tR\ETXdocB\v\n\
      \\tdecl_kind"
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
              Data.ProtoLens.FieldDescriptor Decl
        ident__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ident"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Decl'IdentDecl)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ident")) ::
              Data.ProtoLens.FieldDescriptor Decl
        function__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "function"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Decl'FunctionDecl)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'function")) ::
              Data.ProtoLens.FieldDescriptor Decl
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, ident__field_descriptor),
           (Data.ProtoLens.Tag 3, function__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Decl'_unknownFields
        (\ x__ y__ -> x__ {_Decl'_unknownFields = y__})
  defMessage
    = Decl'_constructor
        {_Decl'name = Data.ProtoLens.fieldDefault,
         _Decl'declKind = Prelude.Nothing, _Decl'_unknownFields = []}
  parseMessage
    = let
        loop :: Decl -> Data.ProtoLens.Encoding.Bytes.Parser Decl
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ident"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ident") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "function"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"function") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Decl"
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
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'declKind") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (Decl'Ident v))
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
                   (Prelude.Just (Decl'Function v))
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
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Decl where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Decl'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Decl'name x__) (Control.DeepSeq.deepseq (_Decl'declKind x__) ()))
instance Control.DeepSeq.NFData Decl'DeclKind where
  rnf (Decl'Ident x__) = Control.DeepSeq.rnf x__
  rnf (Decl'Function x__) = Control.DeepSeq.rnf x__
_Decl'Ident ::
  Data.ProtoLens.Prism.Prism' Decl'DeclKind Decl'IdentDecl
_Decl'Ident
  = Data.ProtoLens.Prism.prism'
      Decl'Ident
      (\ p__
         -> case p__ of
              (Decl'Ident p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Decl'Function ::
  Data.ProtoLens.Prism.Prism' Decl'DeclKind Decl'FunctionDecl
_Decl'Function
  = Data.ProtoLens.Prism.prism'
      Decl'Function
      (\ p__
         -> case p__ of
              (Decl'Function p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.overloads' @:: Lens' Decl'FunctionDecl [Decl'FunctionDecl'Overload]@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.vec'overloads' @:: Lens' Decl'FunctionDecl (Data.Vector.Vector Decl'FunctionDecl'Overload)@ -}
data Decl'FunctionDecl
  = Decl'FunctionDecl'_constructor {_Decl'FunctionDecl'overloads :: !(Data.Vector.Vector Decl'FunctionDecl'Overload),
                                    _Decl'FunctionDecl'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Decl'FunctionDecl where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Decl'FunctionDecl "overloads" [Decl'FunctionDecl'Overload] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'FunctionDecl'overloads
           (\ x__ y__ -> x__ {_Decl'FunctionDecl'overloads = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Decl'FunctionDecl "vec'overloads" (Data.Vector.Vector Decl'FunctionDecl'Overload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'FunctionDecl'overloads
           (\ x__ y__ -> x__ {_Decl'FunctionDecl'overloads = y__}))
        Prelude.id
instance Data.ProtoLens.Message Decl'FunctionDecl where
  messageName _
    = Data.Text.pack "google.api.expr.v1alpha1.Decl.FunctionDecl"
  packedMessageDescriptor _
    = "\n\
      \\fFunctionDecl\DC2R\n\
      \\toverloads\CAN\SOH \ETX(\v24.google.api.expr.v1alpha1.Decl.FunctionDecl.OverloadR\toverloads\SUB\137\STX\n\
      \\bOverload\DC2\US\n\
      \\voverload_id\CAN\SOH \SOH(\tR\n\
      \overloadId\DC26\n\
      \\ACKparams\CAN\STX \ETX(\v2\RS.google.api.expr.v1alpha1.TypeR\ACKparams\DC2\US\n\
      \\vtype_params\CAN\ETX \ETX(\tR\n\
      \typeParams\DC2?\n\
      \\vresult_type\CAN\EOT \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\n\
      \resultType\DC20\n\
      \\DC4is_instance_function\CAN\ENQ \SOH(\bR\DC2isInstanceFunction\DC2\DLE\n\
      \\ETXdoc\CAN\ACK \SOH(\tR\ETXdoc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        overloads__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "overloads"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Decl'FunctionDecl'Overload)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"overloads")) ::
              Data.ProtoLens.FieldDescriptor Decl'FunctionDecl
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, overloads__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Decl'FunctionDecl'_unknownFields
        (\ x__ y__ -> x__ {_Decl'FunctionDecl'_unknownFields = y__})
  defMessage
    = Decl'FunctionDecl'_constructor
        {_Decl'FunctionDecl'overloads = Data.Vector.Generic.empty,
         _Decl'FunctionDecl'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Decl'FunctionDecl
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Decl'FunctionDecl'Overload
             -> Data.ProtoLens.Encoding.Bytes.Parser Decl'FunctionDecl
        loop x mutable'overloads
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'overloads <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'overloads)
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
                              (Data.ProtoLens.Field.field @"vec'overloads") frozen'overloads x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "overloads"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'overloads y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'overloads
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'overloads <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'overloads)
          "FunctionDecl"
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
                   (Data.ProtoLens.Field.field @"vec'overloads") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Decl'FunctionDecl where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Decl'FunctionDecl'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Decl'FunctionDecl'overloads x__) ())
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.overloadId' @:: Lens' Decl'FunctionDecl'Overload Data.Text.Text@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.params' @:: Lens' Decl'FunctionDecl'Overload [Type]@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.vec'params' @:: Lens' Decl'FunctionDecl'Overload (Data.Vector.Vector Type)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.typeParams' @:: Lens' Decl'FunctionDecl'Overload [Data.Text.Text]@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.vec'typeParams' @:: Lens' Decl'FunctionDecl'Overload (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.resultType' @:: Lens' Decl'FunctionDecl'Overload Type@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'resultType' @:: Lens' Decl'FunctionDecl'Overload (Prelude.Maybe Type)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.isInstanceFunction' @:: Lens' Decl'FunctionDecl'Overload Prelude.Bool@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.doc' @:: Lens' Decl'FunctionDecl'Overload Data.Text.Text@ -}
data Decl'FunctionDecl'Overload
  = Decl'FunctionDecl'Overload'_constructor {_Decl'FunctionDecl'Overload'overloadId :: !Data.Text.Text,
                                             _Decl'FunctionDecl'Overload'params :: !(Data.Vector.Vector Type),
                                             _Decl'FunctionDecl'Overload'typeParams :: !(Data.Vector.Vector Data.Text.Text),
                                             _Decl'FunctionDecl'Overload'resultType :: !(Prelude.Maybe Type),
                                             _Decl'FunctionDecl'Overload'isInstanceFunction :: !Prelude.Bool,
                                             _Decl'FunctionDecl'Overload'doc :: !Data.Text.Text,
                                             _Decl'FunctionDecl'Overload'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Decl'FunctionDecl'Overload where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Decl'FunctionDecl'Overload "overloadId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'FunctionDecl'Overload'overloadId
           (\ x__ y__ -> x__ {_Decl'FunctionDecl'Overload'overloadId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Decl'FunctionDecl'Overload "params" [Type] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'FunctionDecl'Overload'params
           (\ x__ y__ -> x__ {_Decl'FunctionDecl'Overload'params = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Decl'FunctionDecl'Overload "vec'params" (Data.Vector.Vector Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'FunctionDecl'Overload'params
           (\ x__ y__ -> x__ {_Decl'FunctionDecl'Overload'params = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Decl'FunctionDecl'Overload "typeParams" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'FunctionDecl'Overload'typeParams
           (\ x__ y__ -> x__ {_Decl'FunctionDecl'Overload'typeParams = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Decl'FunctionDecl'Overload "vec'typeParams" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'FunctionDecl'Overload'typeParams
           (\ x__ y__ -> x__ {_Decl'FunctionDecl'Overload'typeParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Decl'FunctionDecl'Overload "resultType" Type where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'FunctionDecl'Overload'resultType
           (\ x__ y__ -> x__ {_Decl'FunctionDecl'Overload'resultType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Decl'FunctionDecl'Overload "maybe'resultType" (Prelude.Maybe Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'FunctionDecl'Overload'resultType
           (\ x__ y__ -> x__ {_Decl'FunctionDecl'Overload'resultType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Decl'FunctionDecl'Overload "isInstanceFunction" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'FunctionDecl'Overload'isInstanceFunction
           (\ x__ y__
              -> x__ {_Decl'FunctionDecl'Overload'isInstanceFunction = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Decl'FunctionDecl'Overload "doc" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'FunctionDecl'Overload'doc
           (\ x__ y__ -> x__ {_Decl'FunctionDecl'Overload'doc = y__}))
        Prelude.id
instance Data.ProtoLens.Message Decl'FunctionDecl'Overload where
  messageName _
    = Data.Text.pack
        "google.api.expr.v1alpha1.Decl.FunctionDecl.Overload"
  packedMessageDescriptor _
    = "\n\
      \\bOverload\DC2\US\n\
      \\voverload_id\CAN\SOH \SOH(\tR\n\
      \overloadId\DC26\n\
      \\ACKparams\CAN\STX \ETX(\v2\RS.google.api.expr.v1alpha1.TypeR\ACKparams\DC2\US\n\
      \\vtype_params\CAN\ETX \ETX(\tR\n\
      \typeParams\DC2?\n\
      \\vresult_type\CAN\EOT \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\n\
      \resultType\DC20\n\
      \\DC4is_instance_function\CAN\ENQ \SOH(\bR\DC2isInstanceFunction\DC2\DLE\n\
      \\ETXdoc\CAN\ACK \SOH(\tR\ETXdoc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        overloadId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "overload_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"overloadId")) ::
              Data.ProtoLens.FieldDescriptor Decl'FunctionDecl'Overload
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Type)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"params")) ::
              Data.ProtoLens.FieldDescriptor Decl'FunctionDecl'Overload
        typeParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type_params"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"typeParams")) ::
              Data.ProtoLens.FieldDescriptor Decl'FunctionDecl'Overload
        resultType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Type)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'resultType")) ::
              Data.ProtoLens.FieldDescriptor Decl'FunctionDecl'Overload
        isInstanceFunction__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_instance_function"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"isInstanceFunction")) ::
              Data.ProtoLens.FieldDescriptor Decl'FunctionDecl'Overload
        doc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "doc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"doc")) ::
              Data.ProtoLens.FieldDescriptor Decl'FunctionDecl'Overload
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, overloadId__field_descriptor),
           (Data.ProtoLens.Tag 2, params__field_descriptor),
           (Data.ProtoLens.Tag 3, typeParams__field_descriptor),
           (Data.ProtoLens.Tag 4, resultType__field_descriptor),
           (Data.ProtoLens.Tag 5, isInstanceFunction__field_descriptor),
           (Data.ProtoLens.Tag 6, doc__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Decl'FunctionDecl'Overload'_unknownFields
        (\ x__ y__
           -> x__ {_Decl'FunctionDecl'Overload'_unknownFields = y__})
  defMessage
    = Decl'FunctionDecl'Overload'_constructor
        {_Decl'FunctionDecl'Overload'overloadId = Data.ProtoLens.fieldDefault,
         _Decl'FunctionDecl'Overload'params = Data.Vector.Generic.empty,
         _Decl'FunctionDecl'Overload'typeParams = Data.Vector.Generic.empty,
         _Decl'FunctionDecl'Overload'resultType = Prelude.Nothing,
         _Decl'FunctionDecl'Overload'isInstanceFunction = Data.ProtoLens.fieldDefault,
         _Decl'FunctionDecl'Overload'doc = Data.ProtoLens.fieldDefault,
         _Decl'FunctionDecl'Overload'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Decl'FunctionDecl'Overload
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Type
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser Decl'FunctionDecl'Overload
        loop x mutable'params mutable'typeParams
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'params <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'params)
                      frozen'typeParams <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'typeParams)
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
                              (Data.ProtoLens.Field.field @"vec'params")
                              frozen'params
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'typeParams")
                                 frozen'typeParams
                                 x)))
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
                                       "overload_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"overloadId") y x)
                                  mutable'params
                                  mutable'typeParams
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "params"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'params y)
                                loop x v mutable'typeParams
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "type_params"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'typeParams y)
                                loop x mutable'params v
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "result_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"resultType") y x)
                                  mutable'params
                                  mutable'typeParams
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_instance_function"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"isInstanceFunction") y x)
                                  mutable'params
                                  mutable'typeParams
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "doc"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"doc") y x)
                                  mutable'params
                                  mutable'typeParams
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'params
                                  mutable'typeParams
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'params <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'typeParams <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'params mutable'typeParams)
          "Overload"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"overloadId") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'params") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.Text.Encoding.encodeUtf8
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'typeParams") _x))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'resultType") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage
                                   _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"isInstanceFunction") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (\ b -> if b then 1 else 0)
                                     _v))
                         ((Data.Monoid.<>)
                            (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"doc") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8
                                        _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData Decl'FunctionDecl'Overload where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Decl'FunctionDecl'Overload'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Decl'FunctionDecl'Overload'overloadId x__)
                (Control.DeepSeq.deepseq
                   (_Decl'FunctionDecl'Overload'params x__)
                   (Control.DeepSeq.deepseq
                      (_Decl'FunctionDecl'Overload'typeParams x__)
                      (Control.DeepSeq.deepseq
                         (_Decl'FunctionDecl'Overload'resultType x__)
                         (Control.DeepSeq.deepseq
                            (_Decl'FunctionDecl'Overload'isInstanceFunction x__)
                            (Control.DeepSeq.deepseq
                               (_Decl'FunctionDecl'Overload'doc x__) ()))))))
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.type'' @:: Lens' Decl'IdentDecl Type@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'type'' @:: Lens' Decl'IdentDecl (Prelude.Maybe Type)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.value' @:: Lens' Decl'IdentDecl Proto.Google.Api.Expr.V1alpha1.Syntax.Constant@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'value' @:: Lens' Decl'IdentDecl (Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Syntax.Constant)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.doc' @:: Lens' Decl'IdentDecl Data.Text.Text@ -}
data Decl'IdentDecl
  = Decl'IdentDecl'_constructor {_Decl'IdentDecl'type' :: !(Prelude.Maybe Type),
                                 _Decl'IdentDecl'value :: !(Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Syntax.Constant),
                                 _Decl'IdentDecl'doc :: !Data.Text.Text,
                                 _Decl'IdentDecl'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Decl'IdentDecl where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Decl'IdentDecl "type'" Type where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'IdentDecl'type'
           (\ x__ y__ -> x__ {_Decl'IdentDecl'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Decl'IdentDecl "maybe'type'" (Prelude.Maybe Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'IdentDecl'type'
           (\ x__ y__ -> x__ {_Decl'IdentDecl'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Decl'IdentDecl "value" Proto.Google.Api.Expr.V1alpha1.Syntax.Constant where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'IdentDecl'value
           (\ x__ y__ -> x__ {_Decl'IdentDecl'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Decl'IdentDecl "maybe'value" (Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Syntax.Constant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'IdentDecl'value
           (\ x__ y__ -> x__ {_Decl'IdentDecl'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Decl'IdentDecl "doc" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decl'IdentDecl'doc (\ x__ y__ -> x__ {_Decl'IdentDecl'doc = y__}))
        Prelude.id
instance Data.ProtoLens.Message Decl'IdentDecl where
  messageName _
    = Data.Text.pack "google.api.expr.v1alpha1.Decl.IdentDecl"
  packedMessageDescriptor _
    = "\n\
      \\tIdentDecl\DC22\n\
      \\EOTtype\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\EOTtype\DC28\n\
      \\ENQvalue\CAN\STX \SOH(\v2\".google.api.expr.v1alpha1.ConstantR\ENQvalue\DC2\DLE\n\
      \\ETXdoc\CAN\ETX \SOH(\tR\ETXdoc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Type)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor Decl'IdentDecl
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Api.Expr.V1alpha1.Syntax.Constant)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Decl'IdentDecl
        doc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "doc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"doc")) ::
              Data.ProtoLens.FieldDescriptor Decl'IdentDecl
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor),
           (Data.ProtoLens.Tag 3, doc__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Decl'IdentDecl'_unknownFields
        (\ x__ y__ -> x__ {_Decl'IdentDecl'_unknownFields = y__})
  defMessage
    = Decl'IdentDecl'_constructor
        {_Decl'IdentDecl'type' = Prelude.Nothing,
         _Decl'IdentDecl'value = Prelude.Nothing,
         _Decl'IdentDecl'doc = Data.ProtoLens.fieldDefault,
         _Decl'IdentDecl'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Decl'IdentDecl
          -> Data.ProtoLens.Encoding.Bytes.Parser Decl'IdentDecl
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
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "doc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"doc") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "IdentDecl"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
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
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"doc") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Decl'IdentDecl where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Decl'IdentDecl'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Decl'IdentDecl'type' x__)
                (Control.DeepSeq.deepseq
                   (_Decl'IdentDecl'value x__)
                   (Control.DeepSeq.deepseq (_Decl'IdentDecl'doc x__) ())))
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.name' @:: Lens' Reference Data.Text.Text@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.overloadId' @:: Lens' Reference [Data.Text.Text]@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.vec'overloadId' @:: Lens' Reference (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.value' @:: Lens' Reference Proto.Google.Api.Expr.V1alpha1.Syntax.Constant@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'value' @:: Lens' Reference (Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Syntax.Constant)@ -}
data Reference
  = Reference'_constructor {_Reference'name :: !Data.Text.Text,
                            _Reference'overloadId :: !(Data.Vector.Vector Data.Text.Text),
                            _Reference'value :: !(Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Syntax.Constant),
                            _Reference'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Reference where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Reference "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Reference'name (\ x__ y__ -> x__ {_Reference'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Reference "overloadId" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Reference'overloadId
           (\ x__ y__ -> x__ {_Reference'overloadId = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Reference "vec'overloadId" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Reference'overloadId
           (\ x__ y__ -> x__ {_Reference'overloadId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Reference "value" Proto.Google.Api.Expr.V1alpha1.Syntax.Constant where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Reference'value (\ x__ y__ -> x__ {_Reference'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Reference "maybe'value" (Prelude.Maybe Proto.Google.Api.Expr.V1alpha1.Syntax.Constant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Reference'value (\ x__ y__ -> x__ {_Reference'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Reference where
  messageName _ = Data.Text.pack "google.api.expr.v1alpha1.Reference"
  packedMessageDescriptor _
    = "\n\
      \\tReference\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\US\n\
      \\voverload_id\CAN\ETX \ETX(\tR\n\
      \overloadId\DC28\n\
      \\ENQvalue\CAN\EOT \SOH(\v2\".google.api.expr.v1alpha1.ConstantR\ENQvalue"
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
              Data.ProtoLens.FieldDescriptor Reference
        overloadId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "overload_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"overloadId")) ::
              Data.ProtoLens.FieldDescriptor Reference
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Api.Expr.V1alpha1.Syntax.Constant)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Reference
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 3, overloadId__field_descriptor),
           (Data.ProtoLens.Tag 4, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Reference'_unknownFields
        (\ x__ y__ -> x__ {_Reference'_unknownFields = y__})
  defMessage
    = Reference'_constructor
        {_Reference'name = Data.ProtoLens.fieldDefault,
         _Reference'overloadId = Data.Vector.Generic.empty,
         _Reference'value = Prelude.Nothing, _Reference'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Reference
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser Reference
        loop x mutable'overloadId
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'overloadId <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'overloadId)
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
                              (Data.ProtoLens.Field.field @"vec'overloadId")
                              frozen'overloadId
                              x))
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
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'overloadId
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "overload_id"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'overloadId y)
                                loop x v
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                                  mutable'overloadId
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'overloadId
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'overloadId <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'overloadId)
          "Reference"
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
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.Text.Encoding.encodeUtf8
                              _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'overloadId") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
instance Control.DeepSeq.NFData Reference where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Reference'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Reference'name x__)
                (Control.DeepSeq.deepseq
                   (_Reference'overloadId x__)
                   (Control.DeepSeq.deepseq (_Reference'value x__) ())))
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'typeKind' @:: Lens' Type (Prelude.Maybe Type'TypeKind)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'dyn' @:: Lens' Type (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.dyn' @:: Lens' Type Proto.Google.Protobuf.Empty.Empty@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'null' @:: Lens' Type (Prelude.Maybe Proto.Google.Protobuf.Struct.NullValue)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.null' @:: Lens' Type Proto.Google.Protobuf.Struct.NullValue@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'primitive' @:: Lens' Type (Prelude.Maybe Type'PrimitiveType)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.primitive' @:: Lens' Type Type'PrimitiveType@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'wrapper' @:: Lens' Type (Prelude.Maybe Type'PrimitiveType)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.wrapper' @:: Lens' Type Type'PrimitiveType@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'wellKnown' @:: Lens' Type (Prelude.Maybe Type'WellKnownType)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.wellKnown' @:: Lens' Type Type'WellKnownType@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'listType' @:: Lens' Type (Prelude.Maybe Type'ListType)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.listType' @:: Lens' Type Type'ListType@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'mapType' @:: Lens' Type (Prelude.Maybe Type'MapType)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.mapType' @:: Lens' Type Type'MapType@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'function' @:: Lens' Type (Prelude.Maybe Type'FunctionType)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.function' @:: Lens' Type Type'FunctionType@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'messageType' @:: Lens' Type (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.messageType' @:: Lens' Type Data.Text.Text@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'typeParam' @:: Lens' Type (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.typeParam' @:: Lens' Type Data.Text.Text@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'type'' @:: Lens' Type (Prelude.Maybe Type)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.type'' @:: Lens' Type Type@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'error' @:: Lens' Type (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.error' @:: Lens' Type Proto.Google.Protobuf.Empty.Empty@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'abstractType' @:: Lens' Type (Prelude.Maybe Type'AbstractType)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.abstractType' @:: Lens' Type Type'AbstractType@ -}
data Type
  = Type'_constructor {_Type'typeKind :: !(Prelude.Maybe Type'TypeKind),
                       _Type'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Type where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Type'TypeKind
  = Type'Dyn !Proto.Google.Protobuf.Empty.Empty |
    Type'Null !Proto.Google.Protobuf.Struct.NullValue |
    Type'Primitive !Type'PrimitiveType |
    Type'Wrapper !Type'PrimitiveType |
    Type'WellKnown !Type'WellKnownType |
    Type'ListType' !Type'ListType |
    Type'MapType' !Type'MapType |
    Type'Function !Type'FunctionType |
    Type'MessageType !Data.Text.Text |
    Type'TypeParam !Data.Text.Text |
    Type'Type !Type |
    Type'Error !Proto.Google.Protobuf.Empty.Empty |
    Type'AbstractType' !Type'AbstractType
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Type "maybe'typeKind" (Prelude.Maybe Type'TypeKind) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Type "maybe'dyn" (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Type'Dyn x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Type'Dyn y__))
instance Data.ProtoLens.Field.HasField Type "dyn" Proto.Google.Protobuf.Empty.Empty where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Type'Dyn x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Type'Dyn y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Type "maybe'null" (Prelude.Maybe Proto.Google.Protobuf.Struct.NullValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Type'Null x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Type'Null y__))
instance Data.ProtoLens.Field.HasField Type "null" Proto.Google.Protobuf.Struct.NullValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Type'Null x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Type'Null y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Type "maybe'primitive" (Prelude.Maybe Type'PrimitiveType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Type'Primitive x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Type'Primitive y__))
instance Data.ProtoLens.Field.HasField Type "primitive" Type'PrimitiveType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Type'Primitive x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Type'Primitive y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Type "maybe'wrapper" (Prelude.Maybe Type'PrimitiveType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Type'Wrapper x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Type'Wrapper y__))
instance Data.ProtoLens.Field.HasField Type "wrapper" Type'PrimitiveType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Type'Wrapper x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Type'Wrapper y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Type "maybe'wellKnown" (Prelude.Maybe Type'WellKnownType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Type'WellKnown x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Type'WellKnown y__))
instance Data.ProtoLens.Field.HasField Type "wellKnown" Type'WellKnownType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Type'WellKnown x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Type'WellKnown y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Type "maybe'listType" (Prelude.Maybe Type'ListType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Type'ListType' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Type'ListType' y__))
instance Data.ProtoLens.Field.HasField Type "listType" Type'ListType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Type'ListType' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Type'ListType' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Type "maybe'mapType" (Prelude.Maybe Type'MapType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Type'MapType' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Type'MapType' y__))
instance Data.ProtoLens.Field.HasField Type "mapType" Type'MapType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Type'MapType' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Type'MapType' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Type "maybe'function" (Prelude.Maybe Type'FunctionType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Type'Function x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Type'Function y__))
instance Data.ProtoLens.Field.HasField Type "function" Type'FunctionType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Type'Function x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Type'Function y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Type "maybe'messageType" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Type'MessageType x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Type'MessageType y__))
instance Data.ProtoLens.Field.HasField Type "messageType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Type'MessageType x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Type'MessageType y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Type "maybe'typeParam" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Type'TypeParam x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Type'TypeParam y__))
instance Data.ProtoLens.Field.HasField Type "typeParam" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Type'TypeParam x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Type'TypeParam y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Type "maybe'type'" (Prelude.Maybe Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Type'Type x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Type'Type y__))
instance Data.ProtoLens.Field.HasField Type "type'" Type where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Type'Type x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Type'Type y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Type "maybe'error" (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Type'Error x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Type'Error y__))
instance Data.ProtoLens.Field.HasField Type "error" Proto.Google.Protobuf.Empty.Empty where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Type'Error x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Type'Error y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Type "maybe'abstractType" (Prelude.Maybe Type'AbstractType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Type'AbstractType' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Type'AbstractType' y__))
instance Data.ProtoLens.Field.HasField Type "abstractType" Type'AbstractType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'typeKind (\ x__ y__ -> x__ {_Type'typeKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Type'AbstractType' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Type'AbstractType' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Type where
  messageName _ = Data.Text.pack "google.api.expr.v1alpha1.Type"
  packedMessageDescriptor _
    = "\n\
      \\EOTType\DC2*\n\
      \\ETXdyn\CAN\SOH \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\ETXdyn\DC20\n\
      \\EOTnull\CAN\STX \SOH(\SO2\SUB.google.protobuf.NullValueH\NULR\EOTnull\DC2L\n\
      \\tprimitive\CAN\ETX \SOH(\SO2,.google.api.expr.v1alpha1.Type.PrimitiveTypeH\NULR\tprimitive\DC2H\n\
      \\awrapper\CAN\EOT \SOH(\SO2,.google.api.expr.v1alpha1.Type.PrimitiveTypeH\NULR\awrapper\DC2M\n\
      \\n\
      \well_known\CAN\ENQ \SOH(\SO2,.google.api.expr.v1alpha1.Type.WellKnownTypeH\NULR\twellKnown\DC2F\n\
      \\tlist_type\CAN\ACK \SOH(\v2'.google.api.expr.v1alpha1.Type.ListTypeH\NULR\blistType\DC2C\n\
      \\bmap_type\CAN\a \SOH(\v2&.google.api.expr.v1alpha1.Type.MapTypeH\NULR\amapType\DC2I\n\
      \\bfunction\CAN\b \SOH(\v2+.google.api.expr.v1alpha1.Type.FunctionTypeH\NULR\bfunction\DC2#\n\
      \\fmessage_type\CAN\t \SOH(\tH\NULR\vmessageType\DC2\US\n\
      \\n\
      \type_param\CAN\n\
      \ \SOH(\tH\NULR\ttypeParam\DC24\n\
      \\EOTtype\CAN\v \SOH(\v2\RS.google.api.expr.v1alpha1.TypeH\NULR\EOTtype\DC2.\n\
      \\ENQerror\CAN\f \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\ENQerror\DC2R\n\
      \\rabstract_type\CAN\SO \SOH(\v2+.google.api.expr.v1alpha1.Type.AbstractTypeH\NULR\fabstractType\SUBG\n\
      \\bListType\DC2;\n\
      \\telem_type\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\belemType\SUB\131\SOH\n\
      \\aMapType\DC29\n\
      \\bkey_type\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\akeyType\DC2=\n\
      \\n\
      \value_type\CAN\STX \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\tvalueType\SUB\140\SOH\n\
      \\fFunctionType\DC2?\n\
      \\vresult_type\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\n\
      \resultType\DC2;\n\
      \\targ_types\CAN\STX \ETX(\v2\RS.google.api.expr.v1alpha1.TypeR\bargTypes\SUBk\n\
      \\fAbstractType\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2G\n\
      \\SIparameter_types\CAN\STX \ETX(\v2\RS.google.api.expr.v1alpha1.TypeR\SOparameterTypes\"s\n\
      \\rPrimitiveType\DC2\RS\n\
      \\SUBPRIMITIVE_TYPE_UNSPECIFIED\DLE\NUL\DC2\b\n\
      \\EOTBOOL\DLE\SOH\DC2\t\n\
      \\ENQINT64\DLE\STX\DC2\n\
      \\n\
      \\ACKUINT64\DLE\ETX\DC2\n\
      \\n\
      \\ACKDOUBLE\DLE\EOT\DC2\n\
      \\n\
      \\ACKSTRING\DLE\ENQ\DC2\t\n\
      \\ENQBYTES\DLE\ACK\"V\n\
      \\rWellKnownType\DC2\US\n\
      \\ESCWELL_KNOWN_TYPE_UNSPECIFIED\DLE\NUL\DC2\a\n\
      \\ETXANY\DLE\SOH\DC2\r\n\
      \\tTIMESTAMP\DLE\STX\DC2\f\n\
      \\bDURATION\DLE\ETXB\v\n\
      \\ttype_kind"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dyn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dyn"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Empty.Empty)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dyn")) ::
              Data.ProtoLens.FieldDescriptor Type
        null__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "null"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.NullValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'null")) ::
              Data.ProtoLens.FieldDescriptor Type
        primitive__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "primitive"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Type'PrimitiveType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'primitive")) ::
              Data.ProtoLens.FieldDescriptor Type
        wrapper__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "wrapper"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Type'PrimitiveType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'wrapper")) ::
              Data.ProtoLens.FieldDescriptor Type
        wellKnown__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "well_known"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Type'WellKnownType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'wellKnown")) ::
              Data.ProtoLens.FieldDescriptor Type
        listType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "list_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Type'ListType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'listType")) ::
              Data.ProtoLens.FieldDescriptor Type
        mapType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "map_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Type'MapType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mapType")) ::
              Data.ProtoLens.FieldDescriptor Type
        function__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "function"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Type'FunctionType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'function")) ::
              Data.ProtoLens.FieldDescriptor Type
        messageType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'messageType")) ::
              Data.ProtoLens.FieldDescriptor Type
        typeParam__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type_param"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typeParam")) ::
              Data.ProtoLens.FieldDescriptor Type
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Type)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor Type
        error__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Empty.Empty)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'error")) ::
              Data.ProtoLens.FieldDescriptor Type
        abstractType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "abstract_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Type'AbstractType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'abstractType")) ::
              Data.ProtoLens.FieldDescriptor Type
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dyn__field_descriptor),
           (Data.ProtoLens.Tag 2, null__field_descriptor),
           (Data.ProtoLens.Tag 3, primitive__field_descriptor),
           (Data.ProtoLens.Tag 4, wrapper__field_descriptor),
           (Data.ProtoLens.Tag 5, wellKnown__field_descriptor),
           (Data.ProtoLens.Tag 6, listType__field_descriptor),
           (Data.ProtoLens.Tag 7, mapType__field_descriptor),
           (Data.ProtoLens.Tag 8, function__field_descriptor),
           (Data.ProtoLens.Tag 9, messageType__field_descriptor),
           (Data.ProtoLens.Tag 10, typeParam__field_descriptor),
           (Data.ProtoLens.Tag 11, type'__field_descriptor),
           (Data.ProtoLens.Tag 12, error__field_descriptor),
           (Data.ProtoLens.Tag 14, abstractType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Type'_unknownFields
        (\ x__ y__ -> x__ {_Type'_unknownFields = y__})
  defMessage
    = Type'_constructor
        {_Type'typeKind = Prelude.Nothing, _Type'_unknownFields = []}
  parseMessage
    = let
        loop :: Type -> Data.ProtoLens.Encoding.Bytes.Parser Type
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
                                       "dyn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dyn") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "null"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"null") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "primitive"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"primitive") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "wrapper"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"wrapper") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "well_known"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"wellKnown") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "list_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"listType") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "map_type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mapType") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "function"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"function") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "message_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"messageType") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "type_param"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typeParam") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "error"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"error") y x)
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "abstract_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"abstractType") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Type"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'typeKind") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Type'Dyn v))
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
                (Prelude.Just (Type'Null v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                       ((Prelude..)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                          Prelude.fromEnum
                          v)
                (Prelude.Just (Type'Primitive v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                       ((Prelude..)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                          Prelude.fromEnum
                          v)
                (Prelude.Just (Type'Wrapper v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                       ((Prelude..)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                          Prelude.fromEnum
                          v)
                (Prelude.Just (Type'WellKnown v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                       ((Prelude..)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                          Prelude.fromEnum
                          v)
                (Prelude.Just (Type'ListType' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (Type'MapType' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (Type'Function v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (Type'MessageType v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v)
                (Prelude.Just (Type'TypeParam v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v)
                (Prelude.Just (Type'Type v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (Type'Error v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (Type'AbstractType' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 114)
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
instance Control.DeepSeq.NFData Type where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Type'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Type'typeKind x__) ())
instance Control.DeepSeq.NFData Type'TypeKind where
  rnf (Type'Dyn x__) = Control.DeepSeq.rnf x__
  rnf (Type'Null x__) = Control.DeepSeq.rnf x__
  rnf (Type'Primitive x__) = Control.DeepSeq.rnf x__
  rnf (Type'Wrapper x__) = Control.DeepSeq.rnf x__
  rnf (Type'WellKnown x__) = Control.DeepSeq.rnf x__
  rnf (Type'ListType' x__) = Control.DeepSeq.rnf x__
  rnf (Type'MapType' x__) = Control.DeepSeq.rnf x__
  rnf (Type'Function x__) = Control.DeepSeq.rnf x__
  rnf (Type'MessageType x__) = Control.DeepSeq.rnf x__
  rnf (Type'TypeParam x__) = Control.DeepSeq.rnf x__
  rnf (Type'Type x__) = Control.DeepSeq.rnf x__
  rnf (Type'Error x__) = Control.DeepSeq.rnf x__
  rnf (Type'AbstractType' x__) = Control.DeepSeq.rnf x__
_Type'Dyn ::
  Data.ProtoLens.Prism.Prism' Type'TypeKind Proto.Google.Protobuf.Empty.Empty
_Type'Dyn
  = Data.ProtoLens.Prism.prism'
      Type'Dyn
      (\ p__
         -> case p__ of
              (Type'Dyn p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Type'Null ::
  Data.ProtoLens.Prism.Prism' Type'TypeKind Proto.Google.Protobuf.Struct.NullValue
_Type'Null
  = Data.ProtoLens.Prism.prism'
      Type'Null
      (\ p__
         -> case p__ of
              (Type'Null p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Type'Primitive ::
  Data.ProtoLens.Prism.Prism' Type'TypeKind Type'PrimitiveType
_Type'Primitive
  = Data.ProtoLens.Prism.prism'
      Type'Primitive
      (\ p__
         -> case p__ of
              (Type'Primitive p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Type'Wrapper ::
  Data.ProtoLens.Prism.Prism' Type'TypeKind Type'PrimitiveType
_Type'Wrapper
  = Data.ProtoLens.Prism.prism'
      Type'Wrapper
      (\ p__
         -> case p__ of
              (Type'Wrapper p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Type'WellKnown ::
  Data.ProtoLens.Prism.Prism' Type'TypeKind Type'WellKnownType
_Type'WellKnown
  = Data.ProtoLens.Prism.prism'
      Type'WellKnown
      (\ p__
         -> case p__ of
              (Type'WellKnown p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Type'ListType' ::
  Data.ProtoLens.Prism.Prism' Type'TypeKind Type'ListType
_Type'ListType'
  = Data.ProtoLens.Prism.prism'
      Type'ListType'
      (\ p__
         -> case p__ of
              (Type'ListType' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Type'MapType' ::
  Data.ProtoLens.Prism.Prism' Type'TypeKind Type'MapType
_Type'MapType'
  = Data.ProtoLens.Prism.prism'
      Type'MapType'
      (\ p__
         -> case p__ of
              (Type'MapType' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Type'Function ::
  Data.ProtoLens.Prism.Prism' Type'TypeKind Type'FunctionType
_Type'Function
  = Data.ProtoLens.Prism.prism'
      Type'Function
      (\ p__
         -> case p__ of
              (Type'Function p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Type'MessageType ::
  Data.ProtoLens.Prism.Prism' Type'TypeKind Data.Text.Text
_Type'MessageType
  = Data.ProtoLens.Prism.prism'
      Type'MessageType
      (\ p__
         -> case p__ of
              (Type'MessageType p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Type'TypeParam ::
  Data.ProtoLens.Prism.Prism' Type'TypeKind Data.Text.Text
_Type'TypeParam
  = Data.ProtoLens.Prism.prism'
      Type'TypeParam
      (\ p__
         -> case p__ of
              (Type'TypeParam p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Type'Type :: Data.ProtoLens.Prism.Prism' Type'TypeKind Type
_Type'Type
  = Data.ProtoLens.Prism.prism'
      Type'Type
      (\ p__
         -> case p__ of
              (Type'Type p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Type'Error ::
  Data.ProtoLens.Prism.Prism' Type'TypeKind Proto.Google.Protobuf.Empty.Empty
_Type'Error
  = Data.ProtoLens.Prism.prism'
      Type'Error
      (\ p__
         -> case p__ of
              (Type'Error p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Type'AbstractType' ::
  Data.ProtoLens.Prism.Prism' Type'TypeKind Type'AbstractType
_Type'AbstractType'
  = Data.ProtoLens.Prism.prism'
      Type'AbstractType'
      (\ p__
         -> case p__ of
              (Type'AbstractType' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.name' @:: Lens' Type'AbstractType Data.Text.Text@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.parameterTypes' @:: Lens' Type'AbstractType [Type]@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.vec'parameterTypes' @:: Lens' Type'AbstractType (Data.Vector.Vector Type)@ -}
data Type'AbstractType
  = Type'AbstractType'_constructor {_Type'AbstractType'name :: !Data.Text.Text,
                                    _Type'AbstractType'parameterTypes :: !(Data.Vector.Vector Type),
                                    _Type'AbstractType'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Type'AbstractType where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Type'AbstractType "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'AbstractType'name
           (\ x__ y__ -> x__ {_Type'AbstractType'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Type'AbstractType "parameterTypes" [Type] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'AbstractType'parameterTypes
           (\ x__ y__ -> x__ {_Type'AbstractType'parameterTypes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Type'AbstractType "vec'parameterTypes" (Data.Vector.Vector Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'AbstractType'parameterTypes
           (\ x__ y__ -> x__ {_Type'AbstractType'parameterTypes = y__}))
        Prelude.id
instance Data.ProtoLens.Message Type'AbstractType where
  messageName _
    = Data.Text.pack "google.api.expr.v1alpha1.Type.AbstractType"
  packedMessageDescriptor _
    = "\n\
      \\fAbstractType\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2G\n\
      \\SIparameter_types\CAN\STX \ETX(\v2\RS.google.api.expr.v1alpha1.TypeR\SOparameterTypes"
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
              Data.ProtoLens.FieldDescriptor Type'AbstractType
        parameterTypes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "parameter_types"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Type)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"parameterTypes")) ::
              Data.ProtoLens.FieldDescriptor Type'AbstractType
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, parameterTypes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Type'AbstractType'_unknownFields
        (\ x__ y__ -> x__ {_Type'AbstractType'_unknownFields = y__})
  defMessage
    = Type'AbstractType'_constructor
        {_Type'AbstractType'name = Data.ProtoLens.fieldDefault,
         _Type'AbstractType'parameterTypes = Data.Vector.Generic.empty,
         _Type'AbstractType'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Type'AbstractType
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Type
             -> Data.ProtoLens.Encoding.Bytes.Parser Type'AbstractType
        loop x mutable'parameterTypes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'parameterTypes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'parameterTypes)
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
                              (Data.ProtoLens.Field.field @"vec'parameterTypes")
                              frozen'parameterTypes
                              x))
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
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'parameterTypes
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "parameter_types"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'parameterTypes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'parameterTypes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'parameterTypes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'parameterTypes)
          "AbstractType"
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'parameterTypes") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Type'AbstractType where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Type'AbstractType'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Type'AbstractType'name x__)
                (Control.DeepSeq.deepseq
                   (_Type'AbstractType'parameterTypes x__) ()))
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.resultType' @:: Lens' Type'FunctionType Type@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'resultType' @:: Lens' Type'FunctionType (Prelude.Maybe Type)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.argTypes' @:: Lens' Type'FunctionType [Type]@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.vec'argTypes' @:: Lens' Type'FunctionType (Data.Vector.Vector Type)@ -}
data Type'FunctionType
  = Type'FunctionType'_constructor {_Type'FunctionType'resultType :: !(Prelude.Maybe Type),
                                    _Type'FunctionType'argTypes :: !(Data.Vector.Vector Type),
                                    _Type'FunctionType'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Type'FunctionType where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Type'FunctionType "resultType" Type where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'FunctionType'resultType
           (\ x__ y__ -> x__ {_Type'FunctionType'resultType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Type'FunctionType "maybe'resultType" (Prelude.Maybe Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'FunctionType'resultType
           (\ x__ y__ -> x__ {_Type'FunctionType'resultType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Type'FunctionType "argTypes" [Type] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'FunctionType'argTypes
           (\ x__ y__ -> x__ {_Type'FunctionType'argTypes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Type'FunctionType "vec'argTypes" (Data.Vector.Vector Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'FunctionType'argTypes
           (\ x__ y__ -> x__ {_Type'FunctionType'argTypes = y__}))
        Prelude.id
instance Data.ProtoLens.Message Type'FunctionType where
  messageName _
    = Data.Text.pack "google.api.expr.v1alpha1.Type.FunctionType"
  packedMessageDescriptor _
    = "\n\
      \\fFunctionType\DC2?\n\
      \\vresult_type\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\n\
      \resultType\DC2;\n\
      \\targ_types\CAN\STX \ETX(\v2\RS.google.api.expr.v1alpha1.TypeR\bargTypes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        resultType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Type)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'resultType")) ::
              Data.ProtoLens.FieldDescriptor Type'FunctionType
        argTypes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "arg_types"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Type)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"argTypes")) ::
              Data.ProtoLens.FieldDescriptor Type'FunctionType
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, resultType__field_descriptor),
           (Data.ProtoLens.Tag 2, argTypes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Type'FunctionType'_unknownFields
        (\ x__ y__ -> x__ {_Type'FunctionType'_unknownFields = y__})
  defMessage
    = Type'FunctionType'_constructor
        {_Type'FunctionType'resultType = Prelude.Nothing,
         _Type'FunctionType'argTypes = Data.Vector.Generic.empty,
         _Type'FunctionType'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Type'FunctionType
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Type
             -> Data.ProtoLens.Encoding.Bytes.Parser Type'FunctionType
        loop x mutable'argTypes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'argTypes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'argTypes)
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
                              (Data.ProtoLens.Field.field @"vec'argTypes") frozen'argTypes x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "result_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"resultType") y x)
                                  mutable'argTypes
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "arg_types"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'argTypes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'argTypes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'argTypes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'argTypes)
          "FunctionType"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'resultType") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'argTypes") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Type'FunctionType where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Type'FunctionType'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Type'FunctionType'resultType x__)
                (Control.DeepSeq.deepseq (_Type'FunctionType'argTypes x__) ()))
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.elemType' @:: Lens' Type'ListType Type@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'elemType' @:: Lens' Type'ListType (Prelude.Maybe Type)@ -}
data Type'ListType
  = Type'ListType'_constructor {_Type'ListType'elemType :: !(Prelude.Maybe Type),
                                _Type'ListType'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Type'ListType where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Type'ListType "elemType" Type where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'ListType'elemType
           (\ x__ y__ -> x__ {_Type'ListType'elemType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Type'ListType "maybe'elemType" (Prelude.Maybe Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'ListType'elemType
           (\ x__ y__ -> x__ {_Type'ListType'elemType = y__}))
        Prelude.id
instance Data.ProtoLens.Message Type'ListType where
  messageName _
    = Data.Text.pack "google.api.expr.v1alpha1.Type.ListType"
  packedMessageDescriptor _
    = "\n\
      \\bListType\DC2;\n\
      \\telem_type\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\belemType"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        elemType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "elem_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Type)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'elemType")) ::
              Data.ProtoLens.FieldDescriptor Type'ListType
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, elemType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Type'ListType'_unknownFields
        (\ x__ y__ -> x__ {_Type'ListType'_unknownFields = y__})
  defMessage
    = Type'ListType'_constructor
        {_Type'ListType'elemType = Prelude.Nothing,
         _Type'ListType'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Type'ListType -> Data.ProtoLens.Encoding.Bytes.Parser Type'ListType
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
                                       "elem_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"elemType") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ListType"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'elemType") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Type'ListType where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Type'ListType'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Type'ListType'elemType x__) ())
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.keyType' @:: Lens' Type'MapType Type@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'keyType' @:: Lens' Type'MapType (Prelude.Maybe Type)@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.valueType' @:: Lens' Type'MapType Type@
         * 'Proto.Google.Api.Expr.V1alpha1.Checked_Fields.maybe'valueType' @:: Lens' Type'MapType (Prelude.Maybe Type)@ -}
data Type'MapType
  = Type'MapType'_constructor {_Type'MapType'keyType :: !(Prelude.Maybe Type),
                               _Type'MapType'valueType :: !(Prelude.Maybe Type),
                               _Type'MapType'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Type'MapType where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Type'MapType "keyType" Type where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'MapType'keyType
           (\ x__ y__ -> x__ {_Type'MapType'keyType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Type'MapType "maybe'keyType" (Prelude.Maybe Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'MapType'keyType
           (\ x__ y__ -> x__ {_Type'MapType'keyType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Type'MapType "valueType" Type where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'MapType'valueType
           (\ x__ y__ -> x__ {_Type'MapType'valueType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Type'MapType "maybe'valueType" (Prelude.Maybe Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Type'MapType'valueType
           (\ x__ y__ -> x__ {_Type'MapType'valueType = y__}))
        Prelude.id
instance Data.ProtoLens.Message Type'MapType where
  messageName _
    = Data.Text.pack "google.api.expr.v1alpha1.Type.MapType"
  packedMessageDescriptor _
    = "\n\
      \\aMapType\DC29\n\
      \\bkey_type\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\akeyType\DC2=\n\
      \\n\
      \value_type\CAN\STX \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\tvalueType"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        keyType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Type)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'keyType")) ::
              Data.ProtoLens.FieldDescriptor Type'MapType
        valueType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Type)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'valueType")) ::
              Data.ProtoLens.FieldDescriptor Type'MapType
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, keyType__field_descriptor),
           (Data.ProtoLens.Tag 2, valueType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Type'MapType'_unknownFields
        (\ x__ y__ -> x__ {_Type'MapType'_unknownFields = y__})
  defMessage
    = Type'MapType'_constructor
        {_Type'MapType'keyType = Prelude.Nothing,
         _Type'MapType'valueType = Prelude.Nothing,
         _Type'MapType'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Type'MapType -> Data.ProtoLens.Encoding.Bytes.Parser Type'MapType
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
                                       "key_type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"keyType") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"valueType") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MapType"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'keyType") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'valueType") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Type'MapType where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Type'MapType'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Type'MapType'keyType x__)
                (Control.DeepSeq.deepseq (_Type'MapType'valueType x__) ()))
newtype Type'PrimitiveType'UnrecognizedValue
  = Type'PrimitiveType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Type'PrimitiveType
  = Type'PRIMITIVE_TYPE_UNSPECIFIED |
    Type'BOOL |
    Type'INT64 |
    Type'UINT64 |
    Type'DOUBLE |
    Type'STRING |
    Type'BYTES |
    Type'PrimitiveType'Unrecognized !Type'PrimitiveType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Type'PrimitiveType where
  maybeToEnum 0 = Prelude.Just Type'PRIMITIVE_TYPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just Type'BOOL
  maybeToEnum 2 = Prelude.Just Type'INT64
  maybeToEnum 3 = Prelude.Just Type'UINT64
  maybeToEnum 4 = Prelude.Just Type'DOUBLE
  maybeToEnum 5 = Prelude.Just Type'STRING
  maybeToEnum 6 = Prelude.Just Type'BYTES
  maybeToEnum k
    = Prelude.Just
        (Type'PrimitiveType'Unrecognized
           (Type'PrimitiveType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Type'PRIMITIVE_TYPE_UNSPECIFIED
    = "PRIMITIVE_TYPE_UNSPECIFIED"
  showEnum Type'BOOL = "BOOL"
  showEnum Type'INT64 = "INT64"
  showEnum Type'UINT64 = "UINT64"
  showEnum Type'DOUBLE = "DOUBLE"
  showEnum Type'STRING = "STRING"
  showEnum Type'BYTES = "BYTES"
  showEnum
    (Type'PrimitiveType'Unrecognized (Type'PrimitiveType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "PRIMITIVE_TYPE_UNSPECIFIED"
    = Prelude.Just Type'PRIMITIVE_TYPE_UNSPECIFIED
    | (Prelude.==) k "BOOL" = Prelude.Just Type'BOOL
    | (Prelude.==) k "INT64" = Prelude.Just Type'INT64
    | (Prelude.==) k "UINT64" = Prelude.Just Type'UINT64
    | (Prelude.==) k "DOUBLE" = Prelude.Just Type'DOUBLE
    | (Prelude.==) k "STRING" = Prelude.Just Type'STRING
    | (Prelude.==) k "BYTES" = Prelude.Just Type'BYTES
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Type'PrimitiveType where
  minBound = Type'PRIMITIVE_TYPE_UNSPECIFIED
  maxBound = Type'BYTES
instance Prelude.Enum Type'PrimitiveType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum PrimitiveType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Type'PRIMITIVE_TYPE_UNSPECIFIED = 0
  fromEnum Type'BOOL = 1
  fromEnum Type'INT64 = 2
  fromEnum Type'UINT64 = 3
  fromEnum Type'DOUBLE = 4
  fromEnum Type'STRING = 5
  fromEnum Type'BYTES = 6
  fromEnum
    (Type'PrimitiveType'Unrecognized (Type'PrimitiveType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Type'BYTES
    = Prelude.error
        "Type'PrimitiveType.succ: bad argument Type'BYTES. This value would be out of bounds."
  succ Type'PRIMITIVE_TYPE_UNSPECIFIED = Type'BOOL
  succ Type'BOOL = Type'INT64
  succ Type'INT64 = Type'UINT64
  succ Type'UINT64 = Type'DOUBLE
  succ Type'DOUBLE = Type'STRING
  succ Type'STRING = Type'BYTES
  succ (Type'PrimitiveType'Unrecognized _)
    = Prelude.error
        "Type'PrimitiveType.succ: bad argument: unrecognized value"
  pred Type'PRIMITIVE_TYPE_UNSPECIFIED
    = Prelude.error
        "Type'PrimitiveType.pred: bad argument Type'PRIMITIVE_TYPE_UNSPECIFIED. This value would be out of bounds."
  pred Type'BOOL = Type'PRIMITIVE_TYPE_UNSPECIFIED
  pred Type'INT64 = Type'BOOL
  pred Type'UINT64 = Type'INT64
  pred Type'DOUBLE = Type'UINT64
  pred Type'STRING = Type'DOUBLE
  pred Type'BYTES = Type'STRING
  pred (Type'PrimitiveType'Unrecognized _)
    = Prelude.error
        "Type'PrimitiveType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Type'PrimitiveType where
  fieldDefault = Type'PRIMITIVE_TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData Type'PrimitiveType where
  rnf x__ = Prelude.seq x__ ()
newtype Type'WellKnownType'UnrecognizedValue
  = Type'WellKnownType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Type'WellKnownType
  = Type'WELL_KNOWN_TYPE_UNSPECIFIED |
    Type'ANY |
    Type'TIMESTAMP |
    Type'DURATION |
    Type'WellKnownType'Unrecognized !Type'WellKnownType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Type'WellKnownType where
  maybeToEnum 0 = Prelude.Just Type'WELL_KNOWN_TYPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just Type'ANY
  maybeToEnum 2 = Prelude.Just Type'TIMESTAMP
  maybeToEnum 3 = Prelude.Just Type'DURATION
  maybeToEnum k
    = Prelude.Just
        (Type'WellKnownType'Unrecognized
           (Type'WellKnownType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Type'WELL_KNOWN_TYPE_UNSPECIFIED
    = "WELL_KNOWN_TYPE_UNSPECIFIED"
  showEnum Type'ANY = "ANY"
  showEnum Type'TIMESTAMP = "TIMESTAMP"
  showEnum Type'DURATION = "DURATION"
  showEnum
    (Type'WellKnownType'Unrecognized (Type'WellKnownType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "WELL_KNOWN_TYPE_UNSPECIFIED"
    = Prelude.Just Type'WELL_KNOWN_TYPE_UNSPECIFIED
    | (Prelude.==) k "ANY" = Prelude.Just Type'ANY
    | (Prelude.==) k "TIMESTAMP" = Prelude.Just Type'TIMESTAMP
    | (Prelude.==) k "DURATION" = Prelude.Just Type'DURATION
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Type'WellKnownType where
  minBound = Type'WELL_KNOWN_TYPE_UNSPECIFIED
  maxBound = Type'DURATION
instance Prelude.Enum Type'WellKnownType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum WellKnownType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Type'WELL_KNOWN_TYPE_UNSPECIFIED = 0
  fromEnum Type'ANY = 1
  fromEnum Type'TIMESTAMP = 2
  fromEnum Type'DURATION = 3
  fromEnum
    (Type'WellKnownType'Unrecognized (Type'WellKnownType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Type'DURATION
    = Prelude.error
        "Type'WellKnownType.succ: bad argument Type'DURATION. This value would be out of bounds."
  succ Type'WELL_KNOWN_TYPE_UNSPECIFIED = Type'ANY
  succ Type'ANY = Type'TIMESTAMP
  succ Type'TIMESTAMP = Type'DURATION
  succ (Type'WellKnownType'Unrecognized _)
    = Prelude.error
        "Type'WellKnownType.succ: bad argument: unrecognized value"
  pred Type'WELL_KNOWN_TYPE_UNSPECIFIED
    = Prelude.error
        "Type'WellKnownType.pred: bad argument Type'WELL_KNOWN_TYPE_UNSPECIFIED. This value would be out of bounds."
  pred Type'ANY = Type'WELL_KNOWN_TYPE_UNSPECIFIED
  pred Type'TIMESTAMP = Type'ANY
  pred Type'DURATION = Type'TIMESTAMP
  pred (Type'WellKnownType'Unrecognized _)
    = Prelude.error
        "Type'WellKnownType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Type'WellKnownType where
  fieldDefault = Type'WELL_KNOWN_TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData Type'WellKnownType where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&google/api/expr/v1alpha1/checked.proto\DC2\CANgoogle.api.expr.v1alpha1\SUB%google/api/expr/v1alpha1/syntax.proto\SUB\ESCgoogle/protobuf/empty.proto\SUB\FSgoogle/protobuf/struct.proto\"\247\ETX\n\
    \\vCheckedExpr\DC2\\\n\
    \\rreference_map\CAN\STX \ETX(\v27.google.api.expr.v1alpha1.CheckedExpr.ReferenceMapEntryR\freferenceMap\DC2M\n\
    \\btype_map\CAN\ETX \ETX(\v22.google.api.expr.v1alpha1.CheckedExpr.TypeMapEntryR\atypeMap\DC2E\n\
    \\vsource_info\CAN\ENQ \SOH(\v2$.google.api.expr.v1alpha1.SourceInfoR\n\
    \sourceInfo\DC22\n\
    \\EOTexpr\CAN\EOT \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\EOTexpr\SUBd\n\
    \\DC1ReferenceMapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC29\n\
    \\ENQvalue\CAN\STX \SOH(\v2#.google.api.expr.v1alpha1.ReferenceR\ENQvalue:\STX8\SOH\SUBZ\n\
    \\fTypeMapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC24\n\
    \\ENQvalue\CAN\STX \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\ENQvalue:\STX8\SOH\"\200\v\n\
    \\EOTType\DC2*\n\
    \\ETXdyn\CAN\SOH \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\ETXdyn\DC20\n\
    \\EOTnull\CAN\STX \SOH(\SO2\SUB.google.protobuf.NullValueH\NULR\EOTnull\DC2L\n\
    \\tprimitive\CAN\ETX \SOH(\SO2,.google.api.expr.v1alpha1.Type.PrimitiveTypeH\NULR\tprimitive\DC2H\n\
    \\awrapper\CAN\EOT \SOH(\SO2,.google.api.expr.v1alpha1.Type.PrimitiveTypeH\NULR\awrapper\DC2M\n\
    \\n\
    \well_known\CAN\ENQ \SOH(\SO2,.google.api.expr.v1alpha1.Type.WellKnownTypeH\NULR\twellKnown\DC2F\n\
    \\tlist_type\CAN\ACK \SOH(\v2'.google.api.expr.v1alpha1.Type.ListTypeH\NULR\blistType\DC2C\n\
    \\bmap_type\CAN\a \SOH(\v2&.google.api.expr.v1alpha1.Type.MapTypeH\NULR\amapType\DC2I\n\
    \\bfunction\CAN\b \SOH(\v2+.google.api.expr.v1alpha1.Type.FunctionTypeH\NULR\bfunction\DC2#\n\
    \\fmessage_type\CAN\t \SOH(\tH\NULR\vmessageType\DC2\US\n\
    \\n\
    \type_param\CAN\n\
    \ \SOH(\tH\NULR\ttypeParam\DC24\n\
    \\EOTtype\CAN\v \SOH(\v2\RS.google.api.expr.v1alpha1.TypeH\NULR\EOTtype\DC2.\n\
    \\ENQerror\CAN\f \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\ENQerror\DC2R\n\
    \\rabstract_type\CAN\SO \SOH(\v2+.google.api.expr.v1alpha1.Type.AbstractTypeH\NULR\fabstractType\SUBG\n\
    \\bListType\DC2;\n\
    \\telem_type\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\belemType\SUB\131\SOH\n\
    \\aMapType\DC29\n\
    \\bkey_type\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\akeyType\DC2=\n\
    \\n\
    \value_type\CAN\STX \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\tvalueType\SUB\140\SOH\n\
    \\fFunctionType\DC2?\n\
    \\vresult_type\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\n\
    \resultType\DC2;\n\
    \\targ_types\CAN\STX \ETX(\v2\RS.google.api.expr.v1alpha1.TypeR\bargTypes\SUBk\n\
    \\fAbstractType\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2G\n\
    \\SIparameter_types\CAN\STX \ETX(\v2\RS.google.api.expr.v1alpha1.TypeR\SOparameterTypes\"s\n\
    \\rPrimitiveType\DC2\RS\n\
    \\SUBPRIMITIVE_TYPE_UNSPECIFIED\DLE\NUL\DC2\b\n\
    \\EOTBOOL\DLE\SOH\DC2\t\n\
    \\ENQINT64\DLE\STX\DC2\n\
    \\n\
    \\ACKUINT64\DLE\ETX\DC2\n\
    \\n\
    \\ACKDOUBLE\DLE\EOT\DC2\n\
    \\n\
    \\ACKSTRING\DLE\ENQ\DC2\t\n\
    \\ENQBYTES\DLE\ACK\"V\n\
    \\rWellKnownType\DC2\US\n\
    \\ESCWELL_KNOWN_TYPE_UNSPECIFIED\DLE\NUL\DC2\a\n\
    \\ETXANY\DLE\SOH\DC2\r\n\
    \\tTIMESTAMP\DLE\STX\DC2\f\n\
    \\bDURATION\DLE\ETXB\v\n\
    \\ttype_kind\"\179\ENQ\n\
    \\EOTDecl\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2@\n\
    \\ENQident\CAN\STX \SOH(\v2(.google.api.expr.v1alpha1.Decl.IdentDeclH\NULR\ENQident\DC2I\n\
    \\bfunction\CAN\ETX \SOH(\v2+.google.api.expr.v1alpha1.Decl.FunctionDeclH\NULR\bfunction\SUB\139\SOH\n\
    \\tIdentDecl\DC22\n\
    \\EOTtype\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\EOTtype\DC28\n\
    \\ENQvalue\CAN\STX \SOH(\v2\".google.api.expr.v1alpha1.ConstantR\ENQvalue\DC2\DLE\n\
    \\ETXdoc\CAN\ETX \SOH(\tR\ETXdoc\SUB\238\STX\n\
    \\fFunctionDecl\DC2R\n\
    \\toverloads\CAN\SOH \ETX(\v24.google.api.expr.v1alpha1.Decl.FunctionDecl.OverloadR\toverloads\SUB\137\STX\n\
    \\bOverload\DC2\US\n\
    \\voverload_id\CAN\SOH \SOH(\tR\n\
    \overloadId\DC26\n\
    \\ACKparams\CAN\STX \ETX(\v2\RS.google.api.expr.v1alpha1.TypeR\ACKparams\DC2\US\n\
    \\vtype_params\CAN\ETX \ETX(\tR\n\
    \typeParams\DC2?\n\
    \\vresult_type\CAN\EOT \SOH(\v2\RS.google.api.expr.v1alpha1.TypeR\n\
    \resultType\DC20\n\
    \\DC4is_instance_function\CAN\ENQ \SOH(\bR\DC2isInstanceFunction\DC2\DLE\n\
    \\ETXdoc\CAN\ACK \SOH(\tR\ETXdocB\v\n\
    \\tdecl_kind\"z\n\
    \\tReference\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\US\n\
    \\voverload_id\CAN\ETX \ETX(\tR\n\
    \overloadId\DC28\n\
    \\ENQvalue\CAN\EOT \SOH(\v2\".google.api.expr.v1alpha1.ConstantR\ENQvalueBl\n\
    \\FScom.google.api.expr.v1alpha1B\tDeclProtoP\SOHZ<google.golang.org/genproto/googleapis/api/expr/v1alpha1;expr\248\SOH\SOHJ\228^\n\
    \\a\DC2\ENQ\SO\NUL\201\STX\SOH\n\
    \\188\EOT\n\
    \\SOH\f\DC2\ETX\SO\NUL\DC22\177\EOT Copyright 2020 Google LLC\n\
    \\n\
    \ Licensed under the Apache License, Version 2.0 (the \"License\");\n\
    \ you may not use this file except in compliance with the License.\n\
    \ You may obtain a copy of the License at\n\
    \\n\
    \     http://www.apache.org/licenses/LICENSE-2.0\n\
    \\n\
    \ Unless required by applicable law or agreed to in writing, software\n\
    \ distributed under the License is distributed on an \"AS IS\" BASIS,\n\
    \ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n\
    \ See the License for the specific language governing permissions and\n\
    \ limitations under the License.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\DLE\NUL!\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\DC2\NUL/\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\DC3\NUL%\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\DC4\NUL&\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SYN\NUL\US\n\
    \\t\n\
    \\STX\b\US\DC2\ETX\SYN\NUL\US\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETB\NULS\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETB\NULS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\CAN\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\CAN\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EM\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\EM\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SUB\NUL5\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SUB\NUL5\n\
    \\147\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\US\NUL?\SOH\SUB< A CEL expression which has been successfully type checked.\n\
    \2I Protos for representing CEL declarations and typed checked expressions.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\US\b\DC3\n\
    \\251\ENQ\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX/\STX*\SUB\237\ENQ A map from expression ids to resolved references.\n\
    \\n\
    \ The following entries are in this table:\n\
    \\n\
    \ - An Ident or Select expression is represented here if it resolves to a\n\
    \   declaration. For instance, if `a.b.c` is represented by\n\
    \   `select(select(id(a), b), c)`, and `a.b` resolves to a declaration,\n\
    \   while `c` is a field selection, then the reference is attached to the\n\
    \   nested select expression (but not to the id or or the outer select).\n\
    \   In turn, if `a` resolves to a declaration and `b.c` are field selections,\n\
    \   the reference is attached to the ident expression.\n\
    \ - Every Call expression has an entry here, identifying the function being\n\
    \   called.\n\
    \ - Every CreateStruct expression for a message has an entry, identifying\n\
    \   the message.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX/\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX/\CAN%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX/()\n\
    \\207\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX6\STX \SUB\193\SOH A map from expression ids to types.\n\
    \\n\
    \ Every expression node which has a type different than DYN has a mapping\n\
    \ here. If an expression has type DYN, it is omitted from this map to save\n\
    \ space.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX6\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX6\DC3\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX6\RS\US\n\
    \\142\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX:\STX\GS\SUB\128\SOH The source info derived from input that generated the parsed `expr` and\n\
    \ any optimizations made during the type-checking pass.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX:\STX\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX:\r\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX:\ESC\FS\n\
    \z\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX>\STX\DLE\SUBm The checked expression. Semantically equivalent to the parsed `expr`, but\n\
    \ may have structural differences.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX>\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX>\a\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX>\SO\SI\n\
    \%\n\
    \\STX\EOT\SOH\DC2\ENQB\NUL\204\SOH\SOH\SUB\CAN Represents a CEL type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXB\b\f\n\
    \T\n\
    \\EOT\EOT\SOH\ETX\NUL\DC2\EOTD\STXG\ETX\SUBF List type with typed elements, e.g. `list<example.proto.MyMessage>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\NUL\SOH\DC2\ETXD\n\
    \\DC2\n\
    \\"\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\NUL\DC2\ETXF\EOT\ETB\SUB\DC3 The element type.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ACK\DC2\ETXF\EOT\b\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\SOH\DC2\ETXF\t\DC2\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ETX\DC2\ETXF\NAK\SYN\n\
    \Y\n\
    \\EOT\EOT\SOH\ETX\SOH\DC2\EOTJ\STXP\ETX\SUBK Map type with parameterized key and value types, e.g. `map<string, int>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\SOH\SOH\DC2\ETXJ\n\
    \\DC1\n\
    \%\n\
    \\ACK\EOT\SOH\ETX\SOH\STX\NUL\DC2\ETXL\EOT\SYN\SUB\SYN The type of the key.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\ACK\DC2\ETXL\EOT\b\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\SOH\DC2\ETXL\t\DC1\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\ETX\DC2\ETXL\DC4\NAK\n\
    \'\n\
    \\ACK\EOT\SOH\ETX\SOH\STX\SOH\DC2\ETXO\EOT\CAN\SUB\CAN The type of the value.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\ACK\DC2\ETXO\EOT\b\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\SOH\DC2\ETXO\t\DC3\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\ETX\DC2\ETXO\SYN\ETB\n\
    \8\n\
    \\EOT\EOT\SOH\ETX\STX\DC2\EOTS\STXY\ETX\SUB* Function type with result and arg types.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\STX\SOH\DC2\ETXS\n\
    \\SYN\n\
    \-\n\
    \\ACK\EOT\SOH\ETX\STX\STX\NUL\DC2\ETXU\EOT\EM\SUB\RS Result type of the function.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\ACK\DC2\ETXU\EOT\b\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\SOH\DC2\ETXU\t\DC4\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\ETX\DC2\ETXU\ETB\CAN\n\
    \0\n\
    \\ACK\EOT\SOH\ETX\STX\STX\SOH\DC2\ETXX\EOT \SUB! Argument types of the function.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\SOH\EOT\DC2\ETXX\EOT\f\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\SOH\ACK\DC2\ETXX\r\DC1\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\SOH\SOH\DC2\ETXX\DC2\ESC\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\SOH\ETX\DC2\ETXX\RS\US\n\
    \2\n\
    \\EOT\EOT\SOH\ETX\ETX\DC2\EOT\\\STXb\ETX\SUB$ Application defined abstract type.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\ETX\SOH\DC2\ETX\\\n\
    \\SYN\n\
    \@\n\
    \\ACK\EOT\SOH\ETX\ETX\STX\NUL\DC2\ETX^\EOT\DC4\SUB1 The fully qualified name of this abstract type.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\ETX\STX\NUL\ENQ\DC2\ETX^\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\ETX\STX\NUL\SOH\DC2\ETX^\v\SI\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\ETX\STX\NUL\ETX\DC2\ETX^\DC2\DC3\n\
    \8\n\
    \\ACK\EOT\SOH\ETX\ETX\STX\SOH\DC2\ETXa\EOT&\SUB) Parameter types for this abstract type.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\ETX\STX\SOH\EOT\DC2\ETXa\EOT\f\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\ETX\STX\SOH\ACK\DC2\ETXa\r\DC1\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\ETX\STX\SOH\SOH\DC2\ETXa\DC2!\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\ETX\STX\SOH\ETX\DC2\ETXa$%\n\
    \%\n\
    \\EOT\EOT\SOH\EOT\NUL\DC2\ENQe\STX\128\SOH\ETX\SUB\SYN CEL primitive types.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\EOT\NUL\SOH\DC2\ETXe\a\DC4\n\
    \\"\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\NUL\DC2\ETXg\EOT#\SUB\DC3 Unspecified type.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\SOH\DC2\ETXg\EOT\RS\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\STX\DC2\ETXg!\"\n\
    \\RS\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\SOH\DC2\ETXj\EOT\r\SUB\SI Boolean type.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\SOH\DC2\ETXj\EOT\b\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\STX\DC2\ETXj\v\f\n\
    \O\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\STX\DC2\ETXo\EOT\SO\SUB@ Int64 type.\n\
    \\n\
    \ Proto-based integer values are widened to int64.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\SOH\DC2\ETXo\EOT\t\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\STX\DC2\ETXo\f\r\n\
    \Z\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\ETX\DC2\ETXt\EOT\SI\SUBK Uint64 type.\n\
    \\n\
    \ Proto-based unsigned integer values are widened to uint64.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\ETX\SOH\DC2\ETXt\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\ETX\STX\DC2\ETXt\r\SO\n\
    \V\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\EOT\DC2\ETXy\EOT\SI\SUBG Double type.\n\
    \\n\
    \ Proto-based float values are widened to double values.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\EOT\SOH\DC2\ETXy\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\EOT\STX\DC2\ETXy\r\SO\n\
    \\GS\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\ENQ\DC2\ETX|\EOT\SI\SUB\SO String type.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\ENQ\SOH\DC2\ETX|\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\ENQ\STX\DC2\ETX|\r\SO\n\
    \\FS\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\ACK\DC2\ETX\DEL\EOT\SO\SUB\r Bytes type.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\ACK\SOH\DC2\ETX\DEL\EOT\t\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\ACK\STX\DC2\ETX\DEL\f\r\n\
    \T\n\
    \\EOT\EOT\SOH\EOT\SOH\DC2\ACK\131\SOH\STX\147\SOH\ETX\SUBD Well-known protobuf types treated with first-class support in CEL.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\EOT\SOH\SOH\DC2\EOT\131\SOH\a\DC4\n\
    \#\n\
    \\ACK\EOT\SOH\EOT\SOH\STX\NUL\DC2\EOT\133\SOH\EOT$\SUB\DC3 Unspecified type.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\SOH\STX\NUL\SOH\DC2\EOT\133\SOH\EOT\US\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\SOH\STX\NUL\STX\DC2\EOT\133\SOH\"#\n\
    \\240\SOH\n\
    \\ACK\EOT\SOH\EOT\SOH\STX\SOH\DC2\EOT\140\SOH\EOT\f\SUB\223\SOH Well-known protobuf.Any type.\n\
    \\n\
    \ Any types are a polymorphic message type. During type-checking they are\n\
    \ treated like `DYN` types, but at runtime they are resolved to a specific\n\
    \ message type specified at evaluation time.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\SOH\STX\SOH\SOH\DC2\EOT\140\SOH\EOT\a\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\SOH\STX\SOH\STX\DC2\EOT\140\SOH\n\
    \\v\n\
    \[\n\
    \\ACK\EOT\SOH\EOT\SOH\STX\STX\DC2\EOT\143\SOH\EOT\DC2\SUBK Well-known protobuf.Timestamp type, internally referenced as `timestamp`.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\SOH\STX\STX\SOH\DC2\EOT\143\SOH\EOT\r\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\SOH\STX\STX\STX\DC2\EOT\143\SOH\DLE\DC1\n\
    \Y\n\
    \\ACK\EOT\SOH\EOT\SOH\STX\ETX\DC2\EOT\146\SOH\EOT\DC1\SUBI Well-known protobuf.Duration type, internally referenced as `duration`.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\SOH\STX\ETX\SOH\DC2\EOT\146\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\SOH\STX\ETX\STX\DC2\EOT\146\SOH\SI\DLE\n\
    \#\n\
    \\EOT\EOT\SOH\b\NUL\DC2\ACK\150\SOH\STX\203\SOH\ETX\SUB\DC3 The kind of type.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\EOT\150\SOH\b\DC1\n\
    \\GS\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\152\SOH\EOT\"\SUB\SI Dynamic type.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\EOT\152\SOH\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\152\SOH\SUB\GS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\152\SOH !\n\
    \\ESC\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\155\SOH\EOT'\SUB\r Null value.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\EOT\155\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\155\SOH\RS\"\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\155\SOH%&\n\
    \N\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT\158\SOH\EOT \SUB@ Primitive types: `true`, `1u`, `-2.0`, `'string'`, `b'bytes'`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\EOT\158\SOH\EOT\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\EOT\158\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\EOT\158\SOH\RS\US\n\
    \O\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\EOT\161\SOH\EOT\RS\SUBA Wrapper of a primitive type, e.g. `google.protobuf.Int64Value`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\EOT\161\SOH\EOT\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\EOT\161\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\EOT\161\SOH\FS\GS\n\
    \M\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\EOT\164\SOH\EOT!\SUB? Well-known protobuf type such as `google.protobuf.Timestamp`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\EOT\164\SOH\EOT\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\EOT\164\SOH\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\EOT\164\SOH\US \n\
    \X\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\EOT\167\SOH\EOT\ESC\SUBJ Parameterized list with elements of `list_type`, e.g. `list<timestamp>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\EOT\167\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\EOT\167\SOH\r\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\EOT\167\SOH\EM\SUB\n\
    \=\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\EOT\170\SOH\EOT\EM\SUB/ Parameterized map with typed keys and values.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\EOT\170\SOH\EOT\v\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\EOT\170\SOH\f\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\EOT\170\SOH\ETB\CAN\n\
    \\RS\n\
    \\EOT\EOT\SOH\STX\a\DC2\EOT\173\SOH\EOT\RS\SUB\DLE Function type.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ACK\DC2\EOT\173\SOH\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\EOT\173\SOH\DC1\EM\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\EOT\173\SOH\FS\GS\n\
    \\154\SOH\n\
    \\EOT\EOT\SOH\STX\b\DC2\EOT\179\SOH\EOT\FS\SUB\139\SOH Protocol buffer message type.\n\
    \\n\
    \ The `message_type` string specifies the qualified message type name. For\n\
    \ example, `google.plus.Profile`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\ENQ\DC2\EOT\179\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\EOT\179\SOH\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\EOT\179\SOH\SUB\ESC\n\
    \\188\SOH\n\
    \\EOT\EOT\SOH\STX\t\DC2\EOT\186\SOH\EOT\ESC\SUB\173\SOH Type param type.\n\
    \\n\
    \ The `type_param` string specifies the type parameter name, e.g. `list<E>`\n\
    \ would be a `list_type` whose element type was a `type_param` type\n\
    \ named `E`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\ENQ\DC2\EOT\186\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\EOT\186\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\EOT\186\SOH\CAN\SUB\n\
    \\129\SOH\n\
    \\EOT\EOT\SOH\STX\n\
    \\DC2\EOT\192\SOH\EOT\DC3\SUBs Type type.\n\
    \\n\
    \ The `type` value specifies the target type. e.g. int is type with a\n\
    \ target type of `Primitive.INT`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ACK\DC2\EOT\192\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\SOH\DC2\EOT\192\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ETX\DC2\EOT\192\SOH\DLE\DC2\n\
    \\209\SOH\n\
    \\EOT\EOT\SOH\STX\v\DC2\EOT\199\SOH\EOT%\SUB\194\SOH Error type.\n\
    \\n\
    \ During type-checking if an expression is an error, its type is propagated\n\
    \ as the `ERROR` type. This permits the type-checker to discover other\n\
    \ errors present in the expression.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\v\ACK\DC2\EOT\199\SOH\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\v\SOH\DC2\EOT\199\SOH\SUB\US\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\v\ETX\DC2\EOT\199\SOH\"$\n\
    \3\n\
    \\EOT\EOT\SOH\STX\f\DC2\EOT\202\SOH\EOT$\SUB% Abstract, application defined type.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\ACK\DC2\EOT\202\SOH\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\SOH\DC2\EOT\202\SOH\DC1\RS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\ETX\DC2\EOT\202\SOH!#\n\
    \\212\SOH\n\
    \\STX\EOT\STX\DC2\ACK\210\SOH\NUL\181\STX\SOH\SUB\197\SOH Represents a declaration of a named value or function.\n\
    \\n\
    \ A declaration is part of the contract between the expression, the agent\n\
    \ evaluating that expression, and the caller requesting evaluation.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\210\SOH\b\f\n\
    \\196\STX\n\
    \\EOT\EOT\STX\ETX\NUL\DC2\ACK\217\SOH\STX\227\SOH\ETX\SUB\179\STX Identifier declaration which specifies its type and optional `Expr` value.\n\
    \\n\
    \ An identifier without a value is a declaration that must be provided at\n\
    \ evaluation time. An identifier with a value should resolve to a constant,\n\
    \ but may be used in conjunction with other identifiers bound at evaluation\n\
    \ time.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\ETX\NUL\SOH\DC2\EOT\217\SOH\n\
    \\DC3\n\
    \7\n\
    \\ACK\EOT\STX\ETX\NUL\STX\NUL\DC2\EOT\219\SOH\EOT\DC2\SUB' Required. The type of the identifier.\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ACK\DC2\EOT\219\SOH\EOT\b\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\SOH\DC2\EOT\219\SOH\t\r\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ETX\DC2\EOT\219\SOH\DLE\DC1\n\
    \~\n\
    \\ACK\EOT\STX\ETX\NUL\STX\SOH\DC2\EOT\223\SOH\EOT\ETB\SUBn The constant value of the identifier. If not specified, the identifier\n\
    \ must be supplied at evaluation time.\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\ACK\DC2\EOT\223\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\SOH\DC2\EOT\223\SOH\r\DC2\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\ETX\DC2\EOT\223\SOH\NAK\SYN\n\
    \:\n\
    \\ACK\EOT\STX\ETX\NUL\STX\STX\DC2\EOT\226\SOH\EOT\DC3\SUB* Documentation string for the identifier.\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\STX\ENQ\DC2\EOT\226\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\STX\SOH\DC2\EOT\226\SOH\v\SO\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\STX\ETX\DC2\EOT\226\SOH\DC1\DC2\n\
    \\207\STX\n\
    \\EOT\EOT\STX\ETX\SOH\DC2\ACK\235\SOH\STX\161\STX\ETX\SUB\190\STX Function declaration specifies one or more overloads which indicate the\n\
    \ function's parameter types and return type, and may optionally specify a\n\
    \ function definition in terms of CEL expressions.\n\
    \\n\
    \ Functions have no observable side-effects (there may be side-effects like\n\
    \ logging which are not observable from CEL).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\ETX\SOH\SOH\DC2\EOT\235\SOH\n\
    \\SYN\n\
    \\238\ETX\n\
    \\ACK\EOT\STX\ETX\SOH\ETX\NUL\DC2\ACK\246\SOH\EOT\157\STX\ENQ\SUB\219\ETX An overload indicates a function's parameter types and return type, and\n\
    \ may optionally include a function body described in terms of [Expr][google.api.expr.v1alpha1.Expr]\n\
    \ values.\n\
    \\n\
    \ Functions overloads are declared in either a function or method\n\
    \ call-style. For methods, the `params[0]` is the expected type of the\n\
    \ target receiver.\n\
    \\n\
    \ Overloads must have non-overlapping argument types after erasure of all\n\
    \ parameterized type variables (similar as type erasure in Java).\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\SOH\ETX\NUL\SOH\DC2\EOT\246\SOH\f\DC4\n\
    \\149\STX\n\
    \\b\EOT\STX\ETX\SOH\ETX\NUL\STX\NUL\DC2\EOT\252\SOH\ACK\GS\SUB\130\STX Required. Globally unique overload name of the function which reflects\n\
    \ the function name and argument types.\n\
    \\n\
    \ This will be used by a [Reference][google.api.expr.v1alpha1.Reference] to indicate the `overload_id` that\n\
    \ was resolved for the function `name`.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\NUL\ENQ\DC2\EOT\252\SOH\ACK\f\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\NUL\SOH\DC2\EOT\252\SOH\r\CAN\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\NUL\ETX\DC2\EOT\252\SOH\ESC\FS\n\
    \\176\EOT\n\
    \\b\EOT\STX\ETX\SOH\ETX\NUL\STX\SOH\DC2\EOT\136\STX\ACK\US\SUB\157\EOT List of function parameter [Type][google.api.expr.v1alpha1.Type] values.\n\
    \\n\
    \ Param types are disjoint after generic type parameters have been\n\
    \ replaced with the type `DYN`. Since the `DYN` type is compatible with\n\
    \ any other type, this means that if `A` is a type parameter, the\n\
    \ function types `int<A>` and `int<int>` are not disjoint. Likewise,\n\
    \ `map<string, string>` is not disjoint from `map<K, V>`.\n\
    \\n\
    \ When the `result_type` of a function is a generic type param, the\n\
    \ type param name also appears as the `type` of on at least one params.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\SOH\EOT\DC2\EOT\136\STX\ACK\SO\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\SOH\ACK\DC2\EOT\136\STX\SI\DC3\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\SOH\SOH\DC2\EOT\136\STX\DC4\SUB\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\SOH\ETX\DC2\EOT\136\STX\GS\RS\n\
    \\183\SOH\n\
    \\b\EOT\STX\ETX\SOH\ETX\NUL\STX\STX\DC2\EOT\142\STX\ACK&\SUB\164\SOH The type param names associated with the function declaration.\n\
    \\n\
    \ For example, `function ex<K,V>(K key, map<K, V> map) : V` would yield\n\
    \ the type params of `K, V`.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\STX\EOT\DC2\EOT\142\STX\ACK\SO\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\STX\ENQ\DC2\EOT\142\STX\SI\NAK\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\STX\SOH\DC2\EOT\142\STX\SYN!\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\STX\ETX\DC2\EOT\142\STX$%\n\
    \\151\SOH\n\
    \\b\EOT\STX\ETX\SOH\ETX\NUL\STX\ETX\DC2\EOT\146\STX\ACK\ESC\SUB\132\SOH Required. The result type of the function. For example, the operator\n\
    \ `string.isEmpty()` would have `result_type` of `kind: BOOL`.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\ETX\ACK\DC2\EOT\146\STX\ACK\n\
    \\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\ETX\SOH\DC2\EOT\146\STX\v\SYN\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\ETX\ETX\DC2\EOT\146\STX\EM\SUB\n\
    \\234\SOH\n\
    \\b\EOT\STX\ETX\SOH\ETX\NUL\STX\EOT\DC2\EOT\153\STX\ACK$\SUB\215\SOH Whether the function is to be used in a method call-style `x.f(...)`\n\
    \ of a function call-style `f(x, ...)`.\n\
    \\n\
    \ For methods, the first parameter declaration, `params[0]` is the\n\
    \ expected type of the target receiver.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\EOT\ENQ\DC2\EOT\153\STX\ACK\n\
    \\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\EOT\SOH\DC2\EOT\153\STX\v\US\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\EOT\ETX\DC2\EOT\153\STX\"#\n\
    \:\n\
    \\b\EOT\STX\ETX\SOH\ETX\NUL\STX\ENQ\DC2\EOT\156\STX\ACK\NAK\SUB( Documentation string for the overload.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\ENQ\ENQ\DC2\EOT\156\STX\ACK\f\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\ENQ\SOH\DC2\EOT\156\STX\r\DLE\n\
    \\DC1\n\
    \\t\EOT\STX\ETX\SOH\ETX\NUL\STX\ENQ\ETX\DC2\EOT\156\STX\DC3\DC4\n\
    \[\n\
    \\ACK\EOT\STX\ETX\SOH\STX\NUL\DC2\EOT\160\STX\EOT$\SUBK Required. List of function overloads, must contain at least one overload.\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\EOT\DC2\EOT\160\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\ACK\DC2\EOT\160\STX\r\NAK\n\
    \\SI\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\SOH\DC2\EOT\160\STX\SYN\US\n\
    \\SI\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\ETX\DC2\EOT\160\STX\"#\n\
    \\232\ETX\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\171\STX\STX\DC2\SUB\217\ETX The fully qualified name of the declaration.\n\
    \\n\
    \ Declarations are organized in containers and this represents the full path\n\
    \ to the declaration in its container, as in `google.api.expr.Decl`.\n\
    \\n\
    \ Declarations used as [FunctionDecl.Overload][google.api.expr.v1alpha1.Decl.FunctionDecl.Overload] parameters may or may not\n\
    \ have a name depending on whether the overload is function declaration or a\n\
    \ function definition containing a result [Expr][google.api.expr.v1alpha1.Expr].\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\EOT\171\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\171\STX\t\r\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\171\STX\DLE\DC1\n\
    \1\n\
    \\EOT\EOT\STX\b\NUL\DC2\ACK\174\STX\STX\180\STX\ETX\SUB! Required. The declaration kind.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\b\NUL\SOH\DC2\EOT\174\STX\b\DC1\n\
    \'\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\176\STX\EOT\CAN\SUB\EM Identifier declaration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\EOT\176\STX\EOT\r\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\176\STX\SO\DC3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\176\STX\SYN\ETB\n\
    \%\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\179\STX\EOT\RS\SUB\ETB Function declaration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\EOT\179\STX\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\179\STX\DC1\EM\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\179\STX\FS\GS\n\
    \@\n\
    \\STX\EOT\ETX\DC2\ACK\184\STX\NUL\201\STX\SOH\SUB2 Describes a resolved reference to a declaration.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\184\STX\b\DC1\n\
    \<\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\186\STX\STX\DC2\SUB. The fully qualified name of the declaration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\186\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\186\STX\t\r\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\186\STX\DLE\DC1\n\
    \\197\ETX\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\196\STX\STX\"\SUB\182\ETX For references to functions, this is a list of `Overload.overload_id`\n\
    \ values which match according to typing rules.\n\
    \\n\
    \ If the list has more than one element, overload resolution among the\n\
    \ presented candidates must happen at runtime because of dynamic types. The\n\
    \ type checker attempts to narrow down this list as much as possible.\n\
    \\n\
    \ Empty if this is not a reference to a [Decl.FunctionDecl][google.api.expr.v1alpha1.Decl.FunctionDecl].\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\EOT\196\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\EOT\196\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\196\STX\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\196\STX !\n\
    \r\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOT\200\STX\STX\NAK\SUBd For references to constants, this may contain the value of the\n\
    \ constant if known at compile time.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\EOT\200\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\EOT\200\STX\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\EOT\200\STX\DC3\DC4b\ACKproto3"