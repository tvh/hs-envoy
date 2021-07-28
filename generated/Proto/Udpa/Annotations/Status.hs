{- This file was auto-generated from udpa/annotations/status.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Udpa.Annotations.Status (
        PackageVersionStatus(..), PackageVersionStatus(),
        PackageVersionStatus'UnrecognizedValue, StatusAnnotation()
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
newtype PackageVersionStatus'UnrecognizedValue
  = PackageVersionStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data PackageVersionStatus
  = UNKNOWN |
    FROZEN |
    ACTIVE |
    NEXT_MAJOR_VERSION_CANDIDATE |
    PackageVersionStatus'Unrecognized !PackageVersionStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum PackageVersionStatus where
  maybeToEnum 0 = Prelude.Just UNKNOWN
  maybeToEnum 1 = Prelude.Just FROZEN
  maybeToEnum 2 = Prelude.Just ACTIVE
  maybeToEnum 3 = Prelude.Just NEXT_MAJOR_VERSION_CANDIDATE
  maybeToEnum k
    = Prelude.Just
        (PackageVersionStatus'Unrecognized
           (PackageVersionStatus'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum UNKNOWN = "UNKNOWN"
  showEnum FROZEN = "FROZEN"
  showEnum ACTIVE = "ACTIVE"
  showEnum NEXT_MAJOR_VERSION_CANDIDATE
    = "NEXT_MAJOR_VERSION_CANDIDATE"
  showEnum
    (PackageVersionStatus'Unrecognized (PackageVersionStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UNKNOWN" = Prelude.Just UNKNOWN
    | (Prelude.==) k "FROZEN" = Prelude.Just FROZEN
    | (Prelude.==) k "ACTIVE" = Prelude.Just ACTIVE
    | (Prelude.==) k "NEXT_MAJOR_VERSION_CANDIDATE"
    = Prelude.Just NEXT_MAJOR_VERSION_CANDIDATE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded PackageVersionStatus where
  minBound = UNKNOWN
  maxBound = NEXT_MAJOR_VERSION_CANDIDATE
instance Prelude.Enum PackageVersionStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum PackageVersionStatus: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum UNKNOWN = 0
  fromEnum FROZEN = 1
  fromEnum ACTIVE = 2
  fromEnum NEXT_MAJOR_VERSION_CANDIDATE = 3
  fromEnum
    (PackageVersionStatus'Unrecognized (PackageVersionStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ NEXT_MAJOR_VERSION_CANDIDATE
    = Prelude.error
        "PackageVersionStatus.succ: bad argument NEXT_MAJOR_VERSION_CANDIDATE. This value would be out of bounds."
  succ UNKNOWN = FROZEN
  succ FROZEN = ACTIVE
  succ ACTIVE = NEXT_MAJOR_VERSION_CANDIDATE
  succ (PackageVersionStatus'Unrecognized _)
    = Prelude.error
        "PackageVersionStatus.succ: bad argument: unrecognized value"
  pred UNKNOWN
    = Prelude.error
        "PackageVersionStatus.pred: bad argument UNKNOWN. This value would be out of bounds."
  pred FROZEN = UNKNOWN
  pred ACTIVE = FROZEN
  pred NEXT_MAJOR_VERSION_CANDIDATE = ACTIVE
  pred (PackageVersionStatus'Unrecognized _)
    = Prelude.error
        "PackageVersionStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault PackageVersionStatus where
  fieldDefault = UNKNOWN
instance Control.DeepSeq.NFData PackageVersionStatus where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Udpa.Annotations.Status_Fields.workInProgress' @:: Lens' StatusAnnotation Prelude.Bool@
         * 'Proto.Udpa.Annotations.Status_Fields.packageVersionStatus' @:: Lens' StatusAnnotation PackageVersionStatus@ -}
data StatusAnnotation
  = StatusAnnotation'_constructor {_StatusAnnotation'workInProgress :: !Prelude.Bool,
                                   _StatusAnnotation'packageVersionStatus :: !PackageVersionStatus,
                                   _StatusAnnotation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StatusAnnotation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StatusAnnotation "workInProgress" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatusAnnotation'workInProgress
           (\ x__ y__ -> x__ {_StatusAnnotation'workInProgress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StatusAnnotation "packageVersionStatus" PackageVersionStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatusAnnotation'packageVersionStatus
           (\ x__ y__ -> x__ {_StatusAnnotation'packageVersionStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Message StatusAnnotation where
  messageName _ = Data.Text.pack "udpa.annotations.StatusAnnotation"
  packedMessageDescriptor _
    = "\n\
      \\DLEStatusAnnotation\DC2(\n\
      \\DLEwork_in_progress\CAN\SOH \SOH(\bR\SOworkInProgress\DC2\\\n\
      \\SYNpackage_version_status\CAN\STX \SOH(\SO2&.udpa.annotations.PackageVersionStatusR\DC4packageVersionStatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        workInProgress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "work_in_progress"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"workInProgress")) ::
              Data.ProtoLens.FieldDescriptor StatusAnnotation
        packageVersionStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "package_version_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor PackageVersionStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"packageVersionStatus")) ::
              Data.ProtoLens.FieldDescriptor StatusAnnotation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, workInProgress__field_descriptor),
           (Data.ProtoLens.Tag 2, packageVersionStatus__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StatusAnnotation'_unknownFields
        (\ x__ y__ -> x__ {_StatusAnnotation'_unknownFields = y__})
  defMessage
    = StatusAnnotation'_constructor
        {_StatusAnnotation'workInProgress = Data.ProtoLens.fieldDefault,
         _StatusAnnotation'packageVersionStatus = Data.ProtoLens.fieldDefault,
         _StatusAnnotation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StatusAnnotation
          -> Data.ProtoLens.Encoding.Bytes.Parser StatusAnnotation
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
                                       "work_in_progress"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"workInProgress") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "package_version_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"packageVersionStatus") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StatusAnnotation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"workInProgress") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt
                         (\ b -> if b then 1 else 0)
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"packageVersionStatus") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData StatusAnnotation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StatusAnnotation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StatusAnnotation'workInProgress x__)
                (Control.DeepSeq.deepseq
                   (_StatusAnnotation'packageVersionStatus x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\GSudpa/annotations/status.proto\DC2\DLEudpa.annotations\SUB google/protobuf/descriptor.proto\"\154\SOH\n\
    \\DLEStatusAnnotation\DC2(\n\
    \\DLEwork_in_progress\CAN\SOH \SOH(\bR\SOworkInProgress\DC2\\\n\
    \\SYNpackage_version_status\CAN\STX \SOH(\SO2&.udpa.annotations.PackageVersionStatusR\DC4packageVersionStatus*]\n\
    \\DC4PackageVersionStatus\DC2\v\n\
    \\aUNKNOWN\DLE\NUL\DC2\n\
    \\n\
    \\ACKFROZEN\DLE\SOH\DC2\n\
    \\n\
    \\ACKACTIVE\DLE\STX\DC2 \n\
    \\FSNEXT_MAJOR_VERSION_CANDIDATE\DLE\ETX:d\n\
    \\vfile_status\CAN\135\128\153j \SOH(\v2\".udpa.annotations.StatusAnnotation\DC2\FS.google.protobuf.FileOptionsR\n\
    \fileStatusJ\188\a\n\
    \\ACK\DC2\EOT\NUL\NUL!\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\EM\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \l\n\
    \\SOH\a\DC2\EOT\b\NUL\n\
    \\SOH\SUBa Magic number in this file derived from top 28bit of SHA256 digest of\n\
    \ \"udpa.annotation.status\".\n\
    \\n\
    \\t\n\
    \\STX\a\NUL\DC2\ETX\t\STX+\n\
    \\n\
    \\n\
    \\ETX\a\NUL\STX\DC2\ETX\b\a\"\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ACK\DC2\ETX\t\STX\DC2\n\
    \\n\
    \\n\
    \\ETX\a\NUL\SOH\DC2\ETX\t\DC3\RS\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ETX\DC2\ETX\t!*\n\
    \\n\
    \\n\
    \\STX\ENQ\NUL\DC2\EOT\f\NUL\EM\SOH\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\f\ENQ\EM\n\
    \.\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\SO\STX\SO\SUB! Unknown package version status.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\SO\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\SO\f\r\n\
    \5\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\DC1\STX\r\SUB( This version of the package is frozen.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\DC1\STX\b\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\DC1\v\f\n\
    \M\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\DC4\STX\r\SUB@ This version of the package is the active development version.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\DC4\STX\b\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\DC4\v\f\n\
    \\160\SOH\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX\CAN\STX#\SUB\146\SOH This version of the package is the candidate for the next major version. It\n\
    \ is typically machine generated from the active development version.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX\CAN\STX\RS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX\CAN!\"\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\ESC\NUL!\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ESC\b\CAN\n\
    \N\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\GS\STX\FS\SUBA The entity is work-in-progress and subject to breaking changes.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\GS\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\GS\a\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\GS\SUB\ESC\n\
    \M\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX \STX2\SUB@ The entity belongs to a package with the given version status.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX \STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX \ETB-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX 01b\ACKproto3"