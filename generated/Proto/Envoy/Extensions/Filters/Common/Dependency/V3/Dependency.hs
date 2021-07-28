{- This file was auto-generated from envoy/extensions/filters/common/dependency/v3/dependency.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Common.Dependency.V3.Dependency (
        Dependency(), Dependency'DependencyType(..),
        Dependency'DependencyType(),
        Dependency'DependencyType'UnrecognizedValue, FilterDependencies(),
        MatchingRequirements(), MatchingRequirements'DataInputAllowList()
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
     
         * 'Proto.Envoy.Extensions.Filters.Common.Dependency.V3.Dependency_Fields.type'' @:: Lens' Dependency Dependency'DependencyType@
         * 'Proto.Envoy.Extensions.Filters.Common.Dependency.V3.Dependency_Fields.name' @:: Lens' Dependency Data.Text.Text@ -}
data Dependency
  = Dependency'_constructor {_Dependency'type' :: !Dependency'DependencyType,
                             _Dependency'name :: !Data.Text.Text,
                             _Dependency'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Dependency where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Dependency "type'" Dependency'DependencyType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Dependency'type' (\ x__ y__ -> x__ {_Dependency'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Dependency "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Dependency'name (\ x__ y__ -> x__ {_Dependency'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message Dependency where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.common.dependency.v3.Dependency"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Dependency\DC2\\\n\
      \\EOTtype\CAN\SOH \SOH(\SO2H.envoy.extensions.filters.common.dependency.v3.Dependency.DependencyTypeR\EOTtype\DC2\ESC\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\"H\n\
      \\SODependencyType\DC2\n\
      \\n\
      \\ACKHEADER\DLE\NUL\DC2\DC4\n\
      \\DLEFILTER_STATE_KEY\DLE\SOH\DC2\DC4\n\
      \\DLEDYNAMIC_METADATA\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Dependency'DependencyType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor Dependency
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor Dependency
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Dependency'_unknownFields
        (\ x__ y__ -> x__ {_Dependency'_unknownFields = y__})
  defMessage
    = Dependency'_constructor
        {_Dependency'type' = Data.ProtoLens.fieldDefault,
         _Dependency'name = Data.ProtoLens.fieldDefault,
         _Dependency'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Dependency -> Data.ProtoLens.Encoding.Bytes.Parser Dependency
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Dependency"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum
                         _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
instance Control.DeepSeq.NFData Dependency where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Dependency'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Dependency'type' x__)
                (Control.DeepSeq.deepseq (_Dependency'name x__) ()))
newtype Dependency'DependencyType'UnrecognizedValue
  = Dependency'DependencyType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Dependency'DependencyType
  = Dependency'HEADER |
    Dependency'FILTER_STATE_KEY |
    Dependency'DYNAMIC_METADATA |
    Dependency'DependencyType'Unrecognized !Dependency'DependencyType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Dependency'DependencyType where
  maybeToEnum 0 = Prelude.Just Dependency'HEADER
  maybeToEnum 1 = Prelude.Just Dependency'FILTER_STATE_KEY
  maybeToEnum 2 = Prelude.Just Dependency'DYNAMIC_METADATA
  maybeToEnum k
    = Prelude.Just
        (Dependency'DependencyType'Unrecognized
           (Dependency'DependencyType'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum Dependency'HEADER = "HEADER"
  showEnum Dependency'FILTER_STATE_KEY = "FILTER_STATE_KEY"
  showEnum Dependency'DYNAMIC_METADATA = "DYNAMIC_METADATA"
  showEnum
    (Dependency'DependencyType'Unrecognized (Dependency'DependencyType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "HEADER" = Prelude.Just Dependency'HEADER
    | (Prelude.==) k "FILTER_STATE_KEY"
    = Prelude.Just Dependency'FILTER_STATE_KEY
    | (Prelude.==) k "DYNAMIC_METADATA"
    = Prelude.Just Dependency'DYNAMIC_METADATA
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Dependency'DependencyType where
  minBound = Dependency'HEADER
  maxBound = Dependency'DYNAMIC_METADATA
instance Prelude.Enum Dependency'DependencyType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum DependencyType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Dependency'HEADER = 0
  fromEnum Dependency'FILTER_STATE_KEY = 1
  fromEnum Dependency'DYNAMIC_METADATA = 2
  fromEnum
    (Dependency'DependencyType'Unrecognized (Dependency'DependencyType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Dependency'DYNAMIC_METADATA
    = Prelude.error
        "Dependency'DependencyType.succ: bad argument Dependency'DYNAMIC_METADATA. This value would be out of bounds."
  succ Dependency'HEADER = Dependency'FILTER_STATE_KEY
  succ Dependency'FILTER_STATE_KEY = Dependency'DYNAMIC_METADATA
  succ (Dependency'DependencyType'Unrecognized _)
    = Prelude.error
        "Dependency'DependencyType.succ: bad argument: unrecognized value"
  pred Dependency'HEADER
    = Prelude.error
        "Dependency'DependencyType.pred: bad argument Dependency'HEADER. This value would be out of bounds."
  pred Dependency'FILTER_STATE_KEY = Dependency'HEADER
  pred Dependency'DYNAMIC_METADATA = Dependency'FILTER_STATE_KEY
  pred (Dependency'DependencyType'Unrecognized _)
    = Prelude.error
        "Dependency'DependencyType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Dependency'DependencyType where
  fieldDefault = Dependency'HEADER
instance Control.DeepSeq.NFData Dependency'DependencyType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Common.Dependency.V3.Dependency_Fields.decodeRequired' @:: Lens' FilterDependencies [Dependency]@
         * 'Proto.Envoy.Extensions.Filters.Common.Dependency.V3.Dependency_Fields.vec'decodeRequired' @:: Lens' FilterDependencies (Data.Vector.Vector Dependency)@
         * 'Proto.Envoy.Extensions.Filters.Common.Dependency.V3.Dependency_Fields.decodeProvided' @:: Lens' FilterDependencies [Dependency]@
         * 'Proto.Envoy.Extensions.Filters.Common.Dependency.V3.Dependency_Fields.vec'decodeProvided' @:: Lens' FilterDependencies (Data.Vector.Vector Dependency)@
         * 'Proto.Envoy.Extensions.Filters.Common.Dependency.V3.Dependency_Fields.encodeRequired' @:: Lens' FilterDependencies [Dependency]@
         * 'Proto.Envoy.Extensions.Filters.Common.Dependency.V3.Dependency_Fields.vec'encodeRequired' @:: Lens' FilterDependencies (Data.Vector.Vector Dependency)@
         * 'Proto.Envoy.Extensions.Filters.Common.Dependency.V3.Dependency_Fields.encodeProvided' @:: Lens' FilterDependencies [Dependency]@
         * 'Proto.Envoy.Extensions.Filters.Common.Dependency.V3.Dependency_Fields.vec'encodeProvided' @:: Lens' FilterDependencies (Data.Vector.Vector Dependency)@ -}
data FilterDependencies
  = FilterDependencies'_constructor {_FilterDependencies'decodeRequired :: !(Data.Vector.Vector Dependency),
                                     _FilterDependencies'decodeProvided :: !(Data.Vector.Vector Dependency),
                                     _FilterDependencies'encodeRequired :: !(Data.Vector.Vector Dependency),
                                     _FilterDependencies'encodeProvided :: !(Data.Vector.Vector Dependency),
                                     _FilterDependencies'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FilterDependencies where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FilterDependencies "decodeRequired" [Dependency] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterDependencies'decodeRequired
           (\ x__ y__ -> x__ {_FilterDependencies'decodeRequired = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FilterDependencies "vec'decodeRequired" (Data.Vector.Vector Dependency) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterDependencies'decodeRequired
           (\ x__ y__ -> x__ {_FilterDependencies'decodeRequired = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterDependencies "decodeProvided" [Dependency] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterDependencies'decodeProvided
           (\ x__ y__ -> x__ {_FilterDependencies'decodeProvided = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FilterDependencies "vec'decodeProvided" (Data.Vector.Vector Dependency) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterDependencies'decodeProvided
           (\ x__ y__ -> x__ {_FilterDependencies'decodeProvided = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterDependencies "encodeRequired" [Dependency] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterDependencies'encodeRequired
           (\ x__ y__ -> x__ {_FilterDependencies'encodeRequired = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FilterDependencies "vec'encodeRequired" (Data.Vector.Vector Dependency) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterDependencies'encodeRequired
           (\ x__ y__ -> x__ {_FilterDependencies'encodeRequired = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterDependencies "encodeProvided" [Dependency] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterDependencies'encodeProvided
           (\ x__ y__ -> x__ {_FilterDependencies'encodeProvided = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FilterDependencies "vec'encodeProvided" (Data.Vector.Vector Dependency) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterDependencies'encodeProvided
           (\ x__ y__ -> x__ {_FilterDependencies'encodeProvided = y__}))
        Prelude.id
instance Data.ProtoLens.Message FilterDependencies where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.common.dependency.v3.FilterDependencies"
  packedMessageDescriptor _
    = "\n\
      \\DC2FilterDependencies\DC2b\n\
      \\SIdecode_required\CAN\SOH \ETX(\v29.envoy.extensions.filters.common.dependency.v3.DependencyR\SOdecodeRequired\DC2b\n\
      \\SIdecode_provided\CAN\STX \ETX(\v29.envoy.extensions.filters.common.dependency.v3.DependencyR\SOdecodeProvided\DC2b\n\
      \\SIencode_required\CAN\ETX \ETX(\v29.envoy.extensions.filters.common.dependency.v3.DependencyR\SOencodeRequired\DC2b\n\
      \\SIencode_provided\CAN\EOT \ETX(\v29.envoy.extensions.filters.common.dependency.v3.DependencyR\SOencodeProvided"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        decodeRequired__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "decode_required"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Dependency)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"decodeRequired")) ::
              Data.ProtoLens.FieldDescriptor FilterDependencies
        decodeProvided__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "decode_provided"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Dependency)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"decodeProvided")) ::
              Data.ProtoLens.FieldDescriptor FilterDependencies
        encodeRequired__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "encode_required"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Dependency)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"encodeRequired")) ::
              Data.ProtoLens.FieldDescriptor FilterDependencies
        encodeProvided__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "encode_provided"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Dependency)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"encodeProvided")) ::
              Data.ProtoLens.FieldDescriptor FilterDependencies
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, decodeRequired__field_descriptor),
           (Data.ProtoLens.Tag 2, decodeProvided__field_descriptor),
           (Data.ProtoLens.Tag 3, encodeRequired__field_descriptor),
           (Data.ProtoLens.Tag 4, encodeProvided__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FilterDependencies'_unknownFields
        (\ x__ y__ -> x__ {_FilterDependencies'_unknownFields = y__})
  defMessage
    = FilterDependencies'_constructor
        {_FilterDependencies'decodeRequired = Data.Vector.Generic.empty,
         _FilterDependencies'decodeProvided = Data.Vector.Generic.empty,
         _FilterDependencies'encodeRequired = Data.Vector.Generic.empty,
         _FilterDependencies'encodeProvided = Data.Vector.Generic.empty,
         _FilterDependencies'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FilterDependencies
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Dependency
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Dependency
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Dependency
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Dependency
                      -> Data.ProtoLens.Encoding.Bytes.Parser FilterDependencies
        loop
          x
          mutable'decodeProvided
          mutable'decodeRequired
          mutable'encodeProvided
          mutable'encodeRequired
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'decodeProvided <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'decodeProvided)
                      frozen'decodeRequired <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'decodeRequired)
                      frozen'encodeProvided <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'encodeProvided)
                      frozen'encodeRequired <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'encodeRequired)
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
                              (Data.ProtoLens.Field.field @"vec'decodeProvided")
                              frozen'decodeProvided
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'decodeRequired")
                                 frozen'decodeRequired
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'encodeProvided")
                                    frozen'encodeProvided
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'encodeRequired")
                                       frozen'encodeRequired
                                       x)))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "decode_required"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'decodeRequired y)
                                loop
                                  x
                                  mutable'decodeProvided
                                  v
                                  mutable'encodeProvided
                                  mutable'encodeRequired
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "decode_provided"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'decodeProvided y)
                                loop
                                  x
                                  v
                                  mutable'decodeRequired
                                  mutable'encodeProvided
                                  mutable'encodeRequired
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "encode_required"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'encodeRequired y)
                                loop
                                  x
                                  mutable'decodeProvided
                                  mutable'decodeRequired
                                  mutable'encodeProvided
                                  v
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "encode_provided"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'encodeProvided y)
                                loop
                                  x
                                  mutable'decodeProvided
                                  mutable'decodeRequired
                                  v
                                  mutable'encodeRequired
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'decodeProvided
                                  mutable'decodeRequired
                                  mutable'encodeProvided
                                  mutable'encodeRequired
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'decodeProvided <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              mutable'decodeRequired <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              mutable'encodeProvided <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              mutable'encodeRequired <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'decodeProvided
                mutable'decodeRequired
                mutable'encodeProvided
                mutable'encodeRequired)
          "FilterDependencies"
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
                   (Data.ProtoLens.Field.field @"vec'decodeRequired") _x))
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
                      (Data.ProtoLens.Field.field @"vec'decodeProvided") _x))
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
                                 Data.ProtoLens.encodeMessage
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'encodeRequired") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
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
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'encodeProvided") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData FilterDependencies where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FilterDependencies'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FilterDependencies'decodeRequired x__)
                (Control.DeepSeq.deepseq
                   (_FilterDependencies'decodeProvided x__)
                   (Control.DeepSeq.deepseq
                      (_FilterDependencies'encodeRequired x__)
                      (Control.DeepSeq.deepseq
                         (_FilterDependencies'encodeProvided x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Common.Dependency.V3.Dependency_Fields.dataInputAllowList' @:: Lens' MatchingRequirements MatchingRequirements'DataInputAllowList@
         * 'Proto.Envoy.Extensions.Filters.Common.Dependency.V3.Dependency_Fields.maybe'dataInputAllowList' @:: Lens' MatchingRequirements (Prelude.Maybe MatchingRequirements'DataInputAllowList)@ -}
data MatchingRequirements
  = MatchingRequirements'_constructor {_MatchingRequirements'dataInputAllowList :: !(Prelude.Maybe MatchingRequirements'DataInputAllowList),
                                       _MatchingRequirements'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MatchingRequirements where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MatchingRequirements "dataInputAllowList" MatchingRequirements'DataInputAllowList where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchingRequirements'dataInputAllowList
           (\ x__ y__
              -> x__ {_MatchingRequirements'dataInputAllowList = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MatchingRequirements "maybe'dataInputAllowList" (Prelude.Maybe MatchingRequirements'DataInputAllowList) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchingRequirements'dataInputAllowList
           (\ x__ y__
              -> x__ {_MatchingRequirements'dataInputAllowList = y__}))
        Prelude.id
instance Data.ProtoLens.Message MatchingRequirements where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.common.dependency.v3.MatchingRequirements"
  packedMessageDescriptor _
    = "\n\
      \\DC4MatchingRequirements\DC2\137\SOH\n\
      \\NAKdata_input_allow_list\CAN\SOH \SOH(\v2V.envoy.extensions.filters.common.dependency.v3.MatchingRequirements.DataInputAllowListR\DC2dataInputAllowList\SUB/\n\
      \\DC2DataInputAllowList\DC2\EM\n\
      \\btype_url\CAN\SOH \ETX(\tR\atypeUrl"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dataInputAllowList__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data_input_allow_list"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MatchingRequirements'DataInputAllowList)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dataInputAllowList")) ::
              Data.ProtoLens.FieldDescriptor MatchingRequirements
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dataInputAllowList__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MatchingRequirements'_unknownFields
        (\ x__ y__ -> x__ {_MatchingRequirements'_unknownFields = y__})
  defMessage
    = MatchingRequirements'_constructor
        {_MatchingRequirements'dataInputAllowList = Prelude.Nothing,
         _MatchingRequirements'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MatchingRequirements
          -> Data.ProtoLens.Encoding.Bytes.Parser MatchingRequirements
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
                                       "data_input_allow_list"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dataInputAllowList") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MatchingRequirements"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'dataInputAllowList") _x
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
instance Control.DeepSeq.NFData MatchingRequirements where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MatchingRequirements'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MatchingRequirements'dataInputAllowList x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Common.Dependency.V3.Dependency_Fields.typeUrl' @:: Lens' MatchingRequirements'DataInputAllowList [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Common.Dependency.V3.Dependency_Fields.vec'typeUrl' @:: Lens' MatchingRequirements'DataInputAllowList (Data.Vector.Vector Data.Text.Text)@ -}
data MatchingRequirements'DataInputAllowList
  = MatchingRequirements'DataInputAllowList'_constructor {_MatchingRequirements'DataInputAllowList'typeUrl :: !(Data.Vector.Vector Data.Text.Text),
                                                          _MatchingRequirements'DataInputAllowList'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MatchingRequirements'DataInputAllowList where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MatchingRequirements'DataInputAllowList "typeUrl" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchingRequirements'DataInputAllowList'typeUrl
           (\ x__ y__
              -> x__ {_MatchingRequirements'DataInputAllowList'typeUrl = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MatchingRequirements'DataInputAllowList "vec'typeUrl" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MatchingRequirements'DataInputAllowList'typeUrl
           (\ x__ y__
              -> x__ {_MatchingRequirements'DataInputAllowList'typeUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Message MatchingRequirements'DataInputAllowList where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.common.dependency.v3.MatchingRequirements.DataInputAllowList"
  packedMessageDescriptor _
    = "\n\
      \\DC2DataInputAllowList\DC2\EM\n\
      \\btype_url\CAN\SOH \ETX(\tR\atypeUrl"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        typeUrl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type_url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"typeUrl")) ::
              Data.ProtoLens.FieldDescriptor MatchingRequirements'DataInputAllowList
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, typeUrl__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MatchingRequirements'DataInputAllowList'_unknownFields
        (\ x__ y__
           -> x__
                {_MatchingRequirements'DataInputAllowList'_unknownFields = y__})
  defMessage
    = MatchingRequirements'DataInputAllowList'_constructor
        {_MatchingRequirements'DataInputAllowList'typeUrl = Data.Vector.Generic.empty,
         _MatchingRequirements'DataInputAllowList'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MatchingRequirements'DataInputAllowList
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser MatchingRequirements'DataInputAllowList
        loop x mutable'typeUrl
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'typeUrl <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'typeUrl)
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
                              (Data.ProtoLens.Field.field @"vec'typeUrl") frozen'typeUrl x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "type_url"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'typeUrl y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'typeUrl
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'typeUrl <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'typeUrl)
          "DataInputAllowList"
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
                           Data.Text.Encoding.encodeUtf8
                           _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'typeUrl") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MatchingRequirements'DataInputAllowList where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MatchingRequirements'DataInputAllowList'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MatchingRequirements'DataInputAllowList'typeUrl x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \>envoy/extensions/filters/common/dependency/v3/dependency.proto\DC2-envoy.extensions.filters.common.dependency.v3\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\209\SOH\n\
    \\n\
    \Dependency\DC2\\\n\
    \\EOTtype\CAN\SOH \SOH(\SO2H.envoy.extensions.filters.common.dependency.v3.Dependency.DependencyTypeR\EOTtype\DC2\ESC\n\
    \\EOTname\CAN\STX \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\"H\n\
    \\SODependencyType\DC2\n\
    \\n\
    \\ACKHEADER\DLE\NUL\DC2\DC4\n\
    \\DLEFILTER_STATE_KEY\DLE\SOH\DC2\DC4\n\
    \\DLEDYNAMIC_METADATA\DLE\STX\"\164\ETX\n\
    \\DC2FilterDependencies\DC2b\n\
    \\SIdecode_required\CAN\SOH \ETX(\v29.envoy.extensions.filters.common.dependency.v3.DependencyR\SOdecodeRequired\DC2b\n\
    \\SIdecode_provided\CAN\STX \ETX(\v29.envoy.extensions.filters.common.dependency.v3.DependencyR\SOdecodeProvided\DC2b\n\
    \\SIencode_required\CAN\ETX \ETX(\v29.envoy.extensions.filters.common.dependency.v3.DependencyR\SOencodeRequired\DC2b\n\
    \\SIencode_provided\CAN\EOT \ETX(\v29.envoy.extensions.filters.common.dependency.v3.DependencyR\SOencodeProvided\"\211\SOH\n\
    \\DC4MatchingRequirements\DC2\137\SOH\n\
    \\NAKdata_input_allow_list\CAN\SOH \SOH(\v2V.envoy.extensions.filters.common.dependency.v3.MatchingRequirements.DataInputAllowListR\DC2dataInputAllowList\SUB/\n\
    \\DC2DataInputAllowList\DC2\EM\n\
    \\btype_url\CAN\SOH \ETX(\tR\atypeUrlBX\n\
    \;io.envoyproxy.envoy.extensions.filters.common.dependency.v3B\SIDependencyProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\250\SO\n\
    \\ACK\DC2\EOT\NUL\NUL:\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL6\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULT\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\a\NULT\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL0\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\b\NUL0\n\
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
    \s\n\
    \\STX\EOT\NUL\DC2\EOT\SI\NUL\ESC\SOH\SUB1 Dependency specification and string identifier.\n\
    \24 [#protodoc-title: Filter dependency specification]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SI\b\DC2\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\DLE\STX\DC4\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\DLE\a\NAK\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\DC1\EOT\SI\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC1\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\DC1\r\SO\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\DC2\EOT\EM\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC2\EOT\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\DC2\ETB\CAN\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX\DC3\EOT\EM\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX\DC3\EOT\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX\DC3\ETB\CAN\n\
    \&\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ETB\STX\SUB\SUB\EM The kind of dependency.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ETB\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETB\CAN\EM\n\
    \8\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SUB\STX;\SUB+ The string identifier for the dependency.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SUB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SUB\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SUB\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\SUB\DC2:\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\SO\DC2\ETX\SUB\DC39\n\
    \\157\SOH\n\
    \\STX\EOT\SOH\DC2\EOT\US\NUL+\SOH\SUB\144\SOH Dependency specification for a filter. For a filter chain to be valid, any\n\
    \ dependency that is required must be provided by an earlier filter.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\US\b\SUB\n\
    \B\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX!\STX*\SUB5 A list of dependencies required on the decode path.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX!\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX!\SYN%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX!()\n\
    \B\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX$\STX*\SUB5 A list of dependencies provided on the encode path.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX$\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX$\SYN%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX$()\n\
    \B\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX'\STX*\SUB5 A list of dependencies required on the decode path.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX'\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX'\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX'\SYN%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX'()\n\
    \B\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX*\STX*\SUB5 A list of dependencies provided on the encode path.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETX*\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX*\SYN%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX*()\n\
    \\211\STX\n\
    \\STX\EOT\STX\DC2\EOT3\NUL:\SOH\SUB\198\STX Matching requirements for a filter. For a match tree to be used with a filter, the match\n\
    \ requirements must be satisfied.\n\
    \\n\
    \ This protobuf is provided by the filter implementation as a way to communicate the matching\n\
    \ requirements to the filter factories, allowing for config rejection if the requirements are\n\
    \ not satisfied.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX3\b\FS\n\
    \\f\n\
    \\EOT\EOT\STX\ETX\NUL\DC2\EOT4\STX7\ETX\n\
    \\f\n\
    \\ENQ\EOT\STX\ETX\NUL\SOH\DC2\ETX4\n\
    \\FS\n\
    \^\n\
    \\ACK\EOT\STX\ETX\NUL\STX\NUL\DC2\ETX6\EOT!\SUBO An explicit list of data inputs that are allowed to be used with this filter.\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\EOT\DC2\ETX6\EOT\f\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ENQ\DC2\ETX6\r\DC3\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\SOH\DC2\ETX6\DC4\FS\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ETX\DC2\ETX6\US \n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX9\STX/\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX9\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX9\NAK*\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX9-.b\ACKproto3"