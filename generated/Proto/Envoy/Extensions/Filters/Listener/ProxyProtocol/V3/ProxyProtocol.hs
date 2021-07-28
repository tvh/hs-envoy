{- This file was auto-generated from envoy/extensions/filters/listener/proxy_protocol/v3/proxy_protocol.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Listener.ProxyProtocol.V3.ProxyProtocol (
        ProxyProtocol(), ProxyProtocol'KeyValuePair(), ProxyProtocol'Rule()
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
     
         * 'Proto.Envoy.Extensions.Filters.Listener.ProxyProtocol.V3.ProxyProtocol_Fields.rules' @:: Lens' ProxyProtocol [ProxyProtocol'Rule]@
         * 'Proto.Envoy.Extensions.Filters.Listener.ProxyProtocol.V3.ProxyProtocol_Fields.vec'rules' @:: Lens' ProxyProtocol (Data.Vector.Vector ProxyProtocol'Rule)@ -}
data ProxyProtocol
  = ProxyProtocol'_constructor {_ProxyProtocol'rules :: !(Data.Vector.Vector ProxyProtocol'Rule),
                                _ProxyProtocol'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProxyProtocol where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProxyProtocol "rules" [ProxyProtocol'Rule] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProxyProtocol'rules
           (\ x__ y__ -> x__ {_ProxyProtocol'rules = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProxyProtocol "vec'rules" (Data.Vector.Vector ProxyProtocol'Rule) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProxyProtocol'rules
           (\ x__ y__ -> x__ {_ProxyProtocol'rules = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProxyProtocol where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.listener.proxy_protocol.v3.ProxyProtocol"
  packedMessageDescriptor _
    = "\n\
      \\rProxyProtocol\DC2]\n\
      \\ENQrules\CAN\SOH \ETX(\v2G.envoy.extensions.filters.listener.proxy_protocol.v3.ProxyProtocol.RuleR\ENQrules\SUBX\n\
      \\fKeyValuePair\DC2-\n\
      \\DC2metadata_namespace\CAN\SOH \SOH(\tR\DC1metadataNamespace\DC2\EM\n\
      \\ETXkey\CAN\STX \SOH(\tR\ETXkeyB\a\250B\EOTr\STX\DLE\SOH\SUB\162\SOH\n\
      \\EOTRule\DC2#\n\
      \\btlv_type\CAN\SOH \SOH(\rR\atlvTypeB\b\250B\ENQ*\ETX\DLE\128\STX\DC2u\n\
      \\SOon_tlv_present\CAN\STX \SOH(\v2O.envoy.extensions.filters.listener.proxy_protocol.v3.ProxyProtocol.KeyValuePairR\fonTlvPresent:C\154\197\136\RS>\n\
      \<envoy.config.filter.listener.proxy_protocol.v2.ProxyProtocol"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rules__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rules"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProxyProtocol'Rule)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"rules")) ::
              Data.ProtoLens.FieldDescriptor ProxyProtocol
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, rules__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProxyProtocol'_unknownFields
        (\ x__ y__ -> x__ {_ProxyProtocol'_unknownFields = y__})
  defMessage
    = ProxyProtocol'_constructor
        {_ProxyProtocol'rules = Data.Vector.Generic.empty,
         _ProxyProtocol'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProxyProtocol
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ProxyProtocol'Rule
             -> Data.ProtoLens.Encoding.Bytes.Parser ProxyProtocol
        loop x mutable'rules
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'rules <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'rules)
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
                              (Data.ProtoLens.Field.field @"vec'rules") frozen'rules x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "rules"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'rules y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'rules
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'rules <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'rules)
          "ProxyProtocol"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'rules") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ProxyProtocol where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProxyProtocol'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ProxyProtocol'rules x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Listener.ProxyProtocol.V3.ProxyProtocol_Fields.metadataNamespace' @:: Lens' ProxyProtocol'KeyValuePair Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Listener.ProxyProtocol.V3.ProxyProtocol_Fields.key' @:: Lens' ProxyProtocol'KeyValuePair Data.Text.Text@ -}
data ProxyProtocol'KeyValuePair
  = ProxyProtocol'KeyValuePair'_constructor {_ProxyProtocol'KeyValuePair'metadataNamespace :: !Data.Text.Text,
                                             _ProxyProtocol'KeyValuePair'key :: !Data.Text.Text,
                                             _ProxyProtocol'KeyValuePair'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProxyProtocol'KeyValuePair where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProxyProtocol'KeyValuePair "metadataNamespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProxyProtocol'KeyValuePair'metadataNamespace
           (\ x__ y__
              -> x__ {_ProxyProtocol'KeyValuePair'metadataNamespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProxyProtocol'KeyValuePair "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProxyProtocol'KeyValuePair'key
           (\ x__ y__ -> x__ {_ProxyProtocol'KeyValuePair'key = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProxyProtocol'KeyValuePair where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.listener.proxy_protocol.v3.ProxyProtocol.KeyValuePair"
  packedMessageDescriptor _
    = "\n\
      \\fKeyValuePair\DC2-\n\
      \\DC2metadata_namespace\CAN\SOH \SOH(\tR\DC1metadataNamespace\DC2\EM\n\
      \\ETXkey\CAN\STX \SOH(\tR\ETXkeyB\a\250B\EOTr\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        metadataNamespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata_namespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadataNamespace")) ::
              Data.ProtoLens.FieldDescriptor ProxyProtocol'KeyValuePair
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor ProxyProtocol'KeyValuePair
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, metadataNamespace__field_descriptor),
           (Data.ProtoLens.Tag 2, key__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProxyProtocol'KeyValuePair'_unknownFields
        (\ x__ y__
           -> x__ {_ProxyProtocol'KeyValuePair'_unknownFields = y__})
  defMessage
    = ProxyProtocol'KeyValuePair'_constructor
        {_ProxyProtocol'KeyValuePair'metadataNamespace = Data.ProtoLens.fieldDefault,
         _ProxyProtocol'KeyValuePair'key = Data.ProtoLens.fieldDefault,
         _ProxyProtocol'KeyValuePair'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProxyProtocol'KeyValuePair
          -> Data.ProtoLens.Encoding.Bytes.Parser ProxyProtocol'KeyValuePair
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
                                       "metadata_namespace"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"metadataNamespace") y x)
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
          (do loop Data.ProtoLens.defMessage) "KeyValuePair"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"metadataNamespace") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
instance Control.DeepSeq.NFData ProxyProtocol'KeyValuePair where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProxyProtocol'KeyValuePair'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProxyProtocol'KeyValuePair'metadataNamespace x__)
                (Control.DeepSeq.deepseq (_ProxyProtocol'KeyValuePair'key x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Listener.ProxyProtocol.V3.ProxyProtocol_Fields.tlvType' @:: Lens' ProxyProtocol'Rule Data.Word.Word32@
         * 'Proto.Envoy.Extensions.Filters.Listener.ProxyProtocol.V3.ProxyProtocol_Fields.onTlvPresent' @:: Lens' ProxyProtocol'Rule ProxyProtocol'KeyValuePair@
         * 'Proto.Envoy.Extensions.Filters.Listener.ProxyProtocol.V3.ProxyProtocol_Fields.maybe'onTlvPresent' @:: Lens' ProxyProtocol'Rule (Prelude.Maybe ProxyProtocol'KeyValuePair)@ -}
data ProxyProtocol'Rule
  = ProxyProtocol'Rule'_constructor {_ProxyProtocol'Rule'tlvType :: !Data.Word.Word32,
                                     _ProxyProtocol'Rule'onTlvPresent :: !(Prelude.Maybe ProxyProtocol'KeyValuePair),
                                     _ProxyProtocol'Rule'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProxyProtocol'Rule where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProxyProtocol'Rule "tlvType" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProxyProtocol'Rule'tlvType
           (\ x__ y__ -> x__ {_ProxyProtocol'Rule'tlvType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProxyProtocol'Rule "onTlvPresent" ProxyProtocol'KeyValuePair where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProxyProtocol'Rule'onTlvPresent
           (\ x__ y__ -> x__ {_ProxyProtocol'Rule'onTlvPresent = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ProxyProtocol'Rule "maybe'onTlvPresent" (Prelude.Maybe ProxyProtocol'KeyValuePair) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProxyProtocol'Rule'onTlvPresent
           (\ x__ y__ -> x__ {_ProxyProtocol'Rule'onTlvPresent = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProxyProtocol'Rule where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.listener.proxy_protocol.v3.ProxyProtocol.Rule"
  packedMessageDescriptor _
    = "\n\
      \\EOTRule\DC2#\n\
      \\btlv_type\CAN\SOH \SOH(\rR\atlvTypeB\b\250B\ENQ*\ETX\DLE\128\STX\DC2u\n\
      \\SOon_tlv_present\CAN\STX \SOH(\v2O.envoy.extensions.filters.listener.proxy_protocol.v3.ProxyProtocol.KeyValuePairR\fonTlvPresent"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tlvType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tlv_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"tlvType")) ::
              Data.ProtoLens.FieldDescriptor ProxyProtocol'Rule
        onTlvPresent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "on_tlv_present"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProxyProtocol'KeyValuePair)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'onTlvPresent")) ::
              Data.ProtoLens.FieldDescriptor ProxyProtocol'Rule
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tlvType__field_descriptor),
           (Data.ProtoLens.Tag 2, onTlvPresent__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProxyProtocol'Rule'_unknownFields
        (\ x__ y__ -> x__ {_ProxyProtocol'Rule'_unknownFields = y__})
  defMessage
    = ProxyProtocol'Rule'_constructor
        {_ProxyProtocol'Rule'tlvType = Data.ProtoLens.fieldDefault,
         _ProxyProtocol'Rule'onTlvPresent = Prelude.Nothing,
         _ProxyProtocol'Rule'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProxyProtocol'Rule
          -> Data.ProtoLens.Encoding.Bytes.Parser ProxyProtocol'Rule
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
                                       "tlv_type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tlvType") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "on_tlv_present"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"onTlvPresent") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Rule"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"tlvType") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'onTlvPresent") _x
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
instance Control.DeepSeq.NFData ProxyProtocol'Rule where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProxyProtocol'Rule'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProxyProtocol'Rule'tlvType x__)
                (Control.DeepSeq.deepseq
                   (_ProxyProtocol'Rule'onTlvPresent x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Henvoy/extensions/filters/listener/proxy_protocol/v3/proxy_protocol.proto\DC23envoy.extensions.filters.listener.proxy_protocol.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\178\ETX\n\
    \\rProxyProtocol\DC2]\n\
    \\ENQrules\CAN\SOH \ETX(\v2G.envoy.extensions.filters.listener.proxy_protocol.v3.ProxyProtocol.RuleR\ENQrules\SUBX\n\
    \\fKeyValuePair\DC2-\n\
    \\DC2metadata_namespace\CAN\SOH \SOH(\tR\DC1metadataNamespace\DC2\EM\n\
    \\ETXkey\CAN\STX \SOH(\tR\ETXkeyB\a\250B\EOTr\STX\DLE\SOH\SUB\162\SOH\n\
    \\EOTRule\DC2#\n\
    \\btlv_type\CAN\SOH \SOH(\rR\atlvTypeB\b\250B\ENQ*\ETX\DLE\128\STX\DC2u\n\
    \\SOon_tlv_present\CAN\STX \SOH(\v2O.envoy.extensions.filters.listener.proxy_protocol.v3.ProxyProtocol.KeyValuePairR\fonTlvPresent:C\154\197\136\RS>\n\
    \<envoy.config.filter.listener.proxy_protocol.v2.ProxyProtocolBa\n\
    \Aio.envoyproxy.envoy.extensions.filters.listener.proxy_protocol.v3B\DC2ProxyProtocolProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\252\t\n\
    \\ACK\DC2\EOT\NUL\NUL*\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL<\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULZ\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NULZ\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL3\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL3\n\
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
    \\141\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC1\NUL*\SOH2\128\SOH [#protodoc-title: Proxy Protocol Filter]\n\
    \ PROXY protocol listener filter.\n\
    \ [#extension: envoy.filters.listener.proxy_protocol]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC1\b\NAK\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC2\STX\DC3E\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC2\STX\DC3E\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\NAK\STX\ESC\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\NAK\n\
    \\SYN\n\
    \Y\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\ETB\EOT\"\SUBJ The namespace \226\128\148 if this is empty, the filter's namespace will be used.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX\ETB\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\ETB\v\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\ETB !\n\
    \5\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX\SUB\EOT<\SUB& The key to use within the namespace.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX\SUB\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX\SUB\v\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX\SUB\DC1\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\b\DC2\ETX\SUB\DC3;\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\SOH\b\175\b\SO\DC2\ETX\SUB\DC4:\n\
    \Z\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOT\RS\STX&\ETX\SUBL A Rule defines what metadata to apply when a header is present or missing.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX\RS\n\
    \\SO\n\
    \\203\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETX\"\EOT>\SUB\187\SOH The type that triggers the rule - required\n\
    \ TLV type is defined as uint8_t in proxy protocol. See `the spec\n\
    \ <https://www.haproxy.org/download/2.1/doc/proxy-protocol.txt>`_ for details.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ENQ\DC2\ETX\"\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETX\"\v\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETX\"\SYN\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\b\DC2\ETX\"\CAN=\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\NUL\b\175\b\ENQ\DC2\ETX\"\EM<\n\
    \N\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\ETX%\EOT$\SUB? If the TLV type is present, apply this metadata KeyValuePair.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ACK\DC2\ETX%\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETX%\DC1\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETX%\"#\n\
    \6\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX)\STX\SUB\SUB) The list of rules to apply to requests.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX)\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX)\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX)\DLE\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX)\CAN\EMb\ACKproto3"