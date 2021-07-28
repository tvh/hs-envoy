{- This file was auto-generated from envoy/extensions/filters/http/ext_proc/v3alpha/processing_mode.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode (
        ProcessingMode(), ProcessingMode'BodySendMode(..),
        ProcessingMode'BodySendMode(),
        ProcessingMode'BodySendMode'UnrecognizedValue,
        ProcessingMode'HeaderSendMode(..), ProcessingMode'HeaderSendMode(),
        ProcessingMode'HeaderSendMode'UnrecognizedValue
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
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode_Fields.requestHeaderMode' @:: Lens' ProcessingMode ProcessingMode'HeaderSendMode@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode_Fields.responseHeaderMode' @:: Lens' ProcessingMode ProcessingMode'HeaderSendMode@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode_Fields.requestBodyMode' @:: Lens' ProcessingMode ProcessingMode'BodySendMode@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode_Fields.responseBodyMode' @:: Lens' ProcessingMode ProcessingMode'BodySendMode@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode_Fields.requestTrailerMode' @:: Lens' ProcessingMode ProcessingMode'HeaderSendMode@
         * 'Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode_Fields.responseTrailerMode' @:: Lens' ProcessingMode ProcessingMode'HeaderSendMode@ -}
data ProcessingMode
  = ProcessingMode'_constructor {_ProcessingMode'requestHeaderMode :: !ProcessingMode'HeaderSendMode,
                                 _ProcessingMode'responseHeaderMode :: !ProcessingMode'HeaderSendMode,
                                 _ProcessingMode'requestBodyMode :: !ProcessingMode'BodySendMode,
                                 _ProcessingMode'responseBodyMode :: !ProcessingMode'BodySendMode,
                                 _ProcessingMode'requestTrailerMode :: !ProcessingMode'HeaderSendMode,
                                 _ProcessingMode'responseTrailerMode :: !ProcessingMode'HeaderSendMode,
                                 _ProcessingMode'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProcessingMode where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProcessingMode "requestHeaderMode" ProcessingMode'HeaderSendMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingMode'requestHeaderMode
           (\ x__ y__ -> x__ {_ProcessingMode'requestHeaderMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessingMode "responseHeaderMode" ProcessingMode'HeaderSendMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingMode'responseHeaderMode
           (\ x__ y__ -> x__ {_ProcessingMode'responseHeaderMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessingMode "requestBodyMode" ProcessingMode'BodySendMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingMode'requestBodyMode
           (\ x__ y__ -> x__ {_ProcessingMode'requestBodyMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessingMode "responseBodyMode" ProcessingMode'BodySendMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingMode'responseBodyMode
           (\ x__ y__ -> x__ {_ProcessingMode'responseBodyMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessingMode "requestTrailerMode" ProcessingMode'HeaderSendMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingMode'requestTrailerMode
           (\ x__ y__ -> x__ {_ProcessingMode'requestTrailerMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessingMode "responseTrailerMode" ProcessingMode'HeaderSendMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessingMode'responseTrailerMode
           (\ x__ y__ -> x__ {_ProcessingMode'responseTrailerMode = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProcessingMode where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingMode"
  packedMessageDescriptor _
    = "\n\
      \\SOProcessingMode\DC2\135\SOH\n\
      \\DC3request_header_mode\CAN\SOH \SOH(\SO2M.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingMode.HeaderSendModeR\DC1requestHeaderModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\137\SOH\n\
      \\DC4response_header_mode\CAN\STX \SOH(\SO2M.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingMode.HeaderSendModeR\DC2responseHeaderModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\129\SOH\n\
      \\DC1request_body_mode\CAN\ETX \SOH(\SO2K.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingMode.BodySendModeR\SIrequestBodyModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\131\SOH\n\
      \\DC2response_body_mode\CAN\EOT \SOH(\SO2K.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingMode.BodySendModeR\DLEresponseBodyModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\137\SOH\n\
      \\DC4request_trailer_mode\CAN\ENQ \SOH(\SO2M.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingMode.HeaderSendModeR\DC2requestTrailerModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\139\SOH\n\
      \\NAKresponse_trailer_mode\CAN\ACK \SOH(\SO2M.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingMode.HeaderSendModeR\DC3responseTrailerModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"1\n\
      \\SO\&HeaderSendMode\DC2\v\n\
      \\aDEFAULT\DLE\NUL\DC2\b\n\
      \\EOTSEND\DLE\SOH\DC2\b\n\
      \\EOTSKIP\DLE\STX\"J\n\
      \\fBodySendMode\DC2\b\n\
      \\EOTNONE\DLE\NUL\DC2\f\n\
      \\bSTREAMED\DLE\SOH\DC2\f\n\
      \\bBUFFERED\DLE\STX\DC2\DC4\n\
      \\DLEBUFFERED_PARTIAL\DLE\ETX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        requestHeaderMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_header_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ProcessingMode'HeaderSendMode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestHeaderMode")) ::
              Data.ProtoLens.FieldDescriptor ProcessingMode
        responseHeaderMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_header_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ProcessingMode'HeaderSendMode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"responseHeaderMode")) ::
              Data.ProtoLens.FieldDescriptor ProcessingMode
        requestBodyMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_body_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ProcessingMode'BodySendMode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestBodyMode")) ::
              Data.ProtoLens.FieldDescriptor ProcessingMode
        responseBodyMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_body_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ProcessingMode'BodySendMode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"responseBodyMode")) ::
              Data.ProtoLens.FieldDescriptor ProcessingMode
        requestTrailerMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_trailer_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ProcessingMode'HeaderSendMode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestTrailerMode")) ::
              Data.ProtoLens.FieldDescriptor ProcessingMode
        responseTrailerMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_trailer_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ProcessingMode'HeaderSendMode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"responseTrailerMode")) ::
              Data.ProtoLens.FieldDescriptor ProcessingMode
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, requestHeaderMode__field_descriptor),
           (Data.ProtoLens.Tag 2, responseHeaderMode__field_descriptor),
           (Data.ProtoLens.Tag 3, requestBodyMode__field_descriptor),
           (Data.ProtoLens.Tag 4, responseBodyMode__field_descriptor),
           (Data.ProtoLens.Tag 5, requestTrailerMode__field_descriptor),
           (Data.ProtoLens.Tag 6, responseTrailerMode__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProcessingMode'_unknownFields
        (\ x__ y__ -> x__ {_ProcessingMode'_unknownFields = y__})
  defMessage
    = ProcessingMode'_constructor
        {_ProcessingMode'requestHeaderMode = Data.ProtoLens.fieldDefault,
         _ProcessingMode'responseHeaderMode = Data.ProtoLens.fieldDefault,
         _ProcessingMode'requestBodyMode = Data.ProtoLens.fieldDefault,
         _ProcessingMode'responseBodyMode = Data.ProtoLens.fieldDefault,
         _ProcessingMode'requestTrailerMode = Data.ProtoLens.fieldDefault,
         _ProcessingMode'responseTrailerMode = Data.ProtoLens.fieldDefault,
         _ProcessingMode'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProcessingMode
          -> Data.ProtoLens.Encoding.Bytes.Parser ProcessingMode
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "request_header_mode"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestHeaderMode") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "response_header_mode"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseHeaderMode") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "request_body_mode"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestBodyMode") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "response_body_mode"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseBodyMode") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "request_trailer_mode"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestTrailerMode") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "response_trailer_mode"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseTrailerMode") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ProcessingMode"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"requestHeaderMode") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"responseHeaderMode") _x
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
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"requestBodyMode") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                               Prelude.fromEnum
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"responseBodyMode") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                  Prelude.fromEnum
                                  _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"requestTrailerMode") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     Prelude.fromEnum
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"responseTrailerMode") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral)
                                        Prelude.fromEnum
                                        _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData ProcessingMode where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProcessingMode'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProcessingMode'requestHeaderMode x__)
                (Control.DeepSeq.deepseq
                   (_ProcessingMode'responseHeaderMode x__)
                   (Control.DeepSeq.deepseq
                      (_ProcessingMode'requestBodyMode x__)
                      (Control.DeepSeq.deepseq
                         (_ProcessingMode'responseBodyMode x__)
                         (Control.DeepSeq.deepseq
                            (_ProcessingMode'requestTrailerMode x__)
                            (Control.DeepSeq.deepseq
                               (_ProcessingMode'responseTrailerMode x__) ()))))))
newtype ProcessingMode'BodySendMode'UnrecognizedValue
  = ProcessingMode'BodySendMode'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ProcessingMode'BodySendMode
  = ProcessingMode'NONE |
    ProcessingMode'STREAMED |
    ProcessingMode'BUFFERED |
    ProcessingMode'BUFFERED_PARTIAL |
    ProcessingMode'BodySendMode'Unrecognized !ProcessingMode'BodySendMode'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ProcessingMode'BodySendMode where
  maybeToEnum 0 = Prelude.Just ProcessingMode'NONE
  maybeToEnum 1 = Prelude.Just ProcessingMode'STREAMED
  maybeToEnum 2 = Prelude.Just ProcessingMode'BUFFERED
  maybeToEnum 3 = Prelude.Just ProcessingMode'BUFFERED_PARTIAL
  maybeToEnum k
    = Prelude.Just
        (ProcessingMode'BodySendMode'Unrecognized
           (ProcessingMode'BodySendMode'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum ProcessingMode'NONE = "NONE"
  showEnum ProcessingMode'STREAMED = "STREAMED"
  showEnum ProcessingMode'BUFFERED = "BUFFERED"
  showEnum ProcessingMode'BUFFERED_PARTIAL = "BUFFERED_PARTIAL"
  showEnum
    (ProcessingMode'BodySendMode'Unrecognized (ProcessingMode'BodySendMode'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "NONE" = Prelude.Just ProcessingMode'NONE
    | (Prelude.==) k "STREAMED" = Prelude.Just ProcessingMode'STREAMED
    | (Prelude.==) k "BUFFERED" = Prelude.Just ProcessingMode'BUFFERED
    | (Prelude.==) k "BUFFERED_PARTIAL"
    = Prelude.Just ProcessingMode'BUFFERED_PARTIAL
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ProcessingMode'BodySendMode where
  minBound = ProcessingMode'NONE
  maxBound = ProcessingMode'BUFFERED_PARTIAL
instance Prelude.Enum ProcessingMode'BodySendMode where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum BodySendMode: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum ProcessingMode'NONE = 0
  fromEnum ProcessingMode'STREAMED = 1
  fromEnum ProcessingMode'BUFFERED = 2
  fromEnum ProcessingMode'BUFFERED_PARTIAL = 3
  fromEnum
    (ProcessingMode'BodySendMode'Unrecognized (ProcessingMode'BodySendMode'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ProcessingMode'BUFFERED_PARTIAL
    = Prelude.error
        "ProcessingMode'BodySendMode.succ: bad argument ProcessingMode'BUFFERED_PARTIAL. This value would be out of bounds."
  succ ProcessingMode'NONE = ProcessingMode'STREAMED
  succ ProcessingMode'STREAMED = ProcessingMode'BUFFERED
  succ ProcessingMode'BUFFERED = ProcessingMode'BUFFERED_PARTIAL
  succ (ProcessingMode'BodySendMode'Unrecognized _)
    = Prelude.error
        "ProcessingMode'BodySendMode.succ: bad argument: unrecognized value"
  pred ProcessingMode'NONE
    = Prelude.error
        "ProcessingMode'BodySendMode.pred: bad argument ProcessingMode'NONE. This value would be out of bounds."
  pred ProcessingMode'STREAMED = ProcessingMode'NONE
  pred ProcessingMode'BUFFERED = ProcessingMode'STREAMED
  pred ProcessingMode'BUFFERED_PARTIAL = ProcessingMode'BUFFERED
  pred (ProcessingMode'BodySendMode'Unrecognized _)
    = Prelude.error
        "ProcessingMode'BodySendMode.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ProcessingMode'BodySendMode where
  fieldDefault = ProcessingMode'NONE
instance Control.DeepSeq.NFData ProcessingMode'BodySendMode where
  rnf x__ = Prelude.seq x__ ()
newtype ProcessingMode'HeaderSendMode'UnrecognizedValue
  = ProcessingMode'HeaderSendMode'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ProcessingMode'HeaderSendMode
  = ProcessingMode'DEFAULT |
    ProcessingMode'SEND |
    ProcessingMode'SKIP |
    ProcessingMode'HeaderSendMode'Unrecognized !ProcessingMode'HeaderSendMode'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ProcessingMode'HeaderSendMode where
  maybeToEnum 0 = Prelude.Just ProcessingMode'DEFAULT
  maybeToEnum 1 = Prelude.Just ProcessingMode'SEND
  maybeToEnum 2 = Prelude.Just ProcessingMode'SKIP
  maybeToEnum k
    = Prelude.Just
        (ProcessingMode'HeaderSendMode'Unrecognized
           (ProcessingMode'HeaderSendMode'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum ProcessingMode'DEFAULT = "DEFAULT"
  showEnum ProcessingMode'SEND = "SEND"
  showEnum ProcessingMode'SKIP = "SKIP"
  showEnum
    (ProcessingMode'HeaderSendMode'Unrecognized (ProcessingMode'HeaderSendMode'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DEFAULT" = Prelude.Just ProcessingMode'DEFAULT
    | (Prelude.==) k "SEND" = Prelude.Just ProcessingMode'SEND
    | (Prelude.==) k "SKIP" = Prelude.Just ProcessingMode'SKIP
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ProcessingMode'HeaderSendMode where
  minBound = ProcessingMode'DEFAULT
  maxBound = ProcessingMode'SKIP
instance Prelude.Enum ProcessingMode'HeaderSendMode where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum HeaderSendMode: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum ProcessingMode'DEFAULT = 0
  fromEnum ProcessingMode'SEND = 1
  fromEnum ProcessingMode'SKIP = 2
  fromEnum
    (ProcessingMode'HeaderSendMode'Unrecognized (ProcessingMode'HeaderSendMode'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ProcessingMode'SKIP
    = Prelude.error
        "ProcessingMode'HeaderSendMode.succ: bad argument ProcessingMode'SKIP. This value would be out of bounds."
  succ ProcessingMode'DEFAULT = ProcessingMode'SEND
  succ ProcessingMode'SEND = ProcessingMode'SKIP
  succ (ProcessingMode'HeaderSendMode'Unrecognized _)
    = Prelude.error
        "ProcessingMode'HeaderSendMode.succ: bad argument: unrecognized value"
  pred ProcessingMode'DEFAULT
    = Prelude.error
        "ProcessingMode'HeaderSendMode.pred: bad argument ProcessingMode'DEFAULT. This value would be out of bounds."
  pred ProcessingMode'SEND = ProcessingMode'DEFAULT
  pred ProcessingMode'SKIP = ProcessingMode'SEND
  pred (ProcessingMode'HeaderSendMode'Unrecognized _)
    = Prelude.error
        "ProcessingMode'HeaderSendMode.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ProcessingMode'HeaderSendMode where
  fieldDefault = ProcessingMode'DEFAULT
instance Control.DeepSeq.NFData ProcessingMode'HeaderSendMode where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Denvoy/extensions/filters/http/ext_proc/v3alpha/processing_mode.proto\DC2.envoy.extensions.filters.http.ext_proc.v3alpha\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\201\a\n\
    \\SOProcessingMode\DC2\135\SOH\n\
    \\DC3request_header_mode\CAN\SOH \SOH(\SO2M.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingMode.HeaderSendModeR\DC1requestHeaderModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\137\SOH\n\
    \\DC4response_header_mode\CAN\STX \SOH(\SO2M.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingMode.HeaderSendModeR\DC2responseHeaderModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\129\SOH\n\
    \\DC1request_body_mode\CAN\ETX \SOH(\SO2K.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingMode.BodySendModeR\SIrequestBodyModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\131\SOH\n\
    \\DC2response_body_mode\CAN\EOT \SOH(\SO2K.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingMode.BodySendModeR\DLEresponseBodyModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\137\SOH\n\
    \\DC4request_trailer_mode\CAN\ENQ \SOH(\SO2M.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingMode.HeaderSendModeR\DC2requestTrailerModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\139\SOH\n\
    \\NAKresponse_trailer_mode\CAN\ACK \SOH(\SO2M.envoy.extensions.filters.http.ext_proc.v3alpha.ProcessingMode.HeaderSendModeR\DC3responseTrailerModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"1\n\
    \\SO\&HeaderSendMode\DC2\v\n\
    \\aDEFAULT\DLE\NUL\DC2\b\n\
    \\EOTSEND\DLE\SOH\DC2\b\n\
    \\EOTSKIP\DLE\STX\"J\n\
    \\fBodySendMode\DC2\b\n\
    \\EOTNONE\DLE\NUL\DC2\f\n\
    \\bSTREAMED\DLE\SOH\DC2\f\n\
    \\bBUFFERED\DLE\STX\DC2\DC4\n\
    \\DLEBUFFERED_PARTIAL\DLE\ETXBe\n\
    \<io.envoyproxy.envoy.extensions.filters.http.ext_proc.v3alphaB\DC3ProcessingModeProtoP\SOH\186\128\200\209\ACK\STX\b\SOH\186\128\200\209\ACK\STX\DLE\STXJ\255\DC3\n\
    \\ACK\DC2\EOT\NUL\NULI\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL7\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULU\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\a\NULU\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL4\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\b\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\t\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL>\n\
    \\r\n\
    \\ACK\b\135\128\153j\SOH\DC2\ETX\n\
    \\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\v\NULF\n\
    \\178\STX\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NULI\SOH\SUB\ETB [#next-free-field: 7]\n\
    \2\134\SOH [#protodoc-title: External Processing Filter]\n\
    \ External Processing Filter Processing Mode\n\
    \ [#extension: envoy.filters.http.ext_proc]\n\
    \2\131\SOH This configuration describes which parts of an HTTP request and\n\
    \ response are sent to a remote server and how they are delivered.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\SYN\n\
    \<\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\ETB\STX\"\ETX\SUB. Control how headers and trailers are handled\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\ETB\a\NAK\n\
    \\182\SOH\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\ESC\EOT\DLE\SUB\166\SOH The default HeaderSendMode depends on which part of the message is being\n\
    \ processed. By default, request and response headers are sent,\n\
    \ while trailers are skipped.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC\EOT\v\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\ESC\SO\SI\n\
    \,\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\RS\EOT\r\SUB\GS Send the header or trailer.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\RS\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\RS\v\f\n\
    \3\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX!\EOT\r\SUB$ Do not send the header or trailer.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX!\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX!\v\f\n\
    \G\n\
    \\EOT\EOT\NUL\EOT\SOH\DC2\EOT%\STX6\ETX\SUB9 Control how the request and response bodies are handled\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\SOH\SOH\DC2\ETX%\a\DC3\n\
    \B\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\NUL\DC2\ETX'\EOT\r\SUB3 Do not send the body at all. This is the default.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\NUL\SOH\DC2\ETX'\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\NUL\STX\DC2\ETX'\v\f\n\
    \V\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\SOH\DC2\ETX+\EOT\DC1\SUBG Stream the body to the server in pieces as they arrive at the\n\
    \ proxy.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\SOH\SOH\DC2\ETX+\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\SOH\STX\DC2\ETX+\SI\DLE\n\
    \\186\SOH\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\STX\DC2\ETX0\EOT\DC1\SUB\170\SOH Buffer the message body in memory and send the entire body at once.\n\
    \ If the body exceeds the configured buffer limit, then the\n\
    \ downstream system will receive an error.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\STX\SOH\DC2\ETX0\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\STX\STX\DC2\ETX0\SI\DLE\n\
    \\201\SOH\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\ETX\DC2\ETX5\EOT\EM\SUB\185\SOH Buffer the message body in memory and send the entire body in one\n\
    \ chunk. If the body exceeds the configured buffer limit, then the body contents\n\
    \ up to the buffer limit will be sent.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\ETX\SOH\DC2\ETX5\EOT\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\ETX\STX\DC2\ETX5\ETB\CAN\n\
    \C\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX9\STXX\SUB6 How to handle the request header. Default is \"SEND\".\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX9\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX9\DC1$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX9'(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX9)W\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DLE\DC2\ETX9*V\n\
    \D\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX<\STXY\SUB7 How to handle the response header. Default is \"SEND\".\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX<\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX<\DC1%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX<()\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX<*X\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DLE\DC2\ETX<+W\n\
    \A\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX?\STXT\SUB4 How to handle the request body. Default is \"NONE\".\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX?\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX?\SI \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX?#$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX?%S\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\DLE\DC2\ETX?&R\n\
    \B\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXB\STXU\SUB5 How do handle the response body. Default is \"NONE\".\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETXB\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXB\SI!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXB$%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETXB&T\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\175\b\DLE\DC2\ETXB'S\n\
    \E\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXE\STXY\SUB8 How to handle the request trailers. Default is \"SKIP\".\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXE\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXE\DC1%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXE()\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETXE*X\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\175\b\DLE\DC2\ETXE+W\n\
    \F\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXH\STXZ\SUB9 How to handle the response trailers. Default is \"SKIP\".\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXH\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXH\DC1&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXH)*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\ETXH+Y\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\175\b\DLE\DC2\ETXH,Xb\ACKproto3"