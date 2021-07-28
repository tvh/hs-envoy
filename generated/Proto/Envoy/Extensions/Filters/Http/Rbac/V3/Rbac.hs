{- This file was auto-generated from envoy/extensions/filters/http/rbac/v3/rbac.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Rbac.V3.Rbac (
        RBAC(), RBACPerRoute()
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
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Rbac.V3.Rbac_Fields.rules' @:: Lens' RBAC Proto.Envoy.Config.Rbac.V3.Rbac.RBAC@
         * 'Proto.Envoy.Extensions.Filters.Http.Rbac.V3.Rbac_Fields.maybe'rules' @:: Lens' RBAC (Prelude.Maybe Proto.Envoy.Config.Rbac.V3.Rbac.RBAC)@
         * 'Proto.Envoy.Extensions.Filters.Http.Rbac.V3.Rbac_Fields.shadowRules' @:: Lens' RBAC Proto.Envoy.Config.Rbac.V3.Rbac.RBAC@
         * 'Proto.Envoy.Extensions.Filters.Http.Rbac.V3.Rbac_Fields.maybe'shadowRules' @:: Lens' RBAC (Prelude.Maybe Proto.Envoy.Config.Rbac.V3.Rbac.RBAC)@
         * 'Proto.Envoy.Extensions.Filters.Http.Rbac.V3.Rbac_Fields.shadowRulesStatPrefix' @:: Lens' RBAC Data.Text.Text@ -}
data RBAC
  = RBAC'_constructor {_RBAC'rules :: !(Prelude.Maybe Proto.Envoy.Config.Rbac.V3.Rbac.RBAC),
                       _RBAC'shadowRules :: !(Prelude.Maybe Proto.Envoy.Config.Rbac.V3.Rbac.RBAC),
                       _RBAC'shadowRulesStatPrefix :: !Data.Text.Text,
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
instance Data.ProtoLens.Message RBAC where
  messageName _
    = Data.Text.pack "envoy.extensions.filters.http.rbac.v3.RBAC"
  packedMessageDescriptor _
    = "\n\
      \\EOTRBAC\DC20\n\
      \\ENQrules\CAN\SOH \SOH(\v2\SUB.envoy.config.rbac.v3.RBACR\ENQrules\DC2=\n\
      \\fshadow_rules\CAN\STX \SOH(\v2\SUB.envoy.config.rbac.v3.RBACR\vshadowRules\DC27\n\
      \\CANshadow_rules_stat_prefix\CAN\ETX \SOH(\tR\NAKshadowRulesStatPrefix:,\154\197\136\RS'\n\
      \%envoy.config.filter.http.rbac.v2.RBAC"
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
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rules__field_descriptor),
           (Data.ProtoLens.Tag 2, shadowRules__field_descriptor),
           (Data.ProtoLens.Tag 3, shadowRulesStatPrefix__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RBAC'_unknownFields
        (\ x__ y__ -> x__ {_RBAC'_unknownFields = y__})
  defMessage
    = RBAC'_constructor
        {_RBAC'rules = Prelude.Nothing,
         _RBAC'shadowRules = Prelude.Nothing,
         _RBAC'shadowRulesStatPrefix = Data.ProtoLens.fieldDefault,
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
                                       "shadow_rules_stat_prefix"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"shadowRulesStatPrefix") y x)
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
instance Control.DeepSeq.NFData RBAC where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RBAC'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RBAC'rules x__)
                (Control.DeepSeq.deepseq
                   (_RBAC'shadowRules x__)
                   (Control.DeepSeq.deepseq (_RBAC'shadowRulesStatPrefix x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Rbac.V3.Rbac_Fields.rbac' @:: Lens' RBACPerRoute RBAC@
         * 'Proto.Envoy.Extensions.Filters.Http.Rbac.V3.Rbac_Fields.maybe'rbac' @:: Lens' RBACPerRoute (Prelude.Maybe RBAC)@ -}
data RBACPerRoute
  = RBACPerRoute'_constructor {_RBACPerRoute'rbac :: !(Prelude.Maybe RBAC),
                               _RBACPerRoute'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RBACPerRoute where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RBACPerRoute "rbac" RBAC where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RBACPerRoute'rbac (\ x__ y__ -> x__ {_RBACPerRoute'rbac = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RBACPerRoute "maybe'rbac" (Prelude.Maybe RBAC) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RBACPerRoute'rbac (\ x__ y__ -> x__ {_RBACPerRoute'rbac = y__}))
        Prelude.id
instance Data.ProtoLens.Message RBACPerRoute where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.rbac.v3.RBACPerRoute"
  packedMessageDescriptor _
    = "\n\
      \\fRBACPerRoute\DC2?\n\
      \\EOTrbac\CAN\STX \SOH(\v2+.envoy.extensions.filters.http.rbac.v3.RBACR\EOTrbac:4\154\197\136\RS/\n\
      \-envoy.config.filter.http.rbac.v2.RBACPerRouteJ\EOT\b\SOH\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rbac__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rbac"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RBAC)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rbac")) ::
              Data.ProtoLens.FieldDescriptor RBACPerRoute
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 2, rbac__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RBACPerRoute'_unknownFields
        (\ x__ y__ -> x__ {_RBACPerRoute'_unknownFields = y__})
  defMessage
    = RBACPerRoute'_constructor
        {_RBACPerRoute'rbac = Prelude.Nothing,
         _RBACPerRoute'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RBACPerRoute -> Data.ProtoLens.Encoding.Bytes.Parser RBACPerRoute
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
                                       "rbac"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rbac") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RBACPerRoute"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rbac") _x
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
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RBACPerRoute where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RBACPerRoute'_unknownFields x__)
             (Control.DeepSeq.deepseq (_RBACPerRoute'rbac x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \0envoy/extensions/filters/http/rbac/v3/rbac.proto\DC2%envoy.extensions.filters.http.rbac.v3\SUB\USenvoy/config/rbac/v3/rbac.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\222\SOH\n\
    \\EOTRBAC\DC20\n\
    \\ENQrules\CAN\SOH \SOH(\v2\SUB.envoy.config.rbac.v3.RBACR\ENQrules\DC2=\n\
    \\fshadow_rules\CAN\STX \SOH(\v2\SUB.envoy.config.rbac.v3.RBACR\vshadowRules\DC27\n\
    \\CANshadow_rules_stat_prefix\CAN\ETX \SOH(\tR\NAKshadowRulesStatPrefix:,\154\197\136\RS'\n\
    \%envoy.config.filter.http.rbac.v2.RBAC\"\139\SOH\n\
    \\fRBACPerRoute\DC2?\n\
    \\EOTrbac\CAN\STX \SOH(\v2+.envoy.extensions.filters.http.rbac.v3.RBACR\EOTrbac:4\154\197\136\RS/\n\
    \-envoy.config.filter.http.rbac.v2.RBACPerRouteJ\EOT\b\SOH\DLE\STXBJ\n\
    \3io.envoyproxy.envoy.extensions.filters.http.rbac.v3B\tRbacProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\203\n\
    \\n\
    \\ACK\DC2\EOT\NUL\NUL0\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL.\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULL\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NULL\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \\185\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL%\SOH\SUB\NAK RBAC filter config.\n\
    \2\149\SOH [#protodoc-title: RBAC]\n\
    \ Role-Based Access Control :ref:`configuration overview <config_http_filters_rbac>`.\n\
    \ [#extension: envoy.filters.http.rbac]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\f\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC4\STX\NAK.\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC4\STX\NAK.\n\
    \\145\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\STX \SUB\131\SOH Specify the RBAC rules to be applied globally.\n\
    \ If absent, no enforcing RBAC policy will be applied.\n\
    \ If present and empty, DENY.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\SUB\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\SYN\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB\RS\US\n\
    \\198\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\US\STX'\SUB\184\SOH Shadow rules are not enforced by the filter (i.e., returning a 403)\n\
    \ but will emit stats and logs and can be used for rule testing.\n\
    \ If absent, no shadow RBAC policy will be applied.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\US\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\US\SYN\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\US%&\n\
    \\191\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX$\STX&\SUB\177\SOH If specified, shadow rules will emit stats with the given prefix.\n\
    \ This is useful to distinguish the stat when there are more than 1 RBAC filter configured with\n\
    \ shadow rules.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX$\t!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX$$%\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT'\NUL0\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX'\b\DC4\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT(\STX)6\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT(\STX)6\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\t\DC2\ETX+\STX\r\n\
    \\v\n\
    \\EOT\EOT\SOH\t\NUL\DC2\ETX+\v\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\NUL\SOH\DC2\ETX+\v\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\NUL\STX\DC2\ETX+\v\f\n\
    \\153\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX/\STX\DLE\SUB\139\SOH Override the global configuration of the filter with this new config.\n\
    \ If absent, the global RBAC policy will be disabled for this route.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX/\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX/\a\v\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX/\SO\SIb\ACKproto3"