{- This file was auto-generated from envoy/extensions/filters/network/rbac/v3/rbac.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.Rbac.V3.Rbac (
        RBAC(), RBAC'EnforcementType(..), RBAC'EnforcementType(),
        RBAC'EnforcementType'UnrecognizedValue
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
import qualified Proto.Envoy.Config.Rbac.V3.Rbac
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.Rbac.V3.Rbac_Fields.rules' @:: Lens' RBAC Proto.Envoy.Config.Rbac.V3.Rbac.RBAC@
         * 'Proto.Envoy.Extensions.Filters.Network.Rbac.V3.Rbac_Fields.maybe'rules' @:: Lens' RBAC (Prelude.Maybe Proto.Envoy.Config.Rbac.V3.Rbac.RBAC)@
         * 'Proto.Envoy.Extensions.Filters.Network.Rbac.V3.Rbac_Fields.shadowRules' @:: Lens' RBAC Proto.Envoy.Config.Rbac.V3.Rbac.RBAC@
         * 'Proto.Envoy.Extensions.Filters.Network.Rbac.V3.Rbac_Fields.maybe'shadowRules' @:: Lens' RBAC (Prelude.Maybe Proto.Envoy.Config.Rbac.V3.Rbac.RBAC)@
         * 'Proto.Envoy.Extensions.Filters.Network.Rbac.V3.Rbac_Fields.shadowRulesStatPrefix' @:: Lens' RBAC Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.Rbac.V3.Rbac_Fields.statPrefix' @:: Lens' RBAC Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.Rbac.V3.Rbac_Fields.enforcementType' @:: Lens' RBAC RBAC'EnforcementType@ -}
data RBAC
  = RBAC'_constructor {_RBAC'rules :: !(Prelude.Maybe Proto.Envoy.Config.Rbac.V3.Rbac.RBAC),
                       _RBAC'shadowRules :: !(Prelude.Maybe Proto.Envoy.Config.Rbac.V3.Rbac.RBAC),
                       _RBAC'shadowRulesStatPrefix :: !Data.Text.Text,
                       _RBAC'statPrefix :: !Data.Text.Text,
                       _RBAC'enforcementType :: !RBAC'EnforcementType,
                       _RBAC'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RBAC where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RBAC "rules" Proto.Envoy.Config.Rbac.V3.Rbac.RBAC where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RBAC'rules (\ x__ y__ -> x__ {_RBAC'rules = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RBAC "maybe'rules" (Prelude.Maybe Proto.Envoy.Config.Rbac.V3.Rbac.RBAC) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RBAC'rules (\ x__ y__ -> x__ {_RBAC'rules = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RBAC "shadowRules" Proto.Envoy.Config.Rbac.V3.Rbac.RBAC where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RBAC'shadowRules (\ x__ y__ -> x__ {_RBAC'shadowRules = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RBAC "maybe'shadowRules" (Prelude.Maybe Proto.Envoy.Config.Rbac.V3.Rbac.RBAC) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RBAC'shadowRules (\ x__ y__ -> x__ {_RBAC'shadowRules = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RBAC "shadowRulesStatPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RBAC'shadowRulesStatPrefix
           (\ x__ y__ -> x__ {_RBAC'shadowRulesStatPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RBAC "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RBAC'statPrefix (\ x__ y__ -> x__ {_RBAC'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RBAC "enforcementType" RBAC'EnforcementType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RBAC'enforcementType
           (\ x__ y__ -> x__ {_RBAC'enforcementType = y__}))
        Prelude.id
instance Data.ProtoLens.Message RBAC where
  messageName _
    = Data.Text.pack "envoy.extensions.filters.network.rbac.v3.RBAC"
  packedMessageDescriptor _
    = "\n\
      \\EOTRBAC\DC20\n\
      \\ENQrules\CAN\SOH \SOH(\v2\SUB.envoy.config.rbac.v3.RBACR\ENQrules\DC2=\n\
      \\fshadow_rules\CAN\STX \SOH(\v2\SUB.envoy.config.rbac.v3.RBACR\vshadowRules\DC27\n\
      \\CANshadow_rules_stat_prefix\CAN\ENQ \SOH(\tR\NAKshadowRulesStatPrefix\DC2(\n\
      \\vstat_prefix\CAN\ETX \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2i\n\
      \\DLEenforcement_type\CAN\EOT \SOH(\SO2>.envoy.extensions.filters.network.rbac.v3.RBAC.EnforcementTypeR\SIenforcementType\"=\n\
      \\SIEnforcementType\DC2\SUB\n\
      \\SYNONE_TIME_ON_FIRST_BYTE\DLE\NUL\DC2\SO\n\
      \\n\
      \CONTINUOUS\DLE\SOH:/\154\197\136\RS*\n\
      \(envoy.config.filter.network.rbac.v2.RBAC"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rules__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rules"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Rbac.V3.Rbac.RBAC)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rules")) ::
              Data.ProtoLens.FieldDescriptor RBAC
        shadowRules__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "shadow_rules"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Rbac.V3.Rbac.RBAC)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'shadowRules")) ::
              Data.ProtoLens.FieldDescriptor RBAC
        shadowRulesStatPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "shadow_rules_stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"shadowRulesStatPrefix")) ::
              Data.ProtoLens.FieldDescriptor RBAC
        statPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"statPrefix")) ::
              Data.ProtoLens.FieldDescriptor RBAC
        enforcementType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enforcement_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor RBAC'EnforcementType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"enforcementType")) ::
              Data.ProtoLens.FieldDescriptor RBAC
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rules__field_descriptor),
           (Data.ProtoLens.Tag 2, shadowRules__field_descriptor),
           (Data.ProtoLens.Tag 5, shadowRulesStatPrefix__field_descriptor),
           (Data.ProtoLens.Tag 3, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 4, enforcementType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RBAC'_unknownFields
        (\ x__ y__ -> x__ {_RBAC'_unknownFields = y__})
  defMessage
    = RBAC'_constructor
        {_RBAC'rules = Prelude.Nothing,
         _RBAC'shadowRules = Prelude.Nothing,
         _RBAC'shadowRulesStatPrefix = Data.ProtoLens.fieldDefault,
         _RBAC'statPrefix = Data.ProtoLens.fieldDefault,
         _RBAC'enforcementType = Data.ProtoLens.fieldDefault,
         _RBAC'_unknownFields = []}
  parseMessage
    = let
        loop :: RBAC -> Data.ProtoLens.Encoding.Bytes.Parser RBAC
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
                                       "rules"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rules") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "shadow_rules"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"shadowRules") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "shadow_rules_stat_prefix"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"shadowRulesStatPrefix") y x)
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
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "enforcement_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"enforcementType") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RBAC"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rules") _x
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
                       (Data.ProtoLens.Field.field @"maybe'shadowRules") _x
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
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"shadowRulesStatPrefix") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"statPrefix") _x
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
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"enforcementType") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                  ((Prelude..)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     Prelude.fromEnum
                                     _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData RBAC where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RBAC'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RBAC'rules x__)
                (Control.DeepSeq.deepseq
                   (_RBAC'shadowRules x__)
                   (Control.DeepSeq.deepseq
                      (_RBAC'shadowRulesStatPrefix x__)
                      (Control.DeepSeq.deepseq
                         (_RBAC'statPrefix x__)
                         (Control.DeepSeq.deepseq (_RBAC'enforcementType x__) ())))))
newtype RBAC'EnforcementType'UnrecognizedValue
  = RBAC'EnforcementType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RBAC'EnforcementType
  = RBAC'ONE_TIME_ON_FIRST_BYTE |
    RBAC'CONTINUOUS |
    RBAC'EnforcementType'Unrecognized !RBAC'EnforcementType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RBAC'EnforcementType where
  maybeToEnum 0 = Prelude.Just RBAC'ONE_TIME_ON_FIRST_BYTE
  maybeToEnum 1 = Prelude.Just RBAC'CONTINUOUS
  maybeToEnum k
    = Prelude.Just
        (RBAC'EnforcementType'Unrecognized
           (RBAC'EnforcementType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum RBAC'ONE_TIME_ON_FIRST_BYTE = "ONE_TIME_ON_FIRST_BYTE"
  showEnum RBAC'CONTINUOUS = "CONTINUOUS"
  showEnum
    (RBAC'EnforcementType'Unrecognized (RBAC'EnforcementType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ONE_TIME_ON_FIRST_BYTE"
    = Prelude.Just RBAC'ONE_TIME_ON_FIRST_BYTE
    | (Prelude.==) k "CONTINUOUS" = Prelude.Just RBAC'CONTINUOUS
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RBAC'EnforcementType where
  minBound = RBAC'ONE_TIME_ON_FIRST_BYTE
  maxBound = RBAC'CONTINUOUS
instance Prelude.Enum RBAC'EnforcementType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum EnforcementType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum RBAC'ONE_TIME_ON_FIRST_BYTE = 0
  fromEnum RBAC'CONTINUOUS = 1
  fromEnum
    (RBAC'EnforcementType'Unrecognized (RBAC'EnforcementType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ RBAC'CONTINUOUS
    = Prelude.error
        "RBAC'EnforcementType.succ: bad argument RBAC'CONTINUOUS. This value would be out of bounds."
  succ RBAC'ONE_TIME_ON_FIRST_BYTE = RBAC'CONTINUOUS
  succ (RBAC'EnforcementType'Unrecognized _)
    = Prelude.error
        "RBAC'EnforcementType.succ: bad argument: unrecognized value"
  pred RBAC'ONE_TIME_ON_FIRST_BYTE
    = Prelude.error
        "RBAC'EnforcementType.pred: bad argument RBAC'ONE_TIME_ON_FIRST_BYTE. This value would be out of bounds."
  pred RBAC'CONTINUOUS = RBAC'ONE_TIME_ON_FIRST_BYTE
  pred (RBAC'EnforcementType'Unrecognized _)
    = Prelude.error
        "RBAC'EnforcementType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RBAC'EnforcementType where
  fieldDefault = RBAC'ONE_TIME_ON_FIRST_BYTE
instance Control.DeepSeq.NFData RBAC'EnforcementType where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \3envoy/extensions/filters/network/rbac/v3/rbac.proto\DC2(envoy.extensions.filters.network.rbac.v3\SUB\USenvoy/config/rbac/v3/rbac.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\181\ETX\n\
    \\EOTRBAC\DC20\n\
    \\ENQrules\CAN\SOH \SOH(\v2\SUB.envoy.config.rbac.v3.RBACR\ENQrules\DC2=\n\
    \\fshadow_rules\CAN\STX \SOH(\v2\SUB.envoy.config.rbac.v3.RBACR\vshadowRules\DC27\n\
    \\CANshadow_rules_stat_prefix\CAN\ENQ \SOH(\tR\NAKshadowRulesStatPrefix\DC2(\n\
    \\vstat_prefix\CAN\ETX \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2i\n\
    \\DLEenforcement_type\CAN\EOT \SOH(\SO2>.envoy.extensions.filters.network.rbac.v3.RBAC.EnforcementTypeR\SIenforcementType\"=\n\
    \\SIEnforcementType\DC2\SUB\n\
    \\SYNONE_TIME_ON_FIRST_BYTE\DLE\NUL\DC2\SO\n\
    \\n\
    \CONTINUOUS\DLE\SOH:/\154\197\136\RS*\n\
    \(envoy.config.filter.network.rbac.v2.RBACBM\n\
    \6io.envoyproxy.envoy.extensions.filters.network.rbac.v3B\tRbacProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\207\DC1\n\
    \\ACK\DC2\EOT\NUL\NUL?\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL1\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULO\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NULO\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\134\ETX\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NUL?\SOH\SUB\219\SOH RBAC network filter config.\n\
    \\n\
    \ Header should not be used in rules/shadow_rules in RBAC network filter as\n\
    \ this information is only available in :ref:`RBAC http filter <config_http_filters_rbac>`.\n\
    \ [#next-free-field: 6]\n\
    \2\155\SOH [#protodoc-title: RBAC]\n\
    \ Role-Based Access Control :ref:`configuration overview <config_network_filters_rbac>`.\n\
    \ [#extension: envoy.filters.network.rbac]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\f\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\EM\STX\SUB1\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\EM\STX\SUB1\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\FS\STX%\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\FS\a\SYN\n\
    \[\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\RS\EOT\US\SUBL Apply RBAC policies when the first byte of data arrives on the connection.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\RS\EOT\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\RS\GS\RS\n\
    \\161\STX\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX$\EOT\DC3\SUB\145\STX Continuously apply RBAC policies as data arrives. Use this mode when\n\
    \ using RBAC with message oriented protocols such as Mongo, MySQL, Kafka,\n\
    \ etc. when the protocol decoders emit dynamic metadata such as the\n\
    \ resources being accessed and the operations on the resources.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX$\EOT\SO\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX$\DC1\DC2\n\
    \\145\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX*\STX \SUB\131\SOH Specify the RBAC rules to be applied globally.\n\
    \ If absent, no enforcing RBAC policy will be applied.\n\
    \ If present and empty, DENY.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX*\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX*\SYN\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX*\RS\US\n\
    \\174\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX/\STX'\SUB\160\SOH Shadow rules are not enforced by the filter but will emit stats and logs\n\
    \ and can be used for rule testing.\n\
    \ If absent, no shadow RBAC policy will be applied.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX/\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX/\SYN\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX/%&\n\
    \\191\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX4\STX&\SUB\177\SOH If specified, shadow rules will emit stats with the given prefix.\n\
    \ This is useful to distinguish the stat when there are more than 1 RBAC filter configured with\n\
    \ shadow rules.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX4\t!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX4$%\n\
    \:\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX7\STXB\SUB- The prefix to use when emitting statistics.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX7\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX7\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX7\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX7\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\175\b\SO\DC2\ETX7\SUB@\n\
    \\231\STX\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX>\STX'\SUB\217\STX RBAC enforcement strategy. By default RBAC will be enforced only once\n\
    \ when the first byte of data arrives from the downstream. When used in\n\
    \ conjunction with filters that emit dynamic metadata after decoding\n\
    \ every payload (e.g., Mongo, MySQL, Kafka) set the enforcement type to\n\
    \ CONTINUOUS to enforce RBAC policies on every message boundary.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX>\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX>\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX>%&b\ACKproto3"