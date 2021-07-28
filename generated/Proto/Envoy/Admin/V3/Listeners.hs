{- This file was auto-generated from envoy/admin/v3/listeners.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Admin.V3.Listeners (
        ListenerStatus(), Listeners()
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
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.Listeners_Fields.name' @:: Lens' ListenerStatus Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.Listeners_Fields.localAddress' @:: Lens' ListenerStatus Proto.Envoy.Config.Core.V3.Address.Address@
         * 'Proto.Envoy.Admin.V3.Listeners_Fields.maybe'localAddress' @:: Lens' ListenerStatus (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@ -}
data ListenerStatus
  = ListenerStatus'_constructor {_ListenerStatus'name :: !Data.Text.Text,
                                 _ListenerStatus'localAddress :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address),
                                 _ListenerStatus'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListenerStatus where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListenerStatus "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerStatus'name
           (\ x__ y__ -> x__ {_ListenerStatus'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenerStatus "localAddress" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerStatus'localAddress
           (\ x__ y__ -> x__ {_ListenerStatus'localAddress = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListenerStatus "maybe'localAddress" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerStatus'localAddress
           (\ x__ y__ -> x__ {_ListenerStatus'localAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListenerStatus where
  messageName _ = Data.Text.pack "envoy.admin.v3.ListenerStatus"
  packedMessageDescriptor _
    = "\n\
      \\SOListenerStatus\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2B\n\
      \\rlocal_address\CAN\STX \SOH(\v2\GS.envoy.config.core.v3.AddressR\flocalAddress:)\154\197\136\RS$\n\
      \\"envoy.admin.v2alpha.ListenerStatus"
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
              Data.ProtoLens.FieldDescriptor ListenerStatus
        localAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local_address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'localAddress")) ::
              Data.ProtoLens.FieldDescriptor ListenerStatus
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, localAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListenerStatus'_unknownFields
        (\ x__ y__ -> x__ {_ListenerStatus'_unknownFields = y__})
  defMessage
    = ListenerStatus'_constructor
        {_ListenerStatus'name = Data.ProtoLens.fieldDefault,
         _ListenerStatus'localAddress = Prelude.Nothing,
         _ListenerStatus'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListenerStatus
          -> Data.ProtoLens.Encoding.Bytes.Parser ListenerStatus
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
                                       "local_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"localAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ListenerStatus"
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'localAddress") _x
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
instance Control.DeepSeq.NFData ListenerStatus where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListenerStatus'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListenerStatus'name x__)
                (Control.DeepSeq.deepseq (_ListenerStatus'localAddress x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.Listeners_Fields.listenerStatuses' @:: Lens' Listeners [ListenerStatus]@
         * 'Proto.Envoy.Admin.V3.Listeners_Fields.vec'listenerStatuses' @:: Lens' Listeners (Data.Vector.Vector ListenerStatus)@ -}
data Listeners
  = Listeners'_constructor {_Listeners'listenerStatuses :: !(Data.Vector.Vector ListenerStatus),
                            _Listeners'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Listeners where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Listeners "listenerStatuses" [ListenerStatus] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listeners'listenerStatuses
           (\ x__ y__ -> x__ {_Listeners'listenerStatuses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Listeners "vec'listenerStatuses" (Data.Vector.Vector ListenerStatus) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listeners'listenerStatuses
           (\ x__ y__ -> x__ {_Listeners'listenerStatuses = y__}))
        Prelude.id
instance Data.ProtoLens.Message Listeners where
  messageName _ = Data.Text.pack "envoy.admin.v3.Listeners"
  packedMessageDescriptor _
    = "\n\
      \\tListeners\DC2K\n\
      \\DC1listener_statuses\CAN\SOH \ETX(\v2\RS.envoy.admin.v3.ListenerStatusR\DLElistenerStatuses:$\154\197\136\RS\US\n\
      \\GSenvoy.admin.v2alpha.Listeners"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        listenerStatuses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "listener_statuses"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ListenerStatus)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"listenerStatuses")) ::
              Data.ProtoLens.FieldDescriptor Listeners
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, listenerStatuses__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Listeners'_unknownFields
        (\ x__ y__ -> x__ {_Listeners'_unknownFields = y__})
  defMessage
    = Listeners'_constructor
        {_Listeners'listenerStatuses = Data.Vector.Generic.empty,
         _Listeners'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Listeners
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ListenerStatus
             -> Data.ProtoLens.Encoding.Bytes.Parser Listeners
        loop x mutable'listenerStatuses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'listenerStatuses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'listenerStatuses)
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
                              (Data.ProtoLens.Field.field @"vec'listenerStatuses")
                              frozen'listenerStatuses
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
                                        "listener_statuses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'listenerStatuses y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'listenerStatuses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'listenerStatuses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'listenerStatuses)
          "Listeners"
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
                   (Data.ProtoLens.Field.field @"vec'listenerStatuses") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Listeners where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Listeners'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Listeners'listenerStatuses x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RSenvoy/admin/v3/listeners.proto\DC2\SOenvoy.admin.v3\SUB\"envoy/config/core/v3/address.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"~\n\
    \\tListeners\DC2K\n\
    \\DC1listener_statuses\CAN\SOH \ETX(\v2\RS.envoy.admin.v3.ListenerStatusR\DLElistenerStatuses:$\154\197\136\RS\US\n\
    \\GSenvoy.admin.v2alpha.Listeners\"\147\SOH\n\
    \\SOListenerStatus\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2B\n\
    \\rlocal_address\CAN\STX \SOH(\v2\GS.envoy.config.core.v3.AddressR\flocalAddress:)\154\197\136\RS$\n\
    \\"envoy.admin.v2alpha.ListenerStatusB8\n\
    \\FSio.envoyproxy.envoy.admin.v3B\SOListenersProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\160\a\n\
    \\ACK\DC2\EOT\NUL\NUL#\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ETB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL5\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \\220\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL\ETB\SOH\SUB\175\SOH Admin endpoint uses this wrapper for `/listeners` to display listener status information.\n\
    \ See :ref:`/listeners <operations_admin_interface_listeners>` for more information.\n\
    \2\RS [#protodoc-title: Listeners]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\DC1\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC3\STX_\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC3\STX_\n\
    \)\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SYN\STX0\SUB\FS List of listener statuses.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\SYN\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SYN\SUB+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SYN./\n\
    \>\n\
    \\STX\EOT\SOH\DC2\EOT\SUB\NUL#\SOH\SUB2 Details an individual listener's current status.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SUB\b\SYN\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX\ESC\STXd\n\
    \\SI\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ETX\ESC\STXd\n\
    \#\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\RS\STX\DC2\SUB\SYN Name of the listener\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\RS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\RS\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\RS\DLE\DC1\n\
    \\187\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\"\STX+\SUB\173\SOH The actual local address that the listener is listening on. If a listener was configured\n\
    \ to listen on port 0, then this address has the port that was allocated by the OS.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\"\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\"\EM&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\")*b\ACKproto3"