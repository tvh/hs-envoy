{- This file was auto-generated from envoy/watchdog/v3alpha/abort_action.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Watchdog.V3alpha.AbortAction (
        AbortActionConfig()
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
{- | Fields :
     
         * 'Proto.Envoy.Watchdog.V3alpha.AbortAction_Fields.waitDuration' @:: Lens' AbortActionConfig Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Watchdog.V3alpha.AbortAction_Fields.maybe'waitDuration' @:: Lens' AbortActionConfig (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data AbortActionConfig
  = AbortActionConfig'_constructor {_AbortActionConfig'waitDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                    _AbortActionConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AbortActionConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AbortActionConfig "waitDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AbortActionConfig'waitDuration
           (\ x__ y__ -> x__ {_AbortActionConfig'waitDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AbortActionConfig "maybe'waitDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AbortActionConfig'waitDuration
           (\ x__ y__ -> x__ {_AbortActionConfig'waitDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Message AbortActionConfig where
  messageName _
    = Data.Text.pack "envoy.watchdog.v3alpha.AbortActionConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC1AbortActionConfig\DC2>\n\
      \\rwait_duration\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\fwaitDuration"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        waitDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "wait_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'waitDuration")) ::
              Data.ProtoLens.FieldDescriptor AbortActionConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, waitDuration__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AbortActionConfig'_unknownFields
        (\ x__ y__ -> x__ {_AbortActionConfig'_unknownFields = y__})
  defMessage
    = AbortActionConfig'_constructor
        {_AbortActionConfig'waitDuration = Prelude.Nothing,
         _AbortActionConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AbortActionConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser AbortActionConfig
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
                                       "wait_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"waitDuration") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AbortActionConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'waitDuration") _x
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
instance Control.DeepSeq.NFData AbortActionConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AbortActionConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq (_AbortActionConfig'waitDuration x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \)envoy/watchdog/v3alpha/abort_action.proto\DC2\SYNenvoy.watchdog.v3alpha\SUB\RSgoogle/protobuf/duration.proto\SUB\GSudpa/annotations/status.proto\"S\n\
    \\DC1AbortActionConfig\DC2>\n\
    \\rwait_duration\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\fwaitDurationBJ\n\
    \$io.envoyproxy.envoy.watchdog.v3alphaB\DLEAbortActionProtoP\SOH\186\128\200\209\ACK\STX\b\SOH\186\128\200\209\ACK\STX\DLE\STXJ\195\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL\SUB\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\US\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL=\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NUL=\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL1\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL1\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\n\
    \\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL>\n\
    \\r\n\
    \\ACK\b\135\128\153j\SOH\DC2\ETX\v\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \\166\ETX\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL\SUB\SOH\SUB\196\STX A GuardDogAction that will terminate the process by killing the\n\
    \ stuck thread. This would allow easier access to the call stack of the stuck\n\
    \ thread since we would run signal handlers on that thread. By default\n\
    \ this will be registered to run as the last watchdog action on KILL and\n\
    \ MULTIKILL events if those are enabled.\n\
    \2S [#protodoc-title: Watchdog Action that kills a stuck thread to kill the process.]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\EM\n\
    \\190\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\EM\STX-\SUB\176\SOH How long to wait for the thread to respond to the thread kill function\n\
    \ before killing the process from this action. This is a blocking action.\n\
    \ By default this is 5 seconds.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\EM\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\EM\ESC(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\EM+,b\ACKproto3"