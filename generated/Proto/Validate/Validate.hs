{- This file was auto-generated from validate/validate.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Validate.Validate (
        AnyRules(), BoolRules(), BytesRules(), BytesRules'WellKnown(..),
        _BytesRules'Ip, _BytesRules'Ipv4, _BytesRules'Ipv6, DoubleRules(),
        DurationRules(), EnumRules(), FieldRules(), FieldRules'Type(..),
        _FieldRules'Float, _FieldRules'Double, _FieldRules'Int32,
        _FieldRules'Int64, _FieldRules'Uint32, _FieldRules'Uint64,
        _FieldRules'Sint32, _FieldRules'Sint64, _FieldRules'Fixed32,
        _FieldRules'Fixed64, _FieldRules'Sfixed32, _FieldRules'Sfixed64,
        _FieldRules'Bool, _FieldRules'String, _FieldRules'Bytes,
        _FieldRules'Enum, _FieldRules'Repeated, _FieldRules'Map,
        _FieldRules'Any, _FieldRules'Duration, _FieldRules'Timestamp,
        Fixed32Rules(), Fixed64Rules(), FloatRules(), Int32Rules(),
        Int64Rules(), KnownRegex(..), KnownRegex(), MapRules(),
        MessageRules(), RepeatedRules(), SFixed32Rules(), SFixed64Rules(),
        SInt32Rules(), SInt64Rules(), StringRules(),
        StringRules'WellKnown(..), _StringRules'Email,
        _StringRules'Hostname, _StringRules'Ip, _StringRules'Ipv4,
        _StringRules'Ipv6, _StringRules'Uri, _StringRules'UriRef,
        _StringRules'Address, _StringRules'Uuid,
        _StringRules'WellKnownRegex, TimestampRules(), UInt32Rules(),
        UInt64Rules()
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Timestamp
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.required' @:: Lens' AnyRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'required' @:: Lens' AnyRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.in'' @:: Lens' AnyRules [Data.Text.Text]@
         * 'Proto.Validate.Validate_Fields.vec'in'' @:: Lens' AnyRules (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Validate.Validate_Fields.notIn' @:: Lens' AnyRules [Data.Text.Text]@
         * 'Proto.Validate.Validate_Fields.vec'notIn' @:: Lens' AnyRules (Data.Vector.Vector Data.Text.Text)@ -}
data AnyRules
  = AnyRules'_constructor {_AnyRules'required :: !(Prelude.Maybe Prelude.Bool),
                           _AnyRules'in' :: !(Data.Vector.Vector Data.Text.Text),
                           _AnyRules'notIn :: !(Data.Vector.Vector Data.Text.Text),
                           _AnyRules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AnyRules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AnyRules "required" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyRules'required (\ x__ y__ -> x__ {_AnyRules'required = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AnyRules "maybe'required" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyRules'required (\ x__ y__ -> x__ {_AnyRules'required = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AnyRules "in'" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyRules'in' (\ x__ y__ -> x__ {_AnyRules'in' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AnyRules "vec'in'" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyRules'in' (\ x__ y__ -> x__ {_AnyRules'in' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AnyRules "notIn" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyRules'notIn (\ x__ y__ -> x__ {_AnyRules'notIn = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AnyRules "vec'notIn" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AnyRules'notIn (\ x__ y__ -> x__ {_AnyRules'notIn = y__}))
        Prelude.id
instance Data.ProtoLens.Message AnyRules where
  messageName _ = Data.Text.pack "validate.AnyRules"
  packedMessageDescriptor _
    = "\n\
      \\bAnyRules\DC2\SUB\n\
      \\brequired\CAN\SOH \SOH(\bR\brequired\DC2\SO\n\
      \\STXin\CAN\STX \ETX(\tR\STXin\DC2\NAK\n\
      \\ACKnot_in\CAN\ETX \ETX(\tR\ENQnotIn"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        required__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "required"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'required")) ::
              Data.ProtoLens.FieldDescriptor AnyRules
        in'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"in'")) ::
              Data.ProtoLens.FieldDescriptor AnyRules
        notIn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"notIn")) ::
              Data.ProtoLens.FieldDescriptor AnyRules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, required__field_descriptor),
           (Data.ProtoLens.Tag 2, in'__field_descriptor),
           (Data.ProtoLens.Tag 3, notIn__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AnyRules'_unknownFields
        (\ x__ y__ -> x__ {_AnyRules'_unknownFields = y__})
  defMessage
    = AnyRules'_constructor
        {_AnyRules'required = Prelude.Nothing,
         _AnyRules'in' = Data.Vector.Generic.empty,
         _AnyRules'notIn = Data.Vector.Generic.empty,
         _AnyRules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AnyRules
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser AnyRules
        loop x mutable'in' mutable'notIn
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'in')
                      frozen'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'notIn)
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
                              (Data.ProtoLens.Field.field @"vec'in'")
                              frozen'in'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'notIn") frozen'notIn x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "required"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"required") y x)
                                  mutable'in'
                                  mutable'notIn
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'in' y)
                                loop x v mutable'notIn
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
                                        "not_in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'notIn y)
                                loop x mutable'in' v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'in'
                                  mutable'notIn
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'in' mutable'notIn)
          "AnyRules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'required") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
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
                              Data.Text.Encoding.encodeUtf8
                              _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'in'") _x))
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
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'notIn") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData AnyRules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AnyRules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AnyRules'required x__)
                (Control.DeepSeq.deepseq
                   (_AnyRules'in' x__)
                   (Control.DeepSeq.deepseq (_AnyRules'notIn x__) ())))
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' BoolRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' BoolRules (Prelude.Maybe Prelude.Bool)@ -}
data BoolRules
  = BoolRules'_constructor {_BoolRules'const :: !(Prelude.Maybe Prelude.Bool),
                            _BoolRules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BoolRules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BoolRules "const" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BoolRules'const (\ x__ y__ -> x__ {_BoolRules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BoolRules "maybe'const" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BoolRules'const (\ x__ y__ -> x__ {_BoolRules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Message BoolRules where
  messageName _ = Data.Text.pack "validate.BoolRules"
  packedMessageDescriptor _
    = "\n\
      \\tBoolRules\DC2\DC4\n\
      \\ENQconst\CAN\SOH \SOH(\bR\ENQconst"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor BoolRules
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, const__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BoolRules'_unknownFields
        (\ x__ y__ -> x__ {_BoolRules'_unknownFields = y__})
  defMessage
    = BoolRules'_constructor
        {_BoolRules'const = Prelude.Nothing,
         _BoolRules'_unknownFields = []}
  parseMessage
    = let
        loop :: BoolRules -> Data.ProtoLens.Encoding.Bytes.Parser BoolRules
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
                                       "const"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BoolRules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData BoolRules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BoolRules'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BoolRules'const x__) ())
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' BytesRules Data.ByteString.ByteString@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' BytesRules (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Validate.Validate_Fields.len' @:: Lens' BytesRules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'len' @:: Lens' BytesRules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.minLen' @:: Lens' BytesRules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'minLen' @:: Lens' BytesRules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.maxLen' @:: Lens' BytesRules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'maxLen' @:: Lens' BytesRules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.pattern'' @:: Lens' BytesRules Data.Text.Text@
         * 'Proto.Validate.Validate_Fields.maybe'pattern'' @:: Lens' BytesRules (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Validate.Validate_Fields.prefix' @:: Lens' BytesRules Data.ByteString.ByteString@
         * 'Proto.Validate.Validate_Fields.maybe'prefix' @:: Lens' BytesRules (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Validate.Validate_Fields.suffix' @:: Lens' BytesRules Data.ByteString.ByteString@
         * 'Proto.Validate.Validate_Fields.maybe'suffix' @:: Lens' BytesRules (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Validate.Validate_Fields.contains' @:: Lens' BytesRules Data.ByteString.ByteString@
         * 'Proto.Validate.Validate_Fields.maybe'contains' @:: Lens' BytesRules (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Validate.Validate_Fields.in'' @:: Lens' BytesRules [Data.ByteString.ByteString]@
         * 'Proto.Validate.Validate_Fields.vec'in'' @:: Lens' BytesRules (Data.Vector.Vector Data.ByteString.ByteString)@
         * 'Proto.Validate.Validate_Fields.notIn' @:: Lens' BytesRules [Data.ByteString.ByteString]@
         * 'Proto.Validate.Validate_Fields.vec'notIn' @:: Lens' BytesRules (Data.Vector.Vector Data.ByteString.ByteString)@
         * 'Proto.Validate.Validate_Fields.ignoreEmpty' @:: Lens' BytesRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ignoreEmpty' @:: Lens' BytesRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.maybe'wellKnown' @:: Lens' BytesRules (Prelude.Maybe BytesRules'WellKnown)@
         * 'Proto.Validate.Validate_Fields.maybe'ip' @:: Lens' BytesRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.ip' @:: Lens' BytesRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ipv4' @:: Lens' BytesRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.ipv4' @:: Lens' BytesRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ipv6' @:: Lens' BytesRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.ipv6' @:: Lens' BytesRules Prelude.Bool@ -}
data BytesRules
  = BytesRules'_constructor {_BytesRules'const :: !(Prelude.Maybe Data.ByteString.ByteString),
                             _BytesRules'len :: !(Prelude.Maybe Data.Word.Word64),
                             _BytesRules'minLen :: !(Prelude.Maybe Data.Word.Word64),
                             _BytesRules'maxLen :: !(Prelude.Maybe Data.Word.Word64),
                             _BytesRules'pattern' :: !(Prelude.Maybe Data.Text.Text),
                             _BytesRules'prefix :: !(Prelude.Maybe Data.ByteString.ByteString),
                             _BytesRules'suffix :: !(Prelude.Maybe Data.ByteString.ByteString),
                             _BytesRules'contains :: !(Prelude.Maybe Data.ByteString.ByteString),
                             _BytesRules'in' :: !(Data.Vector.Vector Data.ByteString.ByteString),
                             _BytesRules'notIn :: !(Data.Vector.Vector Data.ByteString.ByteString),
                             _BytesRules'ignoreEmpty :: !(Prelude.Maybe Prelude.Bool),
                             _BytesRules'wellKnown :: !(Prelude.Maybe BytesRules'WellKnown),
                             _BytesRules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BytesRules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data BytesRules'WellKnown
  = BytesRules'Ip !Prelude.Bool |
    BytesRules'Ipv4 !Prelude.Bool |
    BytesRules'Ipv6 !Prelude.Bool
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField BytesRules "const" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'const (\ x__ y__ -> x__ {_BytesRules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BytesRules "maybe'const" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'const (\ x__ y__ -> x__ {_BytesRules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BytesRules "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'len (\ x__ y__ -> x__ {_BytesRules'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BytesRules "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'len (\ x__ y__ -> x__ {_BytesRules'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BytesRules "minLen" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'minLen (\ x__ y__ -> x__ {_BytesRules'minLen = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BytesRules "maybe'minLen" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'minLen (\ x__ y__ -> x__ {_BytesRules'minLen = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BytesRules "maxLen" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'maxLen (\ x__ y__ -> x__ {_BytesRules'maxLen = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BytesRules "maybe'maxLen" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'maxLen (\ x__ y__ -> x__ {_BytesRules'maxLen = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BytesRules "pattern'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'pattern'
           (\ x__ y__ -> x__ {_BytesRules'pattern' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BytesRules "maybe'pattern'" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'pattern'
           (\ x__ y__ -> x__ {_BytesRules'pattern' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BytesRules "prefix" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'prefix (\ x__ y__ -> x__ {_BytesRules'prefix = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BytesRules "maybe'prefix" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'prefix (\ x__ y__ -> x__ {_BytesRules'prefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BytesRules "suffix" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'suffix (\ x__ y__ -> x__ {_BytesRules'suffix = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BytesRules "maybe'suffix" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'suffix (\ x__ y__ -> x__ {_BytesRules'suffix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BytesRules "contains" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'contains
           (\ x__ y__ -> x__ {_BytesRules'contains = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BytesRules "maybe'contains" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'contains
           (\ x__ y__ -> x__ {_BytesRules'contains = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BytesRules "in'" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'in' (\ x__ y__ -> x__ {_BytesRules'in' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField BytesRules "vec'in'" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'in' (\ x__ y__ -> x__ {_BytesRules'in' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BytesRules "notIn" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'notIn (\ x__ y__ -> x__ {_BytesRules'notIn = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField BytesRules "vec'notIn" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'notIn (\ x__ y__ -> x__ {_BytesRules'notIn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BytesRules "ignoreEmpty" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'ignoreEmpty
           (\ x__ y__ -> x__ {_BytesRules'ignoreEmpty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BytesRules "maybe'ignoreEmpty" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'ignoreEmpty
           (\ x__ y__ -> x__ {_BytesRules'ignoreEmpty = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BytesRules "maybe'wellKnown" (Prelude.Maybe BytesRules'WellKnown) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'wellKnown
           (\ x__ y__ -> x__ {_BytesRules'wellKnown = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BytesRules "maybe'ip" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'wellKnown
           (\ x__ y__ -> x__ {_BytesRules'wellKnown = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BytesRules'Ip x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap BytesRules'Ip y__))
instance Data.ProtoLens.Field.HasField BytesRules "ip" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'wellKnown
           (\ x__ y__ -> x__ {_BytesRules'wellKnown = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BytesRules'Ip x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap BytesRules'Ip y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField BytesRules "maybe'ipv4" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'wellKnown
           (\ x__ y__ -> x__ {_BytesRules'wellKnown = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BytesRules'Ipv4 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap BytesRules'Ipv4 y__))
instance Data.ProtoLens.Field.HasField BytesRules "ipv4" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'wellKnown
           (\ x__ y__ -> x__ {_BytesRules'wellKnown = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BytesRules'Ipv4 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap BytesRules'Ipv4 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField BytesRules "maybe'ipv6" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'wellKnown
           (\ x__ y__ -> x__ {_BytesRules'wellKnown = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BytesRules'Ipv6 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap BytesRules'Ipv6 y__))
instance Data.ProtoLens.Field.HasField BytesRules "ipv6" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesRules'wellKnown
           (\ x__ y__ -> x__ {_BytesRules'wellKnown = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BytesRules'Ipv6 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap BytesRules'Ipv6 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message BytesRules where
  messageName _ = Data.Text.pack "validate.BytesRules"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \BytesRules\DC2\DC4\n\
      \\ENQconst\CAN\SOH \SOH(\fR\ENQconst\DC2\DLE\n\
      \\ETXlen\CAN\r \SOH(\EOTR\ETXlen\DC2\ETB\n\
      \\amin_len\CAN\STX \SOH(\EOTR\ACKminLen\DC2\ETB\n\
      \\amax_len\CAN\ETX \SOH(\EOTR\ACKmaxLen\DC2\CAN\n\
      \\apattern\CAN\EOT \SOH(\tR\apattern\DC2\SYN\n\
      \\ACKprefix\CAN\ENQ \SOH(\fR\ACKprefix\DC2\SYN\n\
      \\ACKsuffix\CAN\ACK \SOH(\fR\ACKsuffix\DC2\SUB\n\
      \\bcontains\CAN\a \SOH(\fR\bcontains\DC2\SO\n\
      \\STXin\CAN\b \ETX(\fR\STXin\DC2\NAK\n\
      \\ACKnot_in\CAN\t \ETX(\fR\ENQnotIn\DC2\DLE\n\
      \\STXip\CAN\n\
      \ \SOH(\bH\NULR\STXip\DC2\DC4\n\
      \\EOTipv4\CAN\v \SOH(\bH\NULR\EOTipv4\DC2\DC4\n\
      \\EOTipv6\CAN\f \SOH(\bH\NULR\EOTipv6\DC2!\n\
      \\fignore_empty\CAN\SO \SOH(\bR\vignoreEmptyB\f\n\
      \\n\
      \well_known"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor BytesRules
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor BytesRules
        minLen__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minLen")) ::
              Data.ProtoLens.FieldDescriptor BytesRules
        maxLen__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxLen")) ::
              Data.ProtoLens.FieldDescriptor BytesRules
        pattern'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pattern"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pattern'")) ::
              Data.ProtoLens.FieldDescriptor BytesRules
        prefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prefix")) ::
              Data.ProtoLens.FieldDescriptor BytesRules
        suffix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "suffix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'suffix")) ::
              Data.ProtoLens.FieldDescriptor BytesRules
        contains__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "contains"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'contains")) ::
              Data.ProtoLens.FieldDescriptor BytesRules
        in'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"in'")) ::
              Data.ProtoLens.FieldDescriptor BytesRules
        notIn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"notIn")) ::
              Data.ProtoLens.FieldDescriptor BytesRules
        ignoreEmpty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_empty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ignoreEmpty")) ::
              Data.ProtoLens.FieldDescriptor BytesRules
        ip__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ip"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ip")) ::
              Data.ProtoLens.FieldDescriptor BytesRules
        ipv4__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ipv4"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ipv4")) ::
              Data.ProtoLens.FieldDescriptor BytesRules
        ipv6__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ipv6"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ipv6")) ::
              Data.ProtoLens.FieldDescriptor BytesRules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, const__field_descriptor),
           (Data.ProtoLens.Tag 13, len__field_descriptor),
           (Data.ProtoLens.Tag 2, minLen__field_descriptor),
           (Data.ProtoLens.Tag 3, maxLen__field_descriptor),
           (Data.ProtoLens.Tag 4, pattern'__field_descriptor),
           (Data.ProtoLens.Tag 5, prefix__field_descriptor),
           (Data.ProtoLens.Tag 6, suffix__field_descriptor),
           (Data.ProtoLens.Tag 7, contains__field_descriptor),
           (Data.ProtoLens.Tag 8, in'__field_descriptor),
           (Data.ProtoLens.Tag 9, notIn__field_descriptor),
           (Data.ProtoLens.Tag 14, ignoreEmpty__field_descriptor),
           (Data.ProtoLens.Tag 10, ip__field_descriptor),
           (Data.ProtoLens.Tag 11, ipv4__field_descriptor),
           (Data.ProtoLens.Tag 12, ipv6__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BytesRules'_unknownFields
        (\ x__ y__ -> x__ {_BytesRules'_unknownFields = y__})
  defMessage
    = BytesRules'_constructor
        {_BytesRules'const = Prelude.Nothing,
         _BytesRules'len = Prelude.Nothing,
         _BytesRules'minLen = Prelude.Nothing,
         _BytesRules'maxLen = Prelude.Nothing,
         _BytesRules'pattern' = Prelude.Nothing,
         _BytesRules'prefix = Prelude.Nothing,
         _BytesRules'suffix = Prelude.Nothing,
         _BytesRules'contains = Prelude.Nothing,
         _BytesRules'in' = Data.Vector.Generic.empty,
         _BytesRules'notIn = Data.Vector.Generic.empty,
         _BytesRules'ignoreEmpty = Prelude.Nothing,
         _BytesRules'wellKnown = Prelude.Nothing,
         _BytesRules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BytesRules
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
                -> Data.ProtoLens.Encoding.Bytes.Parser BytesRules
        loop x mutable'in' mutable'notIn
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'in')
                      frozen'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'notIn)
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
                              (Data.ProtoLens.Field.field @"vec'in'")
                              frozen'in'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'notIn") frozen'notIn x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "const"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                                  mutable'in'
                                  mutable'notIn
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                                  mutable'in'
                                  mutable'notIn
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "min_len"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"minLen") y x)
                                  mutable'in'
                                  mutable'notIn
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "max_len"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxLen") y x)
                                  mutable'in'
                                  mutable'notIn
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "pattern"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pattern'") y x)
                                  mutable'in'
                                  mutable'notIn
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"prefix") y x)
                                  mutable'in'
                                  mutable'notIn
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "suffix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"suffix") y x)
                                  mutable'in'
                                  mutable'notIn
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "contains"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"contains") y x)
                                  mutable'in'
                                  mutable'notIn
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'in' y)
                                loop x v mutable'notIn
                        74
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "not_in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'notIn y)
                                loop x mutable'in' v
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_empty"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ignoreEmpty") y x)
                                  mutable'in'
                                  mutable'notIn
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ip"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ip") y x)
                                  mutable'in'
                                  mutable'notIn
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ipv4"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ipv4") y x)
                                  mutable'in'
                                  mutable'notIn
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ipv6"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ipv6") y x)
                                  mutable'in'
                                  mutable'notIn
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'in'
                                  mutable'notIn
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'in' mutable'notIn)
          "BytesRules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 104)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'minLen") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'maxLen") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pattern'") _x
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
                                      Data.Text.Encoding.encodeUtf8
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'prefix") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                      ((\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'suffix") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                         ((\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'contains") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                            ((\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               _v))
                                  ((Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                        (\ _v
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                                ((\ bs
                                                    -> (Data.Monoid.<>)
                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                            (Prelude.fromIntegral
                                                               (Data.ByteString.length bs)))
                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                            bs))
                                                   _v))
                                        (Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"vec'in'") _x))
                                     ((Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                           (\ _v
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                                   ((\ bs
                                                       -> (Data.Monoid.<>)
                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                               (Prelude.fromIntegral
                                                                  (Data.ByteString.length bs)))
                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                               bs))
                                                      _v))
                                           (Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"vec'notIn") _x))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"maybe'ignoreEmpty")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 112)
                                                     ((Prelude..)
                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (\ b -> if b then 1 else 0)
                                                        _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field @"maybe'wellKnown")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just (BytesRules'Ip v))
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (\ b -> if b then 1 else 0)
                                                           v)
                                                 (Prelude.Just (BytesRules'Ipv4 v))
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (\ b -> if b then 1 else 0)
                                                           v)
                                                 (Prelude.Just (BytesRules'Ipv6 v))
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (\ b -> if b then 1 else 0)
                                                           v))
                                              (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                 (Lens.Family2.view
                                                    Data.ProtoLens.unknownFields _x)))))))))))))
instance Control.DeepSeq.NFData BytesRules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BytesRules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BytesRules'const x__)
                (Control.DeepSeq.deepseq
                   (_BytesRules'len x__)
                   (Control.DeepSeq.deepseq
                      (_BytesRules'minLen x__)
                      (Control.DeepSeq.deepseq
                         (_BytesRules'maxLen x__)
                         (Control.DeepSeq.deepseq
                            (_BytesRules'pattern' x__)
                            (Control.DeepSeq.deepseq
                               (_BytesRules'prefix x__)
                               (Control.DeepSeq.deepseq
                                  (_BytesRules'suffix x__)
                                  (Control.DeepSeq.deepseq
                                     (_BytesRules'contains x__)
                                     (Control.DeepSeq.deepseq
                                        (_BytesRules'in' x__)
                                        (Control.DeepSeq.deepseq
                                           (_BytesRules'notIn x__)
                                           (Control.DeepSeq.deepseq
                                              (_BytesRules'ignoreEmpty x__)
                                              (Control.DeepSeq.deepseq
                                                 (_BytesRules'wellKnown x__) ()))))))))))))
instance Control.DeepSeq.NFData BytesRules'WellKnown where
  rnf (BytesRules'Ip x__) = Control.DeepSeq.rnf x__
  rnf (BytesRules'Ipv4 x__) = Control.DeepSeq.rnf x__
  rnf (BytesRules'Ipv6 x__) = Control.DeepSeq.rnf x__
_BytesRules'Ip ::
  Data.ProtoLens.Prism.Prism' BytesRules'WellKnown Prelude.Bool
_BytesRules'Ip
  = Data.ProtoLens.Prism.prism'
      BytesRules'Ip
      (\ p__
         -> case p__ of
              (BytesRules'Ip p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_BytesRules'Ipv4 ::
  Data.ProtoLens.Prism.Prism' BytesRules'WellKnown Prelude.Bool
_BytesRules'Ipv4
  = Data.ProtoLens.Prism.prism'
      BytesRules'Ipv4
      (\ p__
         -> case p__ of
              (BytesRules'Ipv4 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_BytesRules'Ipv6 ::
  Data.ProtoLens.Prism.Prism' BytesRules'WellKnown Prelude.Bool
_BytesRules'Ipv6
  = Data.ProtoLens.Prism.prism'
      BytesRules'Ipv6
      (\ p__
         -> case p__ of
              (BytesRules'Ipv6 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' DoubleRules Prelude.Double@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' DoubleRules (Prelude.Maybe Prelude.Double)@
         * 'Proto.Validate.Validate_Fields.lt' @:: Lens' DoubleRules Prelude.Double@
         * 'Proto.Validate.Validate_Fields.maybe'lt' @:: Lens' DoubleRules (Prelude.Maybe Prelude.Double)@
         * 'Proto.Validate.Validate_Fields.lte' @:: Lens' DoubleRules Prelude.Double@
         * 'Proto.Validate.Validate_Fields.maybe'lte' @:: Lens' DoubleRules (Prelude.Maybe Prelude.Double)@
         * 'Proto.Validate.Validate_Fields.gt' @:: Lens' DoubleRules Prelude.Double@
         * 'Proto.Validate.Validate_Fields.maybe'gt' @:: Lens' DoubleRules (Prelude.Maybe Prelude.Double)@
         * 'Proto.Validate.Validate_Fields.gte' @:: Lens' DoubleRules Prelude.Double@
         * 'Proto.Validate.Validate_Fields.maybe'gte' @:: Lens' DoubleRules (Prelude.Maybe Prelude.Double)@
         * 'Proto.Validate.Validate_Fields.in'' @:: Lens' DoubleRules [Prelude.Double]@
         * 'Proto.Validate.Validate_Fields.vec'in'' @:: Lens' DoubleRules (Data.Vector.Unboxed.Vector Prelude.Double)@
         * 'Proto.Validate.Validate_Fields.notIn' @:: Lens' DoubleRules [Prelude.Double]@
         * 'Proto.Validate.Validate_Fields.vec'notIn' @:: Lens' DoubleRules (Data.Vector.Unboxed.Vector Prelude.Double)@
         * 'Proto.Validate.Validate_Fields.ignoreEmpty' @:: Lens' DoubleRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ignoreEmpty' @:: Lens' DoubleRules (Prelude.Maybe Prelude.Bool)@ -}
data DoubleRules
  = DoubleRules'_constructor {_DoubleRules'const :: !(Prelude.Maybe Prelude.Double),
                              _DoubleRules'lt :: !(Prelude.Maybe Prelude.Double),
                              _DoubleRules'lte :: !(Prelude.Maybe Prelude.Double),
                              _DoubleRules'gt :: !(Prelude.Maybe Prelude.Double),
                              _DoubleRules'gte :: !(Prelude.Maybe Prelude.Double),
                              _DoubleRules'in' :: !(Data.Vector.Unboxed.Vector Prelude.Double),
                              _DoubleRules'notIn :: !(Data.Vector.Unboxed.Vector Prelude.Double),
                              _DoubleRules'ignoreEmpty :: !(Prelude.Maybe Prelude.Bool),
                              _DoubleRules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DoubleRules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DoubleRules "const" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRules'const (\ x__ y__ -> x__ {_DoubleRules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DoubleRules "maybe'const" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRules'const (\ x__ y__ -> x__ {_DoubleRules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoubleRules "lt" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRules'lt (\ x__ y__ -> x__ {_DoubleRules'lt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DoubleRules "maybe'lt" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRules'lt (\ x__ y__ -> x__ {_DoubleRules'lt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoubleRules "lte" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRules'lte (\ x__ y__ -> x__ {_DoubleRules'lte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DoubleRules "maybe'lte" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRules'lte (\ x__ y__ -> x__ {_DoubleRules'lte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoubleRules "gt" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRules'gt (\ x__ y__ -> x__ {_DoubleRules'gt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DoubleRules "maybe'gt" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRules'gt (\ x__ y__ -> x__ {_DoubleRules'gt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoubleRules "gte" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRules'gte (\ x__ y__ -> x__ {_DoubleRules'gte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DoubleRules "maybe'gte" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRules'gte (\ x__ y__ -> x__ {_DoubleRules'gte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoubleRules "in'" [Prelude.Double] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRules'in' (\ x__ y__ -> x__ {_DoubleRules'in' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DoubleRules "vec'in'" (Data.Vector.Unboxed.Vector Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRules'in' (\ x__ y__ -> x__ {_DoubleRules'in' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoubleRules "notIn" [Prelude.Double] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRules'notIn (\ x__ y__ -> x__ {_DoubleRules'notIn = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DoubleRules "vec'notIn" (Data.Vector.Unboxed.Vector Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRules'notIn (\ x__ y__ -> x__ {_DoubleRules'notIn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoubleRules "ignoreEmpty" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRules'ignoreEmpty
           (\ x__ y__ -> x__ {_DoubleRules'ignoreEmpty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DoubleRules "maybe'ignoreEmpty" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRules'ignoreEmpty
           (\ x__ y__ -> x__ {_DoubleRules'ignoreEmpty = y__}))
        Prelude.id
instance Data.ProtoLens.Message DoubleRules where
  messageName _ = Data.Text.pack "validate.DoubleRules"
  packedMessageDescriptor _
    = "\n\
      \\vDoubleRules\DC2\DC4\n\
      \\ENQconst\CAN\SOH \SOH(\SOHR\ENQconst\DC2\SO\n\
      \\STXlt\CAN\STX \SOH(\SOHR\STXlt\DC2\DLE\n\
      \\ETXlte\CAN\ETX \SOH(\SOHR\ETXlte\DC2\SO\n\
      \\STXgt\CAN\EOT \SOH(\SOHR\STXgt\DC2\DLE\n\
      \\ETXgte\CAN\ENQ \SOH(\SOHR\ETXgte\DC2\SO\n\
      \\STXin\CAN\ACK \ETX(\SOHR\STXin\DC2\NAK\n\
      \\ACKnot_in\CAN\a \ETX(\SOHR\ENQnotIn\DC2!\n\
      \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor DoubleRules
        lt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lt")) ::
              Data.ProtoLens.FieldDescriptor DoubleRules
        lte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lte")) ::
              Data.ProtoLens.FieldDescriptor DoubleRules
        gt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gt")) ::
              Data.ProtoLens.FieldDescriptor DoubleRules
        gte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gte")) ::
              Data.ProtoLens.FieldDescriptor DoubleRules
        in'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"in'")) ::
              Data.ProtoLens.FieldDescriptor DoubleRules
        notIn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"notIn")) ::
              Data.ProtoLens.FieldDescriptor DoubleRules
        ignoreEmpty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_empty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ignoreEmpty")) ::
              Data.ProtoLens.FieldDescriptor DoubleRules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, const__field_descriptor),
           (Data.ProtoLens.Tag 2, lt__field_descriptor),
           (Data.ProtoLens.Tag 3, lte__field_descriptor),
           (Data.ProtoLens.Tag 4, gt__field_descriptor),
           (Data.ProtoLens.Tag 5, gte__field_descriptor),
           (Data.ProtoLens.Tag 6, in'__field_descriptor),
           (Data.ProtoLens.Tag 7, notIn__field_descriptor),
           (Data.ProtoLens.Tag 8, ignoreEmpty__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DoubleRules'_unknownFields
        (\ x__ y__ -> x__ {_DoubleRules'_unknownFields = y__})
  defMessage
    = DoubleRules'_constructor
        {_DoubleRules'const = Prelude.Nothing,
         _DoubleRules'lt = Prelude.Nothing,
         _DoubleRules'lte = Prelude.Nothing,
         _DoubleRules'gt = Prelude.Nothing,
         _DoubleRules'gte = Prelude.Nothing,
         _DoubleRules'in' = Data.Vector.Generic.empty,
         _DoubleRules'notIn = Data.Vector.Generic.empty,
         _DoubleRules'ignoreEmpty = Prelude.Nothing,
         _DoubleRules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DoubleRules
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Prelude.Double
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Prelude.Double
                -> Data.ProtoLens.Encoding.Bytes.Parser DoubleRules
        loop x mutable'in' mutable'notIn
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'in')
                      frozen'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'notIn)
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
                              (Data.ProtoLens.Field.field @"vec'in'")
                              frozen'in'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'notIn") frozen'notIn x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        9 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "const"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                                  mutable'in'
                                  mutable'notIn
                        17
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "lt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lt") y x)
                                  mutable'in'
                                  mutable'notIn
                        25
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "lte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lte") y x)
                                  mutable'in'
                                  mutable'notIn
                        33
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "gt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gt") y x)
                                  mutable'in'
                                  mutable'notIn
                        41
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "gte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gte") y x)
                                  mutable'in'
                                  mutable'notIn
                        49
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Data.ProtoLens.Encoding.Bytes.wordToDouble
                                           Data.ProtoLens.Encoding.Bytes.getFixed64)
                                        "in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'in' y)
                                loop x v mutable'notIn
                        50
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Data.ProtoLens.Encoding.Bytes.wordToDouble
                                                                       Data.ProtoLens.Encoding.Bytes.getFixed64)
                                                                    "in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'in')
                                loop x y mutable'notIn
                        57
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Data.ProtoLens.Encoding.Bytes.wordToDouble
                                           Data.ProtoLens.Encoding.Bytes.getFixed64)
                                        "not_in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'notIn y)
                                loop x mutable'in' v
                        58
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Data.ProtoLens.Encoding.Bytes.wordToDouble
                                                                       Data.ProtoLens.Encoding.Bytes.getFixed64)
                                                                    "not_in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'notIn)
                                loop x mutable'in' y
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_empty"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ignoreEmpty") y x)
                                  mutable'in'
                                  mutable'notIn
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'in'
                                  mutable'notIn
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'in' mutable'notIn)
          "DoubleRules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 9)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putFixed64
                          Data.ProtoLens.Encoding.Bytes.doubleToWord
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 17)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putFixed64
                             Data.ProtoLens.Encoding.Bytes.doubleToWord
                             _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lte") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 25)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putFixed64
                                Data.ProtoLens.Encoding.Bytes.doubleToWord
                                _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gt") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 33)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putFixed64
                                   Data.ProtoLens.Encoding.Bytes.doubleToWord
                                   _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gte") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 41)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putFixed64
                                      Data.ProtoLens.Encoding.Bytes.doubleToWord
                                      _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 49)
                                       ((Prelude..)
                                          Data.ProtoLens.Encoding.Bytes.putFixed64
                                          Data.ProtoLens.Encoding.Bytes.doubleToWord
                                          _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'in'") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 57)
                                          ((Prelude..)
                                             Data.ProtoLens.Encoding.Bytes.putFixed64
                                             Data.ProtoLens.Encoding.Bytes.doubleToWord
                                             _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'notIn") _x))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'ignoreEmpty") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (\ b -> if b then 1 else 0)
                                               _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData DoubleRules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DoubleRules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DoubleRules'const x__)
                (Control.DeepSeq.deepseq
                   (_DoubleRules'lt x__)
                   (Control.DeepSeq.deepseq
                      (_DoubleRules'lte x__)
                      (Control.DeepSeq.deepseq
                         (_DoubleRules'gt x__)
                         (Control.DeepSeq.deepseq
                            (_DoubleRules'gte x__)
                            (Control.DeepSeq.deepseq
                               (_DoubleRules'in' x__)
                               (Control.DeepSeq.deepseq
                                  (_DoubleRules'notIn x__)
                                  (Control.DeepSeq.deepseq (_DoubleRules'ignoreEmpty x__) ()))))))))
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.required' @:: Lens' DurationRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'required' @:: Lens' DurationRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' DurationRules Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' DurationRules (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Validate.Validate_Fields.lt' @:: Lens' DurationRules Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Validate.Validate_Fields.maybe'lt' @:: Lens' DurationRules (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Validate.Validate_Fields.lte' @:: Lens' DurationRules Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Validate.Validate_Fields.maybe'lte' @:: Lens' DurationRules (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Validate.Validate_Fields.gt' @:: Lens' DurationRules Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Validate.Validate_Fields.maybe'gt' @:: Lens' DurationRules (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Validate.Validate_Fields.gte' @:: Lens' DurationRules Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Validate.Validate_Fields.maybe'gte' @:: Lens' DurationRules (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Validate.Validate_Fields.in'' @:: Lens' DurationRules [Proto.Google.Protobuf.Duration.Duration]@
         * 'Proto.Validate.Validate_Fields.vec'in'' @:: Lens' DurationRules (Data.Vector.Vector Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Validate.Validate_Fields.notIn' @:: Lens' DurationRules [Proto.Google.Protobuf.Duration.Duration]@
         * 'Proto.Validate.Validate_Fields.vec'notIn' @:: Lens' DurationRules (Data.Vector.Vector Proto.Google.Protobuf.Duration.Duration)@ -}
data DurationRules
  = DurationRules'_constructor {_DurationRules'required :: !(Prelude.Maybe Prelude.Bool),
                                _DurationRules'const :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                _DurationRules'lt :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                _DurationRules'lte :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                _DurationRules'gt :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                _DurationRules'gte :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                _DurationRules'in' :: !(Data.Vector.Vector Proto.Google.Protobuf.Duration.Duration),
                                _DurationRules'notIn :: !(Data.Vector.Vector Proto.Google.Protobuf.Duration.Duration),
                                _DurationRules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DurationRules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DurationRules "required" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationRules'required
           (\ x__ y__ -> x__ {_DurationRules'required = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DurationRules "maybe'required" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationRules'required
           (\ x__ y__ -> x__ {_DurationRules'required = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DurationRules "const" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationRules'const
           (\ x__ y__ -> x__ {_DurationRules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DurationRules "maybe'const" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationRules'const
           (\ x__ y__ -> x__ {_DurationRules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DurationRules "lt" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationRules'lt (\ x__ y__ -> x__ {_DurationRules'lt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DurationRules "maybe'lt" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationRules'lt (\ x__ y__ -> x__ {_DurationRules'lt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DurationRules "lte" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationRules'lte (\ x__ y__ -> x__ {_DurationRules'lte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DurationRules "maybe'lte" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationRules'lte (\ x__ y__ -> x__ {_DurationRules'lte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DurationRules "gt" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationRules'gt (\ x__ y__ -> x__ {_DurationRules'gt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DurationRules "maybe'gt" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationRules'gt (\ x__ y__ -> x__ {_DurationRules'gt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DurationRules "gte" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationRules'gte (\ x__ y__ -> x__ {_DurationRules'gte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DurationRules "maybe'gte" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationRules'gte (\ x__ y__ -> x__ {_DurationRules'gte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DurationRules "in'" [Proto.Google.Protobuf.Duration.Duration] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationRules'in' (\ x__ y__ -> x__ {_DurationRules'in' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DurationRules "vec'in'" (Data.Vector.Vector Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationRules'in' (\ x__ y__ -> x__ {_DurationRules'in' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DurationRules "notIn" [Proto.Google.Protobuf.Duration.Duration] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationRules'notIn
           (\ x__ y__ -> x__ {_DurationRules'notIn = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DurationRules "vec'notIn" (Data.Vector.Vector Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DurationRules'notIn
           (\ x__ y__ -> x__ {_DurationRules'notIn = y__}))
        Prelude.id
instance Data.ProtoLens.Message DurationRules where
  messageName _ = Data.Text.pack "validate.DurationRules"
  packedMessageDescriptor _
    = "\n\
      \\rDurationRules\DC2\SUB\n\
      \\brequired\CAN\SOH \SOH(\bR\brequired\DC2/\n\
      \\ENQconst\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\ENQconst\DC2)\n\
      \\STXlt\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\STXlt\DC2+\n\
      \\ETXlte\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\ETXlte\DC2)\n\
      \\STXgt\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\STXgt\DC2+\n\
      \\ETXgte\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\ETXgte\DC2)\n\
      \\STXin\CAN\a \ETX(\v2\EM.google.protobuf.DurationR\STXin\DC20\n\
      \\ACKnot_in\CAN\b \ETX(\v2\EM.google.protobuf.DurationR\ENQnotIn"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        required__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "required"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'required")) ::
              Data.ProtoLens.FieldDescriptor DurationRules
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor DurationRules
        lt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lt"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lt")) ::
              Data.ProtoLens.FieldDescriptor DurationRules
        lte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lte"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lte")) ::
              Data.ProtoLens.FieldDescriptor DurationRules
        gt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gt"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gt")) ::
              Data.ProtoLens.FieldDescriptor DurationRules
        gte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gte"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gte")) ::
              Data.ProtoLens.FieldDescriptor DurationRules
        in'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "in"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"in'")) ::
              Data.ProtoLens.FieldDescriptor DurationRules
        notIn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_in"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"notIn")) ::
              Data.ProtoLens.FieldDescriptor DurationRules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, required__field_descriptor),
           (Data.ProtoLens.Tag 2, const__field_descriptor),
           (Data.ProtoLens.Tag 3, lt__field_descriptor),
           (Data.ProtoLens.Tag 4, lte__field_descriptor),
           (Data.ProtoLens.Tag 5, gt__field_descriptor),
           (Data.ProtoLens.Tag 6, gte__field_descriptor),
           (Data.ProtoLens.Tag 7, in'__field_descriptor),
           (Data.ProtoLens.Tag 8, notIn__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DurationRules'_unknownFields
        (\ x__ y__ -> x__ {_DurationRules'_unknownFields = y__})
  defMessage
    = DurationRules'_constructor
        {_DurationRules'required = Prelude.Nothing,
         _DurationRules'const = Prelude.Nothing,
         _DurationRules'lt = Prelude.Nothing,
         _DurationRules'lte = Prelude.Nothing,
         _DurationRules'gt = Prelude.Nothing,
         _DurationRules'gte = Prelude.Nothing,
         _DurationRules'in' = Data.Vector.Generic.empty,
         _DurationRules'notIn = Data.Vector.Generic.empty,
         _DurationRules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DurationRules
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Duration.Duration
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Duration.Duration
                -> Data.ProtoLens.Encoding.Bytes.Parser DurationRules
        loop x mutable'in' mutable'notIn
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'in')
                      frozen'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'notIn)
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
                              (Data.ProtoLens.Field.field @"vec'in'")
                              frozen'in'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'notIn") frozen'notIn x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "required"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"required") y x)
                                  mutable'in'
                                  mutable'notIn
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "const"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                                  mutable'in'
                                  mutable'notIn
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "lt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lt") y x)
                                  mutable'in'
                                  mutable'notIn
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "lte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lte") y x)
                                  mutable'in'
                                  mutable'notIn
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "gt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gt") y x)
                                  mutable'in'
                                  mutable'notIn
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "gte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gte") y x)
                                  mutable'in'
                                  mutable'notIn
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'in' y)
                                loop x v mutable'notIn
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "not_in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'notIn y)
                                loop x mutable'in' v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'in'
                                  mutable'notIn
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'in' mutable'notIn)
          "DurationRules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'required") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
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
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lt") _x
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
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lte") _x
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
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gt") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gte") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         _v))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage
                                             _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'in'") _x))
                               ((Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                             ((Prelude..)
                                                (\ bs
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (Prelude.fromIntegral
                                                              (Data.ByteString.length bs)))
                                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Data.ProtoLens.encodeMessage
                                                _v))
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'notIn") _x))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData DurationRules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DurationRules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DurationRules'required x__)
                (Control.DeepSeq.deepseq
                   (_DurationRules'const x__)
                   (Control.DeepSeq.deepseq
                      (_DurationRules'lt x__)
                      (Control.DeepSeq.deepseq
                         (_DurationRules'lte x__)
                         (Control.DeepSeq.deepseq
                            (_DurationRules'gt x__)
                            (Control.DeepSeq.deepseq
                               (_DurationRules'gte x__)
                               (Control.DeepSeq.deepseq
                                  (_DurationRules'in' x__)
                                  (Control.DeepSeq.deepseq (_DurationRules'notIn x__) ()))))))))
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' EnumRules Data.Int.Int32@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' EnumRules (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.definedOnly' @:: Lens' EnumRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'definedOnly' @:: Lens' EnumRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.in'' @:: Lens' EnumRules [Data.Int.Int32]@
         * 'Proto.Validate.Validate_Fields.vec'in'' @:: Lens' EnumRules (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.notIn' @:: Lens' EnumRules [Data.Int.Int32]@
         * 'Proto.Validate.Validate_Fields.vec'notIn' @:: Lens' EnumRules (Data.Vector.Unboxed.Vector Data.Int.Int32)@ -}
data EnumRules
  = EnumRules'_constructor {_EnumRules'const :: !(Prelude.Maybe Data.Int.Int32),
                            _EnumRules'definedOnly :: !(Prelude.Maybe Prelude.Bool),
                            _EnumRules'in' :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                            _EnumRules'notIn :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                            _EnumRules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EnumRules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EnumRules "const" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumRules'const (\ x__ y__ -> x__ {_EnumRules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField EnumRules "maybe'const" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumRules'const (\ x__ y__ -> x__ {_EnumRules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnumRules "definedOnly" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumRules'definedOnly
           (\ x__ y__ -> x__ {_EnumRules'definedOnly = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField EnumRules "maybe'definedOnly" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumRules'definedOnly
           (\ x__ y__ -> x__ {_EnumRules'definedOnly = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnumRules "in'" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumRules'in' (\ x__ y__ -> x__ {_EnumRules'in' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EnumRules "vec'in'" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumRules'in' (\ x__ y__ -> x__ {_EnumRules'in' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnumRules "notIn" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumRules'notIn (\ x__ y__ -> x__ {_EnumRules'notIn = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EnumRules "vec'notIn" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumRules'notIn (\ x__ y__ -> x__ {_EnumRules'notIn = y__}))
        Prelude.id
instance Data.ProtoLens.Message EnumRules where
  messageName _ = Data.Text.pack "validate.EnumRules"
  packedMessageDescriptor _
    = "\n\
      \\tEnumRules\DC2\DC4\n\
      \\ENQconst\CAN\SOH \SOH(\ENQR\ENQconst\DC2!\n\
      \\fdefined_only\CAN\STX \SOH(\bR\vdefinedOnly\DC2\SO\n\
      \\STXin\CAN\ETX \ETX(\ENQR\STXin\DC2\NAK\n\
      \\ACKnot_in\CAN\EOT \ETX(\ENQR\ENQnotIn"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor EnumRules
        definedOnly__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "defined_only"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'definedOnly")) ::
              Data.ProtoLens.FieldDescriptor EnumRules
        in'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"in'")) ::
              Data.ProtoLens.FieldDescriptor EnumRules
        notIn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"notIn")) ::
              Data.ProtoLens.FieldDescriptor EnumRules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, const__field_descriptor),
           (Data.ProtoLens.Tag 2, definedOnly__field_descriptor),
           (Data.ProtoLens.Tag 3, in'__field_descriptor),
           (Data.ProtoLens.Tag 4, notIn__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EnumRules'_unknownFields
        (\ x__ y__ -> x__ {_EnumRules'_unknownFields = y__})
  defMessage
    = EnumRules'_constructor
        {_EnumRules'const = Prelude.Nothing,
         _EnumRules'definedOnly = Prelude.Nothing,
         _EnumRules'in' = Data.Vector.Generic.empty,
         _EnumRules'notIn = Data.Vector.Generic.empty,
         _EnumRules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EnumRules
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
                -> Data.ProtoLens.Encoding.Bytes.Parser EnumRules
        loop x mutable'in' mutable'notIn
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'in')
                      frozen'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'notIn)
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
                              (Data.ProtoLens.Field.field @"vec'in'")
                              frozen'in'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'notIn") frozen'notIn x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "const"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                                  mutable'in'
                                  mutable'notIn
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "defined_only"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"definedOnly") y x)
                                  mutable'in'
                                  mutable'notIn
                        24
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'in' y)
                                loop x v mutable'notIn
                        26
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'in')
                                loop x y mutable'notIn
                        32
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "not_in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'notIn y)
                                loop x mutable'in' v
                        34
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "not_in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'notIn)
                                loop x mutable'in' y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'in'
                                  mutable'notIn
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'in' mutable'notIn)
          "EnumRules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'definedOnly") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt
                             (\ b -> if b then 1 else 0)
                             _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                              ((Prelude..)
                                 Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'in'") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                 ((Prelude..)
                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                    Prelude.fromIntegral
                                    _v))
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'notIn") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData EnumRules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EnumRules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EnumRules'const x__)
                (Control.DeepSeq.deepseq
                   (_EnumRules'definedOnly x__)
                   (Control.DeepSeq.deepseq
                      (_EnumRules'in' x__)
                      (Control.DeepSeq.deepseq (_EnumRules'notIn x__) ()))))
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.message' @:: Lens' FieldRules MessageRules@
         * 'Proto.Validate.Validate_Fields.maybe'message' @:: Lens' FieldRules (Prelude.Maybe MessageRules)@
         * 'Proto.Validate.Validate_Fields.maybe'type'' @:: Lens' FieldRules (Prelude.Maybe FieldRules'Type)@
         * 'Proto.Validate.Validate_Fields.maybe'float' @:: Lens' FieldRules (Prelude.Maybe FloatRules)@
         * 'Proto.Validate.Validate_Fields.float' @:: Lens' FieldRules FloatRules@
         * 'Proto.Validate.Validate_Fields.maybe'double' @:: Lens' FieldRules (Prelude.Maybe DoubleRules)@
         * 'Proto.Validate.Validate_Fields.double' @:: Lens' FieldRules DoubleRules@
         * 'Proto.Validate.Validate_Fields.maybe'int32' @:: Lens' FieldRules (Prelude.Maybe Int32Rules)@
         * 'Proto.Validate.Validate_Fields.int32' @:: Lens' FieldRules Int32Rules@
         * 'Proto.Validate.Validate_Fields.maybe'int64' @:: Lens' FieldRules (Prelude.Maybe Int64Rules)@
         * 'Proto.Validate.Validate_Fields.int64' @:: Lens' FieldRules Int64Rules@
         * 'Proto.Validate.Validate_Fields.maybe'uint32' @:: Lens' FieldRules (Prelude.Maybe UInt32Rules)@
         * 'Proto.Validate.Validate_Fields.uint32' @:: Lens' FieldRules UInt32Rules@
         * 'Proto.Validate.Validate_Fields.maybe'uint64' @:: Lens' FieldRules (Prelude.Maybe UInt64Rules)@
         * 'Proto.Validate.Validate_Fields.uint64' @:: Lens' FieldRules UInt64Rules@
         * 'Proto.Validate.Validate_Fields.maybe'sint32' @:: Lens' FieldRules (Prelude.Maybe SInt32Rules)@
         * 'Proto.Validate.Validate_Fields.sint32' @:: Lens' FieldRules SInt32Rules@
         * 'Proto.Validate.Validate_Fields.maybe'sint64' @:: Lens' FieldRules (Prelude.Maybe SInt64Rules)@
         * 'Proto.Validate.Validate_Fields.sint64' @:: Lens' FieldRules SInt64Rules@
         * 'Proto.Validate.Validate_Fields.maybe'fixed32' @:: Lens' FieldRules (Prelude.Maybe Fixed32Rules)@
         * 'Proto.Validate.Validate_Fields.fixed32' @:: Lens' FieldRules Fixed32Rules@
         * 'Proto.Validate.Validate_Fields.maybe'fixed64' @:: Lens' FieldRules (Prelude.Maybe Fixed64Rules)@
         * 'Proto.Validate.Validate_Fields.fixed64' @:: Lens' FieldRules Fixed64Rules@
         * 'Proto.Validate.Validate_Fields.maybe'sfixed32' @:: Lens' FieldRules (Prelude.Maybe SFixed32Rules)@
         * 'Proto.Validate.Validate_Fields.sfixed32' @:: Lens' FieldRules SFixed32Rules@
         * 'Proto.Validate.Validate_Fields.maybe'sfixed64' @:: Lens' FieldRules (Prelude.Maybe SFixed64Rules)@
         * 'Proto.Validate.Validate_Fields.sfixed64' @:: Lens' FieldRules SFixed64Rules@
         * 'Proto.Validate.Validate_Fields.maybe'bool' @:: Lens' FieldRules (Prelude.Maybe BoolRules)@
         * 'Proto.Validate.Validate_Fields.bool' @:: Lens' FieldRules BoolRules@
         * 'Proto.Validate.Validate_Fields.maybe'string' @:: Lens' FieldRules (Prelude.Maybe StringRules)@
         * 'Proto.Validate.Validate_Fields.string' @:: Lens' FieldRules StringRules@
         * 'Proto.Validate.Validate_Fields.maybe'bytes' @:: Lens' FieldRules (Prelude.Maybe BytesRules)@
         * 'Proto.Validate.Validate_Fields.bytes' @:: Lens' FieldRules BytesRules@
         * 'Proto.Validate.Validate_Fields.maybe'enum' @:: Lens' FieldRules (Prelude.Maybe EnumRules)@
         * 'Proto.Validate.Validate_Fields.enum' @:: Lens' FieldRules EnumRules@
         * 'Proto.Validate.Validate_Fields.maybe'repeated' @:: Lens' FieldRules (Prelude.Maybe RepeatedRules)@
         * 'Proto.Validate.Validate_Fields.repeated' @:: Lens' FieldRules RepeatedRules@
         * 'Proto.Validate.Validate_Fields.maybe'map' @:: Lens' FieldRules (Prelude.Maybe MapRules)@
         * 'Proto.Validate.Validate_Fields.map' @:: Lens' FieldRules MapRules@
         * 'Proto.Validate.Validate_Fields.maybe'any' @:: Lens' FieldRules (Prelude.Maybe AnyRules)@
         * 'Proto.Validate.Validate_Fields.any' @:: Lens' FieldRules AnyRules@
         * 'Proto.Validate.Validate_Fields.maybe'duration' @:: Lens' FieldRules (Prelude.Maybe DurationRules)@
         * 'Proto.Validate.Validate_Fields.duration' @:: Lens' FieldRules DurationRules@
         * 'Proto.Validate.Validate_Fields.maybe'timestamp' @:: Lens' FieldRules (Prelude.Maybe TimestampRules)@
         * 'Proto.Validate.Validate_Fields.timestamp' @:: Lens' FieldRules TimestampRules@ -}
data FieldRules
  = FieldRules'_constructor {_FieldRules'message :: !(Prelude.Maybe MessageRules),
                             _FieldRules'type' :: !(Prelude.Maybe FieldRules'Type),
                             _FieldRules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FieldRules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data FieldRules'Type
  = FieldRules'Float !FloatRules |
    FieldRules'Double !DoubleRules |
    FieldRules'Int32 !Int32Rules |
    FieldRules'Int64 !Int64Rules |
    FieldRules'Uint32 !UInt32Rules |
    FieldRules'Uint64 !UInt64Rules |
    FieldRules'Sint32 !SInt32Rules |
    FieldRules'Sint64 !SInt64Rules |
    FieldRules'Fixed32 !Fixed32Rules |
    FieldRules'Fixed64 !Fixed64Rules |
    FieldRules'Sfixed32 !SFixed32Rules |
    FieldRules'Sfixed64 !SFixed64Rules |
    FieldRules'Bool !BoolRules |
    FieldRules'String !StringRules |
    FieldRules'Bytes !BytesRules |
    FieldRules'Enum !EnumRules |
    FieldRules'Repeated !RepeatedRules |
    FieldRules'Map !MapRules |
    FieldRules'Any !AnyRules |
    FieldRules'Duration !DurationRules |
    FieldRules'Timestamp !TimestampRules
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField FieldRules "message" MessageRules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'message (\ x__ y__ -> x__ {_FieldRules'message = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FieldRules "maybe'message" (Prelude.Maybe MessageRules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'message (\ x__ y__ -> x__ {_FieldRules'message = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FieldRules "maybe'type'" (Prelude.Maybe FieldRules'Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FieldRules "maybe'float" (Prelude.Maybe FloatRules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Float x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Float y__))
instance Data.ProtoLens.Field.HasField FieldRules "float" FloatRules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Float x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Float y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'double" (Prelude.Maybe DoubleRules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Double x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Double y__))
instance Data.ProtoLens.Field.HasField FieldRules "double" DoubleRules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Double x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Double y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'int32" (Prelude.Maybe Int32Rules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Int32 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Int32 y__))
instance Data.ProtoLens.Field.HasField FieldRules "int32" Int32Rules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Int32 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Int32 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'int64" (Prelude.Maybe Int64Rules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Int64 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Int64 y__))
instance Data.ProtoLens.Field.HasField FieldRules "int64" Int64Rules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Int64 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Int64 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'uint32" (Prelude.Maybe UInt32Rules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Uint32 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Uint32 y__))
instance Data.ProtoLens.Field.HasField FieldRules "uint32" UInt32Rules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Uint32 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Uint32 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'uint64" (Prelude.Maybe UInt64Rules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Uint64 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Uint64 y__))
instance Data.ProtoLens.Field.HasField FieldRules "uint64" UInt64Rules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Uint64 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Uint64 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'sint32" (Prelude.Maybe SInt32Rules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Sint32 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Sint32 y__))
instance Data.ProtoLens.Field.HasField FieldRules "sint32" SInt32Rules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Sint32 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Sint32 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'sint64" (Prelude.Maybe SInt64Rules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Sint64 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Sint64 y__))
instance Data.ProtoLens.Field.HasField FieldRules "sint64" SInt64Rules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Sint64 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Sint64 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'fixed32" (Prelude.Maybe Fixed32Rules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Fixed32 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Fixed32 y__))
instance Data.ProtoLens.Field.HasField FieldRules "fixed32" Fixed32Rules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Fixed32 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Fixed32 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'fixed64" (Prelude.Maybe Fixed64Rules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Fixed64 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Fixed64 y__))
instance Data.ProtoLens.Field.HasField FieldRules "fixed64" Fixed64Rules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Fixed64 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Fixed64 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'sfixed32" (Prelude.Maybe SFixed32Rules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Sfixed32 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Sfixed32 y__))
instance Data.ProtoLens.Field.HasField FieldRules "sfixed32" SFixed32Rules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Sfixed32 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Sfixed32 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'sfixed64" (Prelude.Maybe SFixed64Rules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Sfixed64 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Sfixed64 y__))
instance Data.ProtoLens.Field.HasField FieldRules "sfixed64" SFixed64Rules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Sfixed64 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Sfixed64 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'bool" (Prelude.Maybe BoolRules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Bool x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Bool y__))
instance Data.ProtoLens.Field.HasField FieldRules "bool" BoolRules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Bool x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Bool y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'string" (Prelude.Maybe StringRules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'String x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'String y__))
instance Data.ProtoLens.Field.HasField FieldRules "string" StringRules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'String x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'String y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'bytes" (Prelude.Maybe BytesRules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Bytes x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Bytes y__))
instance Data.ProtoLens.Field.HasField FieldRules "bytes" BytesRules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Bytes x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Bytes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'enum" (Prelude.Maybe EnumRules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Enum x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Enum y__))
instance Data.ProtoLens.Field.HasField FieldRules "enum" EnumRules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Enum x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Enum y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'repeated" (Prelude.Maybe RepeatedRules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Repeated x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Repeated y__))
instance Data.ProtoLens.Field.HasField FieldRules "repeated" RepeatedRules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Repeated x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Repeated y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'map" (Prelude.Maybe MapRules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Map x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Map y__))
instance Data.ProtoLens.Field.HasField FieldRules "map" MapRules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Map x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Map y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'any" (Prelude.Maybe AnyRules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Any x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Any y__))
instance Data.ProtoLens.Field.HasField FieldRules "any" AnyRules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Any x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Any y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'duration" (Prelude.Maybe DurationRules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Duration x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Duration y__))
instance Data.ProtoLens.Field.HasField FieldRules "duration" DurationRules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Duration x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Duration y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FieldRules "maybe'timestamp" (Prelude.Maybe TimestampRules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FieldRules'Timestamp x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FieldRules'Timestamp y__))
instance Data.ProtoLens.Field.HasField FieldRules "timestamp" TimestampRules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldRules'type' (\ x__ y__ -> x__ {_FieldRules'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FieldRules'Timestamp x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FieldRules'Timestamp y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message FieldRules where
  messageName _ = Data.Text.pack "validate.FieldRules"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \FieldRules\DC20\n\
      \\amessage\CAN\DC1 \SOH(\v2\SYN.validate.MessageRulesR\amessage\DC2,\n\
      \\ENQfloat\CAN\SOH \SOH(\v2\DC4.validate.FloatRulesH\NULR\ENQfloat\DC2/\n\
      \\ACKdouble\CAN\STX \SOH(\v2\NAK.validate.DoubleRulesH\NULR\ACKdouble\DC2,\n\
      \\ENQint32\CAN\ETX \SOH(\v2\DC4.validate.Int32RulesH\NULR\ENQint32\DC2,\n\
      \\ENQint64\CAN\EOT \SOH(\v2\DC4.validate.Int64RulesH\NULR\ENQint64\DC2/\n\
      \\ACKuint32\CAN\ENQ \SOH(\v2\NAK.validate.UInt32RulesH\NULR\ACKuint32\DC2/\n\
      \\ACKuint64\CAN\ACK \SOH(\v2\NAK.validate.UInt64RulesH\NULR\ACKuint64\DC2/\n\
      \\ACKsint32\CAN\a \SOH(\v2\NAK.validate.SInt32RulesH\NULR\ACKsint32\DC2/\n\
      \\ACKsint64\CAN\b \SOH(\v2\NAK.validate.SInt64RulesH\NULR\ACKsint64\DC22\n\
      \\afixed32\CAN\t \SOH(\v2\SYN.validate.Fixed32RulesH\NULR\afixed32\DC22\n\
      \\afixed64\CAN\n\
      \ \SOH(\v2\SYN.validate.Fixed64RulesH\NULR\afixed64\DC25\n\
      \\bsfixed32\CAN\v \SOH(\v2\ETB.validate.SFixed32RulesH\NULR\bsfixed32\DC25\n\
      \\bsfixed64\CAN\f \SOH(\v2\ETB.validate.SFixed64RulesH\NULR\bsfixed64\DC2)\n\
      \\EOTbool\CAN\r \SOH(\v2\DC3.validate.BoolRulesH\NULR\EOTbool\DC2/\n\
      \\ACKstring\CAN\SO \SOH(\v2\NAK.validate.StringRulesH\NULR\ACKstring\DC2,\n\
      \\ENQbytes\CAN\SI \SOH(\v2\DC4.validate.BytesRulesH\NULR\ENQbytes\DC2)\n\
      \\EOTenum\CAN\DLE \SOH(\v2\DC3.validate.EnumRulesH\NULR\EOTenum\DC25\n\
      \\brepeated\CAN\DC2 \SOH(\v2\ETB.validate.RepeatedRulesH\NULR\brepeated\DC2&\n\
      \\ETXmap\CAN\DC3 \SOH(\v2\DC2.validate.MapRulesH\NULR\ETXmap\DC2&\n\
      \\ETXany\CAN\DC4 \SOH(\v2\DC2.validate.AnyRulesH\NULR\ETXany\DC25\n\
      \\bduration\CAN\NAK \SOH(\v2\ETB.validate.DurationRulesH\NULR\bduration\DC28\n\
      \\ttimestamp\CAN\SYN \SOH(\v2\CAN.validate.TimestampRulesH\NULR\ttimestampB\ACK\n\
      \\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        message__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MessageRules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'message")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        float__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "float"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FloatRules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'float")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        double__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "double"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DoubleRules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'double")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        int32__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int32"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Int32Rules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'int32")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        int64__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int64"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Int64Rules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'int64")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        uint32__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uint32"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UInt32Rules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uint32")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        uint64__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uint64"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UInt64Rules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uint64")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        sint32__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sint32"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SInt32Rules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sint32")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        sint64__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sint64"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SInt64Rules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sint64")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        fixed32__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fixed32"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Fixed32Rules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fixed32")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        fixed64__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fixed64"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Fixed64Rules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fixed64")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        sfixed32__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sfixed32"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SFixed32Rules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sfixed32")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        sfixed64__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sfixed64"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SFixed64Rules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sfixed64")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        bool__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bool"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BoolRules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bool")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        string__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StringRules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'string")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        bytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BytesRules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytes")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        enum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enum"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EnumRules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'enum")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        repeated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "repeated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RepeatedRules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'repeated")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        map__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MapRules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'map")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        any__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "any"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AnyRules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'any")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        duration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DurationRules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'duration")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TimestampRules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor FieldRules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 17, message__field_descriptor),
           (Data.ProtoLens.Tag 1, float__field_descriptor),
           (Data.ProtoLens.Tag 2, double__field_descriptor),
           (Data.ProtoLens.Tag 3, int32__field_descriptor),
           (Data.ProtoLens.Tag 4, int64__field_descriptor),
           (Data.ProtoLens.Tag 5, uint32__field_descriptor),
           (Data.ProtoLens.Tag 6, uint64__field_descriptor),
           (Data.ProtoLens.Tag 7, sint32__field_descriptor),
           (Data.ProtoLens.Tag 8, sint64__field_descriptor),
           (Data.ProtoLens.Tag 9, fixed32__field_descriptor),
           (Data.ProtoLens.Tag 10, fixed64__field_descriptor),
           (Data.ProtoLens.Tag 11, sfixed32__field_descriptor),
           (Data.ProtoLens.Tag 12, sfixed64__field_descriptor),
           (Data.ProtoLens.Tag 13, bool__field_descriptor),
           (Data.ProtoLens.Tag 14, string__field_descriptor),
           (Data.ProtoLens.Tag 15, bytes__field_descriptor),
           (Data.ProtoLens.Tag 16, enum__field_descriptor),
           (Data.ProtoLens.Tag 18, repeated__field_descriptor),
           (Data.ProtoLens.Tag 19, map__field_descriptor),
           (Data.ProtoLens.Tag 20, any__field_descriptor),
           (Data.ProtoLens.Tag 21, duration__field_descriptor),
           (Data.ProtoLens.Tag 22, timestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FieldRules'_unknownFields
        (\ x__ y__ -> x__ {_FieldRules'_unknownFields = y__})
  defMessage
    = FieldRules'_constructor
        {_FieldRules'message = Prelude.Nothing,
         _FieldRules'type' = Prelude.Nothing,
         _FieldRules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FieldRules -> Data.ProtoLens.Encoding.Bytes.Parser FieldRules
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
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "message"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"message") y x)
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "float"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"float") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "double"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"double") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "int32"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"int32") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "int64"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"int64") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "uint32"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"uint32") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "uint64"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"uint64") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "sint32"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sint32") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "sint64"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sint64") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "fixed32"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fixed32") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "fixed64"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fixed64") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "sfixed32"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sfixed32") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "sfixed64"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sfixed64") y x)
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "bool"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bool") y x)
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "string"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"string") y x)
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "bytes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bytes") y x)
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "enum"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"enum") y x)
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "repeated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"repeated") y x)
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "map"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"map") y x)
                        162
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "any"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"any") y x)
                        170
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "duration"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"duration") y x)
                        178
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FieldRules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'message") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 138)
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (FieldRules'Float v))
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
                   (Prelude.Just (FieldRules'Double v))
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
                   (Prelude.Just (FieldRules'Int32 v))
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
                   (Prelude.Just (FieldRules'Int64 v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (FieldRules'Uint32 v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (FieldRules'Uint64 v))
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
                   (Prelude.Just (FieldRules'Sint32 v))
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
                   (Prelude.Just (FieldRules'Sint64 v))
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
                   (Prelude.Just (FieldRules'Fixed32 v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (FieldRules'Fixed64 v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (FieldRules'Sfixed32 v))
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
                   (Prelude.Just (FieldRules'Sfixed64 v))
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
                   (Prelude.Just (FieldRules'Bool v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 106)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (FieldRules'String v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 114)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (FieldRules'Bytes v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 122)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (FieldRules'Enum v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 130)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (FieldRules'Repeated v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 146)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (FieldRules'Map v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 154)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (FieldRules'Any v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 162)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (FieldRules'Duration v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 170)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (FieldRules'Timestamp v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 178)
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
instance Control.DeepSeq.NFData FieldRules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FieldRules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FieldRules'message x__)
                (Control.DeepSeq.deepseq (_FieldRules'type' x__) ()))
instance Control.DeepSeq.NFData FieldRules'Type where
  rnf (FieldRules'Float x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Double x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Int32 x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Int64 x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Uint32 x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Uint64 x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Sint32 x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Sint64 x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Fixed32 x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Fixed64 x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Sfixed32 x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Sfixed64 x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Bool x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'String x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Bytes x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Enum x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Repeated x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Map x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Any x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Duration x__) = Control.DeepSeq.rnf x__
  rnf (FieldRules'Timestamp x__) = Control.DeepSeq.rnf x__
_FieldRules'Float ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type FloatRules
_FieldRules'Float
  = Data.ProtoLens.Prism.prism'
      FieldRules'Float
      (\ p__
         -> case p__ of
              (FieldRules'Float p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Double ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type DoubleRules
_FieldRules'Double
  = Data.ProtoLens.Prism.prism'
      FieldRules'Double
      (\ p__
         -> case p__ of
              (FieldRules'Double p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Int32 ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type Int32Rules
_FieldRules'Int32
  = Data.ProtoLens.Prism.prism'
      FieldRules'Int32
      (\ p__
         -> case p__ of
              (FieldRules'Int32 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Int64 ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type Int64Rules
_FieldRules'Int64
  = Data.ProtoLens.Prism.prism'
      FieldRules'Int64
      (\ p__
         -> case p__ of
              (FieldRules'Int64 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Uint32 ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type UInt32Rules
_FieldRules'Uint32
  = Data.ProtoLens.Prism.prism'
      FieldRules'Uint32
      (\ p__
         -> case p__ of
              (FieldRules'Uint32 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Uint64 ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type UInt64Rules
_FieldRules'Uint64
  = Data.ProtoLens.Prism.prism'
      FieldRules'Uint64
      (\ p__
         -> case p__ of
              (FieldRules'Uint64 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Sint32 ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type SInt32Rules
_FieldRules'Sint32
  = Data.ProtoLens.Prism.prism'
      FieldRules'Sint32
      (\ p__
         -> case p__ of
              (FieldRules'Sint32 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Sint64 ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type SInt64Rules
_FieldRules'Sint64
  = Data.ProtoLens.Prism.prism'
      FieldRules'Sint64
      (\ p__
         -> case p__ of
              (FieldRules'Sint64 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Fixed32 ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type Fixed32Rules
_FieldRules'Fixed32
  = Data.ProtoLens.Prism.prism'
      FieldRules'Fixed32
      (\ p__
         -> case p__ of
              (FieldRules'Fixed32 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Fixed64 ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type Fixed64Rules
_FieldRules'Fixed64
  = Data.ProtoLens.Prism.prism'
      FieldRules'Fixed64
      (\ p__
         -> case p__ of
              (FieldRules'Fixed64 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Sfixed32 ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type SFixed32Rules
_FieldRules'Sfixed32
  = Data.ProtoLens.Prism.prism'
      FieldRules'Sfixed32
      (\ p__
         -> case p__ of
              (FieldRules'Sfixed32 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Sfixed64 ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type SFixed64Rules
_FieldRules'Sfixed64
  = Data.ProtoLens.Prism.prism'
      FieldRules'Sfixed64
      (\ p__
         -> case p__ of
              (FieldRules'Sfixed64 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Bool ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type BoolRules
_FieldRules'Bool
  = Data.ProtoLens.Prism.prism'
      FieldRules'Bool
      (\ p__
         -> case p__ of
              (FieldRules'Bool p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'String ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type StringRules
_FieldRules'String
  = Data.ProtoLens.Prism.prism'
      FieldRules'String
      (\ p__
         -> case p__ of
              (FieldRules'String p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Bytes ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type BytesRules
_FieldRules'Bytes
  = Data.ProtoLens.Prism.prism'
      FieldRules'Bytes
      (\ p__
         -> case p__ of
              (FieldRules'Bytes p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Enum ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type EnumRules
_FieldRules'Enum
  = Data.ProtoLens.Prism.prism'
      FieldRules'Enum
      (\ p__
         -> case p__ of
              (FieldRules'Enum p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Repeated ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type RepeatedRules
_FieldRules'Repeated
  = Data.ProtoLens.Prism.prism'
      FieldRules'Repeated
      (\ p__
         -> case p__ of
              (FieldRules'Repeated p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Map ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type MapRules
_FieldRules'Map
  = Data.ProtoLens.Prism.prism'
      FieldRules'Map
      (\ p__
         -> case p__ of
              (FieldRules'Map p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Any ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type AnyRules
_FieldRules'Any
  = Data.ProtoLens.Prism.prism'
      FieldRules'Any
      (\ p__
         -> case p__ of
              (FieldRules'Any p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Duration ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type DurationRules
_FieldRules'Duration
  = Data.ProtoLens.Prism.prism'
      FieldRules'Duration
      (\ p__
         -> case p__ of
              (FieldRules'Duration p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FieldRules'Timestamp ::
  Data.ProtoLens.Prism.Prism' FieldRules'Type TimestampRules
_FieldRules'Timestamp
  = Data.ProtoLens.Prism.prism'
      FieldRules'Timestamp
      (\ p__
         -> case p__ of
              (FieldRules'Timestamp p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' Fixed32Rules Data.Word.Word32@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' Fixed32Rules (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Validate.Validate_Fields.lt' @:: Lens' Fixed32Rules Data.Word.Word32@
         * 'Proto.Validate.Validate_Fields.maybe'lt' @:: Lens' Fixed32Rules (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Validate.Validate_Fields.lte' @:: Lens' Fixed32Rules Data.Word.Word32@
         * 'Proto.Validate.Validate_Fields.maybe'lte' @:: Lens' Fixed32Rules (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Validate.Validate_Fields.gt' @:: Lens' Fixed32Rules Data.Word.Word32@
         * 'Proto.Validate.Validate_Fields.maybe'gt' @:: Lens' Fixed32Rules (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Validate.Validate_Fields.gte' @:: Lens' Fixed32Rules Data.Word.Word32@
         * 'Proto.Validate.Validate_Fields.maybe'gte' @:: Lens' Fixed32Rules (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Validate.Validate_Fields.in'' @:: Lens' Fixed32Rules [Data.Word.Word32]@
         * 'Proto.Validate.Validate_Fields.vec'in'' @:: Lens' Fixed32Rules (Data.Vector.Unboxed.Vector Data.Word.Word32)@
         * 'Proto.Validate.Validate_Fields.notIn' @:: Lens' Fixed32Rules [Data.Word.Word32]@
         * 'Proto.Validate.Validate_Fields.vec'notIn' @:: Lens' Fixed32Rules (Data.Vector.Unboxed.Vector Data.Word.Word32)@
         * 'Proto.Validate.Validate_Fields.ignoreEmpty' @:: Lens' Fixed32Rules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ignoreEmpty' @:: Lens' Fixed32Rules (Prelude.Maybe Prelude.Bool)@ -}
data Fixed32Rules
  = Fixed32Rules'_constructor {_Fixed32Rules'const :: !(Prelude.Maybe Data.Word.Word32),
                               _Fixed32Rules'lt :: !(Prelude.Maybe Data.Word.Word32),
                               _Fixed32Rules'lte :: !(Prelude.Maybe Data.Word.Word32),
                               _Fixed32Rules'gt :: !(Prelude.Maybe Data.Word.Word32),
                               _Fixed32Rules'gte :: !(Prelude.Maybe Data.Word.Word32),
                               _Fixed32Rules'in' :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                               _Fixed32Rules'notIn :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                               _Fixed32Rules'ignoreEmpty :: !(Prelude.Maybe Prelude.Bool),
                               _Fixed32Rules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Fixed32Rules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Fixed32Rules "const" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed32Rules'const (\ x__ y__ -> x__ {_Fixed32Rules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Fixed32Rules "maybe'const" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed32Rules'const (\ x__ y__ -> x__ {_Fixed32Rules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Fixed32Rules "lt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed32Rules'lt (\ x__ y__ -> x__ {_Fixed32Rules'lt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Fixed32Rules "maybe'lt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed32Rules'lt (\ x__ y__ -> x__ {_Fixed32Rules'lt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Fixed32Rules "lte" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed32Rules'lte (\ x__ y__ -> x__ {_Fixed32Rules'lte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Fixed32Rules "maybe'lte" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed32Rules'lte (\ x__ y__ -> x__ {_Fixed32Rules'lte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Fixed32Rules "gt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed32Rules'gt (\ x__ y__ -> x__ {_Fixed32Rules'gt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Fixed32Rules "maybe'gt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed32Rules'gt (\ x__ y__ -> x__ {_Fixed32Rules'gt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Fixed32Rules "gte" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed32Rules'gte (\ x__ y__ -> x__ {_Fixed32Rules'gte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Fixed32Rules "maybe'gte" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed32Rules'gte (\ x__ y__ -> x__ {_Fixed32Rules'gte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Fixed32Rules "in'" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed32Rules'in' (\ x__ y__ -> x__ {_Fixed32Rules'in' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Fixed32Rules "vec'in'" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed32Rules'in' (\ x__ y__ -> x__ {_Fixed32Rules'in' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Fixed32Rules "notIn" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed32Rules'notIn (\ x__ y__ -> x__ {_Fixed32Rules'notIn = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Fixed32Rules "vec'notIn" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed32Rules'notIn (\ x__ y__ -> x__ {_Fixed32Rules'notIn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Fixed32Rules "ignoreEmpty" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed32Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_Fixed32Rules'ignoreEmpty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Fixed32Rules "maybe'ignoreEmpty" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed32Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_Fixed32Rules'ignoreEmpty = y__}))
        Prelude.id
instance Data.ProtoLens.Message Fixed32Rules where
  messageName _ = Data.Text.pack "validate.Fixed32Rules"
  packedMessageDescriptor _
    = "\n\
      \\fFixed32Rules\DC2\DC4\n\
      \\ENQconst\CAN\SOH \SOH(\aR\ENQconst\DC2\SO\n\
      \\STXlt\CAN\STX \SOH(\aR\STXlt\DC2\DLE\n\
      \\ETXlte\CAN\ETX \SOH(\aR\ETXlte\DC2\SO\n\
      \\STXgt\CAN\EOT \SOH(\aR\STXgt\DC2\DLE\n\
      \\ETXgte\CAN\ENQ \SOH(\aR\ETXgte\DC2\SO\n\
      \\STXin\CAN\ACK \ETX(\aR\STXin\DC2\NAK\n\
      \\ACKnot_in\CAN\a \ETX(\aR\ENQnotIn\DC2!\n\
      \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Fixed32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor Fixed32Rules
        lt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Fixed32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lt")) ::
              Data.ProtoLens.FieldDescriptor Fixed32Rules
        lte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Fixed32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lte")) ::
              Data.ProtoLens.FieldDescriptor Fixed32Rules
        gt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Fixed32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gt")) ::
              Data.ProtoLens.FieldDescriptor Fixed32Rules
        gte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Fixed32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gte")) ::
              Data.ProtoLens.FieldDescriptor Fixed32Rules
        in'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Fixed32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"in'")) ::
              Data.ProtoLens.FieldDescriptor Fixed32Rules
        notIn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Fixed32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"notIn")) ::
              Data.ProtoLens.FieldDescriptor Fixed32Rules
        ignoreEmpty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_empty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ignoreEmpty")) ::
              Data.ProtoLens.FieldDescriptor Fixed32Rules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, const__field_descriptor),
           (Data.ProtoLens.Tag 2, lt__field_descriptor),
           (Data.ProtoLens.Tag 3, lte__field_descriptor),
           (Data.ProtoLens.Tag 4, gt__field_descriptor),
           (Data.ProtoLens.Tag 5, gte__field_descriptor),
           (Data.ProtoLens.Tag 6, in'__field_descriptor),
           (Data.ProtoLens.Tag 7, notIn__field_descriptor),
           (Data.ProtoLens.Tag 8, ignoreEmpty__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Fixed32Rules'_unknownFields
        (\ x__ y__ -> x__ {_Fixed32Rules'_unknownFields = y__})
  defMessage
    = Fixed32Rules'_constructor
        {_Fixed32Rules'const = Prelude.Nothing,
         _Fixed32Rules'lt = Prelude.Nothing,
         _Fixed32Rules'lte = Prelude.Nothing,
         _Fixed32Rules'gt = Prelude.Nothing,
         _Fixed32Rules'gte = Prelude.Nothing,
         _Fixed32Rules'in' = Data.Vector.Generic.empty,
         _Fixed32Rules'notIn = Data.Vector.Generic.empty,
         _Fixed32Rules'ignoreEmpty = Prelude.Nothing,
         _Fixed32Rules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Fixed32Rules
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
                -> Data.ProtoLens.Encoding.Bytes.Parser Fixed32Rules
        loop x mutable'in' mutable'notIn
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'in')
                      frozen'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'notIn)
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
                              (Data.ProtoLens.Field.field @"vec'in'")
                              frozen'in'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'notIn") frozen'notIn x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        13
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getFixed32 "const"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                                  mutable'in'
                                  mutable'notIn
                        21
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getFixed32 "lt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lt") y x)
                                  mutable'in'
                                  mutable'notIn
                        29
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getFixed32 "lte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lte") y x)
                                  mutable'in'
                                  mutable'notIn
                        37
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getFixed32 "gt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gt") y x)
                                  mutable'in'
                                  mutable'notIn
                        45
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getFixed32 "gte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gte") y x)
                                  mutable'in'
                                  mutable'notIn
                        53
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getFixed32 "in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'in' y)
                                loop x v mutable'notIn
                        50
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getFixed32
                                                                    "in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'in')
                                loop x y mutable'notIn
                        61
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getFixed32 "not_in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'notIn y)
                                loop x mutable'in' v
                        58
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getFixed32
                                                                    "not_in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'notIn)
                                loop x mutable'in' y
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_empty"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ignoreEmpty") y x)
                                  mutable'in'
                                  mutable'notIn
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'in'
                                  mutable'notIn
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'in' mutable'notIn)
          "Fixed32Rules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 13)
                       (Data.ProtoLens.Encoding.Bytes.putFixed32 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 21)
                          (Data.ProtoLens.Encoding.Bytes.putFixed32 _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lte") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 29)
                             (Data.ProtoLens.Encoding.Bytes.putFixed32 _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gt") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 37)
                                (Data.ProtoLens.Encoding.Bytes.putFixed32 _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gte") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 45)
                                   (Data.ProtoLens.Encoding.Bytes.putFixed32 _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 53)
                                       (Data.ProtoLens.Encoding.Bytes.putFixed32 _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'in'") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 61)
                                          (Data.ProtoLens.Encoding.Bytes.putFixed32 _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'notIn") _x))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'ignoreEmpty") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (\ b -> if b then 1 else 0)
                                               _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData Fixed32Rules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Fixed32Rules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Fixed32Rules'const x__)
                (Control.DeepSeq.deepseq
                   (_Fixed32Rules'lt x__)
                   (Control.DeepSeq.deepseq
                      (_Fixed32Rules'lte x__)
                      (Control.DeepSeq.deepseq
                         (_Fixed32Rules'gt x__)
                         (Control.DeepSeq.deepseq
                            (_Fixed32Rules'gte x__)
                            (Control.DeepSeq.deepseq
                               (_Fixed32Rules'in' x__)
                               (Control.DeepSeq.deepseq
                                  (_Fixed32Rules'notIn x__)
                                  (Control.DeepSeq.deepseq
                                     (_Fixed32Rules'ignoreEmpty x__) ()))))))))
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' Fixed64Rules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' Fixed64Rules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.lt' @:: Lens' Fixed64Rules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'lt' @:: Lens' Fixed64Rules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.lte' @:: Lens' Fixed64Rules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'lte' @:: Lens' Fixed64Rules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.gt' @:: Lens' Fixed64Rules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'gt' @:: Lens' Fixed64Rules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.gte' @:: Lens' Fixed64Rules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'gte' @:: Lens' Fixed64Rules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.in'' @:: Lens' Fixed64Rules [Data.Word.Word64]@
         * 'Proto.Validate.Validate_Fields.vec'in'' @:: Lens' Fixed64Rules (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.notIn' @:: Lens' Fixed64Rules [Data.Word.Word64]@
         * 'Proto.Validate.Validate_Fields.vec'notIn' @:: Lens' Fixed64Rules (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.ignoreEmpty' @:: Lens' Fixed64Rules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ignoreEmpty' @:: Lens' Fixed64Rules (Prelude.Maybe Prelude.Bool)@ -}
data Fixed64Rules
  = Fixed64Rules'_constructor {_Fixed64Rules'const :: !(Prelude.Maybe Data.Word.Word64),
                               _Fixed64Rules'lt :: !(Prelude.Maybe Data.Word.Word64),
                               _Fixed64Rules'lte :: !(Prelude.Maybe Data.Word.Word64),
                               _Fixed64Rules'gt :: !(Prelude.Maybe Data.Word.Word64),
                               _Fixed64Rules'gte :: !(Prelude.Maybe Data.Word.Word64),
                               _Fixed64Rules'in' :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                               _Fixed64Rules'notIn :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                               _Fixed64Rules'ignoreEmpty :: !(Prelude.Maybe Prelude.Bool),
                               _Fixed64Rules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Fixed64Rules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Fixed64Rules "const" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed64Rules'const (\ x__ y__ -> x__ {_Fixed64Rules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Fixed64Rules "maybe'const" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed64Rules'const (\ x__ y__ -> x__ {_Fixed64Rules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Fixed64Rules "lt" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed64Rules'lt (\ x__ y__ -> x__ {_Fixed64Rules'lt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Fixed64Rules "maybe'lt" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed64Rules'lt (\ x__ y__ -> x__ {_Fixed64Rules'lt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Fixed64Rules "lte" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed64Rules'lte (\ x__ y__ -> x__ {_Fixed64Rules'lte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Fixed64Rules "maybe'lte" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed64Rules'lte (\ x__ y__ -> x__ {_Fixed64Rules'lte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Fixed64Rules "gt" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed64Rules'gt (\ x__ y__ -> x__ {_Fixed64Rules'gt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Fixed64Rules "maybe'gt" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed64Rules'gt (\ x__ y__ -> x__ {_Fixed64Rules'gt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Fixed64Rules "gte" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed64Rules'gte (\ x__ y__ -> x__ {_Fixed64Rules'gte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Fixed64Rules "maybe'gte" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed64Rules'gte (\ x__ y__ -> x__ {_Fixed64Rules'gte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Fixed64Rules "in'" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed64Rules'in' (\ x__ y__ -> x__ {_Fixed64Rules'in' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Fixed64Rules "vec'in'" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed64Rules'in' (\ x__ y__ -> x__ {_Fixed64Rules'in' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Fixed64Rules "notIn" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed64Rules'notIn (\ x__ y__ -> x__ {_Fixed64Rules'notIn = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Fixed64Rules "vec'notIn" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed64Rules'notIn (\ x__ y__ -> x__ {_Fixed64Rules'notIn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Fixed64Rules "ignoreEmpty" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed64Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_Fixed64Rules'ignoreEmpty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Fixed64Rules "maybe'ignoreEmpty" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fixed64Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_Fixed64Rules'ignoreEmpty = y__}))
        Prelude.id
instance Data.ProtoLens.Message Fixed64Rules where
  messageName _ = Data.Text.pack "validate.Fixed64Rules"
  packedMessageDescriptor _
    = "\n\
      \\fFixed64Rules\DC2\DC4\n\
      \\ENQconst\CAN\SOH \SOH(\ACKR\ENQconst\DC2\SO\n\
      \\STXlt\CAN\STX \SOH(\ACKR\STXlt\DC2\DLE\n\
      \\ETXlte\CAN\ETX \SOH(\ACKR\ETXlte\DC2\SO\n\
      \\STXgt\CAN\EOT \SOH(\ACKR\STXgt\DC2\DLE\n\
      \\ETXgte\CAN\ENQ \SOH(\ACKR\ETXgte\DC2\SO\n\
      \\STXin\CAN\ACK \ETX(\ACKR\STXin\DC2\NAK\n\
      \\ACKnot_in\CAN\a \ETX(\ACKR\ENQnotIn\DC2!\n\
      \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Fixed64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor Fixed64Rules
        lt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Fixed64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lt")) ::
              Data.ProtoLens.FieldDescriptor Fixed64Rules
        lte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Fixed64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lte")) ::
              Data.ProtoLens.FieldDescriptor Fixed64Rules
        gt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Fixed64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gt")) ::
              Data.ProtoLens.FieldDescriptor Fixed64Rules
        gte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Fixed64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gte")) ::
              Data.ProtoLens.FieldDescriptor Fixed64Rules
        in'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Fixed64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"in'")) ::
              Data.ProtoLens.FieldDescriptor Fixed64Rules
        notIn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Fixed64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"notIn")) ::
              Data.ProtoLens.FieldDescriptor Fixed64Rules
        ignoreEmpty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_empty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ignoreEmpty")) ::
              Data.ProtoLens.FieldDescriptor Fixed64Rules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, const__field_descriptor),
           (Data.ProtoLens.Tag 2, lt__field_descriptor),
           (Data.ProtoLens.Tag 3, lte__field_descriptor),
           (Data.ProtoLens.Tag 4, gt__field_descriptor),
           (Data.ProtoLens.Tag 5, gte__field_descriptor),
           (Data.ProtoLens.Tag 6, in'__field_descriptor),
           (Data.ProtoLens.Tag 7, notIn__field_descriptor),
           (Data.ProtoLens.Tag 8, ignoreEmpty__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Fixed64Rules'_unknownFields
        (\ x__ y__ -> x__ {_Fixed64Rules'_unknownFields = y__})
  defMessage
    = Fixed64Rules'_constructor
        {_Fixed64Rules'const = Prelude.Nothing,
         _Fixed64Rules'lt = Prelude.Nothing,
         _Fixed64Rules'lte = Prelude.Nothing,
         _Fixed64Rules'gt = Prelude.Nothing,
         _Fixed64Rules'gte = Prelude.Nothing,
         _Fixed64Rules'in' = Data.Vector.Generic.empty,
         _Fixed64Rules'notIn = Data.Vector.Generic.empty,
         _Fixed64Rules'ignoreEmpty = Prelude.Nothing,
         _Fixed64Rules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Fixed64Rules
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                -> Data.ProtoLens.Encoding.Bytes.Parser Fixed64Rules
        loop x mutable'in' mutable'notIn
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'in')
                      frozen'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'notIn)
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
                              (Data.ProtoLens.Field.field @"vec'in'")
                              frozen'in'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'notIn") frozen'notIn x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        9 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getFixed64 "const"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                                  mutable'in'
                                  mutable'notIn
                        17
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getFixed64 "lt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lt") y x)
                                  mutable'in'
                                  mutable'notIn
                        25
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getFixed64 "lte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lte") y x)
                                  mutable'in'
                                  mutable'notIn
                        33
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getFixed64 "gt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gt") y x)
                                  mutable'in'
                                  mutable'notIn
                        41
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getFixed64 "gte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gte") y x)
                                  mutable'in'
                                  mutable'notIn
                        49
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getFixed64 "in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'in' y)
                                loop x v mutable'notIn
                        50
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getFixed64
                                                                    "in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'in')
                                loop x y mutable'notIn
                        57
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getFixed64 "not_in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'notIn y)
                                loop x mutable'in' v
                        58
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getFixed64
                                                                    "not_in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'notIn)
                                loop x mutable'in' y
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_empty"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ignoreEmpty") y x)
                                  mutable'in'
                                  mutable'notIn
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'in'
                                  mutable'notIn
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'in' mutable'notIn)
          "Fixed64Rules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 9)
                       (Data.ProtoLens.Encoding.Bytes.putFixed64 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 17)
                          (Data.ProtoLens.Encoding.Bytes.putFixed64 _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lte") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 25)
                             (Data.ProtoLens.Encoding.Bytes.putFixed64 _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gt") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 33)
                                (Data.ProtoLens.Encoding.Bytes.putFixed64 _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gte") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 41)
                                   (Data.ProtoLens.Encoding.Bytes.putFixed64 _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 49)
                                       (Data.ProtoLens.Encoding.Bytes.putFixed64 _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'in'") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 57)
                                          (Data.ProtoLens.Encoding.Bytes.putFixed64 _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'notIn") _x))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'ignoreEmpty") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (\ b -> if b then 1 else 0)
                                               _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData Fixed64Rules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Fixed64Rules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Fixed64Rules'const x__)
                (Control.DeepSeq.deepseq
                   (_Fixed64Rules'lt x__)
                   (Control.DeepSeq.deepseq
                      (_Fixed64Rules'lte x__)
                      (Control.DeepSeq.deepseq
                         (_Fixed64Rules'gt x__)
                         (Control.DeepSeq.deepseq
                            (_Fixed64Rules'gte x__)
                            (Control.DeepSeq.deepseq
                               (_Fixed64Rules'in' x__)
                               (Control.DeepSeq.deepseq
                                  (_Fixed64Rules'notIn x__)
                                  (Control.DeepSeq.deepseq
                                     (_Fixed64Rules'ignoreEmpty x__) ()))))))))
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' FloatRules Prelude.Float@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' FloatRules (Prelude.Maybe Prelude.Float)@
         * 'Proto.Validate.Validate_Fields.lt' @:: Lens' FloatRules Prelude.Float@
         * 'Proto.Validate.Validate_Fields.maybe'lt' @:: Lens' FloatRules (Prelude.Maybe Prelude.Float)@
         * 'Proto.Validate.Validate_Fields.lte' @:: Lens' FloatRules Prelude.Float@
         * 'Proto.Validate.Validate_Fields.maybe'lte' @:: Lens' FloatRules (Prelude.Maybe Prelude.Float)@
         * 'Proto.Validate.Validate_Fields.gt' @:: Lens' FloatRules Prelude.Float@
         * 'Proto.Validate.Validate_Fields.maybe'gt' @:: Lens' FloatRules (Prelude.Maybe Prelude.Float)@
         * 'Proto.Validate.Validate_Fields.gte' @:: Lens' FloatRules Prelude.Float@
         * 'Proto.Validate.Validate_Fields.maybe'gte' @:: Lens' FloatRules (Prelude.Maybe Prelude.Float)@
         * 'Proto.Validate.Validate_Fields.in'' @:: Lens' FloatRules [Prelude.Float]@
         * 'Proto.Validate.Validate_Fields.vec'in'' @:: Lens' FloatRules (Data.Vector.Unboxed.Vector Prelude.Float)@
         * 'Proto.Validate.Validate_Fields.notIn' @:: Lens' FloatRules [Prelude.Float]@
         * 'Proto.Validate.Validate_Fields.vec'notIn' @:: Lens' FloatRules (Data.Vector.Unboxed.Vector Prelude.Float)@
         * 'Proto.Validate.Validate_Fields.ignoreEmpty' @:: Lens' FloatRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ignoreEmpty' @:: Lens' FloatRules (Prelude.Maybe Prelude.Bool)@ -}
data FloatRules
  = FloatRules'_constructor {_FloatRules'const :: !(Prelude.Maybe Prelude.Float),
                             _FloatRules'lt :: !(Prelude.Maybe Prelude.Float),
                             _FloatRules'lte :: !(Prelude.Maybe Prelude.Float),
                             _FloatRules'gt :: !(Prelude.Maybe Prelude.Float),
                             _FloatRules'gte :: !(Prelude.Maybe Prelude.Float),
                             _FloatRules'in' :: !(Data.Vector.Unboxed.Vector Prelude.Float),
                             _FloatRules'notIn :: !(Data.Vector.Unboxed.Vector Prelude.Float),
                             _FloatRules'ignoreEmpty :: !(Prelude.Maybe Prelude.Bool),
                             _FloatRules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FloatRules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FloatRules "const" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FloatRules'const (\ x__ y__ -> x__ {_FloatRules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FloatRules "maybe'const" (Prelude.Maybe Prelude.Float) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FloatRules'const (\ x__ y__ -> x__ {_FloatRules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FloatRules "lt" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FloatRules'lt (\ x__ y__ -> x__ {_FloatRules'lt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FloatRules "maybe'lt" (Prelude.Maybe Prelude.Float) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FloatRules'lt (\ x__ y__ -> x__ {_FloatRules'lt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FloatRules "lte" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FloatRules'lte (\ x__ y__ -> x__ {_FloatRules'lte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FloatRules "maybe'lte" (Prelude.Maybe Prelude.Float) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FloatRules'lte (\ x__ y__ -> x__ {_FloatRules'lte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FloatRules "gt" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FloatRules'gt (\ x__ y__ -> x__ {_FloatRules'gt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FloatRules "maybe'gt" (Prelude.Maybe Prelude.Float) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FloatRules'gt (\ x__ y__ -> x__ {_FloatRules'gt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FloatRules "gte" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FloatRules'gte (\ x__ y__ -> x__ {_FloatRules'gte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FloatRules "maybe'gte" (Prelude.Maybe Prelude.Float) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FloatRules'gte (\ x__ y__ -> x__ {_FloatRules'gte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FloatRules "in'" [Prelude.Float] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FloatRules'in' (\ x__ y__ -> x__ {_FloatRules'in' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FloatRules "vec'in'" (Data.Vector.Unboxed.Vector Prelude.Float) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FloatRules'in' (\ x__ y__ -> x__ {_FloatRules'in' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FloatRules "notIn" [Prelude.Float] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FloatRules'notIn (\ x__ y__ -> x__ {_FloatRules'notIn = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FloatRules "vec'notIn" (Data.Vector.Unboxed.Vector Prelude.Float) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FloatRules'notIn (\ x__ y__ -> x__ {_FloatRules'notIn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FloatRules "ignoreEmpty" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FloatRules'ignoreEmpty
           (\ x__ y__ -> x__ {_FloatRules'ignoreEmpty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FloatRules "maybe'ignoreEmpty" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FloatRules'ignoreEmpty
           (\ x__ y__ -> x__ {_FloatRules'ignoreEmpty = y__}))
        Prelude.id
instance Data.ProtoLens.Message FloatRules where
  messageName _ = Data.Text.pack "validate.FloatRules"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \FloatRules\DC2\DC4\n\
      \\ENQconst\CAN\SOH \SOH(\STXR\ENQconst\DC2\SO\n\
      \\STXlt\CAN\STX \SOH(\STXR\STXlt\DC2\DLE\n\
      \\ETXlte\CAN\ETX \SOH(\STXR\ETXlte\DC2\SO\n\
      \\STXgt\CAN\EOT \SOH(\STXR\STXgt\DC2\DLE\n\
      \\ETXgte\CAN\ENQ \SOH(\STXR\ETXgte\DC2\SO\n\
      \\STXin\CAN\ACK \ETX(\STXR\STXin\DC2\NAK\n\
      \\ACKnot_in\CAN\a \ETX(\STXR\ENQnotIn\DC2!\n\
      \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor FloatRules
        lt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lt")) ::
              Data.ProtoLens.FieldDescriptor FloatRules
        lte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lte")) ::
              Data.ProtoLens.FieldDescriptor FloatRules
        gt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gt")) ::
              Data.ProtoLens.FieldDescriptor FloatRules
        gte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gte")) ::
              Data.ProtoLens.FieldDescriptor FloatRules
        in'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"in'")) ::
              Data.ProtoLens.FieldDescriptor FloatRules
        notIn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"notIn")) ::
              Data.ProtoLens.FieldDescriptor FloatRules
        ignoreEmpty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_empty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ignoreEmpty")) ::
              Data.ProtoLens.FieldDescriptor FloatRules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, const__field_descriptor),
           (Data.ProtoLens.Tag 2, lt__field_descriptor),
           (Data.ProtoLens.Tag 3, lte__field_descriptor),
           (Data.ProtoLens.Tag 4, gt__field_descriptor),
           (Data.ProtoLens.Tag 5, gte__field_descriptor),
           (Data.ProtoLens.Tag 6, in'__field_descriptor),
           (Data.ProtoLens.Tag 7, notIn__field_descriptor),
           (Data.ProtoLens.Tag 8, ignoreEmpty__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FloatRules'_unknownFields
        (\ x__ y__ -> x__ {_FloatRules'_unknownFields = y__})
  defMessage
    = FloatRules'_constructor
        {_FloatRules'const = Prelude.Nothing,
         _FloatRules'lt = Prelude.Nothing,
         _FloatRules'lte = Prelude.Nothing,
         _FloatRules'gt = Prelude.Nothing,
         _FloatRules'gte = Prelude.Nothing,
         _FloatRules'in' = Data.Vector.Generic.empty,
         _FloatRules'notIn = Data.Vector.Generic.empty,
         _FloatRules'ignoreEmpty = Prelude.Nothing,
         _FloatRules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FloatRules
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Prelude.Float
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Prelude.Float
                -> Data.ProtoLens.Encoding.Bytes.Parser FloatRules
        loop x mutable'in' mutable'notIn
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'in')
                      frozen'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'notIn)
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
                              (Data.ProtoLens.Field.field @"vec'in'")
                              frozen'in'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'notIn") frozen'notIn x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        13
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "const"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                                  mutable'in'
                                  mutable'notIn
                        21
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "lt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lt") y x)
                                  mutable'in'
                                  mutable'notIn
                        29
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "lte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lte") y x)
                                  mutable'in'
                                  mutable'notIn
                        37
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "gt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gt") y x)
                                  mutable'in'
                                  mutable'notIn
                        45
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "gte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gte") y x)
                                  mutable'in'
                                  mutable'notIn
                        53
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Data.ProtoLens.Encoding.Bytes.wordToFloat
                                           Data.ProtoLens.Encoding.Bytes.getFixed32)
                                        "in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'in' y)
                                loop x v mutable'notIn
                        50
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Data.ProtoLens.Encoding.Bytes.wordToFloat
                                                                       Data.ProtoLens.Encoding.Bytes.getFixed32)
                                                                    "in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'in')
                                loop x y mutable'notIn
                        61
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Data.ProtoLens.Encoding.Bytes.wordToFloat
                                           Data.ProtoLens.Encoding.Bytes.getFixed32)
                                        "not_in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'notIn y)
                                loop x mutable'in' v
                        58
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Data.ProtoLens.Encoding.Bytes.wordToFloat
                                                                       Data.ProtoLens.Encoding.Bytes.getFixed32)
                                                                    "not_in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'notIn)
                                loop x mutable'in' y
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_empty"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ignoreEmpty") y x)
                                  mutable'in'
                                  mutable'notIn
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'in'
                                  mutable'notIn
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'in' mutable'notIn)
          "FloatRules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 13)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putFixed32
                          Data.ProtoLens.Encoding.Bytes.floatToWord
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 21)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putFixed32
                             Data.ProtoLens.Encoding.Bytes.floatToWord
                             _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lte") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 29)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putFixed32
                                Data.ProtoLens.Encoding.Bytes.floatToWord
                                _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gt") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 37)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putFixed32
                                   Data.ProtoLens.Encoding.Bytes.floatToWord
                                   _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gte") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 45)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putFixed32
                                      Data.ProtoLens.Encoding.Bytes.floatToWord
                                      _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 53)
                                       ((Prelude..)
                                          Data.ProtoLens.Encoding.Bytes.putFixed32
                                          Data.ProtoLens.Encoding.Bytes.floatToWord
                                          _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'in'") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 61)
                                          ((Prelude..)
                                             Data.ProtoLens.Encoding.Bytes.putFixed32
                                             Data.ProtoLens.Encoding.Bytes.floatToWord
                                             _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'notIn") _x))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'ignoreEmpty") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (\ b -> if b then 1 else 0)
                                               _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData FloatRules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FloatRules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FloatRules'const x__)
                (Control.DeepSeq.deepseq
                   (_FloatRules'lt x__)
                   (Control.DeepSeq.deepseq
                      (_FloatRules'lte x__)
                      (Control.DeepSeq.deepseq
                         (_FloatRules'gt x__)
                         (Control.DeepSeq.deepseq
                            (_FloatRules'gte x__)
                            (Control.DeepSeq.deepseq
                               (_FloatRules'in' x__)
                               (Control.DeepSeq.deepseq
                                  (_FloatRules'notIn x__)
                                  (Control.DeepSeq.deepseq (_FloatRules'ignoreEmpty x__) ()))))))))
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' Int32Rules Data.Int.Int32@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' Int32Rules (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.lt' @:: Lens' Int32Rules Data.Int.Int32@
         * 'Proto.Validate.Validate_Fields.maybe'lt' @:: Lens' Int32Rules (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.lte' @:: Lens' Int32Rules Data.Int.Int32@
         * 'Proto.Validate.Validate_Fields.maybe'lte' @:: Lens' Int32Rules (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.gt' @:: Lens' Int32Rules Data.Int.Int32@
         * 'Proto.Validate.Validate_Fields.maybe'gt' @:: Lens' Int32Rules (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.gte' @:: Lens' Int32Rules Data.Int.Int32@
         * 'Proto.Validate.Validate_Fields.maybe'gte' @:: Lens' Int32Rules (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.in'' @:: Lens' Int32Rules [Data.Int.Int32]@
         * 'Proto.Validate.Validate_Fields.vec'in'' @:: Lens' Int32Rules (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.notIn' @:: Lens' Int32Rules [Data.Int.Int32]@
         * 'Proto.Validate.Validate_Fields.vec'notIn' @:: Lens' Int32Rules (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.ignoreEmpty' @:: Lens' Int32Rules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ignoreEmpty' @:: Lens' Int32Rules (Prelude.Maybe Prelude.Bool)@ -}
data Int32Rules
  = Int32Rules'_constructor {_Int32Rules'const :: !(Prelude.Maybe Data.Int.Int32),
                             _Int32Rules'lt :: !(Prelude.Maybe Data.Int.Int32),
                             _Int32Rules'lte :: !(Prelude.Maybe Data.Int.Int32),
                             _Int32Rules'gt :: !(Prelude.Maybe Data.Int.Int32),
                             _Int32Rules'gte :: !(Prelude.Maybe Data.Int.Int32),
                             _Int32Rules'in' :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                             _Int32Rules'notIn :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                             _Int32Rules'ignoreEmpty :: !(Prelude.Maybe Prelude.Bool),
                             _Int32Rules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Int32Rules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Int32Rules "const" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Rules'const (\ x__ y__ -> x__ {_Int32Rules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Int32Rules "maybe'const" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Rules'const (\ x__ y__ -> x__ {_Int32Rules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Int32Rules "lt" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Rules'lt (\ x__ y__ -> x__ {_Int32Rules'lt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Int32Rules "maybe'lt" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Rules'lt (\ x__ y__ -> x__ {_Int32Rules'lt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Int32Rules "lte" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Rules'lte (\ x__ y__ -> x__ {_Int32Rules'lte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Int32Rules "maybe'lte" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Rules'lte (\ x__ y__ -> x__ {_Int32Rules'lte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Int32Rules "gt" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Rules'gt (\ x__ y__ -> x__ {_Int32Rules'gt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Int32Rules "maybe'gt" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Rules'gt (\ x__ y__ -> x__ {_Int32Rules'gt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Int32Rules "gte" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Rules'gte (\ x__ y__ -> x__ {_Int32Rules'gte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Int32Rules "maybe'gte" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Rules'gte (\ x__ y__ -> x__ {_Int32Rules'gte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Int32Rules "in'" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Rules'in' (\ x__ y__ -> x__ {_Int32Rules'in' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Int32Rules "vec'in'" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Rules'in' (\ x__ y__ -> x__ {_Int32Rules'in' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Int32Rules "notIn" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Rules'notIn (\ x__ y__ -> x__ {_Int32Rules'notIn = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Int32Rules "vec'notIn" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Rules'notIn (\ x__ y__ -> x__ {_Int32Rules'notIn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Int32Rules "ignoreEmpty" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_Int32Rules'ignoreEmpty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Int32Rules "maybe'ignoreEmpty" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_Int32Rules'ignoreEmpty = y__}))
        Prelude.id
instance Data.ProtoLens.Message Int32Rules where
  messageName _ = Data.Text.pack "validate.Int32Rules"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Int32Rules\DC2\DC4\n\
      \\ENQconst\CAN\SOH \SOH(\ENQR\ENQconst\DC2\SO\n\
      \\STXlt\CAN\STX \SOH(\ENQR\STXlt\DC2\DLE\n\
      \\ETXlte\CAN\ETX \SOH(\ENQR\ETXlte\DC2\SO\n\
      \\STXgt\CAN\EOT \SOH(\ENQR\STXgt\DC2\DLE\n\
      \\ETXgte\CAN\ENQ \SOH(\ENQR\ETXgte\DC2\SO\n\
      \\STXin\CAN\ACK \ETX(\ENQR\STXin\DC2\NAK\n\
      \\ACKnot_in\CAN\a \ETX(\ENQR\ENQnotIn\DC2!\n\
      \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor Int32Rules
        lt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lt")) ::
              Data.ProtoLens.FieldDescriptor Int32Rules
        lte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lte")) ::
              Data.ProtoLens.FieldDescriptor Int32Rules
        gt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gt")) ::
              Data.ProtoLens.FieldDescriptor Int32Rules
        gte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gte")) ::
              Data.ProtoLens.FieldDescriptor Int32Rules
        in'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"in'")) ::
              Data.ProtoLens.FieldDescriptor Int32Rules
        notIn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"notIn")) ::
              Data.ProtoLens.FieldDescriptor Int32Rules
        ignoreEmpty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_empty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ignoreEmpty")) ::
              Data.ProtoLens.FieldDescriptor Int32Rules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, const__field_descriptor),
           (Data.ProtoLens.Tag 2, lt__field_descriptor),
           (Data.ProtoLens.Tag 3, lte__field_descriptor),
           (Data.ProtoLens.Tag 4, gt__field_descriptor),
           (Data.ProtoLens.Tag 5, gte__field_descriptor),
           (Data.ProtoLens.Tag 6, in'__field_descriptor),
           (Data.ProtoLens.Tag 7, notIn__field_descriptor),
           (Data.ProtoLens.Tag 8, ignoreEmpty__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Int32Rules'_unknownFields
        (\ x__ y__ -> x__ {_Int32Rules'_unknownFields = y__})
  defMessage
    = Int32Rules'_constructor
        {_Int32Rules'const = Prelude.Nothing,
         _Int32Rules'lt = Prelude.Nothing,
         _Int32Rules'lte = Prelude.Nothing,
         _Int32Rules'gt = Prelude.Nothing,
         _Int32Rules'gte = Prelude.Nothing,
         _Int32Rules'in' = Data.Vector.Generic.empty,
         _Int32Rules'notIn = Data.Vector.Generic.empty,
         _Int32Rules'ignoreEmpty = Prelude.Nothing,
         _Int32Rules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Int32Rules
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
                -> Data.ProtoLens.Encoding.Bytes.Parser Int32Rules
        loop x mutable'in' mutable'notIn
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'in')
                      frozen'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'notIn)
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
                              (Data.ProtoLens.Field.field @"vec'in'")
                              frozen'in'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'notIn") frozen'notIn x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "const"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                                  mutable'in'
                                  mutable'notIn
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "lt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lt") y x)
                                  mutable'in'
                                  mutable'notIn
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "lte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lte") y x)
                                  mutable'in'
                                  mutable'notIn
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gt") y x)
                                  mutable'in'
                                  mutable'notIn
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gte") y x)
                                  mutable'in'
                                  mutable'notIn
                        48
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'in' y)
                                loop x v mutable'notIn
                        50
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'in')
                                loop x y mutable'notIn
                        56
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "not_in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'notIn y)
                                loop x mutable'in' v
                        58
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "not_in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'notIn)
                                loop x mutable'in' y
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_empty"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ignoreEmpty") y x)
                                  mutable'in'
                                  mutable'notIn
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'in'
                                  mutable'notIn
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'in' mutable'notIn)
          "Int32Rules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lte") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gt") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gte") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                      Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                       ((Prelude..)
                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                          Prelude.fromIntegral
                                          _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'in'") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                          ((Prelude..)
                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                             Prelude.fromIntegral
                                             _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'notIn") _x))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'ignoreEmpty") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (\ b -> if b then 1 else 0)
                                               _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData Int32Rules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Int32Rules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Int32Rules'const x__)
                (Control.DeepSeq.deepseq
                   (_Int32Rules'lt x__)
                   (Control.DeepSeq.deepseq
                      (_Int32Rules'lte x__)
                      (Control.DeepSeq.deepseq
                         (_Int32Rules'gt x__)
                         (Control.DeepSeq.deepseq
                            (_Int32Rules'gte x__)
                            (Control.DeepSeq.deepseq
                               (_Int32Rules'in' x__)
                               (Control.DeepSeq.deepseq
                                  (_Int32Rules'notIn x__)
                                  (Control.DeepSeq.deepseq (_Int32Rules'ignoreEmpty x__) ()))))))))
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' Int64Rules Data.Int.Int64@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' Int64Rules (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.lt' @:: Lens' Int64Rules Data.Int.Int64@
         * 'Proto.Validate.Validate_Fields.maybe'lt' @:: Lens' Int64Rules (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.lte' @:: Lens' Int64Rules Data.Int.Int64@
         * 'Proto.Validate.Validate_Fields.maybe'lte' @:: Lens' Int64Rules (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.gt' @:: Lens' Int64Rules Data.Int.Int64@
         * 'Proto.Validate.Validate_Fields.maybe'gt' @:: Lens' Int64Rules (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.gte' @:: Lens' Int64Rules Data.Int.Int64@
         * 'Proto.Validate.Validate_Fields.maybe'gte' @:: Lens' Int64Rules (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.in'' @:: Lens' Int64Rules [Data.Int.Int64]@
         * 'Proto.Validate.Validate_Fields.vec'in'' @:: Lens' Int64Rules (Data.Vector.Unboxed.Vector Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.notIn' @:: Lens' Int64Rules [Data.Int.Int64]@
         * 'Proto.Validate.Validate_Fields.vec'notIn' @:: Lens' Int64Rules (Data.Vector.Unboxed.Vector Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.ignoreEmpty' @:: Lens' Int64Rules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ignoreEmpty' @:: Lens' Int64Rules (Prelude.Maybe Prelude.Bool)@ -}
data Int64Rules
  = Int64Rules'_constructor {_Int64Rules'const :: !(Prelude.Maybe Data.Int.Int64),
                             _Int64Rules'lt :: !(Prelude.Maybe Data.Int.Int64),
                             _Int64Rules'lte :: !(Prelude.Maybe Data.Int.Int64),
                             _Int64Rules'gt :: !(Prelude.Maybe Data.Int.Int64),
                             _Int64Rules'gte :: !(Prelude.Maybe Data.Int.Int64),
                             _Int64Rules'in' :: !(Data.Vector.Unboxed.Vector Data.Int.Int64),
                             _Int64Rules'notIn :: !(Data.Vector.Unboxed.Vector Data.Int.Int64),
                             _Int64Rules'ignoreEmpty :: !(Prelude.Maybe Prelude.Bool),
                             _Int64Rules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Int64Rules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Int64Rules "const" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Rules'const (\ x__ y__ -> x__ {_Int64Rules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Int64Rules "maybe'const" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Rules'const (\ x__ y__ -> x__ {_Int64Rules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Int64Rules "lt" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Rules'lt (\ x__ y__ -> x__ {_Int64Rules'lt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Int64Rules "maybe'lt" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Rules'lt (\ x__ y__ -> x__ {_Int64Rules'lt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Int64Rules "lte" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Rules'lte (\ x__ y__ -> x__ {_Int64Rules'lte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Int64Rules "maybe'lte" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Rules'lte (\ x__ y__ -> x__ {_Int64Rules'lte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Int64Rules "gt" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Rules'gt (\ x__ y__ -> x__ {_Int64Rules'gt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Int64Rules "maybe'gt" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Rules'gt (\ x__ y__ -> x__ {_Int64Rules'gt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Int64Rules "gte" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Rules'gte (\ x__ y__ -> x__ {_Int64Rules'gte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Int64Rules "maybe'gte" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Rules'gte (\ x__ y__ -> x__ {_Int64Rules'gte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Int64Rules "in'" [Data.Int.Int64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Rules'in' (\ x__ y__ -> x__ {_Int64Rules'in' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Int64Rules "vec'in'" (Data.Vector.Unboxed.Vector Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Rules'in' (\ x__ y__ -> x__ {_Int64Rules'in' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Int64Rules "notIn" [Data.Int.Int64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Rules'notIn (\ x__ y__ -> x__ {_Int64Rules'notIn = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Int64Rules "vec'notIn" (Data.Vector.Unboxed.Vector Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Rules'notIn (\ x__ y__ -> x__ {_Int64Rules'notIn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Int64Rules "ignoreEmpty" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_Int64Rules'ignoreEmpty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Int64Rules "maybe'ignoreEmpty" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_Int64Rules'ignoreEmpty = y__}))
        Prelude.id
instance Data.ProtoLens.Message Int64Rules where
  messageName _ = Data.Text.pack "validate.Int64Rules"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Int64Rules\DC2\DC4\n\
      \\ENQconst\CAN\SOH \SOH(\ETXR\ENQconst\DC2\SO\n\
      \\STXlt\CAN\STX \SOH(\ETXR\STXlt\DC2\DLE\n\
      \\ETXlte\CAN\ETX \SOH(\ETXR\ETXlte\DC2\SO\n\
      \\STXgt\CAN\EOT \SOH(\ETXR\STXgt\DC2\DLE\n\
      \\ETXgte\CAN\ENQ \SOH(\ETXR\ETXgte\DC2\SO\n\
      \\STXin\CAN\ACK \ETX(\ETXR\STXin\DC2\NAK\n\
      \\ACKnot_in\CAN\a \ETX(\ETXR\ENQnotIn\DC2!\n\
      \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor Int64Rules
        lt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lt")) ::
              Data.ProtoLens.FieldDescriptor Int64Rules
        lte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lte")) ::
              Data.ProtoLens.FieldDescriptor Int64Rules
        gt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gt")) ::
              Data.ProtoLens.FieldDescriptor Int64Rules
        gte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gte")) ::
              Data.ProtoLens.FieldDescriptor Int64Rules
        in'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"in'")) ::
              Data.ProtoLens.FieldDescriptor Int64Rules
        notIn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"notIn")) ::
              Data.ProtoLens.FieldDescriptor Int64Rules
        ignoreEmpty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_empty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ignoreEmpty")) ::
              Data.ProtoLens.FieldDescriptor Int64Rules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, const__field_descriptor),
           (Data.ProtoLens.Tag 2, lt__field_descriptor),
           (Data.ProtoLens.Tag 3, lte__field_descriptor),
           (Data.ProtoLens.Tag 4, gt__field_descriptor),
           (Data.ProtoLens.Tag 5, gte__field_descriptor),
           (Data.ProtoLens.Tag 6, in'__field_descriptor),
           (Data.ProtoLens.Tag 7, notIn__field_descriptor),
           (Data.ProtoLens.Tag 8, ignoreEmpty__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Int64Rules'_unknownFields
        (\ x__ y__ -> x__ {_Int64Rules'_unknownFields = y__})
  defMessage
    = Int64Rules'_constructor
        {_Int64Rules'const = Prelude.Nothing,
         _Int64Rules'lt = Prelude.Nothing,
         _Int64Rules'lte = Prelude.Nothing,
         _Int64Rules'gt = Prelude.Nothing,
         _Int64Rules'gte = Prelude.Nothing,
         _Int64Rules'in' = Data.Vector.Generic.empty,
         _Int64Rules'notIn = Data.Vector.Generic.empty,
         _Int64Rules'ignoreEmpty = Prelude.Nothing,
         _Int64Rules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Int64Rules
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int64
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int64
                -> Data.ProtoLens.Encoding.Bytes.Parser Int64Rules
        loop x mutable'in' mutable'notIn
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'in')
                      frozen'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'notIn)
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
                              (Data.ProtoLens.Field.field @"vec'in'")
                              frozen'in'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'notIn") frozen'notIn x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "const"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                                  mutable'in'
                                  mutable'notIn
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "lt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lt") y x)
                                  mutable'in'
                                  mutable'notIn
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "lte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lte") y x)
                                  mutable'in'
                                  mutable'notIn
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gt") y x)
                                  mutable'in'
                                  mutable'notIn
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gte") y x)
                                  mutable'in'
                                  mutable'notIn
                        48
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'in' y)
                                loop x v mutable'notIn
                        50
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'in')
                                loop x y mutable'notIn
                        56
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "not_in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'notIn y)
                                loop x mutable'in' v
                        58
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "not_in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'notIn)
                                loop x mutable'in' y
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_empty"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ignoreEmpty") y x)
                                  mutable'in'
                                  mutable'notIn
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'in'
                                  mutable'notIn
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'in' mutable'notIn)
          "Int64Rules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lte") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gt") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gte") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                      Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                       ((Prelude..)
                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                          Prelude.fromIntegral
                                          _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'in'") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                          ((Prelude..)
                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                             Prelude.fromIntegral
                                             _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'notIn") _x))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'ignoreEmpty") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (\ b -> if b then 1 else 0)
                                               _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData Int64Rules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Int64Rules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Int64Rules'const x__)
                (Control.DeepSeq.deepseq
                   (_Int64Rules'lt x__)
                   (Control.DeepSeq.deepseq
                      (_Int64Rules'lte x__)
                      (Control.DeepSeq.deepseq
                         (_Int64Rules'gt x__)
                         (Control.DeepSeq.deepseq
                            (_Int64Rules'gte x__)
                            (Control.DeepSeq.deepseq
                               (_Int64Rules'in' x__)
                               (Control.DeepSeq.deepseq
                                  (_Int64Rules'notIn x__)
                                  (Control.DeepSeq.deepseq (_Int64Rules'ignoreEmpty x__) ()))))))))
data KnownRegex
  = UNKNOWN | HTTP_HEADER_NAME | HTTP_HEADER_VALUE
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum KnownRegex where
  maybeToEnum 0 = Prelude.Just UNKNOWN
  maybeToEnum 1 = Prelude.Just HTTP_HEADER_NAME
  maybeToEnum 2 = Prelude.Just HTTP_HEADER_VALUE
  maybeToEnum _ = Prelude.Nothing
  showEnum UNKNOWN = "UNKNOWN"
  showEnum HTTP_HEADER_NAME = "HTTP_HEADER_NAME"
  showEnum HTTP_HEADER_VALUE = "HTTP_HEADER_VALUE"
  readEnum k
    | (Prelude.==) k "UNKNOWN" = Prelude.Just UNKNOWN
    | (Prelude.==) k "HTTP_HEADER_NAME" = Prelude.Just HTTP_HEADER_NAME
    | (Prelude.==) k "HTTP_HEADER_VALUE"
    = Prelude.Just HTTP_HEADER_VALUE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded KnownRegex where
  minBound = UNKNOWN
  maxBound = HTTP_HEADER_VALUE
instance Prelude.Enum KnownRegex where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum KnownRegex: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum UNKNOWN = 0
  fromEnum HTTP_HEADER_NAME = 1
  fromEnum HTTP_HEADER_VALUE = 2
  succ HTTP_HEADER_VALUE
    = Prelude.error
        "KnownRegex.succ: bad argument HTTP_HEADER_VALUE. This value would be out of bounds."
  succ UNKNOWN = HTTP_HEADER_NAME
  succ HTTP_HEADER_NAME = HTTP_HEADER_VALUE
  pred UNKNOWN
    = Prelude.error
        "KnownRegex.pred: bad argument UNKNOWN. This value would be out of bounds."
  pred HTTP_HEADER_NAME = UNKNOWN
  pred HTTP_HEADER_VALUE = HTTP_HEADER_NAME
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault KnownRegex where
  fieldDefault = UNKNOWN
instance Control.DeepSeq.NFData KnownRegex where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.minPairs' @:: Lens' MapRules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'minPairs' @:: Lens' MapRules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.maxPairs' @:: Lens' MapRules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'maxPairs' @:: Lens' MapRules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.noSparse' @:: Lens' MapRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'noSparse' @:: Lens' MapRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.keys' @:: Lens' MapRules FieldRules@
         * 'Proto.Validate.Validate_Fields.maybe'keys' @:: Lens' MapRules (Prelude.Maybe FieldRules)@
         * 'Proto.Validate.Validate_Fields.values' @:: Lens' MapRules FieldRules@
         * 'Proto.Validate.Validate_Fields.maybe'values' @:: Lens' MapRules (Prelude.Maybe FieldRules)@
         * 'Proto.Validate.Validate_Fields.ignoreEmpty' @:: Lens' MapRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ignoreEmpty' @:: Lens' MapRules (Prelude.Maybe Prelude.Bool)@ -}
data MapRules
  = MapRules'_constructor {_MapRules'minPairs :: !(Prelude.Maybe Data.Word.Word64),
                           _MapRules'maxPairs :: !(Prelude.Maybe Data.Word.Word64),
                           _MapRules'noSparse :: !(Prelude.Maybe Prelude.Bool),
                           _MapRules'keys :: !(Prelude.Maybe FieldRules),
                           _MapRules'values :: !(Prelude.Maybe FieldRules),
                           _MapRules'ignoreEmpty :: !(Prelude.Maybe Prelude.Bool),
                           _MapRules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MapRules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MapRules "minPairs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapRules'minPairs (\ x__ y__ -> x__ {_MapRules'minPairs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MapRules "maybe'minPairs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapRules'minPairs (\ x__ y__ -> x__ {_MapRules'minPairs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MapRules "maxPairs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapRules'maxPairs (\ x__ y__ -> x__ {_MapRules'maxPairs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MapRules "maybe'maxPairs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapRules'maxPairs (\ x__ y__ -> x__ {_MapRules'maxPairs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MapRules "noSparse" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapRules'noSparse (\ x__ y__ -> x__ {_MapRules'noSparse = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MapRules "maybe'noSparse" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapRules'noSparse (\ x__ y__ -> x__ {_MapRules'noSparse = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MapRules "keys" FieldRules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapRules'keys (\ x__ y__ -> x__ {_MapRules'keys = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MapRules "maybe'keys" (Prelude.Maybe FieldRules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapRules'keys (\ x__ y__ -> x__ {_MapRules'keys = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MapRules "values" FieldRules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapRules'values (\ x__ y__ -> x__ {_MapRules'values = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MapRules "maybe'values" (Prelude.Maybe FieldRules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapRules'values (\ x__ y__ -> x__ {_MapRules'values = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MapRules "ignoreEmpty" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapRules'ignoreEmpty
           (\ x__ y__ -> x__ {_MapRules'ignoreEmpty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MapRules "maybe'ignoreEmpty" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapRules'ignoreEmpty
           (\ x__ y__ -> x__ {_MapRules'ignoreEmpty = y__}))
        Prelude.id
instance Data.ProtoLens.Message MapRules where
  messageName _ = Data.Text.pack "validate.MapRules"
  packedMessageDescriptor _
    = "\n\
      \\bMapRules\DC2\ESC\n\
      \\tmin_pairs\CAN\SOH \SOH(\EOTR\bminPairs\DC2\ESC\n\
      \\tmax_pairs\CAN\STX \SOH(\EOTR\bmaxPairs\DC2\ESC\n\
      \\tno_sparse\CAN\ETX \SOH(\bR\bnoSparse\DC2(\n\
      \\EOTkeys\CAN\EOT \SOH(\v2\DC4.validate.FieldRulesR\EOTkeys\DC2,\n\
      \\ACKvalues\CAN\ENQ \SOH(\v2\DC4.validate.FieldRulesR\ACKvalues\DC2!\n\
      \\fignore_empty\CAN\ACK \SOH(\bR\vignoreEmpty"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        minPairs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_pairs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minPairs")) ::
              Data.ProtoLens.FieldDescriptor MapRules
        maxPairs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_pairs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxPairs")) ::
              Data.ProtoLens.FieldDescriptor MapRules
        noSparse__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no_sparse"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'noSparse")) ::
              Data.ProtoLens.FieldDescriptor MapRules
        keys__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "keys"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FieldRules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'keys")) ::
              Data.ProtoLens.FieldDescriptor MapRules
        values__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "values"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FieldRules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'values")) ::
              Data.ProtoLens.FieldDescriptor MapRules
        ignoreEmpty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_empty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ignoreEmpty")) ::
              Data.ProtoLens.FieldDescriptor MapRules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, minPairs__field_descriptor),
           (Data.ProtoLens.Tag 2, maxPairs__field_descriptor),
           (Data.ProtoLens.Tag 3, noSparse__field_descriptor),
           (Data.ProtoLens.Tag 4, keys__field_descriptor),
           (Data.ProtoLens.Tag 5, values__field_descriptor),
           (Data.ProtoLens.Tag 6, ignoreEmpty__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MapRules'_unknownFields
        (\ x__ y__ -> x__ {_MapRules'_unknownFields = y__})
  defMessage
    = MapRules'_constructor
        {_MapRules'minPairs = Prelude.Nothing,
         _MapRules'maxPairs = Prelude.Nothing,
         _MapRules'noSparse = Prelude.Nothing,
         _MapRules'keys = Prelude.Nothing,
         _MapRules'values = Prelude.Nothing,
         _MapRules'ignoreEmpty = Prelude.Nothing,
         _MapRules'_unknownFields = []}
  parseMessage
    = let
        loop :: MapRules -> Data.ProtoLens.Encoding.Bytes.Parser MapRules
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "min_pairs"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"minPairs") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "max_pairs"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxPairs") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "no_sparse"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"noSparse") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "keys"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"keys") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "values"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"values") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_empty"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ignoreEmpty") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MapRules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'minPairs") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'maxPairs") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'noSparse") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt
                                (\ b -> if b then 1 else 0)
                                _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'keys") _x
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
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'values") _x
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
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'ignoreEmpty") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (\ b -> if b then 1 else 0)
                                         _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData MapRules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MapRules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MapRules'minPairs x__)
                (Control.DeepSeq.deepseq
                   (_MapRules'maxPairs x__)
                   (Control.DeepSeq.deepseq
                      (_MapRules'noSparse x__)
                      (Control.DeepSeq.deepseq
                         (_MapRules'keys x__)
                         (Control.DeepSeq.deepseq
                            (_MapRules'values x__)
                            (Control.DeepSeq.deepseq (_MapRules'ignoreEmpty x__) ()))))))
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.skip' @:: Lens' MessageRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'skip' @:: Lens' MessageRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.required' @:: Lens' MessageRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'required' @:: Lens' MessageRules (Prelude.Maybe Prelude.Bool)@ -}
data MessageRules
  = MessageRules'_constructor {_MessageRules'skip :: !(Prelude.Maybe Prelude.Bool),
                               _MessageRules'required :: !(Prelude.Maybe Prelude.Bool),
                               _MessageRules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MessageRules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MessageRules "skip" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MessageRules'skip (\ x__ y__ -> x__ {_MessageRules'skip = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MessageRules "maybe'skip" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MessageRules'skip (\ x__ y__ -> x__ {_MessageRules'skip = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MessageRules "required" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MessageRules'required
           (\ x__ y__ -> x__ {_MessageRules'required = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MessageRules "maybe'required" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MessageRules'required
           (\ x__ y__ -> x__ {_MessageRules'required = y__}))
        Prelude.id
instance Data.ProtoLens.Message MessageRules where
  messageName _ = Data.Text.pack "validate.MessageRules"
  packedMessageDescriptor _
    = "\n\
      \\fMessageRules\DC2\DC2\n\
      \\EOTskip\CAN\SOH \SOH(\bR\EOTskip\DC2\SUB\n\
      \\brequired\CAN\STX \SOH(\bR\brequired"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        skip__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "skip"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'skip")) ::
              Data.ProtoLens.FieldDescriptor MessageRules
        required__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "required"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'required")) ::
              Data.ProtoLens.FieldDescriptor MessageRules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, skip__field_descriptor),
           (Data.ProtoLens.Tag 2, required__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MessageRules'_unknownFields
        (\ x__ y__ -> x__ {_MessageRules'_unknownFields = y__})
  defMessage
    = MessageRules'_constructor
        {_MessageRules'skip = Prelude.Nothing,
         _MessageRules'required = Prelude.Nothing,
         _MessageRules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MessageRules -> Data.ProtoLens.Encoding.Bytes.Parser MessageRules
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
                                       "skip"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"skip") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "required"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"required") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MessageRules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'skip") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'required") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt
                             (\ b -> if b then 1 else 0)
                             _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MessageRules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MessageRules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MessageRules'skip x__)
                (Control.DeepSeq.deepseq (_MessageRules'required x__) ()))
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.minItems' @:: Lens' RepeatedRules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'minItems' @:: Lens' RepeatedRules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.maxItems' @:: Lens' RepeatedRules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'maxItems' @:: Lens' RepeatedRules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.unique' @:: Lens' RepeatedRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'unique' @:: Lens' RepeatedRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.items' @:: Lens' RepeatedRules FieldRules@
         * 'Proto.Validate.Validate_Fields.maybe'items' @:: Lens' RepeatedRules (Prelude.Maybe FieldRules)@
         * 'Proto.Validate.Validate_Fields.ignoreEmpty' @:: Lens' RepeatedRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ignoreEmpty' @:: Lens' RepeatedRules (Prelude.Maybe Prelude.Bool)@ -}
data RepeatedRules
  = RepeatedRules'_constructor {_RepeatedRules'minItems :: !(Prelude.Maybe Data.Word.Word64),
                                _RepeatedRules'maxItems :: !(Prelude.Maybe Data.Word.Word64),
                                _RepeatedRules'unique :: !(Prelude.Maybe Prelude.Bool),
                                _RepeatedRules'items :: !(Prelude.Maybe FieldRules),
                                _RepeatedRules'ignoreEmpty :: !(Prelude.Maybe Prelude.Bool),
                                _RepeatedRules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RepeatedRules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RepeatedRules "minItems" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RepeatedRules'minItems
           (\ x__ y__ -> x__ {_RepeatedRules'minItems = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RepeatedRules "maybe'minItems" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RepeatedRules'minItems
           (\ x__ y__ -> x__ {_RepeatedRules'minItems = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RepeatedRules "maxItems" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RepeatedRules'maxItems
           (\ x__ y__ -> x__ {_RepeatedRules'maxItems = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RepeatedRules "maybe'maxItems" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RepeatedRules'maxItems
           (\ x__ y__ -> x__ {_RepeatedRules'maxItems = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RepeatedRules "unique" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RepeatedRules'unique
           (\ x__ y__ -> x__ {_RepeatedRules'unique = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RepeatedRules "maybe'unique" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RepeatedRules'unique
           (\ x__ y__ -> x__ {_RepeatedRules'unique = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RepeatedRules "items" FieldRules where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RepeatedRules'items
           (\ x__ y__ -> x__ {_RepeatedRules'items = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RepeatedRules "maybe'items" (Prelude.Maybe FieldRules) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RepeatedRules'items
           (\ x__ y__ -> x__ {_RepeatedRules'items = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RepeatedRules "ignoreEmpty" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RepeatedRules'ignoreEmpty
           (\ x__ y__ -> x__ {_RepeatedRules'ignoreEmpty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RepeatedRules "maybe'ignoreEmpty" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RepeatedRules'ignoreEmpty
           (\ x__ y__ -> x__ {_RepeatedRules'ignoreEmpty = y__}))
        Prelude.id
instance Data.ProtoLens.Message RepeatedRules where
  messageName _ = Data.Text.pack "validate.RepeatedRules"
  packedMessageDescriptor _
    = "\n\
      \\rRepeatedRules\DC2\ESC\n\
      \\tmin_items\CAN\SOH \SOH(\EOTR\bminItems\DC2\ESC\n\
      \\tmax_items\CAN\STX \SOH(\EOTR\bmaxItems\DC2\SYN\n\
      \\ACKunique\CAN\ETX \SOH(\bR\ACKunique\DC2*\n\
      \\ENQitems\CAN\EOT \SOH(\v2\DC4.validate.FieldRulesR\ENQitems\DC2!\n\
      \\fignore_empty\CAN\ENQ \SOH(\bR\vignoreEmpty"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        minItems__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_items"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minItems")) ::
              Data.ProtoLens.FieldDescriptor RepeatedRules
        maxItems__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_items"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxItems")) ::
              Data.ProtoLens.FieldDescriptor RepeatedRules
        unique__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unique"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unique")) ::
              Data.ProtoLens.FieldDescriptor RepeatedRules
        items__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "items"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FieldRules)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'items")) ::
              Data.ProtoLens.FieldDescriptor RepeatedRules
        ignoreEmpty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_empty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ignoreEmpty")) ::
              Data.ProtoLens.FieldDescriptor RepeatedRules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, minItems__field_descriptor),
           (Data.ProtoLens.Tag 2, maxItems__field_descriptor),
           (Data.ProtoLens.Tag 3, unique__field_descriptor),
           (Data.ProtoLens.Tag 4, items__field_descriptor),
           (Data.ProtoLens.Tag 5, ignoreEmpty__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RepeatedRules'_unknownFields
        (\ x__ y__ -> x__ {_RepeatedRules'_unknownFields = y__})
  defMessage
    = RepeatedRules'_constructor
        {_RepeatedRules'minItems = Prelude.Nothing,
         _RepeatedRules'maxItems = Prelude.Nothing,
         _RepeatedRules'unique = Prelude.Nothing,
         _RepeatedRules'items = Prelude.Nothing,
         _RepeatedRules'ignoreEmpty = Prelude.Nothing,
         _RepeatedRules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RepeatedRules -> Data.ProtoLens.Encoding.Bytes.Parser RepeatedRules
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "min_items"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"minItems") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "max_items"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxItems") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "unique"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"unique") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "items"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"items") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_empty"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ignoreEmpty") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RepeatedRules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'minItems") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'maxItems") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'unique") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt
                                (\ b -> if b then 1 else 0)
                                _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'items") _x
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
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'ignoreEmpty") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (\ b -> if b then 1 else 0)
                                      _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData RepeatedRules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RepeatedRules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RepeatedRules'minItems x__)
                (Control.DeepSeq.deepseq
                   (_RepeatedRules'maxItems x__)
                   (Control.DeepSeq.deepseq
                      (_RepeatedRules'unique x__)
                      (Control.DeepSeq.deepseq
                         (_RepeatedRules'items x__)
                         (Control.DeepSeq.deepseq (_RepeatedRules'ignoreEmpty x__) ())))))
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' SFixed32Rules Data.Int.Int32@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' SFixed32Rules (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.lt' @:: Lens' SFixed32Rules Data.Int.Int32@
         * 'Proto.Validate.Validate_Fields.maybe'lt' @:: Lens' SFixed32Rules (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.lte' @:: Lens' SFixed32Rules Data.Int.Int32@
         * 'Proto.Validate.Validate_Fields.maybe'lte' @:: Lens' SFixed32Rules (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.gt' @:: Lens' SFixed32Rules Data.Int.Int32@
         * 'Proto.Validate.Validate_Fields.maybe'gt' @:: Lens' SFixed32Rules (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.gte' @:: Lens' SFixed32Rules Data.Int.Int32@
         * 'Proto.Validate.Validate_Fields.maybe'gte' @:: Lens' SFixed32Rules (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.in'' @:: Lens' SFixed32Rules [Data.Int.Int32]@
         * 'Proto.Validate.Validate_Fields.vec'in'' @:: Lens' SFixed32Rules (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.notIn' @:: Lens' SFixed32Rules [Data.Int.Int32]@
         * 'Proto.Validate.Validate_Fields.vec'notIn' @:: Lens' SFixed32Rules (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.ignoreEmpty' @:: Lens' SFixed32Rules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ignoreEmpty' @:: Lens' SFixed32Rules (Prelude.Maybe Prelude.Bool)@ -}
data SFixed32Rules
  = SFixed32Rules'_constructor {_SFixed32Rules'const :: !(Prelude.Maybe Data.Int.Int32),
                                _SFixed32Rules'lt :: !(Prelude.Maybe Data.Int.Int32),
                                _SFixed32Rules'lte :: !(Prelude.Maybe Data.Int.Int32),
                                _SFixed32Rules'gt :: !(Prelude.Maybe Data.Int.Int32),
                                _SFixed32Rules'gte :: !(Prelude.Maybe Data.Int.Int32),
                                _SFixed32Rules'in' :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                                _SFixed32Rules'notIn :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                                _SFixed32Rules'ignoreEmpty :: !(Prelude.Maybe Prelude.Bool),
                                _SFixed32Rules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SFixed32Rules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SFixed32Rules "const" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed32Rules'const
           (\ x__ y__ -> x__ {_SFixed32Rules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SFixed32Rules "maybe'const" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed32Rules'const
           (\ x__ y__ -> x__ {_SFixed32Rules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SFixed32Rules "lt" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed32Rules'lt (\ x__ y__ -> x__ {_SFixed32Rules'lt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SFixed32Rules "maybe'lt" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed32Rules'lt (\ x__ y__ -> x__ {_SFixed32Rules'lt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SFixed32Rules "lte" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed32Rules'lte (\ x__ y__ -> x__ {_SFixed32Rules'lte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SFixed32Rules "maybe'lte" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed32Rules'lte (\ x__ y__ -> x__ {_SFixed32Rules'lte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SFixed32Rules "gt" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed32Rules'gt (\ x__ y__ -> x__ {_SFixed32Rules'gt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SFixed32Rules "maybe'gt" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed32Rules'gt (\ x__ y__ -> x__ {_SFixed32Rules'gt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SFixed32Rules "gte" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed32Rules'gte (\ x__ y__ -> x__ {_SFixed32Rules'gte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SFixed32Rules "maybe'gte" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed32Rules'gte (\ x__ y__ -> x__ {_SFixed32Rules'gte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SFixed32Rules "in'" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed32Rules'in' (\ x__ y__ -> x__ {_SFixed32Rules'in' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SFixed32Rules "vec'in'" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed32Rules'in' (\ x__ y__ -> x__ {_SFixed32Rules'in' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SFixed32Rules "notIn" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed32Rules'notIn
           (\ x__ y__ -> x__ {_SFixed32Rules'notIn = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SFixed32Rules "vec'notIn" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed32Rules'notIn
           (\ x__ y__ -> x__ {_SFixed32Rules'notIn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SFixed32Rules "ignoreEmpty" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed32Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_SFixed32Rules'ignoreEmpty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SFixed32Rules "maybe'ignoreEmpty" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed32Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_SFixed32Rules'ignoreEmpty = y__}))
        Prelude.id
instance Data.ProtoLens.Message SFixed32Rules where
  messageName _ = Data.Text.pack "validate.SFixed32Rules"
  packedMessageDescriptor _
    = "\n\
      \\rSFixed32Rules\DC2\DC4\n\
      \\ENQconst\CAN\SOH \SOH(\SIR\ENQconst\DC2\SO\n\
      \\STXlt\CAN\STX \SOH(\SIR\STXlt\DC2\DLE\n\
      \\ETXlte\CAN\ETX \SOH(\SIR\ETXlte\DC2\SO\n\
      \\STXgt\CAN\EOT \SOH(\SIR\STXgt\DC2\DLE\n\
      \\ETXgte\CAN\ENQ \SOH(\SIR\ETXgte\DC2\SO\n\
      \\STXin\CAN\ACK \ETX(\SIR\STXin\DC2\NAK\n\
      \\ACKnot_in\CAN\a \ETX(\SIR\ENQnotIn\DC2!\n\
      \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SFixed32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor SFixed32Rules
        lt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SFixed32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lt")) ::
              Data.ProtoLens.FieldDescriptor SFixed32Rules
        lte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SFixed32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lte")) ::
              Data.ProtoLens.FieldDescriptor SFixed32Rules
        gt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SFixed32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gt")) ::
              Data.ProtoLens.FieldDescriptor SFixed32Rules
        gte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SFixed32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gte")) ::
              Data.ProtoLens.FieldDescriptor SFixed32Rules
        in'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SFixed32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"in'")) ::
              Data.ProtoLens.FieldDescriptor SFixed32Rules
        notIn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SFixed32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"notIn")) ::
              Data.ProtoLens.FieldDescriptor SFixed32Rules
        ignoreEmpty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_empty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ignoreEmpty")) ::
              Data.ProtoLens.FieldDescriptor SFixed32Rules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, const__field_descriptor),
           (Data.ProtoLens.Tag 2, lt__field_descriptor),
           (Data.ProtoLens.Tag 3, lte__field_descriptor),
           (Data.ProtoLens.Tag 4, gt__field_descriptor),
           (Data.ProtoLens.Tag 5, gte__field_descriptor),
           (Data.ProtoLens.Tag 6, in'__field_descriptor),
           (Data.ProtoLens.Tag 7, notIn__field_descriptor),
           (Data.ProtoLens.Tag 8, ignoreEmpty__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SFixed32Rules'_unknownFields
        (\ x__ y__ -> x__ {_SFixed32Rules'_unknownFields = y__})
  defMessage
    = SFixed32Rules'_constructor
        {_SFixed32Rules'const = Prelude.Nothing,
         _SFixed32Rules'lt = Prelude.Nothing,
         _SFixed32Rules'lte = Prelude.Nothing,
         _SFixed32Rules'gt = Prelude.Nothing,
         _SFixed32Rules'gte = Prelude.Nothing,
         _SFixed32Rules'in' = Data.Vector.Generic.empty,
         _SFixed32Rules'notIn = Data.Vector.Generic.empty,
         _SFixed32Rules'ignoreEmpty = Prelude.Nothing,
         _SFixed32Rules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SFixed32Rules
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
                -> Data.ProtoLens.Encoding.Bytes.Parser SFixed32Rules
        loop x mutable'in' mutable'notIn
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'in')
                      frozen'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'notIn)
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
                              (Data.ProtoLens.Field.field @"vec'in'")
                              frozen'in'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'notIn") frozen'notIn x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        13
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "const"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                                  mutable'in'
                                  mutable'notIn
                        21
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "lt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lt") y x)
                                  mutable'in'
                                  mutable'notIn
                        29
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "lte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lte") y x)
                                  mutable'in'
                                  mutable'notIn
                        37
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "gt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gt") y x)
                                  mutable'in'
                                  mutable'notIn
                        45
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "gte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gte") y x)
                                  mutable'in'
                                  mutable'notIn
                        53
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getFixed32)
                                        "in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'in' y)
                                loop x v mutable'notIn
                        50
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getFixed32)
                                                                    "in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'in')
                                loop x y mutable'notIn
                        61
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getFixed32)
                                        "not_in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'notIn y)
                                loop x mutable'in' v
                        58
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getFixed32)
                                                                    "not_in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'notIn)
                                loop x mutable'in' y
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_empty"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ignoreEmpty") y x)
                                  mutable'in'
                                  mutable'notIn
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'in'
                                  mutable'notIn
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'in' mutable'notIn)
          "SFixed32Rules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 13)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putFixed32 Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 21)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putFixed32 Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lte") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 29)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putFixed32 Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gt") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 37)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putFixed32
                                   Prelude.fromIntegral
                                   _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gte") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 45)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putFixed32
                                      Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 53)
                                       ((Prelude..)
                                          Data.ProtoLens.Encoding.Bytes.putFixed32
                                          Prelude.fromIntegral
                                          _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'in'") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 61)
                                          ((Prelude..)
                                             Data.ProtoLens.Encoding.Bytes.putFixed32
                                             Prelude.fromIntegral
                                             _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'notIn") _x))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'ignoreEmpty") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (\ b -> if b then 1 else 0)
                                               _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData SFixed32Rules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SFixed32Rules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SFixed32Rules'const x__)
                (Control.DeepSeq.deepseq
                   (_SFixed32Rules'lt x__)
                   (Control.DeepSeq.deepseq
                      (_SFixed32Rules'lte x__)
                      (Control.DeepSeq.deepseq
                         (_SFixed32Rules'gt x__)
                         (Control.DeepSeq.deepseq
                            (_SFixed32Rules'gte x__)
                            (Control.DeepSeq.deepseq
                               (_SFixed32Rules'in' x__)
                               (Control.DeepSeq.deepseq
                                  (_SFixed32Rules'notIn x__)
                                  (Control.DeepSeq.deepseq
                                     (_SFixed32Rules'ignoreEmpty x__) ()))))))))
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' SFixed64Rules Data.Int.Int64@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' SFixed64Rules (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.lt' @:: Lens' SFixed64Rules Data.Int.Int64@
         * 'Proto.Validate.Validate_Fields.maybe'lt' @:: Lens' SFixed64Rules (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.lte' @:: Lens' SFixed64Rules Data.Int.Int64@
         * 'Proto.Validate.Validate_Fields.maybe'lte' @:: Lens' SFixed64Rules (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.gt' @:: Lens' SFixed64Rules Data.Int.Int64@
         * 'Proto.Validate.Validate_Fields.maybe'gt' @:: Lens' SFixed64Rules (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.gte' @:: Lens' SFixed64Rules Data.Int.Int64@
         * 'Proto.Validate.Validate_Fields.maybe'gte' @:: Lens' SFixed64Rules (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.in'' @:: Lens' SFixed64Rules [Data.Int.Int64]@
         * 'Proto.Validate.Validate_Fields.vec'in'' @:: Lens' SFixed64Rules (Data.Vector.Unboxed.Vector Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.notIn' @:: Lens' SFixed64Rules [Data.Int.Int64]@
         * 'Proto.Validate.Validate_Fields.vec'notIn' @:: Lens' SFixed64Rules (Data.Vector.Unboxed.Vector Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.ignoreEmpty' @:: Lens' SFixed64Rules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ignoreEmpty' @:: Lens' SFixed64Rules (Prelude.Maybe Prelude.Bool)@ -}
data SFixed64Rules
  = SFixed64Rules'_constructor {_SFixed64Rules'const :: !(Prelude.Maybe Data.Int.Int64),
                                _SFixed64Rules'lt :: !(Prelude.Maybe Data.Int.Int64),
                                _SFixed64Rules'lte :: !(Prelude.Maybe Data.Int.Int64),
                                _SFixed64Rules'gt :: !(Prelude.Maybe Data.Int.Int64),
                                _SFixed64Rules'gte :: !(Prelude.Maybe Data.Int.Int64),
                                _SFixed64Rules'in' :: !(Data.Vector.Unboxed.Vector Data.Int.Int64),
                                _SFixed64Rules'notIn :: !(Data.Vector.Unboxed.Vector Data.Int.Int64),
                                _SFixed64Rules'ignoreEmpty :: !(Prelude.Maybe Prelude.Bool),
                                _SFixed64Rules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SFixed64Rules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SFixed64Rules "const" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed64Rules'const
           (\ x__ y__ -> x__ {_SFixed64Rules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SFixed64Rules "maybe'const" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed64Rules'const
           (\ x__ y__ -> x__ {_SFixed64Rules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SFixed64Rules "lt" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed64Rules'lt (\ x__ y__ -> x__ {_SFixed64Rules'lt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SFixed64Rules "maybe'lt" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed64Rules'lt (\ x__ y__ -> x__ {_SFixed64Rules'lt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SFixed64Rules "lte" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed64Rules'lte (\ x__ y__ -> x__ {_SFixed64Rules'lte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SFixed64Rules "maybe'lte" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed64Rules'lte (\ x__ y__ -> x__ {_SFixed64Rules'lte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SFixed64Rules "gt" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed64Rules'gt (\ x__ y__ -> x__ {_SFixed64Rules'gt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SFixed64Rules "maybe'gt" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed64Rules'gt (\ x__ y__ -> x__ {_SFixed64Rules'gt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SFixed64Rules "gte" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed64Rules'gte (\ x__ y__ -> x__ {_SFixed64Rules'gte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SFixed64Rules "maybe'gte" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed64Rules'gte (\ x__ y__ -> x__ {_SFixed64Rules'gte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SFixed64Rules "in'" [Data.Int.Int64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed64Rules'in' (\ x__ y__ -> x__ {_SFixed64Rules'in' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SFixed64Rules "vec'in'" (Data.Vector.Unboxed.Vector Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed64Rules'in' (\ x__ y__ -> x__ {_SFixed64Rules'in' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SFixed64Rules "notIn" [Data.Int.Int64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed64Rules'notIn
           (\ x__ y__ -> x__ {_SFixed64Rules'notIn = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SFixed64Rules "vec'notIn" (Data.Vector.Unboxed.Vector Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed64Rules'notIn
           (\ x__ y__ -> x__ {_SFixed64Rules'notIn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SFixed64Rules "ignoreEmpty" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed64Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_SFixed64Rules'ignoreEmpty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SFixed64Rules "maybe'ignoreEmpty" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SFixed64Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_SFixed64Rules'ignoreEmpty = y__}))
        Prelude.id
instance Data.ProtoLens.Message SFixed64Rules where
  messageName _ = Data.Text.pack "validate.SFixed64Rules"
  packedMessageDescriptor _
    = "\n\
      \\rSFixed64Rules\DC2\DC4\n\
      \\ENQconst\CAN\SOH \SOH(\DLER\ENQconst\DC2\SO\n\
      \\STXlt\CAN\STX \SOH(\DLER\STXlt\DC2\DLE\n\
      \\ETXlte\CAN\ETX \SOH(\DLER\ETXlte\DC2\SO\n\
      \\STXgt\CAN\EOT \SOH(\DLER\STXgt\DC2\DLE\n\
      \\ETXgte\CAN\ENQ \SOH(\DLER\ETXgte\DC2\SO\n\
      \\STXin\CAN\ACK \ETX(\DLER\STXin\DC2\NAK\n\
      \\ACKnot_in\CAN\a \ETX(\DLER\ENQnotIn\DC2!\n\
      \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SFixed64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor SFixed64Rules
        lt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SFixed64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lt")) ::
              Data.ProtoLens.FieldDescriptor SFixed64Rules
        lte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SFixed64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lte")) ::
              Data.ProtoLens.FieldDescriptor SFixed64Rules
        gt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SFixed64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gt")) ::
              Data.ProtoLens.FieldDescriptor SFixed64Rules
        gte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SFixed64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gte")) ::
              Data.ProtoLens.FieldDescriptor SFixed64Rules
        in'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SFixed64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"in'")) ::
              Data.ProtoLens.FieldDescriptor SFixed64Rules
        notIn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SFixed64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"notIn")) ::
              Data.ProtoLens.FieldDescriptor SFixed64Rules
        ignoreEmpty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_empty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ignoreEmpty")) ::
              Data.ProtoLens.FieldDescriptor SFixed64Rules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, const__field_descriptor),
           (Data.ProtoLens.Tag 2, lt__field_descriptor),
           (Data.ProtoLens.Tag 3, lte__field_descriptor),
           (Data.ProtoLens.Tag 4, gt__field_descriptor),
           (Data.ProtoLens.Tag 5, gte__field_descriptor),
           (Data.ProtoLens.Tag 6, in'__field_descriptor),
           (Data.ProtoLens.Tag 7, notIn__field_descriptor),
           (Data.ProtoLens.Tag 8, ignoreEmpty__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SFixed64Rules'_unknownFields
        (\ x__ y__ -> x__ {_SFixed64Rules'_unknownFields = y__})
  defMessage
    = SFixed64Rules'_constructor
        {_SFixed64Rules'const = Prelude.Nothing,
         _SFixed64Rules'lt = Prelude.Nothing,
         _SFixed64Rules'lte = Prelude.Nothing,
         _SFixed64Rules'gt = Prelude.Nothing,
         _SFixed64Rules'gte = Prelude.Nothing,
         _SFixed64Rules'in' = Data.Vector.Generic.empty,
         _SFixed64Rules'notIn = Data.Vector.Generic.empty,
         _SFixed64Rules'ignoreEmpty = Prelude.Nothing,
         _SFixed64Rules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SFixed64Rules
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int64
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int64
                -> Data.ProtoLens.Encoding.Bytes.Parser SFixed64Rules
        loop x mutable'in' mutable'notIn
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'in')
                      frozen'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'notIn)
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
                              (Data.ProtoLens.Field.field @"vec'in'")
                              frozen'in'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'notIn") frozen'notIn x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        9 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "const"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                                  mutable'in'
                                  mutable'notIn
                        17
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "lt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lt") y x)
                                  mutable'in'
                                  mutable'notIn
                        25
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "lte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lte") y x)
                                  mutable'in'
                                  mutable'notIn
                        33
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "gt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gt") y x)
                                  mutable'in'
                                  mutable'notIn
                        41
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "gte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gte") y x)
                                  mutable'in'
                                  mutable'notIn
                        49
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getFixed64)
                                        "in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'in' y)
                                loop x v mutable'notIn
                        50
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getFixed64)
                                                                    "in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'in')
                                loop x y mutable'notIn
                        57
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getFixed64)
                                        "not_in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'notIn y)
                                loop x mutable'in' v
                        58
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getFixed64)
                                                                    "not_in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'notIn)
                                loop x mutable'in' y
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_empty"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ignoreEmpty") y x)
                                  mutable'in'
                                  mutable'notIn
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'in'
                                  mutable'notIn
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'in' mutable'notIn)
          "SFixed64Rules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 9)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putFixed64 Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 17)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putFixed64 Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lte") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 25)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putFixed64 Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gt") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 33)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putFixed64
                                   Prelude.fromIntegral
                                   _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gte") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 41)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putFixed64
                                      Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 49)
                                       ((Prelude..)
                                          Data.ProtoLens.Encoding.Bytes.putFixed64
                                          Prelude.fromIntegral
                                          _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'in'") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 57)
                                          ((Prelude..)
                                             Data.ProtoLens.Encoding.Bytes.putFixed64
                                             Prelude.fromIntegral
                                             _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'notIn") _x))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'ignoreEmpty") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (\ b -> if b then 1 else 0)
                                               _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData SFixed64Rules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SFixed64Rules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SFixed64Rules'const x__)
                (Control.DeepSeq.deepseq
                   (_SFixed64Rules'lt x__)
                   (Control.DeepSeq.deepseq
                      (_SFixed64Rules'lte x__)
                      (Control.DeepSeq.deepseq
                         (_SFixed64Rules'gt x__)
                         (Control.DeepSeq.deepseq
                            (_SFixed64Rules'gte x__)
                            (Control.DeepSeq.deepseq
                               (_SFixed64Rules'in' x__)
                               (Control.DeepSeq.deepseq
                                  (_SFixed64Rules'notIn x__)
                                  (Control.DeepSeq.deepseq
                                     (_SFixed64Rules'ignoreEmpty x__) ()))))))))
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' SInt32Rules Data.Int.Int32@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' SInt32Rules (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.lt' @:: Lens' SInt32Rules Data.Int.Int32@
         * 'Proto.Validate.Validate_Fields.maybe'lt' @:: Lens' SInt32Rules (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.lte' @:: Lens' SInt32Rules Data.Int.Int32@
         * 'Proto.Validate.Validate_Fields.maybe'lte' @:: Lens' SInt32Rules (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.gt' @:: Lens' SInt32Rules Data.Int.Int32@
         * 'Proto.Validate.Validate_Fields.maybe'gt' @:: Lens' SInt32Rules (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.gte' @:: Lens' SInt32Rules Data.Int.Int32@
         * 'Proto.Validate.Validate_Fields.maybe'gte' @:: Lens' SInt32Rules (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.in'' @:: Lens' SInt32Rules [Data.Int.Int32]@
         * 'Proto.Validate.Validate_Fields.vec'in'' @:: Lens' SInt32Rules (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.notIn' @:: Lens' SInt32Rules [Data.Int.Int32]@
         * 'Proto.Validate.Validate_Fields.vec'notIn' @:: Lens' SInt32Rules (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Validate.Validate_Fields.ignoreEmpty' @:: Lens' SInt32Rules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ignoreEmpty' @:: Lens' SInt32Rules (Prelude.Maybe Prelude.Bool)@ -}
data SInt32Rules
  = SInt32Rules'_constructor {_SInt32Rules'const :: !(Prelude.Maybe Data.Int.Int32),
                              _SInt32Rules'lt :: !(Prelude.Maybe Data.Int.Int32),
                              _SInt32Rules'lte :: !(Prelude.Maybe Data.Int.Int32),
                              _SInt32Rules'gt :: !(Prelude.Maybe Data.Int.Int32),
                              _SInt32Rules'gte :: !(Prelude.Maybe Data.Int.Int32),
                              _SInt32Rules'in' :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                              _SInt32Rules'notIn :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                              _SInt32Rules'ignoreEmpty :: !(Prelude.Maybe Prelude.Bool),
                              _SInt32Rules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SInt32Rules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SInt32Rules "const" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt32Rules'const (\ x__ y__ -> x__ {_SInt32Rules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SInt32Rules "maybe'const" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt32Rules'const (\ x__ y__ -> x__ {_SInt32Rules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SInt32Rules "lt" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt32Rules'lt (\ x__ y__ -> x__ {_SInt32Rules'lt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SInt32Rules "maybe'lt" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt32Rules'lt (\ x__ y__ -> x__ {_SInt32Rules'lt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SInt32Rules "lte" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt32Rules'lte (\ x__ y__ -> x__ {_SInt32Rules'lte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SInt32Rules "maybe'lte" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt32Rules'lte (\ x__ y__ -> x__ {_SInt32Rules'lte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SInt32Rules "gt" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt32Rules'gt (\ x__ y__ -> x__ {_SInt32Rules'gt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SInt32Rules "maybe'gt" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt32Rules'gt (\ x__ y__ -> x__ {_SInt32Rules'gt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SInt32Rules "gte" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt32Rules'gte (\ x__ y__ -> x__ {_SInt32Rules'gte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SInt32Rules "maybe'gte" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt32Rules'gte (\ x__ y__ -> x__ {_SInt32Rules'gte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SInt32Rules "in'" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt32Rules'in' (\ x__ y__ -> x__ {_SInt32Rules'in' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SInt32Rules "vec'in'" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt32Rules'in' (\ x__ y__ -> x__ {_SInt32Rules'in' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SInt32Rules "notIn" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt32Rules'notIn (\ x__ y__ -> x__ {_SInt32Rules'notIn = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SInt32Rules "vec'notIn" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt32Rules'notIn (\ x__ y__ -> x__ {_SInt32Rules'notIn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SInt32Rules "ignoreEmpty" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt32Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_SInt32Rules'ignoreEmpty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SInt32Rules "maybe'ignoreEmpty" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt32Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_SInt32Rules'ignoreEmpty = y__}))
        Prelude.id
instance Data.ProtoLens.Message SInt32Rules where
  messageName _ = Data.Text.pack "validate.SInt32Rules"
  packedMessageDescriptor _
    = "\n\
      \\vSInt32Rules\DC2\DC4\n\
      \\ENQconst\CAN\SOH \SOH(\DC1R\ENQconst\DC2\SO\n\
      \\STXlt\CAN\STX \SOH(\DC1R\STXlt\DC2\DLE\n\
      \\ETXlte\CAN\ETX \SOH(\DC1R\ETXlte\DC2\SO\n\
      \\STXgt\CAN\EOT \SOH(\DC1R\STXgt\DC2\DLE\n\
      \\ETXgte\CAN\ENQ \SOH(\DC1R\ETXgte\DC2\SO\n\
      \\STXin\CAN\ACK \ETX(\DC1R\STXin\DC2\NAK\n\
      \\ACKnot_in\CAN\a \ETX(\DC1R\ENQnotIn\DC2!\n\
      \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor SInt32Rules
        lt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lt")) ::
              Data.ProtoLens.FieldDescriptor SInt32Rules
        lte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lte")) ::
              Data.ProtoLens.FieldDescriptor SInt32Rules
        gt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gt")) ::
              Data.ProtoLens.FieldDescriptor SInt32Rules
        gte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gte")) ::
              Data.ProtoLens.FieldDescriptor SInt32Rules
        in'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"in'")) ::
              Data.ProtoLens.FieldDescriptor SInt32Rules
        notIn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"notIn")) ::
              Data.ProtoLens.FieldDescriptor SInt32Rules
        ignoreEmpty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_empty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ignoreEmpty")) ::
              Data.ProtoLens.FieldDescriptor SInt32Rules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, const__field_descriptor),
           (Data.ProtoLens.Tag 2, lt__field_descriptor),
           (Data.ProtoLens.Tag 3, lte__field_descriptor),
           (Data.ProtoLens.Tag 4, gt__field_descriptor),
           (Data.ProtoLens.Tag 5, gte__field_descriptor),
           (Data.ProtoLens.Tag 6, in'__field_descriptor),
           (Data.ProtoLens.Tag 7, notIn__field_descriptor),
           (Data.ProtoLens.Tag 8, ignoreEmpty__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SInt32Rules'_unknownFields
        (\ x__ y__ -> x__ {_SInt32Rules'_unknownFields = y__})
  defMessage
    = SInt32Rules'_constructor
        {_SInt32Rules'const = Prelude.Nothing,
         _SInt32Rules'lt = Prelude.Nothing,
         _SInt32Rules'lte = Prelude.Nothing,
         _SInt32Rules'gt = Prelude.Nothing,
         _SInt32Rules'gte = Prelude.Nothing,
         _SInt32Rules'in' = Data.Vector.Generic.empty,
         _SInt32Rules'notIn = Data.Vector.Generic.empty,
         _SInt32Rules'ignoreEmpty = Prelude.Nothing,
         _SInt32Rules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SInt32Rules
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
                -> Data.ProtoLens.Encoding.Bytes.Parser SInt32Rules
        loop x mutable'in' mutable'notIn
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'in')
                      frozen'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'notIn)
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
                              (Data.ProtoLens.Field.field @"vec'in'")
                              frozen'in'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'notIn") frozen'notIn x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToSignedInt32
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "const"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                                  mutable'in'
                                  mutable'notIn
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToSignedInt32
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "lt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lt") y x)
                                  mutable'in'
                                  mutable'notIn
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToSignedInt32
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "lte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lte") y x)
                                  mutable'in'
                                  mutable'notIn
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToSignedInt32
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "gt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gt") y x)
                                  mutable'in'
                                  mutable'notIn
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToSignedInt32
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "gte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gte") y x)
                                  mutable'in'
                                  mutable'notIn
                        48
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Data.ProtoLens.Encoding.Bytes.wordToSignedInt32
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'in' y)
                                loop x v mutable'notIn
                        50
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Data.ProtoLens.Encoding.Bytes.wordToSignedInt32
                                                                       (Prelude.fmap
                                                                          Prelude.fromIntegral
                                                                          Data.ProtoLens.Encoding.Bytes.getVarInt))
                                                                    "in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'in')
                                loop x y mutable'notIn
                        56
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Data.ProtoLens.Encoding.Bytes.wordToSignedInt32
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "not_in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'notIn y)
                                loop x mutable'in' v
                        58
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Data.ProtoLens.Encoding.Bytes.wordToSignedInt32
                                                                       (Prelude.fmap
                                                                          Prelude.fromIntegral
                                                                          Data.ProtoLens.Encoding.Bytes.getVarInt))
                                                                    "not_in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'notIn)
                                loop x mutable'in' y
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_empty"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ignoreEmpty") y x)
                                  mutable'in'
                                  mutable'notIn
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'in'
                                  mutable'notIn
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'in' mutable'notIn)
          "SInt32Rules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                          Data.ProtoLens.Encoding.Bytes.signedInt32ToWord
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                             Data.ProtoLens.Encoding.Bytes.signedInt32ToWord
                             _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lte") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                Data.ProtoLens.Encoding.Bytes.signedInt32ToWord
                                _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gt") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                   Data.ProtoLens.Encoding.Bytes.signedInt32ToWord
                                   _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gte") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral)
                                      Data.ProtoLens.Encoding.Bytes.signedInt32ToWord
                                      _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                       ((Prelude..)
                                          ((Prelude..)
                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                             Prelude.fromIntegral)
                                          Data.ProtoLens.Encoding.Bytes.signedInt32ToWord
                                          _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'in'") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                          ((Prelude..)
                                             ((Prelude..)
                                                Data.ProtoLens.Encoding.Bytes.putVarInt
                                                Prelude.fromIntegral)
                                             Data.ProtoLens.Encoding.Bytes.signedInt32ToWord
                                             _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'notIn") _x))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'ignoreEmpty") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (\ b -> if b then 1 else 0)
                                               _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData SInt32Rules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SInt32Rules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SInt32Rules'const x__)
                (Control.DeepSeq.deepseq
                   (_SInt32Rules'lt x__)
                   (Control.DeepSeq.deepseq
                      (_SInt32Rules'lte x__)
                      (Control.DeepSeq.deepseq
                         (_SInt32Rules'gt x__)
                         (Control.DeepSeq.deepseq
                            (_SInt32Rules'gte x__)
                            (Control.DeepSeq.deepseq
                               (_SInt32Rules'in' x__)
                               (Control.DeepSeq.deepseq
                                  (_SInt32Rules'notIn x__)
                                  (Control.DeepSeq.deepseq (_SInt32Rules'ignoreEmpty x__) ()))))))))
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' SInt64Rules Data.Int.Int64@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' SInt64Rules (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.lt' @:: Lens' SInt64Rules Data.Int.Int64@
         * 'Proto.Validate.Validate_Fields.maybe'lt' @:: Lens' SInt64Rules (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.lte' @:: Lens' SInt64Rules Data.Int.Int64@
         * 'Proto.Validate.Validate_Fields.maybe'lte' @:: Lens' SInt64Rules (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.gt' @:: Lens' SInt64Rules Data.Int.Int64@
         * 'Proto.Validate.Validate_Fields.maybe'gt' @:: Lens' SInt64Rules (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.gte' @:: Lens' SInt64Rules Data.Int.Int64@
         * 'Proto.Validate.Validate_Fields.maybe'gte' @:: Lens' SInt64Rules (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.in'' @:: Lens' SInt64Rules [Data.Int.Int64]@
         * 'Proto.Validate.Validate_Fields.vec'in'' @:: Lens' SInt64Rules (Data.Vector.Unboxed.Vector Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.notIn' @:: Lens' SInt64Rules [Data.Int.Int64]@
         * 'Proto.Validate.Validate_Fields.vec'notIn' @:: Lens' SInt64Rules (Data.Vector.Unboxed.Vector Data.Int.Int64)@
         * 'Proto.Validate.Validate_Fields.ignoreEmpty' @:: Lens' SInt64Rules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ignoreEmpty' @:: Lens' SInt64Rules (Prelude.Maybe Prelude.Bool)@ -}
data SInt64Rules
  = SInt64Rules'_constructor {_SInt64Rules'const :: !(Prelude.Maybe Data.Int.Int64),
                              _SInt64Rules'lt :: !(Prelude.Maybe Data.Int.Int64),
                              _SInt64Rules'lte :: !(Prelude.Maybe Data.Int.Int64),
                              _SInt64Rules'gt :: !(Prelude.Maybe Data.Int.Int64),
                              _SInt64Rules'gte :: !(Prelude.Maybe Data.Int.Int64),
                              _SInt64Rules'in' :: !(Data.Vector.Unboxed.Vector Data.Int.Int64),
                              _SInt64Rules'notIn :: !(Data.Vector.Unboxed.Vector Data.Int.Int64),
                              _SInt64Rules'ignoreEmpty :: !(Prelude.Maybe Prelude.Bool),
                              _SInt64Rules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SInt64Rules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SInt64Rules "const" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt64Rules'const (\ x__ y__ -> x__ {_SInt64Rules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SInt64Rules "maybe'const" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt64Rules'const (\ x__ y__ -> x__ {_SInt64Rules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SInt64Rules "lt" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt64Rules'lt (\ x__ y__ -> x__ {_SInt64Rules'lt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SInt64Rules "maybe'lt" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt64Rules'lt (\ x__ y__ -> x__ {_SInt64Rules'lt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SInt64Rules "lte" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt64Rules'lte (\ x__ y__ -> x__ {_SInt64Rules'lte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SInt64Rules "maybe'lte" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt64Rules'lte (\ x__ y__ -> x__ {_SInt64Rules'lte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SInt64Rules "gt" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt64Rules'gt (\ x__ y__ -> x__ {_SInt64Rules'gt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SInt64Rules "maybe'gt" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt64Rules'gt (\ x__ y__ -> x__ {_SInt64Rules'gt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SInt64Rules "gte" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt64Rules'gte (\ x__ y__ -> x__ {_SInt64Rules'gte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SInt64Rules "maybe'gte" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt64Rules'gte (\ x__ y__ -> x__ {_SInt64Rules'gte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SInt64Rules "in'" [Data.Int.Int64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt64Rules'in' (\ x__ y__ -> x__ {_SInt64Rules'in' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SInt64Rules "vec'in'" (Data.Vector.Unboxed.Vector Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt64Rules'in' (\ x__ y__ -> x__ {_SInt64Rules'in' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SInt64Rules "notIn" [Data.Int.Int64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt64Rules'notIn (\ x__ y__ -> x__ {_SInt64Rules'notIn = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SInt64Rules "vec'notIn" (Data.Vector.Unboxed.Vector Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt64Rules'notIn (\ x__ y__ -> x__ {_SInt64Rules'notIn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SInt64Rules "ignoreEmpty" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt64Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_SInt64Rules'ignoreEmpty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SInt64Rules "maybe'ignoreEmpty" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SInt64Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_SInt64Rules'ignoreEmpty = y__}))
        Prelude.id
instance Data.ProtoLens.Message SInt64Rules where
  messageName _ = Data.Text.pack "validate.SInt64Rules"
  packedMessageDescriptor _
    = "\n\
      \\vSInt64Rules\DC2\DC4\n\
      \\ENQconst\CAN\SOH \SOH(\DC2R\ENQconst\DC2\SO\n\
      \\STXlt\CAN\STX \SOH(\DC2R\STXlt\DC2\DLE\n\
      \\ETXlte\CAN\ETX \SOH(\DC2R\ETXlte\DC2\SO\n\
      \\STXgt\CAN\EOT \SOH(\DC2R\STXgt\DC2\DLE\n\
      \\ETXgte\CAN\ENQ \SOH(\DC2R\ETXgte\DC2\SO\n\
      \\STXin\CAN\ACK \ETX(\DC2R\STXin\DC2\NAK\n\
      \\ACKnot_in\CAN\a \ETX(\DC2R\ENQnotIn\DC2!\n\
      \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor SInt64Rules
        lt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lt")) ::
              Data.ProtoLens.FieldDescriptor SInt64Rules
        lte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lte")) ::
              Data.ProtoLens.FieldDescriptor SInt64Rules
        gt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gt")) ::
              Data.ProtoLens.FieldDescriptor SInt64Rules
        gte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gte")) ::
              Data.ProtoLens.FieldDescriptor SInt64Rules
        in'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"in'")) ::
              Data.ProtoLens.FieldDescriptor SInt64Rules
        notIn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"notIn")) ::
              Data.ProtoLens.FieldDescriptor SInt64Rules
        ignoreEmpty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_empty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ignoreEmpty")) ::
              Data.ProtoLens.FieldDescriptor SInt64Rules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, const__field_descriptor),
           (Data.ProtoLens.Tag 2, lt__field_descriptor),
           (Data.ProtoLens.Tag 3, lte__field_descriptor),
           (Data.ProtoLens.Tag 4, gt__field_descriptor),
           (Data.ProtoLens.Tag 5, gte__field_descriptor),
           (Data.ProtoLens.Tag 6, in'__field_descriptor),
           (Data.ProtoLens.Tag 7, notIn__field_descriptor),
           (Data.ProtoLens.Tag 8, ignoreEmpty__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SInt64Rules'_unknownFields
        (\ x__ y__ -> x__ {_SInt64Rules'_unknownFields = y__})
  defMessage
    = SInt64Rules'_constructor
        {_SInt64Rules'const = Prelude.Nothing,
         _SInt64Rules'lt = Prelude.Nothing,
         _SInt64Rules'lte = Prelude.Nothing,
         _SInt64Rules'gt = Prelude.Nothing,
         _SInt64Rules'gte = Prelude.Nothing,
         _SInt64Rules'in' = Data.Vector.Generic.empty,
         _SInt64Rules'notIn = Data.Vector.Generic.empty,
         _SInt64Rules'ignoreEmpty = Prelude.Nothing,
         _SInt64Rules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SInt64Rules
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int64
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int64
                -> Data.ProtoLens.Encoding.Bytes.Parser SInt64Rules
        loop x mutable'in' mutable'notIn
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'in')
                      frozen'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'notIn)
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
                              (Data.ProtoLens.Field.field @"vec'in'")
                              frozen'in'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'notIn") frozen'notIn x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToSignedInt64
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "const"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                                  mutable'in'
                                  mutable'notIn
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToSignedInt64
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "lt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lt") y x)
                                  mutable'in'
                                  mutable'notIn
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToSignedInt64
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "lte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lte") y x)
                                  mutable'in'
                                  mutable'notIn
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToSignedInt64
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "gt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gt") y x)
                                  mutable'in'
                                  mutable'notIn
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToSignedInt64
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "gte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gte") y x)
                                  mutable'in'
                                  mutable'notIn
                        48
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Data.ProtoLens.Encoding.Bytes.wordToSignedInt64
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'in' y)
                                loop x v mutable'notIn
                        50
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Data.ProtoLens.Encoding.Bytes.wordToSignedInt64
                                                                       (Prelude.fmap
                                                                          Prelude.fromIntegral
                                                                          Data.ProtoLens.Encoding.Bytes.getVarInt))
                                                                    "in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'in')
                                loop x y mutable'notIn
                        56
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Data.ProtoLens.Encoding.Bytes.wordToSignedInt64
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "not_in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'notIn y)
                                loop x mutable'in' v
                        58
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Data.ProtoLens.Encoding.Bytes.wordToSignedInt64
                                                                       (Prelude.fmap
                                                                          Prelude.fromIntegral
                                                                          Data.ProtoLens.Encoding.Bytes.getVarInt))
                                                                    "not_in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'notIn)
                                loop x mutable'in' y
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_empty"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ignoreEmpty") y x)
                                  mutable'in'
                                  mutable'notIn
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'in'
                                  mutable'notIn
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'in' mutable'notIn)
          "SInt64Rules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                          Data.ProtoLens.Encoding.Bytes.signedInt64ToWord
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                             Data.ProtoLens.Encoding.Bytes.signedInt64ToWord
                             _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lte") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                Data.ProtoLens.Encoding.Bytes.signedInt64ToWord
                                _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gt") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                   Data.ProtoLens.Encoding.Bytes.signedInt64ToWord
                                   _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gte") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral)
                                      Data.ProtoLens.Encoding.Bytes.signedInt64ToWord
                                      _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                       ((Prelude..)
                                          ((Prelude..)
                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                             Prelude.fromIntegral)
                                          Data.ProtoLens.Encoding.Bytes.signedInt64ToWord
                                          _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'in'") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                          ((Prelude..)
                                             ((Prelude..)
                                                Data.ProtoLens.Encoding.Bytes.putVarInt
                                                Prelude.fromIntegral)
                                             Data.ProtoLens.Encoding.Bytes.signedInt64ToWord
                                             _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'notIn") _x))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'ignoreEmpty") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (\ b -> if b then 1 else 0)
                                               _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData SInt64Rules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SInt64Rules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SInt64Rules'const x__)
                (Control.DeepSeq.deepseq
                   (_SInt64Rules'lt x__)
                   (Control.DeepSeq.deepseq
                      (_SInt64Rules'lte x__)
                      (Control.DeepSeq.deepseq
                         (_SInt64Rules'gt x__)
                         (Control.DeepSeq.deepseq
                            (_SInt64Rules'gte x__)
                            (Control.DeepSeq.deepseq
                               (_SInt64Rules'in' x__)
                               (Control.DeepSeq.deepseq
                                  (_SInt64Rules'notIn x__)
                                  (Control.DeepSeq.deepseq (_SInt64Rules'ignoreEmpty x__) ()))))))))
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' StringRules Data.Text.Text@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' StringRules (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Validate.Validate_Fields.len' @:: Lens' StringRules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'len' @:: Lens' StringRules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.minLen' @:: Lens' StringRules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'minLen' @:: Lens' StringRules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.maxLen' @:: Lens' StringRules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'maxLen' @:: Lens' StringRules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.lenBytes' @:: Lens' StringRules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'lenBytes' @:: Lens' StringRules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.minBytes' @:: Lens' StringRules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'minBytes' @:: Lens' StringRules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.maxBytes' @:: Lens' StringRules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'maxBytes' @:: Lens' StringRules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.pattern'' @:: Lens' StringRules Data.Text.Text@
         * 'Proto.Validate.Validate_Fields.maybe'pattern'' @:: Lens' StringRules (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Validate.Validate_Fields.prefix' @:: Lens' StringRules Data.Text.Text@
         * 'Proto.Validate.Validate_Fields.maybe'prefix' @:: Lens' StringRules (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Validate.Validate_Fields.suffix' @:: Lens' StringRules Data.Text.Text@
         * 'Proto.Validate.Validate_Fields.maybe'suffix' @:: Lens' StringRules (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Validate.Validate_Fields.contains' @:: Lens' StringRules Data.Text.Text@
         * 'Proto.Validate.Validate_Fields.maybe'contains' @:: Lens' StringRules (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Validate.Validate_Fields.notContains' @:: Lens' StringRules Data.Text.Text@
         * 'Proto.Validate.Validate_Fields.maybe'notContains' @:: Lens' StringRules (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Validate.Validate_Fields.in'' @:: Lens' StringRules [Data.Text.Text]@
         * 'Proto.Validate.Validate_Fields.vec'in'' @:: Lens' StringRules (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Validate.Validate_Fields.notIn' @:: Lens' StringRules [Data.Text.Text]@
         * 'Proto.Validate.Validate_Fields.vec'notIn' @:: Lens' StringRules (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Validate.Validate_Fields.strict' @:: Lens' StringRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'strict' @:: Lens' StringRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.ignoreEmpty' @:: Lens' StringRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ignoreEmpty' @:: Lens' StringRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.maybe'wellKnown' @:: Lens' StringRules (Prelude.Maybe StringRules'WellKnown)@
         * 'Proto.Validate.Validate_Fields.maybe'email' @:: Lens' StringRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.email' @:: Lens' StringRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'hostname' @:: Lens' StringRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.hostname' @:: Lens' StringRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ip' @:: Lens' StringRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.ip' @:: Lens' StringRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ipv4' @:: Lens' StringRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.ipv4' @:: Lens' StringRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ipv6' @:: Lens' StringRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.ipv6' @:: Lens' StringRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'uri' @:: Lens' StringRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.uri' @:: Lens' StringRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'uriRef' @:: Lens' StringRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.uriRef' @:: Lens' StringRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'address' @:: Lens' StringRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.address' @:: Lens' StringRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'uuid' @:: Lens' StringRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.uuid' @:: Lens' StringRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'wellKnownRegex' @:: Lens' StringRules (Prelude.Maybe KnownRegex)@
         * 'Proto.Validate.Validate_Fields.wellKnownRegex' @:: Lens' StringRules KnownRegex@ -}
data StringRules
  = StringRules'_constructor {_StringRules'const :: !(Prelude.Maybe Data.Text.Text),
                              _StringRules'len :: !(Prelude.Maybe Data.Word.Word64),
                              _StringRules'minLen :: !(Prelude.Maybe Data.Word.Word64),
                              _StringRules'maxLen :: !(Prelude.Maybe Data.Word.Word64),
                              _StringRules'lenBytes :: !(Prelude.Maybe Data.Word.Word64),
                              _StringRules'minBytes :: !(Prelude.Maybe Data.Word.Word64),
                              _StringRules'maxBytes :: !(Prelude.Maybe Data.Word.Word64),
                              _StringRules'pattern' :: !(Prelude.Maybe Data.Text.Text),
                              _StringRules'prefix :: !(Prelude.Maybe Data.Text.Text),
                              _StringRules'suffix :: !(Prelude.Maybe Data.Text.Text),
                              _StringRules'contains :: !(Prelude.Maybe Data.Text.Text),
                              _StringRules'notContains :: !(Prelude.Maybe Data.Text.Text),
                              _StringRules'in' :: !(Data.Vector.Vector Data.Text.Text),
                              _StringRules'notIn :: !(Data.Vector.Vector Data.Text.Text),
                              _StringRules'strict :: !(Prelude.Maybe Prelude.Bool),
                              _StringRules'ignoreEmpty :: !(Prelude.Maybe Prelude.Bool),
                              _StringRules'wellKnown :: !(Prelude.Maybe StringRules'WellKnown),
                              _StringRules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StringRules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data StringRules'WellKnown
  = StringRules'Email !Prelude.Bool |
    StringRules'Hostname !Prelude.Bool |
    StringRules'Ip !Prelude.Bool |
    StringRules'Ipv4 !Prelude.Bool |
    StringRules'Ipv6 !Prelude.Bool |
    StringRules'Uri !Prelude.Bool |
    StringRules'UriRef !Prelude.Bool |
    StringRules'Address !Prelude.Bool |
    StringRules'Uuid !Prelude.Bool |
    StringRules'WellKnownRegex !KnownRegex
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField StringRules "const" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'const (\ x__ y__ -> x__ {_StringRules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField StringRules "maybe'const" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'const (\ x__ y__ -> x__ {_StringRules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringRules "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'len (\ x__ y__ -> x__ {_StringRules'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField StringRules "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'len (\ x__ y__ -> x__ {_StringRules'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringRules "minLen" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'minLen (\ x__ y__ -> x__ {_StringRules'minLen = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField StringRules "maybe'minLen" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'minLen (\ x__ y__ -> x__ {_StringRules'minLen = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringRules "maxLen" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'maxLen (\ x__ y__ -> x__ {_StringRules'maxLen = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField StringRules "maybe'maxLen" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'maxLen (\ x__ y__ -> x__ {_StringRules'maxLen = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringRules "lenBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'lenBytes
           (\ x__ y__ -> x__ {_StringRules'lenBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField StringRules "maybe'lenBytes" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'lenBytes
           (\ x__ y__ -> x__ {_StringRules'lenBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringRules "minBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'minBytes
           (\ x__ y__ -> x__ {_StringRules'minBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField StringRules "maybe'minBytes" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'minBytes
           (\ x__ y__ -> x__ {_StringRules'minBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringRules "maxBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'maxBytes
           (\ x__ y__ -> x__ {_StringRules'maxBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField StringRules "maybe'maxBytes" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'maxBytes
           (\ x__ y__ -> x__ {_StringRules'maxBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringRules "pattern'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'pattern'
           (\ x__ y__ -> x__ {_StringRules'pattern' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField StringRules "maybe'pattern'" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'pattern'
           (\ x__ y__ -> x__ {_StringRules'pattern' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringRules "prefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'prefix (\ x__ y__ -> x__ {_StringRules'prefix = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField StringRules "maybe'prefix" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'prefix (\ x__ y__ -> x__ {_StringRules'prefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringRules "suffix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'suffix (\ x__ y__ -> x__ {_StringRules'suffix = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField StringRules "maybe'suffix" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'suffix (\ x__ y__ -> x__ {_StringRules'suffix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringRules "contains" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'contains
           (\ x__ y__ -> x__ {_StringRules'contains = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField StringRules "maybe'contains" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'contains
           (\ x__ y__ -> x__ {_StringRules'contains = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringRules "notContains" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'notContains
           (\ x__ y__ -> x__ {_StringRules'notContains = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField StringRules "maybe'notContains" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'notContains
           (\ x__ y__ -> x__ {_StringRules'notContains = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringRules "in'" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'in' (\ x__ y__ -> x__ {_StringRules'in' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StringRules "vec'in'" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'in' (\ x__ y__ -> x__ {_StringRules'in' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringRules "notIn" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'notIn (\ x__ y__ -> x__ {_StringRules'notIn = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StringRules "vec'notIn" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'notIn (\ x__ y__ -> x__ {_StringRules'notIn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringRules "strict" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'strict (\ x__ y__ -> x__ {_StringRules'strict = y__}))
        (Data.ProtoLens.maybeLens Prelude.True)
instance Data.ProtoLens.Field.HasField StringRules "maybe'strict" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'strict (\ x__ y__ -> x__ {_StringRules'strict = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringRules "ignoreEmpty" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'ignoreEmpty
           (\ x__ y__ -> x__ {_StringRules'ignoreEmpty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField StringRules "maybe'ignoreEmpty" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'ignoreEmpty
           (\ x__ y__ -> x__ {_StringRules'ignoreEmpty = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringRules "maybe'wellKnown" (Prelude.Maybe StringRules'WellKnown) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringRules "maybe'email" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StringRules'Email x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StringRules'Email y__))
instance Data.ProtoLens.Field.HasField StringRules "email" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StringRules'Email x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StringRules'Email y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField StringRules "maybe'hostname" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StringRules'Hostname x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StringRules'Hostname y__))
instance Data.ProtoLens.Field.HasField StringRules "hostname" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StringRules'Hostname x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StringRules'Hostname y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField StringRules "maybe'ip" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StringRules'Ip x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StringRules'Ip y__))
instance Data.ProtoLens.Field.HasField StringRules "ip" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StringRules'Ip x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StringRules'Ip y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField StringRules "maybe'ipv4" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StringRules'Ipv4 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StringRules'Ipv4 y__))
instance Data.ProtoLens.Field.HasField StringRules "ipv4" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StringRules'Ipv4 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StringRules'Ipv4 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField StringRules "maybe'ipv6" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StringRules'Ipv6 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StringRules'Ipv6 y__))
instance Data.ProtoLens.Field.HasField StringRules "ipv6" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StringRules'Ipv6 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StringRules'Ipv6 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField StringRules "maybe'uri" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StringRules'Uri x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StringRules'Uri y__))
instance Data.ProtoLens.Field.HasField StringRules "uri" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StringRules'Uri x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StringRules'Uri y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField StringRules "maybe'uriRef" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StringRules'UriRef x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StringRules'UriRef y__))
instance Data.ProtoLens.Field.HasField StringRules "uriRef" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StringRules'UriRef x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StringRules'UriRef y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField StringRules "maybe'address" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StringRules'Address x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StringRules'Address y__))
instance Data.ProtoLens.Field.HasField StringRules "address" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StringRules'Address x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StringRules'Address y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField StringRules "maybe'uuid" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StringRules'Uuid x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StringRules'Uuid y__))
instance Data.ProtoLens.Field.HasField StringRules "uuid" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StringRules'Uuid x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StringRules'Uuid y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField StringRules "maybe'wellKnownRegex" (Prelude.Maybe KnownRegex) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StringRules'WellKnownRegex x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StringRules'WellKnownRegex y__))
instance Data.ProtoLens.Field.HasField StringRules "wellKnownRegex" KnownRegex where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringRules'wellKnown
           (\ x__ y__ -> x__ {_StringRules'wellKnown = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StringRules'WellKnownRegex x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StringRules'WellKnownRegex y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message StringRules where
  messageName _ = Data.Text.pack "validate.StringRules"
  packedMessageDescriptor _
    = "\n\
      \\vStringRules\DC2\DC4\n\
      \\ENQconst\CAN\SOH \SOH(\tR\ENQconst\DC2\DLE\n\
      \\ETXlen\CAN\DC3 \SOH(\EOTR\ETXlen\DC2\ETB\n\
      \\amin_len\CAN\STX \SOH(\EOTR\ACKminLen\DC2\ETB\n\
      \\amax_len\CAN\ETX \SOH(\EOTR\ACKmaxLen\DC2\ESC\n\
      \\tlen_bytes\CAN\DC4 \SOH(\EOTR\blenBytes\DC2\ESC\n\
      \\tmin_bytes\CAN\EOT \SOH(\EOTR\bminBytes\DC2\ESC\n\
      \\tmax_bytes\CAN\ENQ \SOH(\EOTR\bmaxBytes\DC2\CAN\n\
      \\apattern\CAN\ACK \SOH(\tR\apattern\DC2\SYN\n\
      \\ACKprefix\CAN\a \SOH(\tR\ACKprefix\DC2\SYN\n\
      \\ACKsuffix\CAN\b \SOH(\tR\ACKsuffix\DC2\SUB\n\
      \\bcontains\CAN\t \SOH(\tR\bcontains\DC2!\n\
      \\fnot_contains\CAN\ETB \SOH(\tR\vnotContains\DC2\SO\n\
      \\STXin\CAN\n\
      \ \ETX(\tR\STXin\DC2\NAK\n\
      \\ACKnot_in\CAN\v \ETX(\tR\ENQnotIn\DC2\SYN\n\
      \\ENQemail\CAN\f \SOH(\bH\NULR\ENQemail\DC2\FS\n\
      \\bhostname\CAN\r \SOH(\bH\NULR\bhostname\DC2\DLE\n\
      \\STXip\CAN\SO \SOH(\bH\NULR\STXip\DC2\DC4\n\
      \\EOTipv4\CAN\SI \SOH(\bH\NULR\EOTipv4\DC2\DC4\n\
      \\EOTipv6\CAN\DLE \SOH(\bH\NULR\EOTipv6\DC2\DC2\n\
      \\ETXuri\CAN\DC1 \SOH(\bH\NULR\ETXuri\DC2\EM\n\
      \\auri_ref\CAN\DC2 \SOH(\bH\NULR\ACKuriRef\DC2\SUB\n\
      \\aaddress\CAN\NAK \SOH(\bH\NULR\aaddress\DC2\DC4\n\
      \\EOTuuid\CAN\SYN \SOH(\bH\NULR\EOTuuid\DC2@\n\
      \\DLEwell_known_regex\CAN\CAN \SOH(\SO2\DC4.validate.KnownRegexH\NULR\SOwellKnownRegex\DC2\FS\n\
      \\ACKstrict\CAN\EM \SOH(\b:\EOTtrueR\ACKstrict\DC2!\n\
      \\fignore_empty\CAN\SUB \SOH(\bR\vignoreEmptyB\f\n\
      \\n\
      \well_known"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        minLen__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minLen")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        maxLen__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxLen")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        lenBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lenBytes")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        minBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minBytes")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        maxBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxBytes")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        pattern'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pattern"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pattern'")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        prefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prefix")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        suffix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "suffix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'suffix")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        contains__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "contains"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'contains")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        notContains__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_contains"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'notContains")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        in'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"in'")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        notIn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"notIn")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        strict__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "strict"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'strict")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        ignoreEmpty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_empty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ignoreEmpty")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        email__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "email"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'email")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        hostname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hostname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hostname")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        ip__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ip"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ip")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        ipv4__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ipv4"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ipv4")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        ipv6__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ipv6"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ipv6")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        uri__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uri"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uri")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        uriRef__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uri_ref"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uriRef")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'address")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        uuid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uuid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uuid")) ::
              Data.ProtoLens.FieldDescriptor StringRules
        wellKnownRegex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "well_known_regex"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor KnownRegex)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'wellKnownRegex")) ::
              Data.ProtoLens.FieldDescriptor StringRules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, const__field_descriptor),
           (Data.ProtoLens.Tag 19, len__field_descriptor),
           (Data.ProtoLens.Tag 2, minLen__field_descriptor),
           (Data.ProtoLens.Tag 3, maxLen__field_descriptor),
           (Data.ProtoLens.Tag 20, lenBytes__field_descriptor),
           (Data.ProtoLens.Tag 4, minBytes__field_descriptor),
           (Data.ProtoLens.Tag 5, maxBytes__field_descriptor),
           (Data.ProtoLens.Tag 6, pattern'__field_descriptor),
           (Data.ProtoLens.Tag 7, prefix__field_descriptor),
           (Data.ProtoLens.Tag 8, suffix__field_descriptor),
           (Data.ProtoLens.Tag 9, contains__field_descriptor),
           (Data.ProtoLens.Tag 23, notContains__field_descriptor),
           (Data.ProtoLens.Tag 10, in'__field_descriptor),
           (Data.ProtoLens.Tag 11, notIn__field_descriptor),
           (Data.ProtoLens.Tag 25, strict__field_descriptor),
           (Data.ProtoLens.Tag 26, ignoreEmpty__field_descriptor),
           (Data.ProtoLens.Tag 12, email__field_descriptor),
           (Data.ProtoLens.Tag 13, hostname__field_descriptor),
           (Data.ProtoLens.Tag 14, ip__field_descriptor),
           (Data.ProtoLens.Tag 15, ipv4__field_descriptor),
           (Data.ProtoLens.Tag 16, ipv6__field_descriptor),
           (Data.ProtoLens.Tag 17, uri__field_descriptor),
           (Data.ProtoLens.Tag 18, uriRef__field_descriptor),
           (Data.ProtoLens.Tag 21, address__field_descriptor),
           (Data.ProtoLens.Tag 22, uuid__field_descriptor),
           (Data.ProtoLens.Tag 24, wellKnownRegex__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StringRules'_unknownFields
        (\ x__ y__ -> x__ {_StringRules'_unknownFields = y__})
  defMessage
    = StringRules'_constructor
        {_StringRules'const = Prelude.Nothing,
         _StringRules'len = Prelude.Nothing,
         _StringRules'minLen = Prelude.Nothing,
         _StringRules'maxLen = Prelude.Nothing,
         _StringRules'lenBytes = Prelude.Nothing,
         _StringRules'minBytes = Prelude.Nothing,
         _StringRules'maxBytes = Prelude.Nothing,
         _StringRules'pattern' = Prelude.Nothing,
         _StringRules'prefix = Prelude.Nothing,
         _StringRules'suffix = Prelude.Nothing,
         _StringRules'contains = Prelude.Nothing,
         _StringRules'notContains = Prelude.Nothing,
         _StringRules'in' = Data.Vector.Generic.empty,
         _StringRules'notIn = Data.Vector.Generic.empty,
         _StringRules'strict = Prelude.Nothing,
         _StringRules'ignoreEmpty = Prelude.Nothing,
         _StringRules'wellKnown = Prelude.Nothing,
         _StringRules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StringRules
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser StringRules
        loop x mutable'in' mutable'notIn
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'in')
                      frozen'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'notIn)
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
                              (Data.ProtoLens.Field.field @"vec'in'")
                              frozen'in'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'notIn") frozen'notIn x)))
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
                                       "const"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                                  mutable'in'
                                  mutable'notIn
                        152
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                                  mutable'in'
                                  mutable'notIn
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "min_len"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"minLen") y x)
                                  mutable'in'
                                  mutable'notIn
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "max_len"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxLen") y x)
                                  mutable'in'
                                  mutable'notIn
                        160
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lenBytes") y x)
                                  mutable'in'
                                  mutable'notIn
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "min_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"minBytes") y x)
                                  mutable'in'
                                  mutable'notIn
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "max_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxBytes") y x)
                                  mutable'in'
                                  mutable'notIn
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
                                       "pattern"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pattern'") y x)
                                  mutable'in'
                                  mutable'notIn
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"prefix") y x)
                                  mutable'in'
                                  mutable'notIn
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "suffix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"suffix") y x)
                                  mutable'in'
                                  mutable'notIn
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
                                       "contains"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"contains") y x)
                                  mutable'in'
                                  mutable'notIn
                        186
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "not_contains"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"notContains") y x)
                                  mutable'in'
                                  mutable'notIn
                        82
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'in' y)
                                loop x v mutable'notIn
                        90
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "not_in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'notIn y)
                                loop x mutable'in' v
                        200
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "strict"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"strict") y x)
                                  mutable'in'
                                  mutable'notIn
                        208
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_empty"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ignoreEmpty") y x)
                                  mutable'in'
                                  mutable'notIn
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "email"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"email") y x)
                                  mutable'in'
                                  mutable'notIn
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "hostname"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hostname") y x)
                                  mutable'in'
                                  mutable'notIn
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ip"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ip") y x)
                                  mutable'in'
                                  mutable'notIn
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ipv4"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ipv4") y x)
                                  mutable'in'
                                  mutable'notIn
                        128
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ipv6"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ipv6") y x)
                                  mutable'in'
                                  mutable'notIn
                        136
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "uri"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"uri") y x)
                                  mutable'in'
                                  mutable'notIn
                        144
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "uri_ref"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"uriRef") y x)
                                  mutable'in'
                                  mutable'notIn
                        168
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                                  mutable'in'
                                  mutable'notIn
                        176
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "uuid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"uuid") y x)
                                  mutable'in'
                                  mutable'notIn
                        192
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "well_known_regex"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"wellKnownRegex") y x)
                                  mutable'in'
                                  mutable'notIn
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'in'
                                  mutable'notIn
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'in' mutable'notIn)
          "StringRules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
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
                          Data.Text.Encoding.encodeUtf8
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 152)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'minLen") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'maxLen") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lenBytes") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 160)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'minBytes") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'maxBytes") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'pattern'") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
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
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'prefix") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.Text.Encoding.encodeUtf8
                                                  _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'suffix") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.Text.Encoding.encodeUtf8
                                                     _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"maybe'contains") _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                                     ((Prelude..)
                                                        (\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                        Data.Text.Encoding.encodeUtf8
                                                        _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'notContains")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           186)
                                                        ((Prelude..)
                                                           (\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                           Data.Text.Encoding.encodeUtf8
                                                           _v))
                                              ((Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                    (\ _v
                                                       -> (Data.Monoid.<>)
                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                               82)
                                                            ((Prelude..)
                                                               (\ bs
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          (Prelude.fromIntegral
                                                                             (Data.ByteString.length
                                                                                bs)))
                                                                       (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                          bs))
                                                               Data.Text.Encoding.encodeUtf8
                                                               _v))
                                                    (Lens.Family2.view
                                                       (Data.ProtoLens.Field.field @"vec'in'") _x))
                                                 ((Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                       (\ _v
                                                          -> (Data.Monoid.<>)
                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                  90)
                                                               ((Prelude..)
                                                                  (\ bs
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             (Prelude.fromIntegral
                                                                                (Data.ByteString.length
                                                                                   bs)))
                                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                             bs))
                                                                  Data.Text.Encoding.encodeUtf8
                                                                  _v))
                                                       (Lens.Family2.view
                                                          (Data.ProtoLens.Field.field @"vec'notIn")
                                                          _x))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'strict")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    200)
                                                                 ((Prelude..)
                                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    (\ b -> if b then 1 else 0)
                                                                    _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'ignoreEmpty")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       208)
                                                                    ((Prelude..)
                                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       (\ b -> if b then 1 else 0)
                                                                       _v))
                                                          ((Data.Monoid.<>)
                                                             (case
                                                                  Lens.Family2.view
                                                                    (Data.ProtoLens.Field.field
                                                                       @"maybe'wellKnown")
                                                                    _x
                                                              of
                                                                Prelude.Nothing
                                                                  -> Data.Monoid.mempty
                                                                (Prelude.Just (StringRules'Email v))
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          96)
                                                                       ((Prelude..)
                                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          (\ b
                                                                             -> if b then 1 else 0)
                                                                          v)
                                                                (Prelude.Just (StringRules'Hostname v))
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          104)
                                                                       ((Prelude..)
                                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          (\ b
                                                                             -> if b then 1 else 0)
                                                                          v)
                                                                (Prelude.Just (StringRules'Ip v))
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          112)
                                                                       ((Prelude..)
                                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          (\ b
                                                                             -> if b then 1 else 0)
                                                                          v)
                                                                (Prelude.Just (StringRules'Ipv4 v))
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          120)
                                                                       ((Prelude..)
                                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          (\ b
                                                                             -> if b then 1 else 0)
                                                                          v)
                                                                (Prelude.Just (StringRules'Ipv6 v))
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          128)
                                                                       ((Prelude..)
                                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          (\ b
                                                                             -> if b then 1 else 0)
                                                                          v)
                                                                (Prelude.Just (StringRules'Uri v))
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          136)
                                                                       ((Prelude..)
                                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          (\ b
                                                                             -> if b then 1 else 0)
                                                                          v)
                                                                (Prelude.Just (StringRules'UriRef v))
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          144)
                                                                       ((Prelude..)
                                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          (\ b
                                                                             -> if b then 1 else 0)
                                                                          v)
                                                                (Prelude.Just (StringRules'Address v))
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          168)
                                                                       ((Prelude..)
                                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          (\ b
                                                                             -> if b then 1 else 0)
                                                                          v)
                                                                (Prelude.Just (StringRules'Uuid v))
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          176)
                                                                       ((Prelude..)
                                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          (\ b
                                                                             -> if b then 1 else 0)
                                                                          v)
                                                                (Prelude.Just (StringRules'WellKnownRegex v))
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          192)
                                                                       ((Prelude..)
                                                                          ((Prelude..)
                                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             Prelude.fromIntegral)
                                                                          Prelude.fromEnum
                                                                          v))
                                                             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                (Lens.Family2.view
                                                                   Data.ProtoLens.unknownFields
                                                                   _x))))))))))))))))))
instance Control.DeepSeq.NFData StringRules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StringRules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StringRules'const x__)
                (Control.DeepSeq.deepseq
                   (_StringRules'len x__)
                   (Control.DeepSeq.deepseq
                      (_StringRules'minLen x__)
                      (Control.DeepSeq.deepseq
                         (_StringRules'maxLen x__)
                         (Control.DeepSeq.deepseq
                            (_StringRules'lenBytes x__)
                            (Control.DeepSeq.deepseq
                               (_StringRules'minBytes x__)
                               (Control.DeepSeq.deepseq
                                  (_StringRules'maxBytes x__)
                                  (Control.DeepSeq.deepseq
                                     (_StringRules'pattern' x__)
                                     (Control.DeepSeq.deepseq
                                        (_StringRules'prefix x__)
                                        (Control.DeepSeq.deepseq
                                           (_StringRules'suffix x__)
                                           (Control.DeepSeq.deepseq
                                              (_StringRules'contains x__)
                                              (Control.DeepSeq.deepseq
                                                 (_StringRules'notContains x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_StringRules'in' x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_StringRules'notIn x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_StringRules'strict x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_StringRules'ignoreEmpty x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_StringRules'wellKnown x__)
                                                                ())))))))))))))))))
instance Control.DeepSeq.NFData StringRules'WellKnown where
  rnf (StringRules'Email x__) = Control.DeepSeq.rnf x__
  rnf (StringRules'Hostname x__) = Control.DeepSeq.rnf x__
  rnf (StringRules'Ip x__) = Control.DeepSeq.rnf x__
  rnf (StringRules'Ipv4 x__) = Control.DeepSeq.rnf x__
  rnf (StringRules'Ipv6 x__) = Control.DeepSeq.rnf x__
  rnf (StringRules'Uri x__) = Control.DeepSeq.rnf x__
  rnf (StringRules'UriRef x__) = Control.DeepSeq.rnf x__
  rnf (StringRules'Address x__) = Control.DeepSeq.rnf x__
  rnf (StringRules'Uuid x__) = Control.DeepSeq.rnf x__
  rnf (StringRules'WellKnownRegex x__) = Control.DeepSeq.rnf x__
_StringRules'Email ::
  Data.ProtoLens.Prism.Prism' StringRules'WellKnown Prelude.Bool
_StringRules'Email
  = Data.ProtoLens.Prism.prism'
      StringRules'Email
      (\ p__
         -> case p__ of
              (StringRules'Email p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StringRules'Hostname ::
  Data.ProtoLens.Prism.Prism' StringRules'WellKnown Prelude.Bool
_StringRules'Hostname
  = Data.ProtoLens.Prism.prism'
      StringRules'Hostname
      (\ p__
         -> case p__ of
              (StringRules'Hostname p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StringRules'Ip ::
  Data.ProtoLens.Prism.Prism' StringRules'WellKnown Prelude.Bool
_StringRules'Ip
  = Data.ProtoLens.Prism.prism'
      StringRules'Ip
      (\ p__
         -> case p__ of
              (StringRules'Ip p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StringRules'Ipv4 ::
  Data.ProtoLens.Prism.Prism' StringRules'WellKnown Prelude.Bool
_StringRules'Ipv4
  = Data.ProtoLens.Prism.prism'
      StringRules'Ipv4
      (\ p__
         -> case p__ of
              (StringRules'Ipv4 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StringRules'Ipv6 ::
  Data.ProtoLens.Prism.Prism' StringRules'WellKnown Prelude.Bool
_StringRules'Ipv6
  = Data.ProtoLens.Prism.prism'
      StringRules'Ipv6
      (\ p__
         -> case p__ of
              (StringRules'Ipv6 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StringRules'Uri ::
  Data.ProtoLens.Prism.Prism' StringRules'WellKnown Prelude.Bool
_StringRules'Uri
  = Data.ProtoLens.Prism.prism'
      StringRules'Uri
      (\ p__
         -> case p__ of
              (StringRules'Uri p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StringRules'UriRef ::
  Data.ProtoLens.Prism.Prism' StringRules'WellKnown Prelude.Bool
_StringRules'UriRef
  = Data.ProtoLens.Prism.prism'
      StringRules'UriRef
      (\ p__
         -> case p__ of
              (StringRules'UriRef p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StringRules'Address ::
  Data.ProtoLens.Prism.Prism' StringRules'WellKnown Prelude.Bool
_StringRules'Address
  = Data.ProtoLens.Prism.prism'
      StringRules'Address
      (\ p__
         -> case p__ of
              (StringRules'Address p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StringRules'Uuid ::
  Data.ProtoLens.Prism.Prism' StringRules'WellKnown Prelude.Bool
_StringRules'Uuid
  = Data.ProtoLens.Prism.prism'
      StringRules'Uuid
      (\ p__
         -> case p__ of
              (StringRules'Uuid p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StringRules'WellKnownRegex ::
  Data.ProtoLens.Prism.Prism' StringRules'WellKnown KnownRegex
_StringRules'WellKnownRegex
  = Data.ProtoLens.Prism.prism'
      StringRules'WellKnownRegex
      (\ p__
         -> case p__ of
              (StringRules'WellKnownRegex p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.required' @:: Lens' TimestampRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'required' @:: Lens' TimestampRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' TimestampRules Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' TimestampRules (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Validate.Validate_Fields.lt' @:: Lens' TimestampRules Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Validate.Validate_Fields.maybe'lt' @:: Lens' TimestampRules (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Validate.Validate_Fields.lte' @:: Lens' TimestampRules Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Validate.Validate_Fields.maybe'lte' @:: Lens' TimestampRules (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Validate.Validate_Fields.gt' @:: Lens' TimestampRules Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Validate.Validate_Fields.maybe'gt' @:: Lens' TimestampRules (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Validate.Validate_Fields.gte' @:: Lens' TimestampRules Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Validate.Validate_Fields.maybe'gte' @:: Lens' TimestampRules (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Validate.Validate_Fields.ltNow' @:: Lens' TimestampRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ltNow' @:: Lens' TimestampRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.gtNow' @:: Lens' TimestampRules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'gtNow' @:: Lens' TimestampRules (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Validate.Validate_Fields.within' @:: Lens' TimestampRules Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Validate.Validate_Fields.maybe'within' @:: Lens' TimestampRules (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data TimestampRules
  = TimestampRules'_constructor {_TimestampRules'required :: !(Prelude.Maybe Prelude.Bool),
                                 _TimestampRules'const :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                 _TimestampRules'lt :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                 _TimestampRules'lte :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                 _TimestampRules'gt :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                 _TimestampRules'gte :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                 _TimestampRules'ltNow :: !(Prelude.Maybe Prelude.Bool),
                                 _TimestampRules'gtNow :: !(Prelude.Maybe Prelude.Bool),
                                 _TimestampRules'within :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                 _TimestampRules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TimestampRules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TimestampRules "required" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'required
           (\ x__ y__ -> x__ {_TimestampRules'required = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TimestampRules "maybe'required" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'required
           (\ x__ y__ -> x__ {_TimestampRules'required = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimestampRules "const" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'const
           (\ x__ y__ -> x__ {_TimestampRules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimestampRules "maybe'const" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'const
           (\ x__ y__ -> x__ {_TimestampRules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimestampRules "lt" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'lt (\ x__ y__ -> x__ {_TimestampRules'lt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimestampRules "maybe'lt" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'lt (\ x__ y__ -> x__ {_TimestampRules'lt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimestampRules "lte" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'lte (\ x__ y__ -> x__ {_TimestampRules'lte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimestampRules "maybe'lte" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'lte (\ x__ y__ -> x__ {_TimestampRules'lte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimestampRules "gt" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'gt (\ x__ y__ -> x__ {_TimestampRules'gt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimestampRules "maybe'gt" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'gt (\ x__ y__ -> x__ {_TimestampRules'gt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimestampRules "gte" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'gte (\ x__ y__ -> x__ {_TimestampRules'gte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimestampRules "maybe'gte" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'gte (\ x__ y__ -> x__ {_TimestampRules'gte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimestampRules "ltNow" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'ltNow
           (\ x__ y__ -> x__ {_TimestampRules'ltNow = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TimestampRules "maybe'ltNow" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'ltNow
           (\ x__ y__ -> x__ {_TimestampRules'ltNow = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimestampRules "gtNow" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'gtNow
           (\ x__ y__ -> x__ {_TimestampRules'gtNow = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TimestampRules "maybe'gtNow" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'gtNow
           (\ x__ y__ -> x__ {_TimestampRules'gtNow = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TimestampRules "within" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'within
           (\ x__ y__ -> x__ {_TimestampRules'within = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TimestampRules "maybe'within" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TimestampRules'within
           (\ x__ y__ -> x__ {_TimestampRules'within = y__}))
        Prelude.id
instance Data.ProtoLens.Message TimestampRules where
  messageName _ = Data.Text.pack "validate.TimestampRules"
  packedMessageDescriptor _
    = "\n\
      \\SOTimestampRules\DC2\SUB\n\
      \\brequired\CAN\SOH \SOH(\bR\brequired\DC20\n\
      \\ENQconst\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\ENQconst\DC2*\n\
      \\STXlt\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\STXlt\DC2,\n\
      \\ETXlte\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\ETXlte\DC2*\n\
      \\STXgt\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\STXgt\DC2,\n\
      \\ETXgte\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\ETXgte\DC2\NAK\n\
      \\ACKlt_now\CAN\a \SOH(\bR\ENQltNow\DC2\NAK\n\
      \\ACKgt_now\CAN\b \SOH(\bR\ENQgtNow\DC21\n\
      \\ACKwithin\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\ACKwithin"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        required__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "required"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'required")) ::
              Data.ProtoLens.FieldDescriptor TimestampRules
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor TimestampRules
        lt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lt"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lt")) ::
              Data.ProtoLens.FieldDescriptor TimestampRules
        lte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lte"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lte")) ::
              Data.ProtoLens.FieldDescriptor TimestampRules
        gt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gt"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gt")) ::
              Data.ProtoLens.FieldDescriptor TimestampRules
        gte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gte"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gte")) ::
              Data.ProtoLens.FieldDescriptor TimestampRules
        ltNow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lt_now"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ltNow")) ::
              Data.ProtoLens.FieldDescriptor TimestampRules
        gtNow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gt_now"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gtNow")) ::
              Data.ProtoLens.FieldDescriptor TimestampRules
        within__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "within"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'within")) ::
              Data.ProtoLens.FieldDescriptor TimestampRules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, required__field_descriptor),
           (Data.ProtoLens.Tag 2, const__field_descriptor),
           (Data.ProtoLens.Tag 3, lt__field_descriptor),
           (Data.ProtoLens.Tag 4, lte__field_descriptor),
           (Data.ProtoLens.Tag 5, gt__field_descriptor),
           (Data.ProtoLens.Tag 6, gte__field_descriptor),
           (Data.ProtoLens.Tag 7, ltNow__field_descriptor),
           (Data.ProtoLens.Tag 8, gtNow__field_descriptor),
           (Data.ProtoLens.Tag 9, within__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TimestampRules'_unknownFields
        (\ x__ y__ -> x__ {_TimestampRules'_unknownFields = y__})
  defMessage
    = TimestampRules'_constructor
        {_TimestampRules'required = Prelude.Nothing,
         _TimestampRules'const = Prelude.Nothing,
         _TimestampRules'lt = Prelude.Nothing,
         _TimestampRules'lte = Prelude.Nothing,
         _TimestampRules'gt = Prelude.Nothing,
         _TimestampRules'gte = Prelude.Nothing,
         _TimestampRules'ltNow = Prelude.Nothing,
         _TimestampRules'gtNow = Prelude.Nothing,
         _TimestampRules'within = Prelude.Nothing,
         _TimestampRules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TimestampRules
          -> Data.ProtoLens.Encoding.Bytes.Parser TimestampRules
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
                                       "required"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"required") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "const"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "lt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"lt") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "lte"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"lte") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "gt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"gt") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "gte"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"gte") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "lt_now"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ltNow") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gt_now"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"gtNow") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "within"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"within") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TimestampRules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'required") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
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
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lt") _x
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
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lte") _x
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
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gt") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gte") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ltNow") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (\ b -> if b then 1 else 0)
                                            _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'gtNow") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (\ b -> if b then 1 else 0)
                                               _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'within") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage
                                                  _v))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData TimestampRules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TimestampRules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TimestampRules'required x__)
                (Control.DeepSeq.deepseq
                   (_TimestampRules'const x__)
                   (Control.DeepSeq.deepseq
                      (_TimestampRules'lt x__)
                      (Control.DeepSeq.deepseq
                         (_TimestampRules'lte x__)
                         (Control.DeepSeq.deepseq
                            (_TimestampRules'gt x__)
                            (Control.DeepSeq.deepseq
                               (_TimestampRules'gte x__)
                               (Control.DeepSeq.deepseq
                                  (_TimestampRules'ltNow x__)
                                  (Control.DeepSeq.deepseq
                                     (_TimestampRules'gtNow x__)
                                     (Control.DeepSeq.deepseq
                                        (_TimestampRules'within x__) ())))))))))
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' UInt32Rules Data.Word.Word32@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' UInt32Rules (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Validate.Validate_Fields.lt' @:: Lens' UInt32Rules Data.Word.Word32@
         * 'Proto.Validate.Validate_Fields.maybe'lt' @:: Lens' UInt32Rules (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Validate.Validate_Fields.lte' @:: Lens' UInt32Rules Data.Word.Word32@
         * 'Proto.Validate.Validate_Fields.maybe'lte' @:: Lens' UInt32Rules (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Validate.Validate_Fields.gt' @:: Lens' UInt32Rules Data.Word.Word32@
         * 'Proto.Validate.Validate_Fields.maybe'gt' @:: Lens' UInt32Rules (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Validate.Validate_Fields.gte' @:: Lens' UInt32Rules Data.Word.Word32@
         * 'Proto.Validate.Validate_Fields.maybe'gte' @:: Lens' UInt32Rules (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Validate.Validate_Fields.in'' @:: Lens' UInt32Rules [Data.Word.Word32]@
         * 'Proto.Validate.Validate_Fields.vec'in'' @:: Lens' UInt32Rules (Data.Vector.Unboxed.Vector Data.Word.Word32)@
         * 'Proto.Validate.Validate_Fields.notIn' @:: Lens' UInt32Rules [Data.Word.Word32]@
         * 'Proto.Validate.Validate_Fields.vec'notIn' @:: Lens' UInt32Rules (Data.Vector.Unboxed.Vector Data.Word.Word32)@
         * 'Proto.Validate.Validate_Fields.ignoreEmpty' @:: Lens' UInt32Rules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ignoreEmpty' @:: Lens' UInt32Rules (Prelude.Maybe Prelude.Bool)@ -}
data UInt32Rules
  = UInt32Rules'_constructor {_UInt32Rules'const :: !(Prelude.Maybe Data.Word.Word32),
                              _UInt32Rules'lt :: !(Prelude.Maybe Data.Word.Word32),
                              _UInt32Rules'lte :: !(Prelude.Maybe Data.Word.Word32),
                              _UInt32Rules'gt :: !(Prelude.Maybe Data.Word.Word32),
                              _UInt32Rules'gte :: !(Prelude.Maybe Data.Word.Word32),
                              _UInt32Rules'in' :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                              _UInt32Rules'notIn :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                              _UInt32Rules'ignoreEmpty :: !(Prelude.Maybe Prelude.Bool),
                              _UInt32Rules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UInt32Rules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UInt32Rules "const" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt32Rules'const (\ x__ y__ -> x__ {_UInt32Rules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UInt32Rules "maybe'const" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt32Rules'const (\ x__ y__ -> x__ {_UInt32Rules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UInt32Rules "lt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt32Rules'lt (\ x__ y__ -> x__ {_UInt32Rules'lt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UInt32Rules "maybe'lt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt32Rules'lt (\ x__ y__ -> x__ {_UInt32Rules'lt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UInt32Rules "lte" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt32Rules'lte (\ x__ y__ -> x__ {_UInt32Rules'lte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UInt32Rules "maybe'lte" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt32Rules'lte (\ x__ y__ -> x__ {_UInt32Rules'lte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UInt32Rules "gt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt32Rules'gt (\ x__ y__ -> x__ {_UInt32Rules'gt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UInt32Rules "maybe'gt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt32Rules'gt (\ x__ y__ -> x__ {_UInt32Rules'gt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UInt32Rules "gte" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt32Rules'gte (\ x__ y__ -> x__ {_UInt32Rules'gte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UInt32Rules "maybe'gte" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt32Rules'gte (\ x__ y__ -> x__ {_UInt32Rules'gte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UInt32Rules "in'" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt32Rules'in' (\ x__ y__ -> x__ {_UInt32Rules'in' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField UInt32Rules "vec'in'" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt32Rules'in' (\ x__ y__ -> x__ {_UInt32Rules'in' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UInt32Rules "notIn" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt32Rules'notIn (\ x__ y__ -> x__ {_UInt32Rules'notIn = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField UInt32Rules "vec'notIn" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt32Rules'notIn (\ x__ y__ -> x__ {_UInt32Rules'notIn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UInt32Rules "ignoreEmpty" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt32Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_UInt32Rules'ignoreEmpty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UInt32Rules "maybe'ignoreEmpty" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt32Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_UInt32Rules'ignoreEmpty = y__}))
        Prelude.id
instance Data.ProtoLens.Message UInt32Rules where
  messageName _ = Data.Text.pack "validate.UInt32Rules"
  packedMessageDescriptor _
    = "\n\
      \\vUInt32Rules\DC2\DC4\n\
      \\ENQconst\CAN\SOH \SOH(\rR\ENQconst\DC2\SO\n\
      \\STXlt\CAN\STX \SOH(\rR\STXlt\DC2\DLE\n\
      \\ETXlte\CAN\ETX \SOH(\rR\ETXlte\DC2\SO\n\
      \\STXgt\CAN\EOT \SOH(\rR\STXgt\DC2\DLE\n\
      \\ETXgte\CAN\ENQ \SOH(\rR\ETXgte\DC2\SO\n\
      \\STXin\CAN\ACK \ETX(\rR\STXin\DC2\NAK\n\
      \\ACKnot_in\CAN\a \ETX(\rR\ENQnotIn\DC2!\n\
      \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor UInt32Rules
        lt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lt")) ::
              Data.ProtoLens.FieldDescriptor UInt32Rules
        lte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lte")) ::
              Data.ProtoLens.FieldDescriptor UInt32Rules
        gt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gt")) ::
              Data.ProtoLens.FieldDescriptor UInt32Rules
        gte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gte")) ::
              Data.ProtoLens.FieldDescriptor UInt32Rules
        in'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"in'")) ::
              Data.ProtoLens.FieldDescriptor UInt32Rules
        notIn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"notIn")) ::
              Data.ProtoLens.FieldDescriptor UInt32Rules
        ignoreEmpty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_empty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ignoreEmpty")) ::
              Data.ProtoLens.FieldDescriptor UInt32Rules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, const__field_descriptor),
           (Data.ProtoLens.Tag 2, lt__field_descriptor),
           (Data.ProtoLens.Tag 3, lte__field_descriptor),
           (Data.ProtoLens.Tag 4, gt__field_descriptor),
           (Data.ProtoLens.Tag 5, gte__field_descriptor),
           (Data.ProtoLens.Tag 6, in'__field_descriptor),
           (Data.ProtoLens.Tag 7, notIn__field_descriptor),
           (Data.ProtoLens.Tag 8, ignoreEmpty__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UInt32Rules'_unknownFields
        (\ x__ y__ -> x__ {_UInt32Rules'_unknownFields = y__})
  defMessage
    = UInt32Rules'_constructor
        {_UInt32Rules'const = Prelude.Nothing,
         _UInt32Rules'lt = Prelude.Nothing,
         _UInt32Rules'lte = Prelude.Nothing,
         _UInt32Rules'gt = Prelude.Nothing,
         _UInt32Rules'gte = Prelude.Nothing,
         _UInt32Rules'in' = Data.Vector.Generic.empty,
         _UInt32Rules'notIn = Data.Vector.Generic.empty,
         _UInt32Rules'ignoreEmpty = Prelude.Nothing,
         _UInt32Rules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UInt32Rules
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
                -> Data.ProtoLens.Encoding.Bytes.Parser UInt32Rules
        loop x mutable'in' mutable'notIn
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'in')
                      frozen'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'notIn)
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
                              (Data.ProtoLens.Field.field @"vec'in'")
                              frozen'in'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'notIn") frozen'notIn x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "const"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                                  mutable'in'
                                  mutable'notIn
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "lt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lt") y x)
                                  mutable'in'
                                  mutable'notIn
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "lte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lte") y x)
                                  mutable'in'
                                  mutable'notIn
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gt") y x)
                                  mutable'in'
                                  mutable'notIn
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gte") y x)
                                  mutable'in'
                                  mutable'notIn
                        48
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'in' y)
                                loop x v mutable'notIn
                        50
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'in')
                                loop x y mutable'notIn
                        56
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "not_in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'notIn y)
                                loop x mutable'in' v
                        58
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "not_in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'notIn)
                                loop x mutable'in' y
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_empty"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ignoreEmpty") y x)
                                  mutable'in'
                                  mutable'notIn
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'in'
                                  mutable'notIn
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'in' mutable'notIn)
          "UInt32Rules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lte") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gt") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gte") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                      Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                       ((Prelude..)
                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                          Prelude.fromIntegral
                                          _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'in'") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                          ((Prelude..)
                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                             Prelude.fromIntegral
                                             _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'notIn") _x))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'ignoreEmpty") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (\ b -> if b then 1 else 0)
                                               _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData UInt32Rules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UInt32Rules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UInt32Rules'const x__)
                (Control.DeepSeq.deepseq
                   (_UInt32Rules'lt x__)
                   (Control.DeepSeq.deepseq
                      (_UInt32Rules'lte x__)
                      (Control.DeepSeq.deepseq
                         (_UInt32Rules'gt x__)
                         (Control.DeepSeq.deepseq
                            (_UInt32Rules'gte x__)
                            (Control.DeepSeq.deepseq
                               (_UInt32Rules'in' x__)
                               (Control.DeepSeq.deepseq
                                  (_UInt32Rules'notIn x__)
                                  (Control.DeepSeq.deepseq (_UInt32Rules'ignoreEmpty x__) ()))))))))
{- | Fields :
     
         * 'Proto.Validate.Validate_Fields.const' @:: Lens' UInt64Rules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'const' @:: Lens' UInt64Rules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.lt' @:: Lens' UInt64Rules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'lt' @:: Lens' UInt64Rules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.lte' @:: Lens' UInt64Rules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'lte' @:: Lens' UInt64Rules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.gt' @:: Lens' UInt64Rules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'gt' @:: Lens' UInt64Rules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.gte' @:: Lens' UInt64Rules Data.Word.Word64@
         * 'Proto.Validate.Validate_Fields.maybe'gte' @:: Lens' UInt64Rules (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.in'' @:: Lens' UInt64Rules [Data.Word.Word64]@
         * 'Proto.Validate.Validate_Fields.vec'in'' @:: Lens' UInt64Rules (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.notIn' @:: Lens' UInt64Rules [Data.Word.Word64]@
         * 'Proto.Validate.Validate_Fields.vec'notIn' @:: Lens' UInt64Rules (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Validate.Validate_Fields.ignoreEmpty' @:: Lens' UInt64Rules Prelude.Bool@
         * 'Proto.Validate.Validate_Fields.maybe'ignoreEmpty' @:: Lens' UInt64Rules (Prelude.Maybe Prelude.Bool)@ -}
data UInt64Rules
  = UInt64Rules'_constructor {_UInt64Rules'const :: !(Prelude.Maybe Data.Word.Word64),
                              _UInt64Rules'lt :: !(Prelude.Maybe Data.Word.Word64),
                              _UInt64Rules'lte :: !(Prelude.Maybe Data.Word.Word64),
                              _UInt64Rules'gt :: !(Prelude.Maybe Data.Word.Word64),
                              _UInt64Rules'gte :: !(Prelude.Maybe Data.Word.Word64),
                              _UInt64Rules'in' :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                              _UInt64Rules'notIn :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                              _UInt64Rules'ignoreEmpty :: !(Prelude.Maybe Prelude.Bool),
                              _UInt64Rules'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UInt64Rules where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UInt64Rules "const" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt64Rules'const (\ x__ y__ -> x__ {_UInt64Rules'const = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UInt64Rules "maybe'const" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt64Rules'const (\ x__ y__ -> x__ {_UInt64Rules'const = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UInt64Rules "lt" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt64Rules'lt (\ x__ y__ -> x__ {_UInt64Rules'lt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UInt64Rules "maybe'lt" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt64Rules'lt (\ x__ y__ -> x__ {_UInt64Rules'lt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UInt64Rules "lte" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt64Rules'lte (\ x__ y__ -> x__ {_UInt64Rules'lte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UInt64Rules "maybe'lte" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt64Rules'lte (\ x__ y__ -> x__ {_UInt64Rules'lte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UInt64Rules "gt" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt64Rules'gt (\ x__ y__ -> x__ {_UInt64Rules'gt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UInt64Rules "maybe'gt" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt64Rules'gt (\ x__ y__ -> x__ {_UInt64Rules'gt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UInt64Rules "gte" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt64Rules'gte (\ x__ y__ -> x__ {_UInt64Rules'gte = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UInt64Rules "maybe'gte" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt64Rules'gte (\ x__ y__ -> x__ {_UInt64Rules'gte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UInt64Rules "in'" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt64Rules'in' (\ x__ y__ -> x__ {_UInt64Rules'in' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField UInt64Rules "vec'in'" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt64Rules'in' (\ x__ y__ -> x__ {_UInt64Rules'in' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UInt64Rules "notIn" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt64Rules'notIn (\ x__ y__ -> x__ {_UInt64Rules'notIn = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField UInt64Rules "vec'notIn" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt64Rules'notIn (\ x__ y__ -> x__ {_UInt64Rules'notIn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UInt64Rules "ignoreEmpty" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt64Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_UInt64Rules'ignoreEmpty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UInt64Rules "maybe'ignoreEmpty" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt64Rules'ignoreEmpty
           (\ x__ y__ -> x__ {_UInt64Rules'ignoreEmpty = y__}))
        Prelude.id
instance Data.ProtoLens.Message UInt64Rules where
  messageName _ = Data.Text.pack "validate.UInt64Rules"
  packedMessageDescriptor _
    = "\n\
      \\vUInt64Rules\DC2\DC4\n\
      \\ENQconst\CAN\SOH \SOH(\EOTR\ENQconst\DC2\SO\n\
      \\STXlt\CAN\STX \SOH(\EOTR\STXlt\DC2\DLE\n\
      \\ETXlte\CAN\ETX \SOH(\EOTR\ETXlte\DC2\SO\n\
      \\STXgt\CAN\EOT \SOH(\EOTR\STXgt\DC2\DLE\n\
      \\ETXgte\CAN\ENQ \SOH(\EOTR\ETXgte\DC2\SO\n\
      \\STXin\CAN\ACK \ETX(\EOTR\STXin\DC2\NAK\n\
      \\ACKnot_in\CAN\a \ETX(\EOTR\ENQnotIn\DC2!\n\
      \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        const__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'const")) ::
              Data.ProtoLens.FieldDescriptor UInt64Rules
        lt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lt")) ::
              Data.ProtoLens.FieldDescriptor UInt64Rules
        lte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lte")) ::
              Data.ProtoLens.FieldDescriptor UInt64Rules
        gt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gt")) ::
              Data.ProtoLens.FieldDescriptor UInt64Rules
        gte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gte")) ::
              Data.ProtoLens.FieldDescriptor UInt64Rules
        in'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"in'")) ::
              Data.ProtoLens.FieldDescriptor UInt64Rules
        notIn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_in"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"notIn")) ::
              Data.ProtoLens.FieldDescriptor UInt64Rules
        ignoreEmpty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_empty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ignoreEmpty")) ::
              Data.ProtoLens.FieldDescriptor UInt64Rules
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, const__field_descriptor),
           (Data.ProtoLens.Tag 2, lt__field_descriptor),
           (Data.ProtoLens.Tag 3, lte__field_descriptor),
           (Data.ProtoLens.Tag 4, gt__field_descriptor),
           (Data.ProtoLens.Tag 5, gte__field_descriptor),
           (Data.ProtoLens.Tag 6, in'__field_descriptor),
           (Data.ProtoLens.Tag 7, notIn__field_descriptor),
           (Data.ProtoLens.Tag 8, ignoreEmpty__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UInt64Rules'_unknownFields
        (\ x__ y__ -> x__ {_UInt64Rules'_unknownFields = y__})
  defMessage
    = UInt64Rules'_constructor
        {_UInt64Rules'const = Prelude.Nothing,
         _UInt64Rules'lt = Prelude.Nothing,
         _UInt64Rules'lte = Prelude.Nothing,
         _UInt64Rules'gt = Prelude.Nothing,
         _UInt64Rules'gte = Prelude.Nothing,
         _UInt64Rules'in' = Data.Vector.Generic.empty,
         _UInt64Rules'notIn = Data.Vector.Generic.empty,
         _UInt64Rules'ignoreEmpty = Prelude.Nothing,
         _UInt64Rules'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UInt64Rules
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                -> Data.ProtoLens.Encoding.Bytes.Parser UInt64Rules
        loop x mutable'in' mutable'notIn
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'in')
                      frozen'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'notIn)
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
                              (Data.ProtoLens.Field.field @"vec'in'")
                              frozen'in'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'notIn") frozen'notIn x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "const"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"const") y x)
                                  mutable'in'
                                  mutable'notIn
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "lt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lt") y x)
                                  mutable'in'
                                  mutable'notIn
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "lte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lte") y x)
                                  mutable'in'
                                  mutable'notIn
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "gt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gt") y x)
                                  mutable'in'
                                  mutable'notIn
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "gte"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gte") y x)
                                  mutable'in'
                                  mutable'notIn
                        48
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'in' y)
                                loop x v mutable'notIn
                        50
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'in')
                                loop x y mutable'notIn
                        56
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "not_in"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'notIn y)
                                loop x mutable'in' v
                        58
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "not_in"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'notIn)
                                loop x mutable'in' y
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_empty"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ignoreEmpty") y x)
                                  mutable'in'
                                  mutable'notIn
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'in'
                                  mutable'notIn
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'in' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'notIn <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'in' mutable'notIn)
          "UInt64Rules"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'const") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lte") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gt") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gte") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'in'") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'notIn") _x))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'ignoreEmpty") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (\ b -> if b then 1 else 0)
                                               _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData UInt64Rules where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UInt64Rules'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UInt64Rules'const x__)
                (Control.DeepSeq.deepseq
                   (_UInt64Rules'lt x__)
                   (Control.DeepSeq.deepseq
                      (_UInt64Rules'lte x__)
                      (Control.DeepSeq.deepseq
                         (_UInt64Rules'gt x__)
                         (Control.DeepSeq.deepseq
                            (_UInt64Rules'gte x__)
                            (Control.DeepSeq.deepseq
                               (_UInt64Rules'in' x__)
                               (Control.DeepSeq.deepseq
                                  (_UInt64Rules'notIn x__)
                                  (Control.DeepSeq.deepseq (_UInt64Rules'ignoreEmpty x__) ()))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\ETBvalidate/validate.proto\DC2\bvalidate\SUB google/protobuf/descriptor.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\USgoogle/protobuf/timestamp.proto\"\200\b\n\
    \\n\
    \FieldRules\DC20\n\
    \\amessage\CAN\DC1 \SOH(\v2\SYN.validate.MessageRulesR\amessage\DC2,\n\
    \\ENQfloat\CAN\SOH \SOH(\v2\DC4.validate.FloatRulesH\NULR\ENQfloat\DC2/\n\
    \\ACKdouble\CAN\STX \SOH(\v2\NAK.validate.DoubleRulesH\NULR\ACKdouble\DC2,\n\
    \\ENQint32\CAN\ETX \SOH(\v2\DC4.validate.Int32RulesH\NULR\ENQint32\DC2,\n\
    \\ENQint64\CAN\EOT \SOH(\v2\DC4.validate.Int64RulesH\NULR\ENQint64\DC2/\n\
    \\ACKuint32\CAN\ENQ \SOH(\v2\NAK.validate.UInt32RulesH\NULR\ACKuint32\DC2/\n\
    \\ACKuint64\CAN\ACK \SOH(\v2\NAK.validate.UInt64RulesH\NULR\ACKuint64\DC2/\n\
    \\ACKsint32\CAN\a \SOH(\v2\NAK.validate.SInt32RulesH\NULR\ACKsint32\DC2/\n\
    \\ACKsint64\CAN\b \SOH(\v2\NAK.validate.SInt64RulesH\NULR\ACKsint64\DC22\n\
    \\afixed32\CAN\t \SOH(\v2\SYN.validate.Fixed32RulesH\NULR\afixed32\DC22\n\
    \\afixed64\CAN\n\
    \ \SOH(\v2\SYN.validate.Fixed64RulesH\NULR\afixed64\DC25\n\
    \\bsfixed32\CAN\v \SOH(\v2\ETB.validate.SFixed32RulesH\NULR\bsfixed32\DC25\n\
    \\bsfixed64\CAN\f \SOH(\v2\ETB.validate.SFixed64RulesH\NULR\bsfixed64\DC2)\n\
    \\EOTbool\CAN\r \SOH(\v2\DC3.validate.BoolRulesH\NULR\EOTbool\DC2/\n\
    \\ACKstring\CAN\SO \SOH(\v2\NAK.validate.StringRulesH\NULR\ACKstring\DC2,\n\
    \\ENQbytes\CAN\SI \SOH(\v2\DC4.validate.BytesRulesH\NULR\ENQbytes\DC2)\n\
    \\EOTenum\CAN\DLE \SOH(\v2\DC3.validate.EnumRulesH\NULR\EOTenum\DC25\n\
    \\brepeated\CAN\DC2 \SOH(\v2\ETB.validate.RepeatedRulesH\NULR\brepeated\DC2&\n\
    \\ETXmap\CAN\DC3 \SOH(\v2\DC2.validate.MapRulesH\NULR\ETXmap\DC2&\n\
    \\ETXany\CAN\DC4 \SOH(\v2\DC2.validate.AnyRulesH\NULR\ETXany\DC25\n\
    \\bduration\CAN\NAK \SOH(\v2\ETB.validate.DurationRulesH\NULR\bduration\DC28\n\
    \\ttimestamp\CAN\SYN \SOH(\v2\CAN.validate.TimestampRulesH\NULR\ttimestampB\ACK\n\
    \\EOTtype\"\176\SOH\n\
    \\n\
    \FloatRules\DC2\DC4\n\
    \\ENQconst\CAN\SOH \SOH(\STXR\ENQconst\DC2\SO\n\
    \\STXlt\CAN\STX \SOH(\STXR\STXlt\DC2\DLE\n\
    \\ETXlte\CAN\ETX \SOH(\STXR\ETXlte\DC2\SO\n\
    \\STXgt\CAN\EOT \SOH(\STXR\STXgt\DC2\DLE\n\
    \\ETXgte\CAN\ENQ \SOH(\STXR\ETXgte\DC2\SO\n\
    \\STXin\CAN\ACK \ETX(\STXR\STXin\DC2\NAK\n\
    \\ACKnot_in\CAN\a \ETX(\STXR\ENQnotIn\DC2!\n\
    \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty\"\177\SOH\n\
    \\vDoubleRules\DC2\DC4\n\
    \\ENQconst\CAN\SOH \SOH(\SOHR\ENQconst\DC2\SO\n\
    \\STXlt\CAN\STX \SOH(\SOHR\STXlt\DC2\DLE\n\
    \\ETXlte\CAN\ETX \SOH(\SOHR\ETXlte\DC2\SO\n\
    \\STXgt\CAN\EOT \SOH(\SOHR\STXgt\DC2\DLE\n\
    \\ETXgte\CAN\ENQ \SOH(\SOHR\ETXgte\DC2\SO\n\
    \\STXin\CAN\ACK \ETX(\SOHR\STXin\DC2\NAK\n\
    \\ACKnot_in\CAN\a \ETX(\SOHR\ENQnotIn\DC2!\n\
    \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty\"\176\SOH\n\
    \\n\
    \Int32Rules\DC2\DC4\n\
    \\ENQconst\CAN\SOH \SOH(\ENQR\ENQconst\DC2\SO\n\
    \\STXlt\CAN\STX \SOH(\ENQR\STXlt\DC2\DLE\n\
    \\ETXlte\CAN\ETX \SOH(\ENQR\ETXlte\DC2\SO\n\
    \\STXgt\CAN\EOT \SOH(\ENQR\STXgt\DC2\DLE\n\
    \\ETXgte\CAN\ENQ \SOH(\ENQR\ETXgte\DC2\SO\n\
    \\STXin\CAN\ACK \ETX(\ENQR\STXin\DC2\NAK\n\
    \\ACKnot_in\CAN\a \ETX(\ENQR\ENQnotIn\DC2!\n\
    \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty\"\176\SOH\n\
    \\n\
    \Int64Rules\DC2\DC4\n\
    \\ENQconst\CAN\SOH \SOH(\ETXR\ENQconst\DC2\SO\n\
    \\STXlt\CAN\STX \SOH(\ETXR\STXlt\DC2\DLE\n\
    \\ETXlte\CAN\ETX \SOH(\ETXR\ETXlte\DC2\SO\n\
    \\STXgt\CAN\EOT \SOH(\ETXR\STXgt\DC2\DLE\n\
    \\ETXgte\CAN\ENQ \SOH(\ETXR\ETXgte\DC2\SO\n\
    \\STXin\CAN\ACK \ETX(\ETXR\STXin\DC2\NAK\n\
    \\ACKnot_in\CAN\a \ETX(\ETXR\ENQnotIn\DC2!\n\
    \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty\"\177\SOH\n\
    \\vUInt32Rules\DC2\DC4\n\
    \\ENQconst\CAN\SOH \SOH(\rR\ENQconst\DC2\SO\n\
    \\STXlt\CAN\STX \SOH(\rR\STXlt\DC2\DLE\n\
    \\ETXlte\CAN\ETX \SOH(\rR\ETXlte\DC2\SO\n\
    \\STXgt\CAN\EOT \SOH(\rR\STXgt\DC2\DLE\n\
    \\ETXgte\CAN\ENQ \SOH(\rR\ETXgte\DC2\SO\n\
    \\STXin\CAN\ACK \ETX(\rR\STXin\DC2\NAK\n\
    \\ACKnot_in\CAN\a \ETX(\rR\ENQnotIn\DC2!\n\
    \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty\"\177\SOH\n\
    \\vUInt64Rules\DC2\DC4\n\
    \\ENQconst\CAN\SOH \SOH(\EOTR\ENQconst\DC2\SO\n\
    \\STXlt\CAN\STX \SOH(\EOTR\STXlt\DC2\DLE\n\
    \\ETXlte\CAN\ETX \SOH(\EOTR\ETXlte\DC2\SO\n\
    \\STXgt\CAN\EOT \SOH(\EOTR\STXgt\DC2\DLE\n\
    \\ETXgte\CAN\ENQ \SOH(\EOTR\ETXgte\DC2\SO\n\
    \\STXin\CAN\ACK \ETX(\EOTR\STXin\DC2\NAK\n\
    \\ACKnot_in\CAN\a \ETX(\EOTR\ENQnotIn\DC2!\n\
    \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty\"\177\SOH\n\
    \\vSInt32Rules\DC2\DC4\n\
    \\ENQconst\CAN\SOH \SOH(\DC1R\ENQconst\DC2\SO\n\
    \\STXlt\CAN\STX \SOH(\DC1R\STXlt\DC2\DLE\n\
    \\ETXlte\CAN\ETX \SOH(\DC1R\ETXlte\DC2\SO\n\
    \\STXgt\CAN\EOT \SOH(\DC1R\STXgt\DC2\DLE\n\
    \\ETXgte\CAN\ENQ \SOH(\DC1R\ETXgte\DC2\SO\n\
    \\STXin\CAN\ACK \ETX(\DC1R\STXin\DC2\NAK\n\
    \\ACKnot_in\CAN\a \ETX(\DC1R\ENQnotIn\DC2!\n\
    \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty\"\177\SOH\n\
    \\vSInt64Rules\DC2\DC4\n\
    \\ENQconst\CAN\SOH \SOH(\DC2R\ENQconst\DC2\SO\n\
    \\STXlt\CAN\STX \SOH(\DC2R\STXlt\DC2\DLE\n\
    \\ETXlte\CAN\ETX \SOH(\DC2R\ETXlte\DC2\SO\n\
    \\STXgt\CAN\EOT \SOH(\DC2R\STXgt\DC2\DLE\n\
    \\ETXgte\CAN\ENQ \SOH(\DC2R\ETXgte\DC2\SO\n\
    \\STXin\CAN\ACK \ETX(\DC2R\STXin\DC2\NAK\n\
    \\ACKnot_in\CAN\a \ETX(\DC2R\ENQnotIn\DC2!\n\
    \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty\"\178\SOH\n\
    \\fFixed32Rules\DC2\DC4\n\
    \\ENQconst\CAN\SOH \SOH(\aR\ENQconst\DC2\SO\n\
    \\STXlt\CAN\STX \SOH(\aR\STXlt\DC2\DLE\n\
    \\ETXlte\CAN\ETX \SOH(\aR\ETXlte\DC2\SO\n\
    \\STXgt\CAN\EOT \SOH(\aR\STXgt\DC2\DLE\n\
    \\ETXgte\CAN\ENQ \SOH(\aR\ETXgte\DC2\SO\n\
    \\STXin\CAN\ACK \ETX(\aR\STXin\DC2\NAK\n\
    \\ACKnot_in\CAN\a \ETX(\aR\ENQnotIn\DC2!\n\
    \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty\"\178\SOH\n\
    \\fFixed64Rules\DC2\DC4\n\
    \\ENQconst\CAN\SOH \SOH(\ACKR\ENQconst\DC2\SO\n\
    \\STXlt\CAN\STX \SOH(\ACKR\STXlt\DC2\DLE\n\
    \\ETXlte\CAN\ETX \SOH(\ACKR\ETXlte\DC2\SO\n\
    \\STXgt\CAN\EOT \SOH(\ACKR\STXgt\DC2\DLE\n\
    \\ETXgte\CAN\ENQ \SOH(\ACKR\ETXgte\DC2\SO\n\
    \\STXin\CAN\ACK \ETX(\ACKR\STXin\DC2\NAK\n\
    \\ACKnot_in\CAN\a \ETX(\ACKR\ENQnotIn\DC2!\n\
    \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty\"\179\SOH\n\
    \\rSFixed32Rules\DC2\DC4\n\
    \\ENQconst\CAN\SOH \SOH(\SIR\ENQconst\DC2\SO\n\
    \\STXlt\CAN\STX \SOH(\SIR\STXlt\DC2\DLE\n\
    \\ETXlte\CAN\ETX \SOH(\SIR\ETXlte\DC2\SO\n\
    \\STXgt\CAN\EOT \SOH(\SIR\STXgt\DC2\DLE\n\
    \\ETXgte\CAN\ENQ \SOH(\SIR\ETXgte\DC2\SO\n\
    \\STXin\CAN\ACK \ETX(\SIR\STXin\DC2\NAK\n\
    \\ACKnot_in\CAN\a \ETX(\SIR\ENQnotIn\DC2!\n\
    \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty\"\179\SOH\n\
    \\rSFixed64Rules\DC2\DC4\n\
    \\ENQconst\CAN\SOH \SOH(\DLER\ENQconst\DC2\SO\n\
    \\STXlt\CAN\STX \SOH(\DLER\STXlt\DC2\DLE\n\
    \\ETXlte\CAN\ETX \SOH(\DLER\ETXlte\DC2\SO\n\
    \\STXgt\CAN\EOT \SOH(\DLER\STXgt\DC2\DLE\n\
    \\ETXgte\CAN\ENQ \SOH(\DLER\ETXgte\DC2\SO\n\
    \\STXin\CAN\ACK \ETX(\DLER\STXin\DC2\NAK\n\
    \\ACKnot_in\CAN\a \ETX(\DLER\ENQnotIn\DC2!\n\
    \\fignore_empty\CAN\b \SOH(\bR\vignoreEmpty\"!\n\
    \\tBoolRules\DC2\DC4\n\
    \\ENQconst\CAN\SOH \SOH(\bR\ENQconst\"\212\ENQ\n\
    \\vStringRules\DC2\DC4\n\
    \\ENQconst\CAN\SOH \SOH(\tR\ENQconst\DC2\DLE\n\
    \\ETXlen\CAN\DC3 \SOH(\EOTR\ETXlen\DC2\ETB\n\
    \\amin_len\CAN\STX \SOH(\EOTR\ACKminLen\DC2\ETB\n\
    \\amax_len\CAN\ETX \SOH(\EOTR\ACKmaxLen\DC2\ESC\n\
    \\tlen_bytes\CAN\DC4 \SOH(\EOTR\blenBytes\DC2\ESC\n\
    \\tmin_bytes\CAN\EOT \SOH(\EOTR\bminBytes\DC2\ESC\n\
    \\tmax_bytes\CAN\ENQ \SOH(\EOTR\bmaxBytes\DC2\CAN\n\
    \\apattern\CAN\ACK \SOH(\tR\apattern\DC2\SYN\n\
    \\ACKprefix\CAN\a \SOH(\tR\ACKprefix\DC2\SYN\n\
    \\ACKsuffix\CAN\b \SOH(\tR\ACKsuffix\DC2\SUB\n\
    \\bcontains\CAN\t \SOH(\tR\bcontains\DC2!\n\
    \\fnot_contains\CAN\ETB \SOH(\tR\vnotContains\DC2\SO\n\
    \\STXin\CAN\n\
    \ \ETX(\tR\STXin\DC2\NAK\n\
    \\ACKnot_in\CAN\v \ETX(\tR\ENQnotIn\DC2\SYN\n\
    \\ENQemail\CAN\f \SOH(\bH\NULR\ENQemail\DC2\FS\n\
    \\bhostname\CAN\r \SOH(\bH\NULR\bhostname\DC2\DLE\n\
    \\STXip\CAN\SO \SOH(\bH\NULR\STXip\DC2\DC4\n\
    \\EOTipv4\CAN\SI \SOH(\bH\NULR\EOTipv4\DC2\DC4\n\
    \\EOTipv6\CAN\DLE \SOH(\bH\NULR\EOTipv6\DC2\DC2\n\
    \\ETXuri\CAN\DC1 \SOH(\bH\NULR\ETXuri\DC2\EM\n\
    \\auri_ref\CAN\DC2 \SOH(\bH\NULR\ACKuriRef\DC2\SUB\n\
    \\aaddress\CAN\NAK \SOH(\bH\NULR\aaddress\DC2\DC4\n\
    \\EOTuuid\CAN\SYN \SOH(\bH\NULR\EOTuuid\DC2@\n\
    \\DLEwell_known_regex\CAN\CAN \SOH(\SO2\DC4.validate.KnownRegexH\NULR\SOwellKnownRegex\DC2\FS\n\
    \\ACKstrict\CAN\EM \SOH(\b:\EOTtrueR\ACKstrict\DC2!\n\
    \\fignore_empty\CAN\SUB \SOH(\bR\vignoreEmptyB\f\n\
    \\n\
    \well_known\"\226\STX\n\
    \\n\
    \BytesRules\DC2\DC4\n\
    \\ENQconst\CAN\SOH \SOH(\fR\ENQconst\DC2\DLE\n\
    \\ETXlen\CAN\r \SOH(\EOTR\ETXlen\DC2\ETB\n\
    \\amin_len\CAN\STX \SOH(\EOTR\ACKminLen\DC2\ETB\n\
    \\amax_len\CAN\ETX \SOH(\EOTR\ACKmaxLen\DC2\CAN\n\
    \\apattern\CAN\EOT \SOH(\tR\apattern\DC2\SYN\n\
    \\ACKprefix\CAN\ENQ \SOH(\fR\ACKprefix\DC2\SYN\n\
    \\ACKsuffix\CAN\ACK \SOH(\fR\ACKsuffix\DC2\SUB\n\
    \\bcontains\CAN\a \SOH(\fR\bcontains\DC2\SO\n\
    \\STXin\CAN\b \ETX(\fR\STXin\DC2\NAK\n\
    \\ACKnot_in\CAN\t \ETX(\fR\ENQnotIn\DC2\DLE\n\
    \\STXip\CAN\n\
    \ \SOH(\bH\NULR\STXip\DC2\DC4\n\
    \\EOTipv4\CAN\v \SOH(\bH\NULR\EOTipv4\DC2\DC4\n\
    \\EOTipv6\CAN\f \SOH(\bH\NULR\EOTipv6\DC2!\n\
    \\fignore_empty\CAN\SO \SOH(\bR\vignoreEmptyB\f\n\
    \\n\
    \well_known\"k\n\
    \\tEnumRules\DC2\DC4\n\
    \\ENQconst\CAN\SOH \SOH(\ENQR\ENQconst\DC2!\n\
    \\fdefined_only\CAN\STX \SOH(\bR\vdefinedOnly\DC2\SO\n\
    \\STXin\CAN\ETX \ETX(\ENQR\STXin\DC2\NAK\n\
    \\ACKnot_in\CAN\EOT \ETX(\ENQR\ENQnotIn\">\n\
    \\fMessageRules\DC2\DC2\n\
    \\EOTskip\CAN\SOH \SOH(\bR\EOTskip\DC2\SUB\n\
    \\brequired\CAN\STX \SOH(\bR\brequired\"\176\SOH\n\
    \\rRepeatedRules\DC2\ESC\n\
    \\tmin_items\CAN\SOH \SOH(\EOTR\bminItems\DC2\ESC\n\
    \\tmax_items\CAN\STX \SOH(\EOTR\bmaxItems\DC2\SYN\n\
    \\ACKunique\CAN\ETX \SOH(\bR\ACKunique\DC2*\n\
    \\ENQitems\CAN\EOT \SOH(\v2\DC4.validate.FieldRulesR\ENQitems\DC2!\n\
    \\fignore_empty\CAN\ENQ \SOH(\bR\vignoreEmpty\"\220\SOH\n\
    \\bMapRules\DC2\ESC\n\
    \\tmin_pairs\CAN\SOH \SOH(\EOTR\bminPairs\DC2\ESC\n\
    \\tmax_pairs\CAN\STX \SOH(\EOTR\bmaxPairs\DC2\ESC\n\
    \\tno_sparse\CAN\ETX \SOH(\bR\bnoSparse\DC2(\n\
    \\EOTkeys\CAN\EOT \SOH(\v2\DC4.validate.FieldRulesR\EOTkeys\DC2,\n\
    \\ACKvalues\CAN\ENQ \SOH(\v2\DC4.validate.FieldRulesR\ACKvalues\DC2!\n\
    \\fignore_empty\CAN\ACK \SOH(\bR\vignoreEmpty\"M\n\
    \\bAnyRules\DC2\SUB\n\
    \\brequired\CAN\SOH \SOH(\bR\brequired\DC2\SO\n\
    \\STXin\CAN\STX \ETX(\tR\STXin\DC2\NAK\n\
    \\ACKnot_in\CAN\ETX \ETX(\tR\ENQnotIn\"\233\STX\n\
    \\rDurationRules\DC2\SUB\n\
    \\brequired\CAN\SOH \SOH(\bR\brequired\DC2/\n\
    \\ENQconst\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\ENQconst\DC2)\n\
    \\STXlt\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\STXlt\DC2+\n\
    \\ETXlte\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\ETXlte\DC2)\n\
    \\STXgt\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\STXgt\DC2+\n\
    \\ETXgte\CAN\ACK \SOH(\v2\EM.google.protobuf.DurationR\ETXgte\DC2)\n\
    \\STXin\CAN\a \ETX(\v2\EM.google.protobuf.DurationR\STXin\DC20\n\
    \\ACKnot_in\CAN\b \ETX(\v2\EM.google.protobuf.DurationR\ENQnotIn\"\243\STX\n\
    \\SOTimestampRules\DC2\SUB\n\
    \\brequired\CAN\SOH \SOH(\bR\brequired\DC20\n\
    \\ENQconst\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\ENQconst\DC2*\n\
    \\STXlt\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\STXlt\DC2,\n\
    \\ETXlte\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\ETXlte\DC2*\n\
    \\STXgt\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\STXgt\DC2,\n\
    \\ETXgte\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\ETXgte\DC2\NAK\n\
    \\ACKlt_now\CAN\a \SOH(\bR\ENQltNow\DC2\NAK\n\
    \\ACKgt_now\CAN\b \SOH(\bR\ENQgtNow\DC21\n\
    \\ACKwithin\CAN\t \SOH(\v2\EM.google.protobuf.DurationR\ACKwithin*F\n\
    \\n\
    \KnownRegex\DC2\v\n\
    \\aUNKNOWN\DLE\NUL\DC2\DC4\n\
    \\DLEHTTP_HEADER_NAME\DLE\SOH\DC2\NAK\n\
    \\DC1HTTP_HEADER_VALUE\DLE\STX:<\n\
    \\bdisabled\CAN\175\b \SOH(\b\DC2\US.google.protobuf.MessageOptionsR\bdisabled::\n\
    \\aignored\CAN\176\b \SOH(\b\DC2\US.google.protobuf.MessageOptionsR\aignored::\n\
    \\brequired\CAN\175\b \SOH(\b\DC2\GS.google.protobuf.OneofOptionsR\brequired:J\n\
    \\ENQrules\CAN\175\b \SOH(\v2\DC4.validate.FieldRules\DC2\GS.google.protobuf.FieldOptionsR\ENQrulesBP\n\
    \\SUBio.envoyproxy.pgv.validateZ2github.com/envoyproxy/protoc-gen-validate/validateJ\244\157\STX\n\
    \\a\DC2\ENQ\NUL\NUL\222\ACK\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\DC1\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULI\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NULI\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL3\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\EOT\NUL3\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ACK\NUL*\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL)\n\
    \:\n\
    \\SOH\a\DC2\EOT\v\NUL\DC1\SOH\SUB/ Validation rules applied at the message level\n\
    \\n\
    \\148\SOH\n\
    \\STX\a\NUL\DC2\ETX\SO\EOT\"\SUB\136\SOH Disabled nullifies any validation rules for this message, including any\n\
    \ message fields associated with it that do support validation.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\NUL\STX\DC2\ETX\v\a%\n\
    \\n\
    \\n\
    \\ETX\a\NUL\EOT\DC2\ETX\SO\EOT\f\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ENQ\DC2\ETX\SO\r\DC1\n\
    \\n\
    \\n\
    \\ETX\a\NUL\SOH\DC2\ETX\SO\DC2\SUB\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ETX\DC2\ETX\SO\GS!\n\
    \L\n\
    \\STX\a\SOH\DC2\ETX\DLE\EOT!\SUBA Ignore skips generation of validation methods for this message.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\SOH\STX\DC2\ETX\v\a%\n\
    \\n\
    \\n\
    \\ETX\a\SOH\EOT\DC2\ETX\DLE\EOT\f\n\
    \\n\
    \\n\
    \\ETX\a\SOH\ENQ\DC2\ETX\DLE\r\DC1\n\
    \\n\
    \\n\
    \\ETX\a\SOH\SOH\DC2\ETX\DLE\DC2\EM\n\
    \\n\
    \\n\
    \\ETX\a\SOH\ETX\DC2\ETX\DLE\FS \n\
    \8\n\
    \\SOH\a\DC2\EOT\DC4\NUL\CAN\SOH\SUB- Validation rules applied at the oneof level\n\
    \\n\
    \\136\SOH\n\
    \\STX\a\STX\DC2\ETX\ETB\EOT\"\SUB} Required ensures that exactly one the field options in a oneof is set;\n\
    \ validation fails if no fields in the oneof are set.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\STX\STX\DC2\ETX\DC4\a#\n\
    \\n\
    \\n\
    \\ETX\a\STX\EOT\DC2\ETX\ETB\EOT\f\n\
    \\n\
    \\n\
    \\ETX\a\STX\ENQ\DC2\ETX\ETB\r\DC1\n\
    \\n\
    \\n\
    \\ETX\a\STX\SOH\DC2\ETX\ETB\DC2\SUB\n\
    \\n\
    \\n\
    \\ETX\a\STX\ETX\DC2\ETX\ETB\GS!\n\
    \8\n\
    \\SOH\a\DC2\EOT\ESC\NUL\US\SOH\SUB- Validation rules applied at the field level\n\
    \\n\
    \\130\SOH\n\
    \\STX\a\ETX\DC2\ETX\RS\EOT%\SUBw Rules specify the validations to be performed on this field. By default,\n\
    \ no validation is performed against a field.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\ETX\STX\DC2\ETX\ESC\a#\n\
    \\n\
    \\n\
    \\ETX\a\ETX\EOT\DC2\ETX\RS\EOT\f\n\
    \\n\
    \\n\
    \\ETX\a\ETX\ACK\DC2\ETX\RS\r\ETB\n\
    \\n\
    \\n\
    \\ETX\a\ETX\SOH\DC2\ETX\RS\CAN\GS\n\
    \\n\
    \\n\
    \\ETX\a\ETX\ETX\DC2\ETX\RS $\n\
    \\158\SOH\n\
    \\STX\EOT\NUL\DC2\EOT#\NULA\SOH\SUB\145\SOH FieldRules encapsulates the rules for each type of field. Depending on the\n\
    \ field, the correct set should be used to ensure proper validations.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX#\b\DC2\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX$\EOT'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX$\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX$\r\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX$\SUB!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX$$&\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT%\EOT@\ENQ\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX%\n\
    \\SO\n\
    \!\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX'\b#\SUB\DC4 Scalar Field Types\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX'\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX'\SYN\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX'!\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX(\b#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX(\b\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX(\SYN\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX(!\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX)\b#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX)\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX)\SYN\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX)!\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX*\b#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX*\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX*\SYN\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX*!\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX+\b#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX+\b\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX+\SYN\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX+!\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX,\b#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX,\b\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX,\SYN\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX,!\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX-\b#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETX-\b\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX-\SYN\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX-!\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX.\b#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\ETX.\b\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX.\SYN\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX.!\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETX/\b#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\ETX/\b\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETX/\SYN\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETX/!\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETX0\b$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\ETX0\b\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETX0\SYN\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETX0!#\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\v\DC2\ETX1\b$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ACK\DC2\ETX1\b\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\ETX1\SYN\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\ETX1!#\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\f\DC2\ETX2\b$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ACK\DC2\ETX2\b\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\ETX2\SYN\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\ETX2!#\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\r\DC2\ETX3\b$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\ACK\DC2\ETX3\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\SOH\DC2\ETX3\SYN\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\ETX\DC2\ETX3!#\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SO\DC2\ETX4\b$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\ACK\DC2\ETX4\b\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\SOH\DC2\ETX4\SYN\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\ETX\DC2\ETX4!#\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SI\DC2\ETX5\b$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\ACK\DC2\ETX5\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\SOH\DC2\ETX5\SYN\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\ETX\DC2\ETX5!#\n\
    \\"\n\
    \\EOT\EOT\NUL\STX\DLE\DC2\ETX8\b$\SUB\NAK Complex Field Types\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DLE\ACK\DC2\ETX8\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DLE\SOH\DC2\ETX8\SYN\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DLE\ETX\DC2\ETX8!#\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\DC1\DC2\ETX9\b$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC1\ACK\DC2\ETX9\b\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC1\SOH\DC2\ETX9\SYN\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC1\ETX\DC2\ETX9!#\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\DC2\DC2\ETX:\b$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC2\ACK\DC2\ETX:\b\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC2\SOH\DC2\ETX:\SYN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC2\ETX\DC2\ETX:!#\n\
    \%\n\
    \\EOT\EOT\NUL\STX\DC3\DC2\ETX=\b&\SUB\CAN Well-Known Field Types\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC3\ACK\DC2\ETX=\b\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC3\SOH\DC2\ETX=\ETB\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC3\ETX\DC2\ETX=#%\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\DC4\DC2\ETX>\b&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC4\ACK\DC2\ETX>\b\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC4\SOH\DC2\ETX>\ETB\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC4\ETX\DC2\ETX>#%\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NAK\DC2\ETX?\b&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NAK\ACK\DC2\ETX?\b\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NAK\SOH\DC2\ETX?\ETB \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NAK\ETX\DC2\ETX?#%\n\
    \L\n\
    \\STX\EOT\SOH\DC2\EOTD\NULe\SOH\SUB@ FloatRules describes the constraints applied to `float` values\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXD\b\DC2\n\
    \R\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXF\EOT\GS\SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETXF\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETXF\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXF\DC3\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXF\ESC\FS\n\
    \]\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXJ\EOT\SUB\SUBP Lt specifies that this field must be less than the specified value,\n\
    \ exclusive\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETXJ\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETXJ\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXJ\DC3\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXJ\CAN\EM\n\
    \j\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXN\EOT\ESC\SUB] Lte specifies that this field must be less than or equal to the\n\
    \ specified value, inclusive\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETXN\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETXN\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXN\DC3\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXN\EM\SUB\n\
    \\179\SOH\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETXS\EOT\SUB\SUB\165\SOH Gt specifies that this field must be greater than the specified value,\n\
    \ exclusive. If the value of Gt is larger than a specified Lt or Lte, the\n\
    \ range is reversed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETXS\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETXS\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETXS\DC3\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETXS\CAN\EM\n\
    \\193\SOH\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETXX\EOT\ESC\SUB\179\SOH Gte specifies that this field must be greater than or equal to the\n\
    \ specified value, inclusive. If the value of Gte is larger than a\n\
    \ specified Lt or Lte, the range is reversed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETXX\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETXX\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETXX\DC3\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETXX\EM\SUB\n\
    \Y\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX\\\EOT\SUB\SUBL In specifies that this field must be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\EOT\DC2\ETX\\\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX\\\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX\\\DC3\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX\\\CAN\EM\n\
    \^\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETX`\EOT\RS\SUBQ NotIn specifies that this field cannot be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\EOT\DC2\ETX`\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ENQ\DC2\ETX`\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETX`\DC3\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETX`\FS\GS\n\
    \\128\SOH\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETXd\EOT#\SUBs IgnoreEmpty specifies that the validation rules of this field should be\n\
    \ evaluated only if the field is not empty\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\EOT\DC2\ETXd\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ENQ\DC2\ETXd\r\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETXd\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETXd!\"\n\
    \O\n\
    \\STX\EOT\STX\DC2\ENQh\NUL\137\SOH\SOH\SUBB DoubleRules describes the constraints applied to `double` values\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXh\b\DC3\n\
    \R\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXj\EOT\RS\SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETXj\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXj\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXj\DC4\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXj\FS\GS\n\
    \]\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXn\EOT\ESC\SUBP Lt specifies that this field must be less than the specified value,\n\
    \ exclusive\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETXn\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXn\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXn\DC4\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXn\EM\SUB\n\
    \j\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETXr\EOT\FS\SUB] Lte specifies that this field must be less than or equal to the\n\
    \ specified value, inclusive\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETXr\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETXr\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXr\DC4\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXr\SUB\ESC\n\
    \\179\SOH\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETXw\EOT\ESC\SUB\165\SOH Gt specifies that this field must be greater than the specified value,\n\
    \ exclusive. If the value of Gt is larger than a specified Lt or Lte, the\n\
    \ range is reversed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETXw\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETXw\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETXw\DC4\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETXw\EM\SUB\n\
    \\193\SOH\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX|\EOT\FS\SUB\179\SOH Gte specifies that this field must be greater than or equal to the\n\
    \ specified value, inclusive. If the value of Gte is larger than a\n\
    \ specified Lt or Lte, the range is reversed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\EOT\DC2\ETX|\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX|\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX|\DC4\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX|\SUB\ESC\n\
    \Z\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\EOT\128\SOH\EOT\ESC\SUBL In specifies that this field must be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\EOT\DC2\EOT\128\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\EOT\128\SOH\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\EOT\128\SOH\DC4\SYN\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\EOT\128\SOH\EM\SUB\n\
    \_\n\
    \\EOT\EOT\STX\STX\ACK\DC2\EOT\132\SOH\EOT\US\SUBQ NotIn specifies that this field cannot be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\EOT\DC2\EOT\132\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\ENQ\DC2\EOT\132\SOH\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\EOT\132\SOH\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\EOT\132\SOH\GS\RS\n\
    \\129\SOH\n\
    \\EOT\EOT\STX\STX\a\DC2\EOT\136\SOH\EOT#\SUBs IgnoreEmpty specifies that the validation rules of this field should be\n\
    \ evaluated only if the field is not empty\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\EOT\DC2\EOT\136\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\ENQ\DC2\EOT\136\SOH\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\EOT\136\SOH\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\EOT\136\SOH!\"\n\
    \N\n\
    \\STX\EOT\ETX\DC2\ACK\140\SOH\NUL\173\SOH\SOH\SUB@ Int32Rules describes the constraints applied to `int32` values\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\140\SOH\b\DC2\n\
    \S\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\142\SOH\EOT\GS\SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\EOT\142\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\142\SOH\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\142\SOH\DC3\CAN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\142\SOH\ESC\FS\n\
    \^\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\146\SOH\EOT\SUB\SUBP Lt specifies that this field must be less than the specified value,\n\
    \ exclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\EOT\146\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\EOT\146\SOH\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\146\SOH\DC3\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\146\SOH\CAN\EM\n\
    \k\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOT\150\SOH\EOT\ESC\SUB] Lte specifies that this field must be less than or equal to the\n\
    \ specified value, inclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\EOT\150\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\EOT\150\SOH\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\EOT\150\SOH\DC3\SYN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\EOT\150\SOH\EM\SUB\n\
    \\180\SOH\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\EOT\155\SOH\EOT\SUB\SUB\165\SOH Gt specifies that this field must be greater than the specified value,\n\
    \ exclusive. If the value of Gt is larger than a specified Lt or Lte, the\n\
    \ range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\EOT\155\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\EOT\155\SOH\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\EOT\155\SOH\DC3\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\EOT\155\SOH\CAN\EM\n\
    \\194\SOH\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\EOT\160\SOH\EOT\ESC\SUB\179\SOH Gte specifies that this field must be greater than or equal to the\n\
    \ specified value, inclusive. If the value of Gte is larger than a\n\
    \ specified Lt or Lte, the range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\EOT\DC2\EOT\160\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\EOT\160\SOH\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\EOT\160\SOH\DC3\SYN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\EOT\160\SOH\EM\SUB\n\
    \Z\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\EOT\164\SOH\EOT\SUB\SUBL In specifies that this field must be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\EOT\DC2\EOT\164\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\ENQ\DC2\EOT\164\SOH\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\EOT\164\SOH\DC3\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\EOT\164\SOH\CAN\EM\n\
    \_\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\EOT\168\SOH\EOT\RS\SUBQ NotIn specifies that this field cannot be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\EOT\DC2\EOT\168\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\ENQ\DC2\EOT\168\SOH\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\EOT\168\SOH\DC3\EM\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\EOT\168\SOH\FS\GS\n\
    \\129\SOH\n\
    \\EOT\EOT\ETX\STX\a\DC2\EOT\172\SOH\EOT#\SUBs IgnoreEmpty specifies that the validation rules of this field should be\n\
    \ evaluated only if the field is not empty\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\EOT\DC2\EOT\172\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\ENQ\DC2\EOT\172\SOH\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\EOT\172\SOH\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\EOT\172\SOH!\"\n\
    \N\n\
    \\STX\EOT\EOT\DC2\ACK\176\SOH\NUL\209\SOH\SOH\SUB@ Int64Rules describes the constraints applied to `int64` values\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\176\SOH\b\DC2\n\
    \S\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\178\SOH\EOT\GS\SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\EOT\178\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\EOT\178\SOH\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\178\SOH\DC3\CAN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\178\SOH\ESC\FS\n\
    \^\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\182\SOH\EOT\SUB\SUBP Lt specifies that this field must be less than the specified value,\n\
    \ exclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\EOT\182\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\EOT\182\SOH\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\182\SOH\DC3\NAK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\182\SOH\CAN\EM\n\
    \k\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT\186\SOH\EOT\ESC\SUB] Lte specifies that this field must be less than or equal to the\n\
    \ specified value, inclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\EOT\186\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\EOT\186\SOH\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\186\SOH\DC3\SYN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\186\SOH\EM\SUB\n\
    \\180\SOH\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\EOT\191\SOH\EOT\SUB\SUB\165\SOH Gt specifies that this field must be greater than the specified value,\n\
    \ exclusive. If the value of Gt is larger than a specified Lt or Lte, the\n\
    \ range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\EOT\191\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\EOT\191\SOH\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\EOT\191\SOH\DC3\NAK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\EOT\191\SOH\CAN\EM\n\
    \\194\SOH\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\EOT\196\SOH\EOT\ESC\SUB\179\SOH Gte specifies that this field must be greater than or equal to the\n\
    \ specified value, inclusive. If the value of Gte is larger than a\n\
    \ specified Lt or Lte, the range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\EOT\DC2\EOT\196\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\EOT\196\SOH\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\EOT\196\SOH\DC3\SYN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\EOT\196\SOH\EM\SUB\n\
    \Z\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\EOT\200\SOH\EOT\SUB\SUBL In specifies that this field must be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\EOT\DC2\EOT\200\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\ENQ\DC2\EOT\200\SOH\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\EOT\200\SOH\DC3\NAK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\EOT\200\SOH\CAN\EM\n\
    \_\n\
    \\EOT\EOT\EOT\STX\ACK\DC2\EOT\204\SOH\EOT\RS\SUBQ NotIn specifies that this field cannot be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\EOT\DC2\EOT\204\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\ENQ\DC2\EOT\204\SOH\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\SOH\DC2\EOT\204\SOH\DC3\EM\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\ETX\DC2\EOT\204\SOH\FS\GS\n\
    \\129\SOH\n\
    \\EOT\EOT\EOT\STX\a\DC2\EOT\208\SOH\EOT#\SUBs IgnoreEmpty specifies that the validation rules of this field should be\n\
    \ evaluated only if the field is not empty\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\EOT\DC2\EOT\208\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\ENQ\DC2\EOT\208\SOH\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\SOH\DC2\EOT\208\SOH\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\ETX\DC2\EOT\208\SOH!\"\n\
    \P\n\
    \\STX\EOT\ENQ\DC2\ACK\212\SOH\NUL\245\SOH\SOH\SUBB UInt32Rules describes the constraints applied to `uint32` values\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\212\SOH\b\DC3\n\
    \S\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\214\SOH\EOT\RS\SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\EOT\214\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\214\SOH\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\214\SOH\DC4\EM\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\214\SOH\FS\GS\n\
    \^\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\218\SOH\EOT\ESC\SUBP Lt specifies that this field must be less than the specified value,\n\
    \ exclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\EOT\218\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\EOT\218\SOH\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\218\SOH\DC4\SYN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\218\SOH\EM\SUB\n\
    \k\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\222\SOH\EOT\FS\SUB] Lte specifies that this field must be less than or equal to the\n\
    \ specified value, inclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\EOT\222\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\EOT\222\SOH\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\222\SOH\DC4\ETB\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\222\SOH\SUB\ESC\n\
    \\180\SOH\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\EOT\227\SOH\EOT\ESC\SUB\165\SOH Gt specifies that this field must be greater than the specified value,\n\
    \ exclusive. If the value of Gt is larger than a specified Lt or Lte, the\n\
    \ range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\EOT\227\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\EOT\227\SOH\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\EOT\227\SOH\DC4\SYN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\EOT\227\SOH\EM\SUB\n\
    \\194\SOH\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\EOT\232\SOH\EOT\FS\SUB\179\SOH Gte specifies that this field must be greater than or equal to the\n\
    \ specified value, inclusive. If the value of Gte is larger than a\n\
    \ specified Lt or Lte, the range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\EOT\DC2\EOT\232\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ENQ\DC2\EOT\232\SOH\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\EOT\232\SOH\DC4\ETB\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\EOT\232\SOH\SUB\ESC\n\
    \Z\n\
    \\EOT\EOT\ENQ\STX\ENQ\DC2\EOT\236\SOH\EOT\ESC\SUBL In specifies that this field must be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\EOT\DC2\EOT\236\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ENQ\DC2\EOT\236\SOH\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\SOH\DC2\EOT\236\SOH\DC4\SYN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ETX\DC2\EOT\236\SOH\EM\SUB\n\
    \_\n\
    \\EOT\EOT\ENQ\STX\ACK\DC2\EOT\240\SOH\EOT\US\SUBQ NotIn specifies that this field cannot be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\EOT\DC2\EOT\240\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\ENQ\DC2\EOT\240\SOH\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\SOH\DC2\EOT\240\SOH\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\ETX\DC2\EOT\240\SOH\GS\RS\n\
    \\129\SOH\n\
    \\EOT\EOT\ENQ\STX\a\DC2\EOT\244\SOH\EOT#\SUBs IgnoreEmpty specifies that the validation rules of this field should be\n\
    \ evaluated only if the field is not empty\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\EOT\DC2\EOT\244\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\ENQ\DC2\EOT\244\SOH\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\SOH\DC2\EOT\244\SOH\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\ETX\DC2\EOT\244\SOH!\"\n\
    \P\n\
    \\STX\EOT\ACK\DC2\ACK\248\SOH\NUL\153\STX\SOH\SUBB UInt64Rules describes the constraints applied to `uint64` values\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\248\SOH\b\DC3\n\
    \S\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\250\SOH\EOT\RS\SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\EOT\250\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\250\SOH\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\250\SOH\DC4\EM\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\250\SOH\FS\GS\n\
    \^\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\254\SOH\EOT\ESC\SUBP Lt specifies that this field must be less than the specified value,\n\
    \ exclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\EOT\254\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\EOT\254\SOH\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\254\SOH\DC4\SYN\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\254\SOH\EM\SUB\n\
    \k\n\
    \\EOT\EOT\ACK\STX\STX\DC2\EOT\130\STX\EOT\FS\SUB] Lte specifies that this field must be less than or equal to the\n\
    \ specified value, inclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\EOT\130\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\EOT\130\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\EOT\130\STX\DC4\ETB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\EOT\130\STX\SUB\ESC\n\
    \\180\SOH\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\EOT\135\STX\EOT\ESC\SUB\165\SOH Gt specifies that this field must be greater than the specified value,\n\
    \ exclusive. If the value of Gt is larger than a specified Lt or Lte, the\n\
    \ range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\EOT\DC2\EOT\135\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\ENQ\DC2\EOT\135\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\EOT\135\STX\DC4\SYN\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\EOT\135\STX\EM\SUB\n\
    \\194\SOH\n\
    \\EOT\EOT\ACK\STX\EOT\DC2\EOT\140\STX\EOT\FS\SUB\179\SOH Gte specifies that this field must be greater than or equal to the\n\
    \ specified value, inclusive. If the value of Gte is larger than a\n\
    \ specified Lt or Lte, the range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\EOT\EOT\DC2\EOT\140\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\EOT\ENQ\DC2\EOT\140\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\EOT\SOH\DC2\EOT\140\STX\DC4\ETB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\EOT\ETX\DC2\EOT\140\STX\SUB\ESC\n\
    \Z\n\
    \\EOT\EOT\ACK\STX\ENQ\DC2\EOT\144\STX\EOT\ESC\SUBL In specifies that this field must be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ENQ\EOT\DC2\EOT\144\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ENQ\ENQ\DC2\EOT\144\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ENQ\SOH\DC2\EOT\144\STX\DC4\SYN\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ENQ\ETX\DC2\EOT\144\STX\EM\SUB\n\
    \_\n\
    \\EOT\EOT\ACK\STX\ACK\DC2\EOT\148\STX\EOT\US\SUBQ NotIn specifies that this field cannot be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ACK\EOT\DC2\EOT\148\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ACK\ENQ\DC2\EOT\148\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ACK\SOH\DC2\EOT\148\STX\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ACK\ETX\DC2\EOT\148\STX\GS\RS\n\
    \\129\SOH\n\
    \\EOT\EOT\ACK\STX\a\DC2\EOT\152\STX\EOT#\SUBs IgnoreEmpty specifies that the validation rules of this field should be\n\
    \ evaluated only if the field is not empty\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\a\EOT\DC2\EOT\152\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\a\ENQ\DC2\EOT\152\STX\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\a\SOH\DC2\EOT\152\STX\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\a\ETX\DC2\EOT\152\STX!\"\n\
    \P\n\
    \\STX\EOT\a\DC2\ACK\156\STX\NUL\189\STX\SOH\SUBB SInt32Rules describes the constraints applied to `sint32` values\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\156\STX\b\DC3\n\
    \S\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\158\STX\EOT\RS\SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\EOT\158\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\158\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\158\STX\DC4\EM\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\158\STX\FS\GS\n\
    \^\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\162\STX\EOT\ESC\SUBP Lt specifies that this field must be less than the specified value,\n\
    \ exclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\EOT\162\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\EOT\162\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\162\STX\DC4\SYN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\162\STX\EM\SUB\n\
    \k\n\
    \\EOT\EOT\a\STX\STX\DC2\EOT\166\STX\EOT\FS\SUB] Lte specifies that this field must be less than or equal to the\n\
    \ specified value, inclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\EOT\DC2\EOT\166\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\EOT\166\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\EOT\166\STX\DC4\ETB\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\EOT\166\STX\SUB\ESC\n\
    \\180\SOH\n\
    \\EOT\EOT\a\STX\ETX\DC2\EOT\171\STX\EOT\ESC\SUB\165\SOH Gt specifies that this field must be greater than the specified value,\n\
    \ exclusive. If the value of Gt is larger than a specified Lt or Lte, the\n\
    \ range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\EOT\DC2\EOT\171\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ENQ\DC2\EOT\171\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\EOT\171\STX\DC4\SYN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\EOT\171\STX\EM\SUB\n\
    \\194\SOH\n\
    \\EOT\EOT\a\STX\EOT\DC2\EOT\176\STX\EOT\FS\SUB\179\SOH Gte specifies that this field must be greater than or equal to the\n\
    \ specified value, inclusive. If the value of Gte is larger than a\n\
    \ specified Lt or Lte, the range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\EOT\DC2\EOT\176\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ENQ\DC2\EOT\176\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\SOH\DC2\EOT\176\STX\DC4\ETB\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ETX\DC2\EOT\176\STX\SUB\ESC\n\
    \Z\n\
    \\EOT\EOT\a\STX\ENQ\DC2\EOT\180\STX\EOT\ESC\SUBL In specifies that this field must be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\EOT\DC2\EOT\180\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\ENQ\DC2\EOT\180\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\SOH\DC2\EOT\180\STX\DC4\SYN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\ETX\DC2\EOT\180\STX\EM\SUB\n\
    \_\n\
    \\EOT\EOT\a\STX\ACK\DC2\EOT\184\STX\EOT\US\SUBQ NotIn specifies that this field cannot be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\EOT\DC2\EOT\184\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\ENQ\DC2\EOT\184\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\SOH\DC2\EOT\184\STX\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\ETX\DC2\EOT\184\STX\GS\RS\n\
    \\129\SOH\n\
    \\EOT\EOT\a\STX\a\DC2\EOT\188\STX\EOT#\SUBs IgnoreEmpty specifies that the validation rules of this field should be\n\
    \ evaluated only if the field is not empty\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\a\EOT\DC2\EOT\188\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\a\STX\a\ENQ\DC2\EOT\188\STX\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\a\STX\a\SOH\DC2\EOT\188\STX\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\a\ETX\DC2\EOT\188\STX!\"\n\
    \P\n\
    \\STX\EOT\b\DC2\ACK\192\STX\NUL\225\STX\SOH\SUBB SInt64Rules describes the constraints applied to `sint64` values\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\192\STX\b\DC3\n\
    \S\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\194\STX\EOT\RS\SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\EOT\194\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\194\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\194\STX\DC4\EM\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\194\STX\FS\GS\n\
    \^\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\198\STX\EOT\ESC\SUBP Lt specifies that this field must be less than the specified value,\n\
    \ exclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\EOT\198\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\198\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\198\STX\DC4\SYN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\198\STX\EM\SUB\n\
    \k\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\202\STX\EOT\FS\SUB] Lte specifies that this field must be less than or equal to the\n\
    \ specified value, inclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\EOT\DC2\EOT\202\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\EOT\202\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\202\STX\DC4\ETB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\202\STX\SUB\ESC\n\
    \\180\SOH\n\
    \\EOT\EOT\b\STX\ETX\DC2\EOT\207\STX\EOT\ESC\SUB\165\SOH Gt specifies that this field must be greater than the specified value,\n\
    \ exclusive. If the value of Gt is larger than a specified Lt or Lte, the\n\
    \ range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\EOT\DC2\EOT\207\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ENQ\DC2\EOT\207\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\EOT\207\STX\DC4\SYN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\EOT\207\STX\EM\SUB\n\
    \\194\SOH\n\
    \\EOT\EOT\b\STX\EOT\DC2\EOT\212\STX\EOT\FS\SUB\179\SOH Gte specifies that this field must be greater than or equal to the\n\
    \ specified value, inclusive. If the value of Gte is larger than a\n\
    \ specified Lt or Lte, the range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\EOT\DC2\EOT\212\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ENQ\DC2\EOT\212\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\SOH\DC2\EOT\212\STX\DC4\ETB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ETX\DC2\EOT\212\STX\SUB\ESC\n\
    \Z\n\
    \\EOT\EOT\b\STX\ENQ\DC2\EOT\216\STX\EOT\ESC\SUBL In specifies that this field must be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\EOT\DC2\EOT\216\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\ENQ\DC2\EOT\216\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\SOH\DC2\EOT\216\STX\DC4\SYN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\ETX\DC2\EOT\216\STX\EM\SUB\n\
    \_\n\
    \\EOT\EOT\b\STX\ACK\DC2\EOT\220\STX\EOT\US\SUBQ NotIn specifies that this field cannot be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ACK\EOT\DC2\EOT\220\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ACK\ENQ\DC2\EOT\220\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ACK\SOH\DC2\EOT\220\STX\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ACK\ETX\DC2\EOT\220\STX\GS\RS\n\
    \\129\SOH\n\
    \\EOT\EOT\b\STX\a\DC2\EOT\224\STX\EOT#\SUBs IgnoreEmpty specifies that the validation rules of this field should be\n\
    \ evaluated only if the field is not empty\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\a\EOT\DC2\EOT\224\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\b\STX\a\ENQ\DC2\EOT\224\STX\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\b\STX\a\SOH\DC2\EOT\224\STX\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\a\ETX\DC2\EOT\224\STX!\"\n\
    \R\n\
    \\STX\EOT\t\DC2\ACK\228\STX\NUL\133\ETX\SOH\SUBD Fixed32Rules describes the constraints applied to `fixed32` values\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\228\STX\b\DC4\n\
    \S\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\230\STX\EOT\US\SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\EOT\230\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\EOT\230\STX\r\DC4\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\230\STX\NAK\SUB\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\230\STX\GS\RS\n\
    \^\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\234\STX\EOT\FS\SUBP Lt specifies that this field must be less than the specified value,\n\
    \ exclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\EOT\DC2\EOT\234\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\EOT\234\STX\r\DC4\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\234\STX\NAK\ETB\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\234\STX\SUB\ESC\n\
    \k\n\
    \\EOT\EOT\t\STX\STX\DC2\EOT\238\STX\EOT\GS\SUB] Lte specifies that this field must be less than or equal to the\n\
    \ specified value, inclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\EOT\DC2\EOT\238\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ENQ\DC2\EOT\238\STX\r\DC4\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\EOT\238\STX\NAK\CAN\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\EOT\238\STX\ESC\FS\n\
    \\180\SOH\n\
    \\EOT\EOT\t\STX\ETX\DC2\EOT\243\STX\EOT\FS\SUB\165\SOH Gt specifies that this field must be greater than the specified value,\n\
    \ exclusive. If the value of Gt is larger than a specified Lt or Lte, the\n\
    \ range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\EOT\DC2\EOT\243\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\ENQ\DC2\EOT\243\STX\r\DC4\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\SOH\DC2\EOT\243\STX\NAK\ETB\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\ETX\DC2\EOT\243\STX\SUB\ESC\n\
    \\194\SOH\n\
    \\EOT\EOT\t\STX\EOT\DC2\EOT\248\STX\EOT\GS\SUB\179\SOH Gte specifies that this field must be greater than or equal to the\n\
    \ specified value, inclusive. If the value of Gte is larger than a\n\
    \ specified Lt or Lte, the range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\EOT\EOT\DC2\EOT\248\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\t\STX\EOT\ENQ\DC2\EOT\248\STX\r\DC4\n\
    \\r\n\
    \\ENQ\EOT\t\STX\EOT\SOH\DC2\EOT\248\STX\NAK\CAN\n\
    \\r\n\
    \\ENQ\EOT\t\STX\EOT\ETX\DC2\EOT\248\STX\ESC\FS\n\
    \Z\n\
    \\EOT\EOT\t\STX\ENQ\DC2\EOT\252\STX\EOT\FS\SUBL In specifies that this field must be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ENQ\EOT\DC2\EOT\252\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ENQ\ENQ\DC2\EOT\252\STX\r\DC4\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ENQ\SOH\DC2\EOT\252\STX\NAK\ETB\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ENQ\ETX\DC2\EOT\252\STX\SUB\ESC\n\
    \_\n\
    \\EOT\EOT\t\STX\ACK\DC2\EOT\128\ETX\EOT \SUBQ NotIn specifies that this field cannot be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ACK\EOT\DC2\EOT\128\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ACK\ENQ\DC2\EOT\128\ETX\r\DC4\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ACK\SOH\DC2\EOT\128\ETX\NAK\ESC\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ACK\ETX\DC2\EOT\128\ETX\RS\US\n\
    \\129\SOH\n\
    \\EOT\EOT\t\STX\a\DC2\EOT\132\ETX\EOT#\SUBs IgnoreEmpty specifies that the validation rules of this field should be\n\
    \ evaluated only if the field is not empty\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\a\EOT\DC2\EOT\132\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\t\STX\a\ENQ\DC2\EOT\132\ETX\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\t\STX\a\SOH\DC2\EOT\132\ETX\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\t\STX\a\ETX\DC2\EOT\132\ETX!\"\n\
    \R\n\
    \\STX\EOT\n\
    \\DC2\ACK\136\ETX\NUL\169\ETX\SOH\SUBD Fixed64Rules describes the constraints applied to `fixed64` values\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\136\ETX\b\DC4\n\
    \S\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\138\ETX\EOT\US\SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\EOT\DC2\EOT\138\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\138\ETX\r\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\138\ETX\NAK\SUB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\138\ETX\GS\RS\n\
    \^\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\142\ETX\EOT\FS\SUBP Lt specifies that this field must be less than the specified value,\n\
    \ exclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\EOT\DC2\EOT\142\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\EOT\142\ETX\r\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\142\ETX\NAK\ETB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\142\ETX\SUB\ESC\n\
    \k\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\EOT\146\ETX\EOT\GS\SUB] Lte specifies that this field must be less than or equal to the\n\
    \ specified value, inclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\EOT\DC2\EOT\146\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ENQ\DC2\EOT\146\ETX\r\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\EOT\146\ETX\NAK\CAN\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\EOT\146\ETX\ESC\FS\n\
    \\180\SOH\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\EOT\151\ETX\EOT\FS\SUB\165\SOH Gt specifies that this field must be greater than the specified value,\n\
    \ exclusive. If the value of Gt is larger than a specified Lt or Lte, the\n\
    \ range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\EOT\DC2\EOT\151\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ENQ\DC2\EOT\151\ETX\r\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\EOT\151\ETX\NAK\ETB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\EOT\151\ETX\SUB\ESC\n\
    \\194\SOH\n\
    \\EOT\EOT\n\
    \\STX\EOT\DC2\EOT\156\ETX\EOT\GS\SUB\179\SOH Gte specifies that this field must be greater than or equal to the\n\
    \ specified value, inclusive. If the value of Gte is larger than a\n\
    \ specified Lt or Lte, the range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\EOT\DC2\EOT\156\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ENQ\DC2\EOT\156\ETX\r\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\SOH\DC2\EOT\156\ETX\NAK\CAN\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ETX\DC2\EOT\156\ETX\ESC\FS\n\
    \Z\n\
    \\EOT\EOT\n\
    \\STX\ENQ\DC2\EOT\160\ETX\EOT\FS\SUBL In specifies that this field must be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\EOT\DC2\EOT\160\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ENQ\DC2\EOT\160\ETX\r\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\SOH\DC2\EOT\160\ETX\NAK\ETB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ETX\DC2\EOT\160\ETX\SUB\ESC\n\
    \_\n\
    \\EOT\EOT\n\
    \\STX\ACK\DC2\EOT\164\ETX\EOT \SUBQ NotIn specifies that this field cannot be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ACK\EOT\DC2\EOT\164\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ACK\ENQ\DC2\EOT\164\ETX\r\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ACK\SOH\DC2\EOT\164\ETX\NAK\ESC\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ACK\ETX\DC2\EOT\164\ETX\RS\US\n\
    \\129\SOH\n\
    \\EOT\EOT\n\
    \\STX\a\DC2\EOT\168\ETX\EOT#\SUBs IgnoreEmpty specifies that the validation rules of this field should be\n\
    \ evaluated only if the field is not empty\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\a\EOT\DC2\EOT\168\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\a\ENQ\DC2\EOT\168\ETX\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\a\SOH\DC2\EOT\168\ETX\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\a\ETX\DC2\EOT\168\ETX!\"\n\
    \T\n\
    \\STX\EOT\v\DC2\ACK\172\ETX\NUL\205\ETX\SOH\SUBF SFixed32Rules describes the constraints applied to `sfixed32` values\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\172\ETX\b\NAK\n\
    \S\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\174\ETX\EOT \SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\EOT\DC2\EOT\174\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\EOT\174\ETX\r\NAK\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\174\ETX\SYN\ESC\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\174\ETX\RS\US\n\
    \^\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\178\ETX\EOT\GS\SUBP Lt specifies that this field must be less than the specified value,\n\
    \ exclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\EOT\DC2\EOT\178\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\EOT\178\ETX\r\NAK\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\178\ETX\SYN\CAN\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\178\ETX\ESC\FS\n\
    \k\n\
    \\EOT\EOT\v\STX\STX\DC2\EOT\182\ETX\EOT\RS\SUB] Lte specifies that this field must be less than or equal to the\n\
    \ specified value, inclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\EOT\DC2\EOT\182\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ENQ\DC2\EOT\182\ETX\r\NAK\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\EOT\182\ETX\SYN\EM\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\EOT\182\ETX\FS\GS\n\
    \\180\SOH\n\
    \\EOT\EOT\v\STX\ETX\DC2\EOT\187\ETX\EOT\GS\SUB\165\SOH Gt specifies that this field must be greater than the specified value,\n\
    \ exclusive. If the value of Gt is larger than a specified Lt or Lte, the\n\
    \ range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\EOT\DC2\EOT\187\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ENQ\DC2\EOT\187\ETX\r\NAK\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\SOH\DC2\EOT\187\ETX\SYN\CAN\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ETX\DC2\EOT\187\ETX\ESC\FS\n\
    \\194\SOH\n\
    \\EOT\EOT\v\STX\EOT\DC2\EOT\192\ETX\EOT\RS\SUB\179\SOH Gte specifies that this field must be greater than or equal to the\n\
    \ specified value, inclusive. If the value of Gte is larger than a\n\
    \ specified Lt or Lte, the range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\EOT\DC2\EOT\192\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\ENQ\DC2\EOT\192\ETX\r\NAK\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\SOH\DC2\EOT\192\ETX\SYN\EM\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\ETX\DC2\EOT\192\ETX\FS\GS\n\
    \Z\n\
    \\EOT\EOT\v\STX\ENQ\DC2\EOT\196\ETX\EOT\GS\SUBL In specifies that this field must be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ENQ\EOT\DC2\EOT\196\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ENQ\ENQ\DC2\EOT\196\ETX\r\NAK\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ENQ\SOH\DC2\EOT\196\ETX\SYN\CAN\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ENQ\ETX\DC2\EOT\196\ETX\ESC\FS\n\
    \_\n\
    \\EOT\EOT\v\STX\ACK\DC2\EOT\200\ETX\EOT!\SUBQ NotIn specifies that this field cannot be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ACK\EOT\DC2\EOT\200\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ACK\ENQ\DC2\EOT\200\ETX\r\NAK\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ACK\SOH\DC2\EOT\200\ETX\SYN\FS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ACK\ETX\DC2\EOT\200\ETX\US \n\
    \\129\SOH\n\
    \\EOT\EOT\v\STX\a\DC2\EOT\204\ETX\EOT#\SUBs IgnoreEmpty specifies that the validation rules of this field should be\n\
    \ evaluated only if the field is not empty\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\a\EOT\DC2\EOT\204\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\v\STX\a\ENQ\DC2\EOT\204\ETX\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\v\STX\a\SOH\DC2\EOT\204\ETX\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\a\ETX\DC2\EOT\204\ETX!\"\n\
    \T\n\
    \\STX\EOT\f\DC2\ACK\208\ETX\NUL\241\ETX\SOH\SUBF SFixed64Rules describes the constraints applied to `sfixed64` values\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\208\ETX\b\NAK\n\
    \S\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\210\ETX\EOT \SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\EOT\DC2\EOT\210\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\210\ETX\r\NAK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\210\ETX\SYN\ESC\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\210\ETX\RS\US\n\
    \^\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\214\ETX\EOT\GS\SUBP Lt specifies that this field must be less than the specified value,\n\
    \ exclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\EOT\DC2\EOT\214\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\EOT\214\ETX\r\NAK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\214\ETX\SYN\CAN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\214\ETX\ESC\FS\n\
    \k\n\
    \\EOT\EOT\f\STX\STX\DC2\EOT\218\ETX\EOT\RS\SUB] Lte specifies that this field must be less than or equal to the\n\
    \ specified value, inclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\EOT\DC2\EOT\218\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ENQ\DC2\EOT\218\ETX\r\NAK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\EOT\218\ETX\SYN\EM\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\EOT\218\ETX\FS\GS\n\
    \\180\SOH\n\
    \\EOT\EOT\f\STX\ETX\DC2\EOT\223\ETX\EOT\GS\SUB\165\SOH Gt specifies that this field must be greater than the specified value,\n\
    \ exclusive. If the value of Gt is larger than a specified Lt or Lte, the\n\
    \ range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\EOT\DC2\EOT\223\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ENQ\DC2\EOT\223\ETX\r\NAK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\SOH\DC2\EOT\223\ETX\SYN\CAN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ETX\DC2\EOT\223\ETX\ESC\FS\n\
    \\194\SOH\n\
    \\EOT\EOT\f\STX\EOT\DC2\EOT\228\ETX\EOT\RS\SUB\179\SOH Gte specifies that this field must be greater than or equal to the\n\
    \ specified value, inclusive. If the value of Gte is larger than a\n\
    \ specified Lt or Lte, the range is reversed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\EOT\DC2\EOT\228\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ENQ\DC2\EOT\228\ETX\r\NAK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\SOH\DC2\EOT\228\ETX\SYN\EM\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ETX\DC2\EOT\228\ETX\FS\GS\n\
    \Z\n\
    \\EOT\EOT\f\STX\ENQ\DC2\EOT\232\ETX\EOT\GS\SUBL In specifies that this field must be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\EOT\DC2\EOT\232\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\ENQ\DC2\EOT\232\ETX\r\NAK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\SOH\DC2\EOT\232\ETX\SYN\CAN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\ETX\DC2\EOT\232\ETX\ESC\FS\n\
    \_\n\
    \\EOT\EOT\f\STX\ACK\DC2\EOT\236\ETX\EOT!\SUBQ NotIn specifies that this field cannot be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ACK\EOT\DC2\EOT\236\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ACK\ENQ\DC2\EOT\236\ETX\r\NAK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ACK\SOH\DC2\EOT\236\ETX\SYN\FS\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ACK\ETX\DC2\EOT\236\ETX\US \n\
    \\129\SOH\n\
    \\EOT\EOT\f\STX\a\DC2\EOT\240\ETX\EOT#\SUBs IgnoreEmpty specifies that the validation rules of this field should be\n\
    \ evaluated only if the field is not empty\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\a\EOT\DC2\EOT\240\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\f\STX\a\ENQ\DC2\EOT\240\ETX\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\f\STX\a\SOH\DC2\EOT\240\ETX\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\f\STX\a\ETX\DC2\EOT\240\ETX!\"\n\
    \L\n\
    \\STX\EOT\r\DC2\ACK\244\ETX\NUL\247\ETX\SOH\SUB> BoolRules describes the constraints applied to `bool` values\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\244\ETX\b\DC1\n\
    \S\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\246\ETX\EOT\FS\SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\EOT\DC2\EOT\246\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\246\ETX\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\246\ETX\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\246\ETX\SUB\ESC\n\
    \O\n\
    \\STX\EOT\SO\DC2\ACK\250\ETX\NUL\236\EOT\SOH\SUBA StringRules describe the constraints applied to `string` values\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\250\ETX\b\DC3\n\
    \S\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\252\ETX\EOT\RS\SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\EOT\DC2\EOT\252\ETX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\252\ETX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\252\ETX\DC4\EM\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\252\ETX\FS\GS\n\
    \\200\SOH\n\
    \\EOT\EOT\SO\STX\SOH\DC2\EOT\129\EOT\EOT\GS\SUB\185\SOH Len specifies that this field must be the specified number of\n\
    \ characters (Unicode code points). Note that the number of\n\
    \ characters may differ from the number of bytes in the string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\EOT\DC2\EOT\129\EOT\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ENQ\DC2\EOT\129\EOT\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\129\EOT\DC4\ETB\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\129\EOT\SUB\FS\n\
    \\216\SOH\n\
    \\EOT\EOT\SO\STX\STX\DC2\EOT\134\EOT\EOT \SUB\201\SOH MinLen specifies that this field must be the specified number of\n\
    \ characters (Unicode code points) at a minimum. Note that the number of\n\
    \ characters may differ from the number of bytes in the string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\EOT\DC2\EOT\134\EOT\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ENQ\DC2\EOT\134\EOT\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\SOH\DC2\EOT\134\EOT\DC4\ESC\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ETX\DC2\EOT\134\EOT\RS\US\n\
    \\216\SOH\n\
    \\EOT\EOT\SO\STX\ETX\DC2\EOT\139\EOT\EOT \SUB\201\SOH MaxLen specifies that this field must be the specified number of\n\
    \ characters (Unicode code points) at a maximum. Note that the number of\n\
    \ characters may differ from the number of bytes in the string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\EOT\DC2\EOT\139\EOT\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\ENQ\DC2\EOT\139\EOT\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\SOH\DC2\EOT\139\EOT\DC4\ESC\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\ETX\DC2\EOT\139\EOT\RS\US\n\
    \f\n\
    \\EOT\EOT\SO\STX\EOT\DC2\EOT\143\EOT\EOT#\SUBX LenBytes specifies that this field must be the specified number of bytes\n\
    \ at a minimum\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\EOT\DC2\EOT\143\EOT\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\ENQ\DC2\EOT\143\EOT\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\SOH\DC2\EOT\143\EOT\DC4\GS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EOT\ETX\DC2\EOT\143\EOT \"\n\
    \f\n\
    \\EOT\EOT\SO\STX\ENQ\DC2\EOT\147\EOT\EOT\"\SUBX MinBytes specifies that this field must be the specified number of bytes\n\
    \ at a minimum\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\EOT\DC2\EOT\147\EOT\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\ENQ\DC2\EOT\147\EOT\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\SOH\DC2\EOT\147\EOT\DC4\GS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ENQ\ETX\DC2\EOT\147\EOT !\n\
    \f\n\
    \\EOT\EOT\SO\STX\ACK\DC2\EOT\151\EOT\EOT\"\SUBX MaxBytes specifies that this field must be the specified number of bytes\n\
    \ at a maximum\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ACK\EOT\DC2\EOT\151\EOT\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ACK\ENQ\DC2\EOT\151\EOT\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ACK\SOH\DC2\EOT\151\EOT\DC4\GS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ACK\ETX\DC2\EOT\151\EOT !\n\
    \\170\SOH\n\
    \\EOT\EOT\SO\STX\a\DC2\EOT\156\EOT\EOT!\SUB\155\SOH Pattern specifes that this field must match against the specified\n\
    \ regular expression (RE2 syntax). The included expression should elide\n\
    \ any delimiters.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\a\EOT\DC2\EOT\156\EOT\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\a\ENQ\DC2\EOT\156\EOT\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\a\SOH\DC2\EOT\156\EOT\DC4\ESC\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\a\ETX\DC2\EOT\156\EOT\US \n\
    \s\n\
    \\EOT\EOT\SO\STX\b\DC2\EOT\160\EOT\EOT!\SUBe Prefix specifies that this field must have the specified substring at\n\
    \ the beginning of the string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\b\EOT\DC2\EOT\160\EOT\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\b\ENQ\DC2\EOT\160\EOT\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\b\SOH\DC2\EOT\160\EOT\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\b\ETX\DC2\EOT\160\EOT\US \n\
    \m\n\
    \\EOT\EOT\SO\STX\t\DC2\EOT\164\EOT\EOT!\SUB_ Suffix specifies that this field must have the specified substring at\n\
    \ the end of the string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\t\EOT\DC2\EOT\164\EOT\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\t\ENQ\DC2\EOT\164\EOT\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\t\SOH\DC2\EOT\164\EOT\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\t\ETX\DC2\EOT\164\EOT\US \n\
    \m\n\
    \\EOT\EOT\SO\STX\n\
    \\DC2\EOT\168\EOT\EOT!\SUB_ Contains specifies that this field must have the specified substring\n\
    \ anywhere in the string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\n\
    \\EOT\DC2\EOT\168\EOT\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\n\
    \\ENQ\DC2\EOT\168\EOT\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\n\
    \\SOH\DC2\EOT\168\EOT\DC4\FS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\n\
    \\ETX\DC2\EOT\168\EOT\US \n\
    \r\n\
    \\EOT\EOT\SO\STX\v\DC2\EOT\172\EOT\EOT&\SUBd NotContains specifies that this field cannot have the specified substring\n\
    \ anywhere in the string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\v\EOT\DC2\EOT\172\EOT\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\v\ENQ\DC2\EOT\172\EOT\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\v\SOH\DC2\EOT\172\EOT\DC4 \n\
    \\r\n\
    \\ENQ\EOT\SO\STX\v\ETX\DC2\EOT\172\EOT#%\n\
    \Z\n\
    \\EOT\EOT\SO\STX\f\DC2\EOT\176\EOT\EOT \SUBL In specifies that this field must be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\f\EOT\DC2\EOT\176\EOT\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\f\ENQ\DC2\EOT\176\EOT\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\f\SOH\DC2\EOT\176\EOT\DC4\SYN\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\f\ETX\DC2\EOT\176\EOT\GS\US\n\
    \_\n\
    \\EOT\EOT\SO\STX\r\DC2\EOT\180\EOT\EOT \SUBQ NotIn specifies that this field cannot be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\r\EOT\DC2\EOT\180\EOT\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\r\ENQ\DC2\EOT\180\EOT\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\r\SOH\DC2\EOT\180\EOT\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\r\ETX\DC2\EOT\180\EOT\GS\US\n\
    \^\n\
    \\EOT\EOT\SO\b\NUL\DC2\ACK\184\EOT\EOT\224\EOT\ENQ\SUBN WellKnown rules provide advanced constraints against common string\n\
    \ patterns\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\b\NUL\SOH\DC2\EOT\184\EOT\n\
    \\DC4\n\
    \d\n\
    \\EOT\EOT\SO\STX\SO\DC2\EOT\187\EOT\b\ESC\SUBV Email specifies that the field must be a valid email address as\n\
    \ defined by RFC 5322\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SO\ENQ\DC2\EOT\187\EOT\b\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SO\SOH\DC2\EOT\187\EOT\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SO\ETX\DC2\EOT\187\EOT\CAN\SUB\n\
    \\173\SOH\n\
    \\EOT\EOT\SO\STX\SI\DC2\EOT\192\EOT\b\ESC\SUB\158\SOH Hostname specifies that the field must be a valid hostname as\n\
    \ defined by RFC 1034. This constraint does not support\n\
    \ internationalized domain names (IDNs).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SI\ENQ\DC2\EOT\192\EOT\b\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SI\SOH\DC2\EOT\192\EOT\r\NAK\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SI\ETX\DC2\EOT\192\EOT\CAN\SUB\n\
    \\153\SOH\n\
    \\EOT\EOT\SO\STX\DLE\DC2\EOT\196\EOT\b\ESC\SUB\138\SOH Ip specifies that the field must be a valid IP (v4 or v6) address.\n\
    \ Valid IPv6 addresses should not include surrounding square brackets.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DLE\ENQ\DC2\EOT\196\EOT\b\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DLE\SOH\DC2\EOT\196\EOT\r\SI\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DLE\ETX\DC2\EOT\196\EOT\CAN\SUB\n\
    \K\n\
    \\EOT\EOT\SO\STX\DC1\DC2\EOT\199\EOT\b\ESC\SUB= Ipv4 specifies that the field must be a valid IPv4 address.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC1\ENQ\DC2\EOT\199\EOT\b\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC1\SOH\DC2\EOT\199\EOT\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC1\ETX\DC2\EOT\199\EOT\CAN\SUB\n\
    \\146\SOH\n\
    \\EOT\EOT\SO\STX\DC2\DC2\EOT\203\EOT\b\ESC\SUB\131\SOH Ipv6 specifies that the field must be a valid IPv6 address. Valid\n\
    \ IPv6 addresses should not include surrounding square brackets.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC2\ENQ\DC2\EOT\203\EOT\b\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC2\SOH\DC2\EOT\203\EOT\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC2\ETX\DC2\EOT\203\EOT\CAN\SUB\n\
    \b\n\
    \\EOT\EOT\SO\STX\DC3\DC2\EOT\207\EOT\b\ESC\SUBT Uri specifies that the field must be a valid, absolute URI as defined\n\
    \ by RFC 3986\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC3\ENQ\DC2\EOT\207\EOT\b\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC3\SOH\DC2\EOT\207\EOT\r\DLE\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC3\ETX\DC2\EOT\207\EOT\CAN\SUB\n\
    \|\n\
    \\EOT\EOT\SO\STX\DC4\DC2\EOT\211\EOT\b\ESC\SUBn UriRef specifies that the field must be a valid URI as defined by RFC\n\
    \ 3986 and may be relative or absolute.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC4\ENQ\DC2\EOT\211\EOT\b\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC4\SOH\DC2\EOT\211\EOT\r\DC4\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\DC4\ETX\DC2\EOT\211\EOT\CAN\SUB\n\
    \\207\SOH\n\
    \\EOT\EOT\SO\STX\NAK\DC2\EOT\216\EOT\b\ESC\SUB\192\SOH Address specifies that the field must be either a valid hostname as\n\
    \ defined by RFC 1034 (which does not support internationalized domain\n\
    \ names or IDNs), or it can be a valid IP (v4 or v6).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NAK\ENQ\DC2\EOT\216\EOT\b\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NAK\SOH\DC2\EOT\216\EOT\r\DC4\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NAK\ETX\DC2\EOT\216\EOT\CAN\SUB\n\
    \Z\n\
    \\EOT\EOT\SO\STX\SYN\DC2\EOT\220\EOT\b\ESC\SUBL Uuid specifies that the field must be a valid UUID as defined by\n\
    \ RFC 4122\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SYN\ENQ\DC2\EOT\220\EOT\b\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SYN\SOH\DC2\EOT\220\EOT\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SYN\ETX\DC2\EOT\220\EOT\CAN\SUB\n\
    \X\n\
    \\EOT\EOT\SO\STX\ETB\DC2\EOT\223\EOT\b)\SUBJ WellKnownRegex specifies a common well known pattern defined as a regex.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETB\ACK\DC2\EOT\223\EOT\b\DC2\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETB\SOH\DC2\EOT\223\EOT\DC3#\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETB\ETX\DC2\EOT\223\EOT&(\n\
    \\204\STX\n\
    \\EOT\EOT\SO\STX\CAN\DC2\EOT\231\EOT\STX-\SUB\189\STX This applies to regexes HTTP_HEADER_NAME and HTTP_HEADER_VALUE to enable\n\
    \ strict header validation.\n\
    \ By default, this is true, and HTTP header validations are RFC-compliant.\n\
    \ Setting to false will enable a looser validations that only disallows\n\
    \ \\r\\n\\0 characters, which can be used to bypass header matching rules.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\CAN\EOT\DC2\EOT\231\EOT\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\CAN\ENQ\DC2\EOT\231\EOT\v\SI\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\CAN\SOH\DC2\EOT\231\EOT\DLE\SYN\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\CAN\ETX\DC2\EOT\231\EOT\EM\ESC\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\CAN\b\DC2\EOT\231\EOT\FS,\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\CAN\a\DC2\EOT\231\EOT'+\n\
    \\129\SOH\n\
    \\EOT\EOT\SO\STX\EM\DC2\EOT\235\EOT\STX\"\SUBs IgnoreEmpty specifies that the validation rules of this field should be\n\
    \ evaluated only if the field is not empty\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EM\EOT\DC2\EOT\235\EOT\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EM\ENQ\DC2\EOT\235\EOT\v\SI\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EM\SOH\DC2\EOT\235\EOT\DLE\FS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\EM\ETX\DC2\EOT\235\EOT\US!\n\
    \@\n\
    \\STX\ENQ\NUL\DC2\ACK\239\EOT\NUL\247\EOT\SOH\SUB2 WellKnownRegex contain some well-known patterns.\n\
    \\n\
    \\v\n\
    \\ETX\ENQ\NUL\SOH\DC2\EOT\239\EOT\ENQ\SI\n\
    \\f\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\EOT\240\EOT\STX\SO\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\EOT\240\EOT\STX\t\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\EOT\240\EOT\f\r\n\
    \8\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\EOT\243\EOT\STX\ETB\SUB* HTTP header name as defined by RFC 7230.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\EOT\243\EOT\STX\DC2\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\EOT\243\EOT\NAK\SYN\n\
    \9\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\EOT\246\EOT\STX\CAN\SUB+ HTTP header value as defined by RFC 7230.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\EOT\246\EOT\STX\DC3\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\EOT\246\EOT\SYN\ETB\n\
    \M\n\
    \\STX\EOT\SI\DC2\ACK\250\EOT\NUL\181\ENQ\SOH\SUB? BytesRules describe the constraints applied to `bytes` values\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\250\EOT\b\DC2\n\
    \S\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\252\EOT\EOT\GS\SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\EOT\DC2\EOT\252\EOT\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\EOT\252\EOT\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\252\EOT\DC3\CAN\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\252\EOT\ESC\FS\n\
    \S\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\255\EOT\EOT\GS\SUBE Len specifies that this field must be the specified number of bytes\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\EOT\DC2\EOT\255\EOT\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ENQ\DC2\EOT\255\EOT\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\255\EOT\DC4\ETB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\255\EOT\SUB\FS\n\
    \d\n\
    \\EOT\EOT\SI\STX\STX\DC2\EOT\131\ENQ\EOT \SUBV MinLen specifies that this field must be the specified number of bytes\n\
    \ at a minimum\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\EOT\DC2\EOT\131\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ENQ\DC2\EOT\131\ENQ\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\EOT\131\ENQ\DC4\ESC\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\EOT\131\ENQ\RS\US\n\
    \d\n\
    \\EOT\EOT\SI\STX\ETX\DC2\EOT\135\ENQ\EOT \SUBV MaxLen specifies that this field must be the specified number of bytes\n\
    \ at a maximum\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\EOT\DC2\EOT\135\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ENQ\DC2\EOT\135\ENQ\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\SOH\DC2\EOT\135\ENQ\DC4\ESC\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ETX\DC2\EOT\135\ENQ\RS\US\n\
    \\170\SOH\n\
    \\EOT\EOT\SI\STX\EOT\DC2\EOT\140\ENQ\EOT!\SUB\155\SOH Pattern specifes that this field must match against the specified\n\
    \ regular expression (RE2 syntax). The included expression should elide\n\
    \ any delimiters.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\EOT\DC2\EOT\140\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\ENQ\DC2\EOT\140\ENQ\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\SOH\DC2\EOT\140\ENQ\DC4\ESC\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\ETX\DC2\EOT\140\ENQ\US \n\
    \o\n\
    \\EOT\EOT\SI\STX\ENQ\DC2\EOT\144\ENQ\EOT!\SUBa Prefix specifies that this field must have the specified bytes at the\n\
    \ beginning of the string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\EOT\DC2\EOT\144\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\ENQ\DC2\EOT\144\ENQ\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\SOH\DC2\EOT\144\ENQ\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\ETX\DC2\EOT\144\ENQ\US \n\
    \i\n\
    \\EOT\EOT\SI\STX\ACK\DC2\EOT\148\ENQ\EOT!\SUB[ Suffix specifies that this field must have the specified bytes at the\n\
    \ end of the string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ACK\EOT\DC2\EOT\148\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ACK\ENQ\DC2\EOT\148\ENQ\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ACK\SOH\DC2\EOT\148\ENQ\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ACK\ETX\DC2\EOT\148\ENQ\US \n\
    \i\n\
    \\EOT\EOT\SI\STX\a\DC2\EOT\152\ENQ\EOT!\SUB[ Contains specifies that this field must have the specified bytes\n\
    \ anywhere in the string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\a\EOT\DC2\EOT\152\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\a\ENQ\DC2\EOT\152\ENQ\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\a\SOH\DC2\EOT\152\ENQ\DC4\FS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\a\ETX\DC2\EOT\152\ENQ\US \n\
    \Z\n\
    \\EOT\EOT\SI\STX\b\DC2\EOT\156\ENQ\EOT\RS\SUBL In specifies that this field must be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\b\EOT\DC2\EOT\156\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\b\ENQ\DC2\EOT\156\ENQ\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\b\SOH\DC2\EOT\156\ENQ\DC3\NAK\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\b\ETX\DC2\EOT\156\ENQ\FS\GS\n\
    \_\n\
    \\EOT\EOT\SI\STX\t\DC2\EOT\160\ENQ\EOT\RS\SUBQ NotIn specifies that this field cannot be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\t\EOT\DC2\EOT\160\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\t\ENQ\DC2\EOT\160\ENQ\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\t\SOH\DC2\EOT\160\ENQ\DC3\EM\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\t\ETX\DC2\EOT\160\ENQ\FS\GS\n\
    \\\\n\
    \\EOT\EOT\SI\b\NUL\DC2\ACK\164\ENQ\EOT\176\ENQ\ENQ\SUBL WellKnown rules provide advanced constraints against common byte\n\
    \ patterns\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\b\NUL\SOH\DC2\EOT\164\ENQ\n\
    \\DC4\n\
    \a\n\
    \\EOT\EOT\SI\STX\n\
    \\DC2\EOT\167\ENQ\b\ETB\SUBS Ip specifies that the field must be a valid IP (v4 or v6) address in\n\
    \ byte format\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\n\
    \\ENQ\DC2\EOT\167\ENQ\b\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\n\
    \\SOH\DC2\EOT\167\ENQ\r\SI\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\n\
    \\ETX\DC2\EOT\167\ENQ\DC4\SYN\n\
    \Z\n\
    \\EOT\EOT\SI\STX\v\DC2\EOT\171\ENQ\b\ETB\SUBL Ipv4 specifies that the field must be a valid IPv4 address in byte\n\
    \ format\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\v\ENQ\DC2\EOT\171\ENQ\b\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\v\SOH\DC2\EOT\171\ENQ\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\v\ETX\DC2\EOT\171\ENQ\DC4\SYN\n\
    \Z\n\
    \\EOT\EOT\SI\STX\f\DC2\EOT\175\ENQ\b\ETB\SUBL Ipv6 specifies that the field must be a valid IPv6 address in byte\n\
    \ format\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\f\ENQ\DC2\EOT\175\ENQ\b\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\f\SOH\DC2\EOT\175\ENQ\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\f\ETX\DC2\EOT\175\ENQ\DC4\SYN\n\
    \\129\SOH\n\
    \\EOT\EOT\SI\STX\r\DC2\EOT\180\ENQ\EOT$\SUBs IgnoreEmpty specifies that the validation rules of this field should be\n\
    \ evaluated only if the field is not empty\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\r\EOT\DC2\EOT\180\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\r\ENQ\DC2\EOT\180\ENQ\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\r\SOH\DC2\EOT\180\ENQ\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\r\ETX\DC2\EOT\180\ENQ!#\n\
    \I\n\
    \\STX\EOT\DLE\DC2\ACK\184\ENQ\NUL\199\ENQ\SOH\SUB; EnumRules describe the constraints applied to enum values\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\184\ENQ\b\DC1\n\
    \S\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\186\ENQ\EOT$\SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\EOT\DC2\EOT\186\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\186\ENQ\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\186\ENQ\DC3\CAN\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\186\ENQ\"#\n\
    \\140\SOH\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\EOT\190\ENQ\EOT$\SUB~ DefinedOnly specifies that this field must be only one of the defined\n\
    \ values for this enum, failing on any undefined value.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\EOT\DC2\EOT\190\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ENQ\DC2\EOT\190\ENQ\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\EOT\190\ENQ\DC3\US\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\EOT\190\ENQ\"#\n\
    \Z\n\
    \\EOT\EOT\DLE\STX\STX\DC2\EOT\194\ENQ\EOT$\SUBL In specifies that this field must be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\EOT\DC2\EOT\194\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ENQ\DC2\EOT\194\ENQ\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\SOH\DC2\EOT\194\ENQ\DC3\NAK\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ETX\DC2\EOT\194\ENQ\"#\n\
    \_\n\
    \\EOT\EOT\DLE\STX\ETX\DC2\EOT\198\ENQ\EOT$\SUBQ NotIn specifies that this field cannot be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\EOT\DC2\EOT\198\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ENQ\DC2\EOT\198\ENQ\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\SOH\DC2\EOT\198\ENQ\DC3\EM\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ETX\DC2\EOT\198\ENQ\"#\n\
    \\153\SOH\n\
    \\STX\EOT\DC1\DC2\ACK\203\ENQ\NUL\210\ENQ\SOH\SUB\138\SOH MessageRules describe the constraints applied to embedded message values.\n\
    \ For message-type fields, validation is performed recursively.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\203\ENQ\b\DC4\n\
    \_\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\206\ENQ\EOT\US\SUBQ Skip specifies that the validation rules of this field should not be\n\
    \ evaluated\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\EOT\DC2\EOT\206\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\EOT\206\ENQ\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\206\ENQ\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\206\ENQ\GS\RS\n\
    \>\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\209\ENQ\EOT\US\SUB0 Required specifies that this field must be set\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\EOT\DC2\EOT\209\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ENQ\DC2\EOT\209\ENQ\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\209\ENQ\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\209\ENQ\GS\RS\n\
    \S\n\
    \\STX\EOT\DC2\DC2\ACK\213\ENQ\NUL\235\ENQ\SOH\SUBE RepeatedRules describe the constraints applied to `repeated` values\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\213\ENQ\b\NAK\n\
    \h\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\216\ENQ\EOT\"\SUBZ MinItems specifies that this field must have the specified number of\n\
    \ items at a minimum\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\EOT\DC2\EOT\216\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\EOT\216\ENQ\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\216\ENQ\DC4\GS\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\216\ENQ !\n\
    \h\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\EOT\220\ENQ\EOT\"\SUBZ MaxItems specifies that this field must have the specified number of\n\
    \ items at a maximum\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\EOT\DC2\EOT\220\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ENQ\DC2\EOT\220\ENQ\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\EOT\220\ENQ\DC4\GS\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\EOT\220\ENQ !\n\
    \\172\SOH\n\
    \\EOT\EOT\DC2\STX\STX\DC2\EOT\225\ENQ\EOT\"\SUB\157\SOH Unique specifies that all elements in this field must be unique. This\n\
    \ contraint is only applicable to scalar and enum types (messages are not\n\
    \ supported).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\EOT\DC2\EOT\225\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ENQ\DC2\EOT\225\ENQ\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\SOH\DC2\EOT\225\ENQ\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ETX\DC2\EOT\225\ENQ !\n\
    \\193\SOH\n\
    \\EOT\EOT\DC2\STX\ETX\DC2\EOT\230\ENQ\EOT\"\SUB\178\SOH Items specifies the contraints to be applied to each item in the field.\n\
    \ Repeated message fields will still execute validation against each item\n\
    \ unless skip is specified here.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\EOT\DC2\EOT\230\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\ACK\DC2\EOT\230\ENQ\r\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\SOH\DC2\EOT\230\ENQ\CAN\GS\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\ETX\DC2\EOT\230\ENQ !\n\
    \\129\SOH\n\
    \\EOT\EOT\DC2\STX\EOT\DC2\EOT\234\ENQ\EOT#\SUBs IgnoreEmpty specifies that the validation rules of this field should be\n\
    \ evaluated only if the field is not empty\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\EOT\DC2\EOT\234\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\ENQ\DC2\EOT\234\ENQ\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\SOH\DC2\EOT\234\ENQ\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\ETX\DC2\EOT\234\ENQ!\"\n\
    \I\n\
    \\STX\EOT\DC3\DC2\ACK\238\ENQ\NUL\134\ACK\SOH\SUB; MapRules describe the constraints applied to `map` values\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\238\ENQ\b\DLE\n\
    \f\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\241\ENQ\EOT\"\SUBX MinPairs specifies that this field must have the specified number of\n\
    \ KVs at a minimum\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\EOT\DC2\EOT\241\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\EOT\241\ENQ\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\241\ENQ\DC4\GS\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\241\ENQ !\n\
    \f\n\
    \\EOT\EOT\DC3\STX\SOH\DC2\EOT\245\ENQ\EOT\"\SUBX MaxPairs specifies that this field must have the specified number of\n\
    \ KVs at a maximum\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\EOT\DC2\EOT\245\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ENQ\DC2\EOT\245\ENQ\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\SOH\DC2\EOT\245\ENQ\DC4\GS\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ETX\DC2\EOT\245\ENQ !\n\
    \~\n\
    \\EOT\EOT\DC3\STX\STX\DC2\EOT\249\ENQ\EOT \SUBp NoSparse specifies values in this field cannot be unset. This only\n\
    \ applies to map's with message value types.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\EOT\DC2\EOT\249\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\ENQ\DC2\EOT\249\ENQ\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\SOH\DC2\EOT\249\ENQ\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\ETX\DC2\EOT\249\ENQ\RS\US\n\
    \V\n\
    \\EOT\EOT\DC3\STX\ETX\DC2\EOT\252\ENQ\EOT#\SUBH Keys specifies the constraints to be applied to each key in the field.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ETX\EOT\DC2\EOT\252\ENQ\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ETX\ACK\DC2\EOT\252\ENQ\r\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ETX\SOH\DC2\EOT\252\ENQ\CAN\FS\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ETX\ETX\DC2\EOT\252\ENQ!\"\n\
    \\194\SOH\n\
    \\EOT\EOT\DC3\STX\EOT\DC2\EOT\129\ACK\EOT#\SUB\179\SOH Values specifies the constraints to be applied to the value of each key\n\
    \ in the field. Message values will still have their validations evaluated\n\
    \ unless skip is specified here.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\EOT\EOT\DC2\EOT\129\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\EOT\ACK\DC2\EOT\129\ACK\r\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\EOT\SOH\DC2\EOT\129\ACK\CAN\RS\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\EOT\ETX\DC2\EOT\129\ACK!\"\n\
    \\129\SOH\n\
    \\EOT\EOT\DC3\STX\ENQ\DC2\EOT\133\ACK\EOT#\SUBs IgnoreEmpty specifies that the validation rules of this field should be\n\
    \ evaluated only if the field is not empty\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ENQ\EOT\DC2\EOT\133\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ENQ\ENQ\DC2\EOT\133\ACK\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ENQ\SOH\DC2\EOT\133\ACK\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ENQ\ETX\DC2\EOT\133\ACK!\"\n\
    \o\n\
    \\STX\EOT\DC4\DC2\ACK\138\ACK\NUL\149\ACK\SOH\SUBa AnyRules describe constraints applied exclusively to the\n\
    \ `google.protobuf.Any` well-known type\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\138\ACK\b\DLE\n\
    \>\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\140\ACK\EOT\US\SUB0 Required specifies that this field must be set\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\EOT\DC2\EOT\140\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ENQ\DC2\EOT\140\ACK\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\140\ACK\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\140\ACK\GS\RS\n\
    \h\n\
    \\EOT\EOT\DC4\STX\SOH\DC2\EOT\144\ACK\EOT\US\SUBZ In specifies that this field's `type_url` must be equal to one of the\n\
    \ specified values.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\EOT\DC2\EOT\144\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ENQ\DC2\EOT\144\ACK\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\SOH\DC2\EOT\144\ACK\DC4\SYN\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ETX\DC2\EOT\144\ACK\GS\RS\n\
    \o\n\
    \\EOT\EOT\DC4\STX\STX\DC2\EOT\148\ACK\EOT\US\SUBa NotIn specifies that this field's `type_url` must not be equal to any of\n\
    \ the specified values.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\STX\EOT\DC2\EOT\148\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\STX\ENQ\DC2\EOT\148\ACK\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\STX\SOH\DC2\EOT\148\ACK\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\STX\ETX\DC2\EOT\148\ACK\GS\RS\n\
    \}\n\
    \\STX\EOT\NAK\DC2\ACK\153\ACK\NUL\183\ACK\SOH\SUBo DurationRules describe the constraints applied exclusively to the\n\
    \ `google.protobuf.Duration` well-known type\n\
    \\n\
    \\v\n\
    \\ETX\EOT\NAK\SOH\DC2\EOT\153\ACK\b\NAK\n\
    \>\n\
    \\EOT\EOT\NAK\STX\NUL\DC2\EOT\155\ACK\EOT\US\SUB0 Required specifies that this field must be set\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\EOT\DC2\EOT\155\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ENQ\DC2\EOT\155\ACK\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\SOH\DC2\EOT\155\ACK\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ETX\DC2\EOT\155\ACK\GS\RS\n\
    \S\n\
    \\EOT\EOT\NAK\STX\SOH\DC2\EOT\158\ACK\EOT0\SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\EOT\DC2\EOT\158\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ACK\DC2\EOT\158\ACK\r%\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\SOH\DC2\EOT\158\ACK&+\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ETX\DC2\EOT\158\ACK./\n\
    \^\n\
    \\EOT\EOT\NAK\STX\STX\DC2\EOT\162\ACK\EOT-\SUBP Lt specifies that this field must be less than the specified value,\n\
    \ exclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\EOT\DC2\EOT\162\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\ACK\DC2\EOT\162\ACK\r%\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\SOH\DC2\EOT\162\ACK&(\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\ETX\DC2\EOT\162\ACK+,\n\
    \^\n\
    \\EOT\EOT\NAK\STX\ETX\DC2\EOT\166\ACK\EOT.\SUBP Lt specifies that this field must be less than the specified value,\n\
    \ inclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ETX\EOT\DC2\EOT\166\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ETX\ACK\DC2\EOT\166\ACK\r%\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ETX\SOH\DC2\EOT\166\ACK&)\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ETX\ETX\DC2\EOT\166\ACK,-\n\
    \a\n\
    \\EOT\EOT\NAK\STX\EOT\DC2\EOT\170\ACK\EOT-\SUBS Gt specifies that this field must be greater than the specified value,\n\
    \ exclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\EOT\EOT\DC2\EOT\170\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\EOT\ACK\DC2\EOT\170\ACK\r%\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\EOT\SOH\DC2\EOT\170\ACK&(\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\EOT\ETX\DC2\EOT\170\ACK+,\n\
    \b\n\
    \\EOT\EOT\NAK\STX\ENQ\DC2\EOT\174\ACK\EOT.\SUBT Gte specifies that this field must be greater than the specified value,\n\
    \ inclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ENQ\EOT\DC2\EOT\174\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ENQ\ACK\DC2\EOT\174\ACK\r%\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ENQ\SOH\DC2\EOT\174\ACK&)\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ENQ\ETX\DC2\EOT\174\ACK,-\n\
    \Z\n\
    \\EOT\EOT\NAK\STX\ACK\DC2\EOT\178\ACK\EOT-\SUBL In specifies that this field must be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ACK\EOT\DC2\EOT\178\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ACK\ACK\DC2\EOT\178\ACK\r%\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ACK\SOH\DC2\EOT\178\ACK&(\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ACK\ETX\DC2\EOT\178\ACK+,\n\
    \_\n\
    \\EOT\EOT\NAK\STX\a\DC2\EOT\182\ACK\EOT1\SUBQ NotIn specifies that this field cannot be equal to one of the specified\n\
    \ values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\a\EOT\DC2\EOT\182\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\a\ACK\DC2\EOT\182\ACK\r%\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\a\SOH\DC2\EOT\182\ACK&,\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\a\ETX\DC2\EOT\182\ACK/0\n\
    \\DEL\n\
    \\STX\EOT\SYN\DC2\ACK\187\ACK\NUL\222\ACK\SOH\SUBq TimestampRules describe the constraints applied exclusively to the\n\
    \ `google.protobuf.Timestamp` well-known type\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SYN\SOH\DC2\EOT\187\ACK\b\SYN\n\
    \>\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\EOT\189\ACK\EOT\US\SUB0 Required specifies that this field must be set\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\EOT\DC2\EOT\189\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ENQ\DC2\EOT\189\ACK\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\EOT\189\ACK\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\EOT\189\ACK\GS\RS\n\
    \S\n\
    \\EOT\EOT\SYN\STX\SOH\DC2\EOT\192\ACK\EOT1\SUBE Const specifies that this field must be exactly the specified value\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\EOT\DC2\EOT\192\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ACK\DC2\EOT\192\ACK\r&\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\SOH\DC2\EOT\192\ACK',\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ETX\DC2\EOT\192\ACK/0\n\
    \^\n\
    \\EOT\EOT\SYN\STX\STX\DC2\EOT\196\ACK\EOT.\SUBP Lt specifies that this field must be less than the specified value,\n\
    \ exclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\EOT\DC2\EOT\196\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\ACK\DC2\EOT\196\ACK\r&\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\SOH\DC2\EOT\196\ACK')\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\ETX\DC2\EOT\196\ACK,-\n\
    \_\n\
    \\EOT\EOT\SYN\STX\ETX\DC2\EOT\200\ACK\EOT/\SUBQ Lte specifies that this field must be less than the specified value,\n\
    \ inclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\EOT\DC2\EOT\200\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\ACK\DC2\EOT\200\ACK\r&\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\SOH\DC2\EOT\200\ACK'*\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\ETX\DC2\EOT\200\ACK-.\n\
    \a\n\
    \\EOT\EOT\SYN\STX\EOT\DC2\EOT\204\ACK\EOT.\SUBS Gt specifies that this field must be greater than the specified value,\n\
    \ exclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\EOT\DC2\EOT\204\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\ACK\DC2\EOT\204\ACK\r&\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\SOH\DC2\EOT\204\ACK')\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\ETX\DC2\EOT\204\ACK,-\n\
    \b\n\
    \\EOT\EOT\SYN\STX\ENQ\DC2\EOT\208\ACK\EOT/\SUBT Gte specifies that this field must be greater than the specified value,\n\
    \ inclusive\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ENQ\EOT\DC2\EOT\208\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ENQ\ACK\DC2\EOT\208\ACK\r&\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ENQ\SOH\DC2\EOT\208\ACK'*\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ENQ\ETX\DC2\EOT\208\ACK-.\n\
    \{\n\
    \\EOT\EOT\SYN\STX\ACK\DC2\EOT\212\ACK\EOT\RS\SUBm LtNow specifies that this must be less than the current time. LtNow\n\
    \ can only be used with the Within rule.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ACK\EOT\DC2\EOT\212\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ACK\ENQ\DC2\EOT\212\ACK\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ACK\SOH\DC2\EOT\212\ACK\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ACK\ETX\DC2\EOT\212\ACK\FS\GS\n\
    \~\n\
    \\EOT\EOT\SYN\STX\a\DC2\EOT\216\ACK\EOT\RS\SUBp GtNow specifies that this must be greater than the current time. GtNow\n\
    \ can only be used with the Within rule.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\a\EOT\DC2\EOT\216\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\a\ENQ\DC2\EOT\216\ACK\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\a\SOH\DC2\EOT\216\ACK\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\a\ETX\DC2\EOT\216\ACK\FS\GS\n\
    \\170\SOH\n\
    \\EOT\EOT\SYN\STX\b\DC2\EOT\221\ACK\EOT1\SUB\155\SOH Within specifies that this field must be within this duration of the\n\
    \ current time. This constraint can be used alone or with the LtNow and\n\
    \ GtNow rules.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\b\EOT\DC2\EOT\221\ACK\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\b\ACK\DC2\EOT\221\ACK\r%\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\b\SOH\DC2\EOT\221\ACK&,\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\b\ETX\DC2\EOT\221\ACK/0"