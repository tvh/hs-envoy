{- This file was auto-generated from envoy/config/retry/previous_priorities/previous_priorities_config.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Retry.PreviousPriorities.PreviousPrioritiesConfig (
        PreviousPrioritiesConfig()
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
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Retry.PreviousPriorities.PreviousPrioritiesConfig_Fields.updateFrequency' @:: Lens' PreviousPrioritiesConfig Data.Int.Int32@ -}
data PreviousPrioritiesConfig
  = PreviousPrioritiesConfig'_constructor {_PreviousPrioritiesConfig'updateFrequency :: !Data.Int.Int32,
                                           _PreviousPrioritiesConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PreviousPrioritiesConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PreviousPrioritiesConfig "updateFrequency" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PreviousPrioritiesConfig'updateFrequency
           (\ x__ y__
              -> x__ {_PreviousPrioritiesConfig'updateFrequency = y__}))
        Prelude.id
instance Data.ProtoLens.Message PreviousPrioritiesConfig where
  messageName _
    = Data.Text.pack
        "envoy.config.retry.previous_priorities.PreviousPrioritiesConfig"
  packedMessageDescriptor _
    = "\n\
      \\CANPreviousPrioritiesConfig\DC22\n\
      \\DLEupdate_frequency\CAN\SOH \SOH(\ENQR\SIupdateFrequencyB\a\250B\EOT\SUB\STX \NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        updateFrequency__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_frequency"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"updateFrequency")) ::
              Data.ProtoLens.FieldDescriptor PreviousPrioritiesConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, updateFrequency__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PreviousPrioritiesConfig'_unknownFields
        (\ x__ y__ -> x__ {_PreviousPrioritiesConfig'_unknownFields = y__})
  defMessage
    = PreviousPrioritiesConfig'_constructor
        {_PreviousPrioritiesConfig'updateFrequency = Data.ProtoLens.fieldDefault,
         _PreviousPrioritiesConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PreviousPrioritiesConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser PreviousPrioritiesConfig
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
                                       "update_frequency"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"updateFrequency") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PreviousPrioritiesConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"updateFrequency") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PreviousPrioritiesConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PreviousPrioritiesConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PreviousPrioritiesConfig'updateFrequency x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Genvoy/config/retry/previous_priorities/previous_priorities_config.proto\DC2&envoy.config.retry.previous_priorities\SUB\RSudpa/annotations/migrate.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"N\n\
    \\CANPreviousPrioritiesConfig\DC22\n\
    \\DLEupdate_frequency\CAN\SOH \SOH(\ENQR\SIupdateFrequencyB\a\250B\EOT\SUB\STX \NULB\157\SOH\n\
    \4io.envoyproxy.envoy.config.retry.previous_prioritiesB\GSPreviousPrioritiesConfigProtoP\SOH\242\152\254\143\ENQ8\DC26envoy.extensions.retry.priority.previous_priorities.v3\186\128\200\209\ACK\STX\DLE\SOHJ\209\DC4\n\
    \\ACK\DC2\EOT\NUL\NUL7\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL/\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULM\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NULM\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL>\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\n\
    \\NUL\"\n\
    \\t\n\
    \\SOH\b\DC2\EOT\v\NUL\f=\n\
    \\SO\n\
    \\ACK\b\142\227\255Q\STX\DC2\EOT\v\NUL\f=\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\161\r\n\
    \\STX\EOT\NUL\DC2\EOT*\NUL7\SOH\SUB\219\f A retry host selector that attempts to spread retries between priorities, even if certain\n\
    \ priorities would not normally be attempted due to higher priorities being available.\n\
    \\n\
    \ As priorities get excluded, load will be distributed amongst the remaining healthy priorities\n\
    \ based on the relative health of the priorities, matching how load is distributed during regular\n\
    \ host selection. For example, given priority healths of {100, 50, 50}, the original load will be\n\
    \ {100, 0, 0} (since P0 has capacity to handle 100% of the traffic). If P0 is excluded, the load\n\
    \ changes to {0, 50, 50}, because P1 is only able to handle 50% of the traffic, causing the\n\
    \ remaining to spill over to P2.\n\
    \\n\
    \ Each priority attempted will be excluded until there are no healthy priorities left, at which\n\
    \ point the list of attempted priorities will be reset, essentially starting from the beginning.\n\
    \ For example, given three priorities P0, P1, P2 with healthy % of 100, 0 and 50 respectively, the\n\
    \ following sequence of priorities would be selected (assuming update_frequency = 1):\n\
    \ Attempt 1: P0 (P0 is 100% healthy)\n\
    \ Attempt 2: P2 (P0 already attempted, P2 only healthy priority)\n\
    \ Attempt 3: P0 (no healthy priorities, reset)\n\
    \ Attempt 4: P2\n\
    \\n\
    \ In the case of all upstream hosts being unhealthy, no adjustments will be made to the original\n\
    \ priority load, so behavior should be identical to not using this plugin.\n\
    \\n\
    \ Using this PriorityFilter requires rebuilding the priority load, which runs in O(# of\n\
    \ priorities), which might incur significant overhead for clusters with many priorities.\n\
    \ [#extension: envoy.retry_priorities.previous_priorities]\n\
    \27 [#protodoc-title: Previous priorities retry selector]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX*\b \n\
    \\165\ENQ\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX6\STX@\SUB\151\ENQ How often the priority load should be updated based on previously attempted priorities. Useful\n\
    \ to allow each priorities to receive more than one request before being excluded or to reduce\n\
    \ the number of times that the priority load has to be recomputed.\n\
    \\n\
    \ For example, by setting this to 2, then the first two attempts (initial attempt and first\n\
    \ retry) will use the unmodified priority load. The third and fourth attempt will use priority\n\
    \ load which excludes the priorities routed to with the first two attempts, and the fifth and\n\
    \ sixth attempt will use the priority load excluding the priorities used for the first four\n\
    \ attempts.\n\
    \\n\
    \ Must be greater than 0.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX6\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX6\b\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX6\ESC\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX6\GS?\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\ETX\DC2\ETX6\RS>b\ACKproto3"