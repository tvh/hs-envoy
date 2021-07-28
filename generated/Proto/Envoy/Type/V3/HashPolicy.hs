{- This file was auto-generated from envoy/type/v3/hash_policy.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.V3.HashPolicy (
        HashPolicy(), HashPolicy'PolicySpecifier(..),
        _HashPolicy'SourceIp', HashPolicy'SourceIp()
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
     
         * 'Proto.Envoy.Type.V3.HashPolicy_Fields.maybe'policySpecifier' @:: Lens' HashPolicy (Prelude.Maybe HashPolicy'PolicySpecifier)@
         * 'Proto.Envoy.Type.V3.HashPolicy_Fields.maybe'sourceIp' @:: Lens' HashPolicy (Prelude.Maybe HashPolicy'SourceIp)@
         * 'Proto.Envoy.Type.V3.HashPolicy_Fields.sourceIp' @:: Lens' HashPolicy HashPolicy'SourceIp@ -}
data HashPolicy
  = HashPolicy'_constructor {_HashPolicy'policySpecifier :: !(Prelude.Maybe HashPolicy'PolicySpecifier),
                             _HashPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HashPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data HashPolicy'PolicySpecifier
  = HashPolicy'SourceIp' !HashPolicy'SourceIp
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField HashPolicy "maybe'policySpecifier" (Prelude.Maybe HashPolicy'PolicySpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HashPolicy'policySpecifier
           (\ x__ y__ -> x__ {_HashPolicy'policySpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HashPolicy "maybe'sourceIp" (Prelude.Maybe HashPolicy'SourceIp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HashPolicy'policySpecifier
           (\ x__ y__ -> x__ {_HashPolicy'policySpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HashPolicy'SourceIp' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HashPolicy'SourceIp' y__))
instance Data.ProtoLens.Field.HasField HashPolicy "sourceIp" HashPolicy'SourceIp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HashPolicy'policySpecifier
           (\ x__ y__ -> x__ {_HashPolicy'policySpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HashPolicy'SourceIp' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HashPolicy'SourceIp' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message HashPolicy where
  messageName _ = Data.Text.pack "envoy.type.v3.HashPolicy"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \HashPolicy\DC2A\n\
      \\tsource_ip\CAN\SOH \SOH(\v2\".envoy.type.v3.HashPolicy.SourceIpH\NULR\bsourceIp\SUB1\n\
      \\bSourceIp:%\154\197\136\RS \n\
      \\RSenvoy.type.HashPolicy.SourceIpB\ETB\n\
      \\DLEpolicy_specifier\DC2\ETX\248B\SOH:\FS\154\197\136\RS\ETB\n\
      \\NAKenvoy.type.HashPolicy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sourceIp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_ip"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HashPolicy'SourceIp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sourceIp")) ::
              Data.ProtoLens.FieldDescriptor HashPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sourceIp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HashPolicy'_unknownFields
        (\ x__ y__ -> x__ {_HashPolicy'_unknownFields = y__})
  defMessage
    = HashPolicy'_constructor
        {_HashPolicy'policySpecifier = Prelude.Nothing,
         _HashPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HashPolicy -> Data.ProtoLens.Encoding.Bytes.Parser HashPolicy
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
                                       "source_ip"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sourceIp") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HashPolicy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'policySpecifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (HashPolicy'SourceIp' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
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
instance Control.DeepSeq.NFData HashPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HashPolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq (_HashPolicy'policySpecifier x__) ())
instance Control.DeepSeq.NFData HashPolicy'PolicySpecifier where
  rnf (HashPolicy'SourceIp' x__) = Control.DeepSeq.rnf x__
_HashPolicy'SourceIp' ::
  Data.ProtoLens.Prism.Prism' HashPolicy'PolicySpecifier HashPolicy'SourceIp
_HashPolicy'SourceIp'
  = Data.ProtoLens.Prism.prism'
      HashPolicy'SourceIp'
      (\ p__
         -> case p__ of {
              (HashPolicy'SourceIp' p__val) -> Prelude.Just p__val })
{- | Fields :
      -}
data HashPolicy'SourceIp
  = HashPolicy'SourceIp'_constructor {_HashPolicy'SourceIp'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HashPolicy'SourceIp where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message HashPolicy'SourceIp where
  messageName _ = Data.Text.pack "envoy.type.v3.HashPolicy.SourceIp"
  packedMessageDescriptor _
    = "\n\
      \\bSourceIp:%\154\197\136\RS \n\
      \\RSenvoy.type.HashPolicy.SourceIp"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HashPolicy'SourceIp'_unknownFields
        (\ x__ y__ -> x__ {_HashPolicy'SourceIp'_unknownFields = y__})
  defMessage
    = HashPolicy'SourceIp'_constructor
        {_HashPolicy'SourceIp'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HashPolicy'SourceIp
          -> Data.ProtoLens.Encoding.Bytes.Parser HashPolicy'SourceIp
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
          (do loop Data.ProtoLens.defMessage) "SourceIp"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData HashPolicy'SourceIp where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HashPolicy'SourceIp'_unknownFields x__) ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\USenvoy/type/v3/hash_policy.proto\DC2\renvoy.type.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\185\SOH\n\
    \\n\
    \HashPolicy\DC2A\n\
    \\tsource_ip\CAN\SOH \SOH(\v2\".envoy.type.v3.HashPolicy.SourceIpH\NULR\bsourceIp\SUB1\n\
    \\bSourceIp:%\154\197\136\RS \n\
    \\RSenvoy.type.HashPolicy.SourceIpB\ETB\n\
    \\DLEpolicy_specifier\DC2\ETX\248B\SOH:\FS\154\197\136\RS\ETB\n\
    \\NAKenvoy.type.HashPolicyB8\n\
    \\ESCio.envoyproxy.envoy.type.v3B\SIHashPolicyProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\152\EOT\n\
    \\ACK\DC2\EOT\NUL\NUL\RS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SYN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL4\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL0\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL0\n\
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
    \I\n\
    \\STX\EOT\NUL\DC2\EOT\DLE\NUL\RS\SOH\SUB\ESC Specifies the hash policy\n\
    \2  [#protodoc-title: Hash Policy]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DLE\b\DC2\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC1\STXW\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC1\STXW\n\
    \m\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\NAK\STX\ETB\ETX\SUB_ The source IP will be used to compute the hash used by hash-based load balancing\n\
    \ algorithms.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\NAK\n\
    \\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\ETX\SYN\EOTb\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ETX\SYN\EOTb\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\EM\STX\GS\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\EM\b\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX\SUB\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX\SUB\EOT&\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\FS\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\FS\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\FS\r\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\FS\EM\SUBb\ACKproto3"