{- This file was auto-generated from envoy/extensions/watchdog/profile_action/v3alpha/profile_action.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Watchdog.ProfileAction.V3alpha.ProfileAction (
        ProfileActionConfig()
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
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Watchdog.ProfileAction.V3alpha.ProfileAction_Fields.profileDuration' @:: Lens' ProfileActionConfig Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Watchdog.ProfileAction.V3alpha.ProfileAction_Fields.maybe'profileDuration' @:: Lens' ProfileActionConfig (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Watchdog.ProfileAction.V3alpha.ProfileAction_Fields.profilePath' @:: Lens' ProfileActionConfig Data.Text.Text@
         * 'Proto.Envoy.Extensions.Watchdog.ProfileAction.V3alpha.ProfileAction_Fields.maxProfiles' @:: Lens' ProfileActionConfig Data.Word.Word64@ -}
data ProfileActionConfig
  = ProfileActionConfig'_constructor {_ProfileActionConfig'profileDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                      _ProfileActionConfig'profilePath :: !Data.Text.Text,
                                      _ProfileActionConfig'maxProfiles :: !Data.Word.Word64,
                                      _ProfileActionConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProfileActionConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProfileActionConfig "profileDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfileActionConfig'profileDuration
           (\ x__ y__ -> x__ {_ProfileActionConfig'profileDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ProfileActionConfig "maybe'profileDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfileActionConfig'profileDuration
           (\ x__ y__ -> x__ {_ProfileActionConfig'profileDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfileActionConfig "profilePath" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfileActionConfig'profilePath
           (\ x__ y__ -> x__ {_ProfileActionConfig'profilePath = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfileActionConfig "maxProfiles" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfileActionConfig'maxProfiles
           (\ x__ y__ -> x__ {_ProfileActionConfig'maxProfiles = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProfileActionConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.watchdog.profile_action.v3alpha.ProfileActionConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC3ProfileActionConfig\DC2D\n\
      \\DLEprofile_duration\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\SIprofileDuration\DC2*\n\
      \\fprofile_path\CAN\STX \SOH(\tR\vprofilePathB\a\250B\EOTr\STX\DLE\SOH\DC2!\n\
      \\fmax_profiles\CAN\ETX \SOH(\EOTR\vmaxProfiles"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        profileDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "profile_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'profileDuration")) ::
              Data.ProtoLens.FieldDescriptor ProfileActionConfig
        profilePath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "profile_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"profilePath")) ::
              Data.ProtoLens.FieldDescriptor ProfileActionConfig
        maxProfiles__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_profiles"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxProfiles")) ::
              Data.ProtoLens.FieldDescriptor ProfileActionConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, profileDuration__field_descriptor),
           (Data.ProtoLens.Tag 2, profilePath__field_descriptor),
           (Data.ProtoLens.Tag 3, maxProfiles__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProfileActionConfig'_unknownFields
        (\ x__ y__ -> x__ {_ProfileActionConfig'_unknownFields = y__})
  defMessage
    = ProfileActionConfig'_constructor
        {_ProfileActionConfig'profileDuration = Prelude.Nothing,
         _ProfileActionConfig'profilePath = Data.ProtoLens.fieldDefault,
         _ProfileActionConfig'maxProfiles = Data.ProtoLens.fieldDefault,
         _ProfileActionConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProfileActionConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser ProfileActionConfig
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
                                       "profile_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"profileDuration") y x)
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
                                       "profile_path"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"profilePath") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "max_profiles"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxProfiles") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ProfileActionConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'profileDuration") _x
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
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"profilePath") _x
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
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"maxProfiles") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ProfileActionConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProfileActionConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProfileActionConfig'profileDuration x__)
                (Control.DeepSeq.deepseq
                   (_ProfileActionConfig'profilePath x__)
                   (Control.DeepSeq.deepseq
                      (_ProfileActionConfig'maxProfiles x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Eenvoy/extensions/watchdog/profile_action/v3alpha/profile_action.proto\DC20envoy.extensions.watchdog.profile_action.v3alpha\SUB\RSgoogle/protobuf/duration.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\170\SOH\n\
    \\DC3ProfileActionConfig\DC2D\n\
    \\DLEprofile_duration\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\SIprofileDuration\DC2*\n\
    \\fprofile_path\CAN\STX \SOH(\tR\vprofilePathB\a\250B\EOTr\STX\DLE\SOH\DC2!\n\
    \\fmax_profiles\CAN\ETX \SOH(\EOTR\vmaxProfilesBf\n\
    \>io.envoyproxy.envoy.extensions.watchdog.profile_action.v3alphaB\DC2ProfileActionProtoP\SOH\186\128\200\209\ACK\STX\b\SOH\186\128\200\209\ACK\STX\DLE\STXJ\213\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL\RS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL9\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULW\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NULW\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL3\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL3\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL>\n\
    \\r\n\
    \\ACK\b\135\128\153j\SOH\DC2\ETX\f\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\168\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL\RS\SOH\SUB0 Configuration for the profile watchdog action.\n\
    \2j [#protodoc-title: Watchdog Action that does CPU profiling.]\n\
    \ [#extension: envoy.watchdog.profile_action]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\ESC\n\
    \R\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\NAK\STX0\SUBE How long the profile should last. If not set defaults to 5 seconds.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\NAK\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\NAK\ESC+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\NAK./\n\
    \=\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\CAN\STXC\SUB0 File path to the directory to output profiles.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\CAN\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\CAN\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\CAN\SUBB\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\SO\DC2\ETX\CAN\ESCA\n\
    \\189\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\GS\STX\SUB\SUB\175\SOH Limits the max number of profiles that can be generated by this action\n\
    \ over its lifetime to avoid filling the disk.\n\
    \ If not set (i.e. it's 0), a default of 10 will be used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\GS\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\GS\CAN\EMb\ACKproto3"