{- This file was auto-generated from envoy/extensions/transport_sockets/alts/v3/alts.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.TransportSockets.Alts.V3.Alts (
        Alts()
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
     
         * 'Proto.Envoy.Extensions.TransportSockets.Alts.V3.Alts_Fields.handshakerService' @:: Lens' Alts Data.Text.Text@
         * 'Proto.Envoy.Extensions.TransportSockets.Alts.V3.Alts_Fields.peerServiceAccounts' @:: Lens' Alts [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.TransportSockets.Alts.V3.Alts_Fields.vec'peerServiceAccounts' @:: Lens' Alts (Data.Vector.Vector Data.Text.Text)@ -}
data Alts
  = Alts'_constructor {_Alts'handshakerService :: !Data.Text.Text,
                       _Alts'peerServiceAccounts :: !(Data.Vector.Vector Data.Text.Text),
                       _Alts'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Alts where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Alts "handshakerService" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Alts'handshakerService
           (\ x__ y__ -> x__ {_Alts'handshakerService = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Alts "peerServiceAccounts" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Alts'peerServiceAccounts
           (\ x__ y__ -> x__ {_Alts'peerServiceAccounts = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Alts "vec'peerServiceAccounts" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Alts'peerServiceAccounts
           (\ x__ y__ -> x__ {_Alts'peerServiceAccounts = y__}))
        Prelude.id
instance Data.ProtoLens.Message Alts where
  messageName _
    = Data.Text.pack "envoy.extensions.transport_sockets.alts.v3.Alts"
  packedMessageDescriptor _
    = "\n\
      \\EOTAlts\DC26\n\
      \\DC2handshaker_service\CAN\SOH \SOH(\tR\DC1handshakerServiceB\a\250B\EOTr\STX\DLE\SOH\DC22\n\
      \\NAKpeer_service_accounts\CAN\STX \ETX(\tR\DC3peerServiceAccounts:6\154\197\136\RS1\n\
      \/envoy.config.transport_socket.alts.v2alpha.Alts"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        handshakerService__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "handshaker_service"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"handshakerService")) ::
              Data.ProtoLens.FieldDescriptor Alts
        peerServiceAccounts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "peer_service_accounts"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"peerServiceAccounts")) ::
              Data.ProtoLens.FieldDescriptor Alts
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, handshakerService__field_descriptor),
           (Data.ProtoLens.Tag 2, peerServiceAccounts__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Alts'_unknownFields
        (\ x__ y__ -> x__ {_Alts'_unknownFields = y__})
  defMessage
    = Alts'_constructor
        {_Alts'handshakerService = Data.ProtoLens.fieldDefault,
         _Alts'peerServiceAccounts = Data.Vector.Generic.empty,
         _Alts'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Alts
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser Alts
        loop x mutable'peerServiceAccounts
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'peerServiceAccounts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'peerServiceAccounts)
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
                              (Data.ProtoLens.Field.field @"vec'peerServiceAccounts")
                              frozen'peerServiceAccounts
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
                                       "handshaker_service"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"handshakerService") y x)
                                  mutable'peerServiceAccounts
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
                                        "peer_service_accounts"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'peerServiceAccounts y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'peerServiceAccounts
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'peerServiceAccounts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'peerServiceAccounts)
          "Alts"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"handshakerService") _x
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
                              Data.Text.Encoding.encodeUtf8
                              _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'peerServiceAccounts") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Alts where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Alts'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Alts'handshakerService x__)
                (Control.DeepSeq.deepseq (_Alts'peerServiceAccounts x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \5envoy/extensions/transport_sockets/alts/v3/alts.proto\DC2*envoy.extensions.transport_sockets.alts.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\170\SOH\n\
    \\EOTAlts\DC26\n\
    \\DC2handshaker_service\CAN\SOH \SOH(\tR\DC1handshakerServiceB\a\250B\EOTr\STX\DLE\SOH\DC22\n\
    \\NAKpeer_service_accounts\CAN\STX \ETX(\tR\DC3peerServiceAccounts:6\154\197\136\RS1\n\
    \/envoy.config.transport_socket.alts.v2alpha.AltsBO\n\
    \8io.envoyproxy.envoy.extensions.transport_sockets.alts.v3B\tAltsProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\230\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL\GS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL3\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULQ\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NULQ\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL*\n\
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
    \\140\STX\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL\GS\SOH\SUB\184\SOH Configuration for ALTS transport socket. This provides Google's ALTS protocol to Envoy.\n\
    \ https://cloud.google.com/security/encryption-in-transit/application-layer-transport-security/\n\
    \2E [#protodoc-title: ALTS]\n\
    \ [#extension: envoy.transport_sockets.alts]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\f\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC3\STX\DC48\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC3\STX\DC48\n\
    \b\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\CAN\STXI\SUBU The location of a handshaker service, this is usually 169.254.169.254:8080\n\
    \ on GCE.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\CAN\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\CAN\RS\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\CAN H\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\CAN!G\n\
    \\175\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\FS\STX,\SUB\161\SOH The acceptable service accounts from peer, peers not in the list will be rejected in the\n\
    \ handshake validation step. If empty, no validation will be performed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\FS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\FS\DC2'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\FS*+b\ACKproto3"