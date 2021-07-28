{- This file was auto-generated from envoy/extensions/filters/http/fault/v3/fault.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault (
        FaultAbort(), FaultAbort'ErrorType(..), _FaultAbort'HttpStatus,
        _FaultAbort'GrpcStatus, _FaultAbort'HeaderAbort',
        FaultAbort'HeaderAbort(), HTTPFault()
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
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.percentage' @:: Lens' FaultAbort Proto.Envoy.Type.V3.Percent.FractionalPercent@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.maybe'percentage' @:: Lens' FaultAbort (Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent)@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.maybe'errorType' @:: Lens' FaultAbort (Prelude.Maybe FaultAbort'ErrorType)@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.maybe'httpStatus' @:: Lens' FaultAbort (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.httpStatus' @:: Lens' FaultAbort Data.Word.Word32@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.maybe'grpcStatus' @:: Lens' FaultAbort (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.grpcStatus' @:: Lens' FaultAbort Data.Word.Word32@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.maybe'headerAbort' @:: Lens' FaultAbort (Prelude.Maybe FaultAbort'HeaderAbort)@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.headerAbort' @:: Lens' FaultAbort FaultAbort'HeaderAbort@ -}
data FaultAbort
  = FaultAbort'_constructor {_FaultAbort'percentage :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent),
                             _FaultAbort'errorType :: !(Prelude.Maybe FaultAbort'ErrorType),
                             _FaultAbort'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FaultAbort where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data FaultAbort'ErrorType
  = FaultAbort'HttpStatus !Data.Word.Word32 |
    FaultAbort'GrpcStatus !Data.Word.Word32 |
    FaultAbort'HeaderAbort' !FaultAbort'HeaderAbort
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField FaultAbort "percentage" Proto.Envoy.Type.V3.Percent.FractionalPercent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultAbort'percentage
           (\ x__ y__ -> x__ {_FaultAbort'percentage = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FaultAbort "maybe'percentage" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultAbort'percentage
           (\ x__ y__ -> x__ {_FaultAbort'percentage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FaultAbort "maybe'errorType" (Prelude.Maybe FaultAbort'ErrorType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultAbort'errorType
           (\ x__ y__ -> x__ {_FaultAbort'errorType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FaultAbort "maybe'httpStatus" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultAbort'errorType
           (\ x__ y__ -> x__ {_FaultAbort'errorType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FaultAbort'HttpStatus x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FaultAbort'HttpStatus y__))
instance Data.ProtoLens.Field.HasField FaultAbort "httpStatus" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultAbort'errorType
           (\ x__ y__ -> x__ {_FaultAbort'errorType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FaultAbort'HttpStatus x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FaultAbort'HttpStatus y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField FaultAbort "maybe'grpcStatus" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultAbort'errorType
           (\ x__ y__ -> x__ {_FaultAbort'errorType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FaultAbort'GrpcStatus x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FaultAbort'GrpcStatus y__))
instance Data.ProtoLens.Field.HasField FaultAbort "grpcStatus" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultAbort'errorType
           (\ x__ y__ -> x__ {_FaultAbort'errorType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FaultAbort'GrpcStatus x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FaultAbort'GrpcStatus y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField FaultAbort "maybe'headerAbort" (Prelude.Maybe FaultAbort'HeaderAbort) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultAbort'errorType
           (\ x__ y__ -> x__ {_FaultAbort'errorType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FaultAbort'HeaderAbort' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FaultAbort'HeaderAbort' y__))
instance Data.ProtoLens.Field.HasField FaultAbort "headerAbort" FaultAbort'HeaderAbort where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultAbort'errorType
           (\ x__ y__ -> x__ {_FaultAbort'errorType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FaultAbort'HeaderAbort' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FaultAbort'HeaderAbort' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message FaultAbort where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.fault.v3.FaultAbort"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \FaultAbort\DC2.\n\
      \\vhttp_status\CAN\STX \SOH(\rH\NULR\n\
      \httpStatusB\v\250B\b*\ACK\DLE\216\EOT(\200\SOH\DC2!\n\
      \\vgrpc_status\CAN\ENQ \SOH(\rH\NULR\n\
      \grpcStatus\DC2c\n\
      \\fheader_abort\CAN\EOT \SOH(\v2>.envoy.extensions.filters.http.fault.v3.FaultAbort.HeaderAbortH\NULR\vheaderAbort\DC2@\n\
      \\n\
      \percentage\CAN\ETX \SOH(\v2 .envoy.type.v3.FractionalPercentR\n\
      \percentage\SUBN\n\
      \\vHeaderAbort:?\154\197\136\RS:\n\
      \8envoy.config.filter.http.fault.v2.FaultAbort.HeaderAbortB\DC1\n\
      \\n\
      \error_type\DC2\ETX\248B\SOH:3\154\197\136\RS.\n\
      \,envoy.config.filter.http.fault.v2.FaultAbortJ\EOT\b\SOH\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        percentage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "percentage"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.FractionalPercent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'percentage")) ::
              Data.ProtoLens.FieldDescriptor FaultAbort
        httpStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpStatus")) ::
              Data.ProtoLens.FieldDescriptor FaultAbort
        grpcStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grpc_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'grpcStatus")) ::
              Data.ProtoLens.FieldDescriptor FaultAbort
        headerAbort__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header_abort"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FaultAbort'HeaderAbort)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'headerAbort")) ::
              Data.ProtoLens.FieldDescriptor FaultAbort
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, percentage__field_descriptor),
           (Data.ProtoLens.Tag 2, httpStatus__field_descriptor),
           (Data.ProtoLens.Tag 5, grpcStatus__field_descriptor),
           (Data.ProtoLens.Tag 4, headerAbort__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FaultAbort'_unknownFields
        (\ x__ y__ -> x__ {_FaultAbort'_unknownFields = y__})
  defMessage
    = FaultAbort'_constructor
        {_FaultAbort'percentage = Prelude.Nothing,
         _FaultAbort'errorType = Prelude.Nothing,
         _FaultAbort'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FaultAbort -> Data.ProtoLens.Encoding.Bytes.Parser FaultAbort
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
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "percentage"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"percentage") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "http_status"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"httpStatus") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "grpc_status"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"grpcStatus") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header_abort"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"headerAbort") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FaultAbort"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'percentage") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                       (Data.ProtoLens.Field.field @"maybe'errorType") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (FaultAbort'HttpStatus v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral v)
                   (Prelude.Just (FaultAbort'GrpcStatus v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral v)
                   (Prelude.Just (FaultAbort'HeaderAbort' v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData FaultAbort where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FaultAbort'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FaultAbort'percentage x__)
                (Control.DeepSeq.deepseq (_FaultAbort'errorType x__) ()))
instance Control.DeepSeq.NFData FaultAbort'ErrorType where
  rnf (FaultAbort'HttpStatus x__) = Control.DeepSeq.rnf x__
  rnf (FaultAbort'GrpcStatus x__) = Control.DeepSeq.rnf x__
  rnf (FaultAbort'HeaderAbort' x__) = Control.DeepSeq.rnf x__
_FaultAbort'HttpStatus ::
  Data.ProtoLens.Prism.Prism' FaultAbort'ErrorType Data.Word.Word32
_FaultAbort'HttpStatus
  = Data.ProtoLens.Prism.prism'
      FaultAbort'HttpStatus
      (\ p__
         -> case p__ of
              (FaultAbort'HttpStatus p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FaultAbort'GrpcStatus ::
  Data.ProtoLens.Prism.Prism' FaultAbort'ErrorType Data.Word.Word32
_FaultAbort'GrpcStatus
  = Data.ProtoLens.Prism.prism'
      FaultAbort'GrpcStatus
      (\ p__
         -> case p__ of
              (FaultAbort'GrpcStatus p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FaultAbort'HeaderAbort' ::
  Data.ProtoLens.Prism.Prism' FaultAbort'ErrorType FaultAbort'HeaderAbort
_FaultAbort'HeaderAbort'
  = Data.ProtoLens.Prism.prism'
      FaultAbort'HeaderAbort'
      (\ p__
         -> case p__ of
              (FaultAbort'HeaderAbort' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
      -}
data FaultAbort'HeaderAbort
  = FaultAbort'HeaderAbort'_constructor {_FaultAbort'HeaderAbort'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FaultAbort'HeaderAbort where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message FaultAbort'HeaderAbort where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.fault.v3.FaultAbort.HeaderAbort"
  packedMessageDescriptor _
    = "\n\
      \\vHeaderAbort:?\154\197\136\RS:\n\
      \8envoy.config.filter.http.fault.v2.FaultAbort.HeaderAbort"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FaultAbort'HeaderAbort'_unknownFields
        (\ x__ y__ -> x__ {_FaultAbort'HeaderAbort'_unknownFields = y__})
  defMessage
    = FaultAbort'HeaderAbort'_constructor
        {_FaultAbort'HeaderAbort'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FaultAbort'HeaderAbort
          -> Data.ProtoLens.Encoding.Bytes.Parser FaultAbort'HeaderAbort
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
          (do loop Data.ProtoLens.defMessage) "HeaderAbort"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData FaultAbort'HeaderAbort where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FaultAbort'HeaderAbort'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.delay' @:: Lens' HTTPFault Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultDelay@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.maybe'delay' @:: Lens' HTTPFault (Prelude.Maybe Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultDelay)@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.abort' @:: Lens' HTTPFault FaultAbort@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.maybe'abort' @:: Lens' HTTPFault (Prelude.Maybe FaultAbort)@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.upstreamCluster' @:: Lens' HTTPFault Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.headers' @:: Lens' HTTPFault [Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher]@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.vec'headers' @:: Lens' HTTPFault (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.downstreamNodes' @:: Lens' HTTPFault [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.vec'downstreamNodes' @:: Lens' HTTPFault (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.maxActiveFaults' @:: Lens' HTTPFault Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.maybe'maxActiveFaults' @:: Lens' HTTPFault (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.responseRateLimit' @:: Lens' HTTPFault Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultRateLimit@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.maybe'responseRateLimit' @:: Lens' HTTPFault (Prelude.Maybe Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultRateLimit)@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.delayPercentRuntime' @:: Lens' HTTPFault Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.abortPercentRuntime' @:: Lens' HTTPFault Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.delayDurationRuntime' @:: Lens' HTTPFault Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.abortHttpStatusRuntime' @:: Lens' HTTPFault Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.maxActiveFaultsRuntime' @:: Lens' HTTPFault Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.responseRateLimitPercentRuntime' @:: Lens' HTTPFault Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.abortGrpcStatusRuntime' @:: Lens' HTTPFault Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields.disableDownstreamClusterStats' @:: Lens' HTTPFault Prelude.Bool@ -}
data HTTPFault
  = HTTPFault'_constructor {_HTTPFault'delay :: !(Prelude.Maybe Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultDelay),
                            _HTTPFault'abort :: !(Prelude.Maybe FaultAbort),
                            _HTTPFault'upstreamCluster :: !Data.Text.Text,
                            _HTTPFault'headers :: !(Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher),
                            _HTTPFault'downstreamNodes :: !(Data.Vector.Vector Data.Text.Text),
                            _HTTPFault'maxActiveFaults :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                            _HTTPFault'responseRateLimit :: !(Prelude.Maybe Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultRateLimit),
                            _HTTPFault'delayPercentRuntime :: !Data.Text.Text,
                            _HTTPFault'abortPercentRuntime :: !Data.Text.Text,
                            _HTTPFault'delayDurationRuntime :: !Data.Text.Text,
                            _HTTPFault'abortHttpStatusRuntime :: !Data.Text.Text,
                            _HTTPFault'maxActiveFaultsRuntime :: !Data.Text.Text,
                            _HTTPFault'responseRateLimitPercentRuntime :: !Data.Text.Text,
                            _HTTPFault'abortGrpcStatusRuntime :: !Data.Text.Text,
                            _HTTPFault'disableDownstreamClusterStats :: !Prelude.Bool,
                            _HTTPFault'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HTTPFault where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HTTPFault "delay" Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultDelay where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'delay (\ x__ y__ -> x__ {_HTTPFault'delay = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HTTPFault "maybe'delay" (Prelude.Maybe Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultDelay) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'delay (\ x__ y__ -> x__ {_HTTPFault'delay = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPFault "abort" FaultAbort where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'abort (\ x__ y__ -> x__ {_HTTPFault'abort = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HTTPFault "maybe'abort" (Prelude.Maybe FaultAbort) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'abort (\ x__ y__ -> x__ {_HTTPFault'abort = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPFault "upstreamCluster" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'upstreamCluster
           (\ x__ y__ -> x__ {_HTTPFault'upstreamCluster = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPFault "headers" [Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'headers (\ x__ y__ -> x__ {_HTTPFault'headers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HTTPFault "vec'headers" (Data.Vector.Vector Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'headers (\ x__ y__ -> x__ {_HTTPFault'headers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPFault "downstreamNodes" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'downstreamNodes
           (\ x__ y__ -> x__ {_HTTPFault'downstreamNodes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HTTPFault "vec'downstreamNodes" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'downstreamNodes
           (\ x__ y__ -> x__ {_HTTPFault'downstreamNodes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPFault "maxActiveFaults" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'maxActiveFaults
           (\ x__ y__ -> x__ {_HTTPFault'maxActiveFaults = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HTTPFault "maybe'maxActiveFaults" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'maxActiveFaults
           (\ x__ y__ -> x__ {_HTTPFault'maxActiveFaults = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPFault "responseRateLimit" Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultRateLimit where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'responseRateLimit
           (\ x__ y__ -> x__ {_HTTPFault'responseRateLimit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HTTPFault "maybe'responseRateLimit" (Prelude.Maybe Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultRateLimit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'responseRateLimit
           (\ x__ y__ -> x__ {_HTTPFault'responseRateLimit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPFault "delayPercentRuntime" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'delayPercentRuntime
           (\ x__ y__ -> x__ {_HTTPFault'delayPercentRuntime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPFault "abortPercentRuntime" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'abortPercentRuntime
           (\ x__ y__ -> x__ {_HTTPFault'abortPercentRuntime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPFault "delayDurationRuntime" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'delayDurationRuntime
           (\ x__ y__ -> x__ {_HTTPFault'delayDurationRuntime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPFault "abortHttpStatusRuntime" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'abortHttpStatusRuntime
           (\ x__ y__ -> x__ {_HTTPFault'abortHttpStatusRuntime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPFault "maxActiveFaultsRuntime" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'maxActiveFaultsRuntime
           (\ x__ y__ -> x__ {_HTTPFault'maxActiveFaultsRuntime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPFault "responseRateLimitPercentRuntime" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'responseRateLimitPercentRuntime
           (\ x__ y__
              -> x__ {_HTTPFault'responseRateLimitPercentRuntime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPFault "abortGrpcStatusRuntime" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'abortGrpcStatusRuntime
           (\ x__ y__ -> x__ {_HTTPFault'abortGrpcStatusRuntime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HTTPFault "disableDownstreamClusterStats" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HTTPFault'disableDownstreamClusterStats
           (\ x__ y__
              -> x__ {_HTTPFault'disableDownstreamClusterStats = y__}))
        Prelude.id
instance Data.ProtoLens.Message HTTPFault where
  messageName _
    = Data.Text.pack "envoy.extensions.filters.http.fault.v3.HTTPFault"
  packedMessageDescriptor _
    = "\n\
      \\tHTTPFault\DC2J\n\
      \\ENQdelay\CAN\SOH \SOH(\v24.envoy.extensions.filters.common.fault.v3.FaultDelayR\ENQdelay\DC2H\n\
      \\ENQabort\CAN\STX \SOH(\v22.envoy.extensions.filters.http.fault.v3.FaultAbortR\ENQabort\DC2)\n\
      \\DLEupstream_cluster\CAN\ETX \SOH(\tR\SIupstreamCluster\DC2>\n\
      \\aheaders\CAN\EOT \ETX(\v2$.envoy.config.route.v3.HeaderMatcherR\aheaders\DC2)\n\
      \\DLEdownstream_nodes\CAN\ENQ \ETX(\tR\SIdownstreamNodes\DC2H\n\
      \\DC1max_active_faults\CAN\ACK \SOH(\v2\FS.google.protobuf.UInt32ValueR\SImaxActiveFaults\DC2h\n\
      \\DC3response_rate_limit\CAN\a \SOH(\v28.envoy.extensions.filters.common.fault.v3.FaultRateLimitR\DC1responseRateLimit\DC22\n\
      \\NAKdelay_percent_runtime\CAN\b \SOH(\tR\DC3delayPercentRuntime\DC22\n\
      \\NAKabort_percent_runtime\CAN\t \SOH(\tR\DC3abortPercentRuntime\DC24\n\
      \\SYNdelay_duration_runtime\CAN\n\
      \ \SOH(\tR\DC4delayDurationRuntime\DC29\n\
      \\EMabort_http_status_runtime\CAN\v \SOH(\tR\SYNabortHttpStatusRuntime\DC29\n\
      \\EMmax_active_faults_runtime\CAN\f \SOH(\tR\SYNmaxActiveFaultsRuntime\DC2L\n\
      \#response_rate_limit_percent_runtime\CAN\r \SOH(\tR\USresponseRateLimitPercentRuntime\DC29\n\
      \\EMabort_grpc_status_runtime\CAN\SO \SOH(\tR\SYNabortGrpcStatusRuntime\DC2G\n\
      \ disable_downstream_cluster_stats\CAN\SI \SOH(\bR\GSdisableDownstreamClusterStats:2\154\197\136\RS-\n\
      \+envoy.config.filter.http.fault.v2.HTTPFault"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delay__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delay"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultDelay)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'delay")) ::
              Data.ProtoLens.FieldDescriptor HTTPFault
        abort__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "abort"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FaultAbort)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'abort")) ::
              Data.ProtoLens.FieldDescriptor HTTPFault
        upstreamCluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_cluster"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"upstreamCluster")) ::
              Data.ProtoLens.FieldDescriptor HTTPFault
        headers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"headers")) ::
              Data.ProtoLens.FieldDescriptor HTTPFault
        downstreamNodes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "downstream_nodes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"downstreamNodes")) ::
              Data.ProtoLens.FieldDescriptor HTTPFault
        maxActiveFaults__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_active_faults"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxActiveFaults")) ::
              Data.ProtoLens.FieldDescriptor HTTPFault
        responseRateLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_rate_limit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault.FaultRateLimit)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'responseRateLimit")) ::
              Data.ProtoLens.FieldDescriptor HTTPFault
        delayPercentRuntime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delay_percent_runtime"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delayPercentRuntime")) ::
              Data.ProtoLens.FieldDescriptor HTTPFault
        abortPercentRuntime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "abort_percent_runtime"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"abortPercentRuntime")) ::
              Data.ProtoLens.FieldDescriptor HTTPFault
        delayDurationRuntime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delay_duration_runtime"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delayDurationRuntime")) ::
              Data.ProtoLens.FieldDescriptor HTTPFault
        abortHttpStatusRuntime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "abort_http_status_runtime"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"abortHttpStatusRuntime")) ::
              Data.ProtoLens.FieldDescriptor HTTPFault
        maxActiveFaultsRuntime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_active_faults_runtime"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxActiveFaultsRuntime")) ::
              Data.ProtoLens.FieldDescriptor HTTPFault
        responseRateLimitPercentRuntime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_rate_limit_percent_runtime"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"responseRateLimitPercentRuntime")) ::
              Data.ProtoLens.FieldDescriptor HTTPFault
        abortGrpcStatusRuntime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "abort_grpc_status_runtime"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"abortGrpcStatusRuntime")) ::
              Data.ProtoLens.FieldDescriptor HTTPFault
        disableDownstreamClusterStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disable_downstream_cluster_stats"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"disableDownstreamClusterStats")) ::
              Data.ProtoLens.FieldDescriptor HTTPFault
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delay__field_descriptor),
           (Data.ProtoLens.Tag 2, abort__field_descriptor),
           (Data.ProtoLens.Tag 3, upstreamCluster__field_descriptor),
           (Data.ProtoLens.Tag 4, headers__field_descriptor),
           (Data.ProtoLens.Tag 5, downstreamNodes__field_descriptor),
           (Data.ProtoLens.Tag 6, maxActiveFaults__field_descriptor),
           (Data.ProtoLens.Tag 7, responseRateLimit__field_descriptor),
           (Data.ProtoLens.Tag 8, delayPercentRuntime__field_descriptor),
           (Data.ProtoLens.Tag 9, abortPercentRuntime__field_descriptor),
           (Data.ProtoLens.Tag 10, delayDurationRuntime__field_descriptor),
           (Data.ProtoLens.Tag 11, abortHttpStatusRuntime__field_descriptor),
           (Data.ProtoLens.Tag 12, maxActiveFaultsRuntime__field_descriptor),
           (Data.ProtoLens.Tag 13, 
            responseRateLimitPercentRuntime__field_descriptor),
           (Data.ProtoLens.Tag 14, abortGrpcStatusRuntime__field_descriptor),
           (Data.ProtoLens.Tag 15, 
            disableDownstreamClusterStats__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HTTPFault'_unknownFields
        (\ x__ y__ -> x__ {_HTTPFault'_unknownFields = y__})
  defMessage
    = HTTPFault'_constructor
        {_HTTPFault'delay = Prelude.Nothing,
         _HTTPFault'abort = Prelude.Nothing,
         _HTTPFault'upstreamCluster = Data.ProtoLens.fieldDefault,
         _HTTPFault'headers = Data.Vector.Generic.empty,
         _HTTPFault'downstreamNodes = Data.Vector.Generic.empty,
         _HTTPFault'maxActiveFaults = Prelude.Nothing,
         _HTTPFault'responseRateLimit = Prelude.Nothing,
         _HTTPFault'delayPercentRuntime = Data.ProtoLens.fieldDefault,
         _HTTPFault'abortPercentRuntime = Data.ProtoLens.fieldDefault,
         _HTTPFault'delayDurationRuntime = Data.ProtoLens.fieldDefault,
         _HTTPFault'abortHttpStatusRuntime = Data.ProtoLens.fieldDefault,
         _HTTPFault'maxActiveFaultsRuntime = Data.ProtoLens.fieldDefault,
         _HTTPFault'responseRateLimitPercentRuntime = Data.ProtoLens.fieldDefault,
         _HTTPFault'abortGrpcStatusRuntime = Data.ProtoLens.fieldDefault,
         _HTTPFault'disableDownstreamClusterStats = Data.ProtoLens.fieldDefault,
         _HTTPFault'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HTTPFault
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Route.V3.RouteComponents.HeaderMatcher
                -> Data.ProtoLens.Encoding.Bytes.Parser HTTPFault
        loop x mutable'downstreamNodes mutable'headers
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'downstreamNodes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'downstreamNodes)
                      frozen'headers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'headers)
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
                              (Data.ProtoLens.Field.field @"vec'downstreamNodes")
                              frozen'downstreamNodes
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'headers") frozen'headers x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "delay"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"delay") y x)
                                  mutable'downstreamNodes
                                  mutable'headers
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "abort"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"abort") y x)
                                  mutable'downstreamNodes
                                  mutable'headers
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
                                       "upstream_cluster"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamCluster") y x)
                                  mutable'downstreamNodes
                                  mutable'headers
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "headers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'headers y)
                                loop x mutable'downstreamNodes v
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "downstream_nodes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'downstreamNodes y)
                                loop x v mutable'headers
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_active_faults"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxActiveFaults") y x)
                                  mutable'downstreamNodes
                                  mutable'headers
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response_rate_limit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseRateLimit") y x)
                                  mutable'downstreamNodes
                                  mutable'headers
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "delay_percent_runtime"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delayPercentRuntime") y x)
                                  mutable'downstreamNodes
                                  mutable'headers
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "abort_percent_runtime"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"abortPercentRuntime") y x)
                                  mutable'downstreamNodes
                                  mutable'headers
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "delay_duration_runtime"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delayDurationRuntime") y x)
                                  mutable'downstreamNodes
                                  mutable'headers
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "abort_http_status_runtime"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"abortHttpStatusRuntime") y x)
                                  mutable'downstreamNodes
                                  mutable'headers
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "max_active_faults_runtime"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxActiveFaultsRuntime") y x)
                                  mutable'downstreamNodes
                                  mutable'headers
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "response_rate_limit_percent_runtime"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseRateLimitPercentRuntime")
                                     y
                                     x)
                                  mutable'downstreamNodes
                                  mutable'headers
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "abort_grpc_status_runtime"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"abortGrpcStatusRuntime") y x)
                                  mutable'downstreamNodes
                                  mutable'headers
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "disable_downstream_cluster_stats"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"disableDownstreamClusterStats")
                                     y
                                     x)
                                  mutable'downstreamNodes
                                  mutable'headers
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'downstreamNodes
                                  mutable'headers
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'downstreamNodes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              mutable'headers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'downstreamNodes mutable'headers)
          "HTTPFault"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'delay") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'abort") _x
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
                            (Data.ProtoLens.Field.field @"upstreamCluster") _x
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
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage
                                    _v))
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'headers") _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.Text.Encoding.encodeUtf8
                                       _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'downstreamNodes") _x))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'maxActiveFaults") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'responseRateLimit") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage
                                            _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"delayPercentRuntime") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((Prelude..)
                                              (\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Data.Text.Encoding.encodeUtf8
                                              _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"abortPercentRuntime") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                              ((Prelude..)
                                                 (\ bs
                                                    -> (Data.Monoid.<>)
                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                            (Prelude.fromIntegral
                                                               (Data.ByteString.length bs)))
                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                            bs))
                                                 Data.Text.Encoding.encodeUtf8
                                                 _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field
                                                    @"delayDurationRuntime")
                                                 _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                 ((Prelude..)
                                                    (\ bs
                                                       -> (Data.Monoid.<>)
                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                               (Prelude.fromIntegral
                                                                  (Data.ByteString.length bs)))
                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                               bs))
                                                    Data.Text.Encoding.encodeUtf8
                                                    _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"abortHttpStatusRuntime")
                                                    _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                    ((Prelude..)
                                                       (\ bs
                                                          -> (Data.Monoid.<>)
                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                  (Prelude.fromIntegral
                                                                     (Data.ByteString.length bs)))
                                                               (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                  bs))
                                                       Data.Text.Encoding.encodeUtf8
                                                       _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"maxActiveFaultsRuntime")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                       ((Prelude..)
                                                          (\ bs
                                                             -> (Data.Monoid.<>)
                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                     (Prelude.fromIntegral
                                                                        (Data.ByteString.length
                                                                           bs)))
                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                     bs))
                                                          Data.Text.Encoding.encodeUtf8
                                                          _v))
                                              ((Data.Monoid.<>)
                                                 (let
                                                    _v
                                                      = Lens.Family2.view
                                                          (Data.ProtoLens.Field.field
                                                             @"responseRateLimitPercentRuntime")
                                                          _x
                                                  in
                                                    if (Prelude.==)
                                                         _v Data.ProtoLens.fieldDefault then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             106)
                                                          ((Prelude..)
                                                             (\ bs
                                                                -> (Data.Monoid.<>)
                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                        (Prelude.fromIntegral
                                                                           (Data.ByteString.length
                                                                              bs)))
                                                                     (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                        bs))
                                                             Data.Text.Encoding.encodeUtf8
                                                             _v))
                                                 ((Data.Monoid.<>)
                                                    (let
                                                       _v
                                                         = Lens.Family2.view
                                                             (Data.ProtoLens.Field.field
                                                                @"abortGrpcStatusRuntime")
                                                             _x
                                                     in
                                                       if (Prelude.==)
                                                            _v Data.ProtoLens.fieldDefault then
                                                           Data.Monoid.mempty
                                                       else
                                                           (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                114)
                                                             ((Prelude..)
                                                                (\ bs
                                                                   -> (Data.Monoid.<>)
                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                           (Prelude.fromIntegral
                                                                              (Data.ByteString.length
                                                                                 bs)))
                                                                        (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                           bs))
                                                                Data.Text.Encoding.encodeUtf8
                                                                _v))
                                                    ((Data.Monoid.<>)
                                                       (let
                                                          _v
                                                            = Lens.Family2.view
                                                                (Data.ProtoLens.Field.field
                                                                   @"disableDownstreamClusterStats")
                                                                _x
                                                        in
                                                          if (Prelude.==)
                                                               _v Data.ProtoLens.fieldDefault then
                                                              Data.Monoid.mempty
                                                          else
                                                              (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   120)
                                                                ((Prelude..)
                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (\ b -> if b then 1 else 0)
                                                                   _v))
                                                       (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                          (Lens.Family2.view
                                                             Data.ProtoLens.unknownFields
                                                             _x))))))))))))))))
instance Control.DeepSeq.NFData HTTPFault where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HTTPFault'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HTTPFault'delay x__)
                (Control.DeepSeq.deepseq
                   (_HTTPFault'abort x__)
                   (Control.DeepSeq.deepseq
                      (_HTTPFault'upstreamCluster x__)
                      (Control.DeepSeq.deepseq
                         (_HTTPFault'headers x__)
                         (Control.DeepSeq.deepseq
                            (_HTTPFault'downstreamNodes x__)
                            (Control.DeepSeq.deepseq
                               (_HTTPFault'maxActiveFaults x__)
                               (Control.DeepSeq.deepseq
                                  (_HTTPFault'responseRateLimit x__)
                                  (Control.DeepSeq.deepseq
                                     (_HTTPFault'delayPercentRuntime x__)
                                     (Control.DeepSeq.deepseq
                                        (_HTTPFault'abortPercentRuntime x__)
                                        (Control.DeepSeq.deepseq
                                           (_HTTPFault'delayDurationRuntime x__)
                                           (Control.DeepSeq.deepseq
                                              (_HTTPFault'abortHttpStatusRuntime x__)
                                              (Control.DeepSeq.deepseq
                                                 (_HTTPFault'maxActiveFaultsRuntime x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_HTTPFault'responseRateLimitPercentRuntime x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_HTTPFault'abortGrpcStatusRuntime x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_HTTPFault'disableDownstreamClusterStats
                                                             x__)
                                                          ())))))))))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \2envoy/extensions/filters/http/fault/v3/fault.proto\DC2&envoy.extensions.filters.http.fault.v3\SUB,envoy/config/route/v3/route_components.proto\SUB4envoy/extensions/filters/common/fault/v3/fault.proto\SUB\ESCenvoy/type/v3/percent.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\164\ETX\n\
    \\n\
    \FaultAbort\DC2.\n\
    \\vhttp_status\CAN\STX \SOH(\rH\NULR\n\
    \httpStatusB\v\250B\b*\ACK\DLE\216\EOT(\200\SOH\DC2!\n\
    \\vgrpc_status\CAN\ENQ \SOH(\rH\NULR\n\
    \grpcStatus\DC2c\n\
    \\fheader_abort\CAN\EOT \SOH(\v2>.envoy.extensions.filters.http.fault.v3.FaultAbort.HeaderAbortH\NULR\vheaderAbort\DC2@\n\
    \\n\
    \percentage\CAN\ETX \SOH(\v2 .envoy.type.v3.FractionalPercentR\n\
    \percentage\SUBN\n\
    \\vHeaderAbort:?\154\197\136\RS:\n\
    \8envoy.config.filter.http.fault.v2.FaultAbort.HeaderAbortB\DC1\n\
    \\n\
    \error_type\DC2\ETX\248B\SOH:3\154\197\136\RS.\n\
    \,envoy.config.filter.http.fault.v2.FaultAbortJ\EOT\b\SOH\DLE\STX\"\133\b\n\
    \\tHTTPFault\DC2J\n\
    \\ENQdelay\CAN\SOH \SOH(\v24.envoy.extensions.filters.common.fault.v3.FaultDelayR\ENQdelay\DC2H\n\
    \\ENQabort\CAN\STX \SOH(\v22.envoy.extensions.filters.http.fault.v3.FaultAbortR\ENQabort\DC2)\n\
    \\DLEupstream_cluster\CAN\ETX \SOH(\tR\SIupstreamCluster\DC2>\n\
    \\aheaders\CAN\EOT \ETX(\v2$.envoy.config.route.v3.HeaderMatcherR\aheaders\DC2)\n\
    \\DLEdownstream_nodes\CAN\ENQ \ETX(\tR\SIdownstreamNodes\DC2H\n\
    \\DC1max_active_faults\CAN\ACK \SOH(\v2\FS.google.protobuf.UInt32ValueR\SImaxActiveFaults\DC2h\n\
    \\DC3response_rate_limit\CAN\a \SOH(\v28.envoy.extensions.filters.common.fault.v3.FaultRateLimitR\DC1responseRateLimit\DC22\n\
    \\NAKdelay_percent_runtime\CAN\b \SOH(\tR\DC3delayPercentRuntime\DC22\n\
    \\NAKabort_percent_runtime\CAN\t \SOH(\tR\DC3abortPercentRuntime\DC24\n\
    \\SYNdelay_duration_runtime\CAN\n\
    \ \SOH(\tR\DC4delayDurationRuntime\DC29\n\
    \\EMabort_http_status_runtime\CAN\v \SOH(\tR\SYNabortHttpStatusRuntime\DC29\n\
    \\EMmax_active_faults_runtime\CAN\f \SOH(\tR\SYNmaxActiveFaultsRuntime\DC2L\n\
    \#response_rate_limit_percent_runtime\CAN\r \SOH(\tR\USresponseRateLimitPercentRuntime\DC29\n\
    \\EMabort_grpc_status_runtime\CAN\SO \SOH(\tR\SYNabortGrpcStatusRuntime\DC2G\n\
    \ disable_downstream_cluster_stats\CAN\SI \SOH(\bR\GSdisableDownstreamClusterStats:2\154\197\136\RS-\n\
    \+envoy.config.filter.http.fault.v2.HTTPFaultBL\n\
    \4io.envoyproxy.envoy.extensions.filters.http.fault.v3B\n\
    \FaultProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\150\&1\n\
    \\a\DC2\ENQ\NUL\NUL\149\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL/\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL6\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL>\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL%\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL+\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULM\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SO\NULM\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL+\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SI\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DLE\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC1\NULF\n\
    \\200\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NUL6\SOH\SUB\ETB [#next-free-field: 6]\n\
    \2\162\SOH [#protodoc-title: Fault Injection]\n\
    \ Fault Injection :ref:`configuration overview <config_http_filters_fault_injection>`.\n\
    \ [#extension: envoy.filters.http.fault]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\DC2\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\EM\STX\SUB5\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\EM\STX\SUB5\n\
    \\201\SOH\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\US\STX\"\ETX\SUB\186\SOH Fault aborts are controlled via an HTTP header (if applicable). See the\n\
    \ :ref:`HTTP fault filter <config_http_filters_fault_injection_http_header>` documentation for\n\
    \ more information.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\US\n\
    \\NAK\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT \EOT!C\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT \EOT!C\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\t\DC2\ETX$\STX\r\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETX$\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETX$\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETX$\v\f\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT&\STX1\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX&\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX'\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX'\EOT&\n\
    \A\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX*\EOTJ\SUB4 HTTP status code to use to abort the HTTP request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX*\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX*\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX*\EM\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX*\ESCI\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\ENQ\DC2\ETX*\FSH\n\
    \A\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX-\EOT\ESC\SUB4 gRPC status code to use to abort the gRPC request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX-\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX-\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX-\EM\SUB\n\
    \N\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX0\EOT!\SUBA Fault aborts are controlled via an HTTP header (if applicable).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX0\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX0\DLE\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX0\US \n\
    \t\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX5\STX+\SUBg The percentage of requests/operations/connections that will be aborted with the error code\n\
    \ provided.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX5\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX5\FS&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX5)*\n\
    \%\n\
    \\STX\EOT\SOH\DC2\ENQ9\NUL\149\SOH\SOH\SUB\CAN [#next-free-field: 16]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX9\b\DC1\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT:\STX;4\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT:\STX;4\n\
    \^\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX?\STX'\SUBQ If specified, the filter will inject delays based on the values in the\n\
    \ object.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX?\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX?\GS\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX?%&\n\
    \\143\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXC\STX\ETB\SUB\129\SOH If specified, the filter will abort requests based on the values in\n\
    \ the object. At least *abort* or *delay* must be specified.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXC\STX\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXC\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXC\NAK\SYN\n\
    \\194\SOH\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXH\STX\RS\SUB\180\SOH Specifies the name of the (destination) upstream cluster that the\n\
    \ filter should match on. Fault injection will be restricted to requests\n\
    \ bound to the specific upstream cluster.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETXH\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXH\t\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXH\FS\GS\n\
    \\144\ENQ\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETXS\STX5\SUB\130\ENQ Specifies a set of headers that the filter should match on. The fault\n\
    \ injection filter can be applied selectively to requests that match a set of\n\
    \ headers specified in the fault filter config. The chances of actual fault\n\
    \ injection further depend on the value of the :ref:`percentage\n\
    \ <envoy_v3_api_field_extensions.filters.http.fault.v3.FaultAbort.percentage>` field.\n\
    \ The filter will check the request's headers against all the specified\n\
    \ headers in the filter config. A match will happen if all the headers in the\n\
    \ config are present in the request with the same values (or based on\n\
    \ presence if the *value* field is not in the config).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETXS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETXS\v(\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETXS)0\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETXS34\n\
    \\219\STX\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX[\STX'\SUB\205\STX Faults are injected for the specified list of downstream hosts. If this\n\
    \ setting is not set, faults are injected for all downstream nodes.\n\
    \ Downstream node name is taken from :ref:`the HTTP\n\
    \ x-envoy-downstream-service-node\n\
    \ <config_http_conn_man_headers_downstream-service-node>` header and compared\n\
    \ against downstream_nodes list.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX[\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX[\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX[\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX[%&\n\
    \\190\ACK\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETXi\STX4\SUB\176\ACK The maximum number of faults that can be active at a single time via the configured fault\n\
    \ filter. Note that because this setting can be overridden at the route level, it's possible\n\
    \ for the number of active faults to be greater than this value (if injected via a different\n\
    \ route). If not specified, defaults to unlimited. This setting can be overridden via\n\
    \ `runtime <config_http_filters_fault_injection_runtime>` and any faults that are not injected\n\
    \ due to overflow will be indicated via the `faults_overflow\n\
    \ <config_http_filters_fault_injection_stats>` stat.\n\
    \\n\
    \ .. attention::\n\
    \   Like other :ref:`circuit breakers <arch_overview_circuit_break>` in Envoy, this is a fuzzy\n\
    \   limit. It's possible for the number of active faults to rise slightly above the configured\n\
    \   amount due to the implementation details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\ETXi\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETXi\RS/\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETXi23\n\
    \\149\ETX\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETXr\STX9\SUB\135\ETX The response rate limit to be applied to the response body of the stream. When configured,\n\
    \ the percentage can be overridden by the :ref:`fault.http.rate_limit.response_percent\n\
    \ <config_http_filters_fault_injection_runtime>` runtime key.\n\
    \\n\
    \ .. attention::\n\
    \  This is a per-stream limit versus a connection level limit. This means that concurrent streams\n\
    \  will each get an independent limit.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\ETXr\STX \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETXr!4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETXr78\n\
    \\171\SOH\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETXv\STX#\SUB\157\SOH The runtime key to override the :ref:`default <config_http_filters_fault_injection_runtime>`\n\
    \ runtime. The default is: fault.http.delay.fixed_delay_percent\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ENQ\DC2\ETXv\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETXv\t\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETXv!\"\n\
    \\165\SOH\n\
    \\EOT\EOT\SOH\STX\b\DC2\ETXz\STX#\SUB\151\SOH The runtime key to override the :ref:`default <config_http_filters_fault_injection_runtime>`\n\
    \ runtime. The default is: fault.http.abort.abort_percent\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ENQ\DC2\ETXz\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\ETXz\t\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\ETXz!\"\n\
    \\169\SOH\n\
    \\EOT\EOT\SOH\STX\t\DC2\ETX~\STX%\SUB\155\SOH The runtime key to override the :ref:`default <config_http_filters_fault_injection_runtime>`\n\
    \ runtime. The default is: fault.http.delay.fixed_duration_ms\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ENQ\DC2\ETX~\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\ETX~\t\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\ETX~\"$\n\
    \\164\SOH\n\
    \\EOT\EOT\SOH\STX\n\
    \\DC2\EOT\130\SOH\STX(\SUB\149\SOH The runtime key to override the :ref:`default <config_http_filters_fault_injection_runtime>`\n\
    \ runtime. The default is: fault.http.abort.http_status\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ENQ\DC2\EOT\130\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\SOH\DC2\EOT\130\SOH\t\"\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ETX\DC2\EOT\130\SOH%'\n\
    \\164\SOH\n\
    \\EOT\EOT\SOH\STX\v\DC2\EOT\134\SOH\STX(\SUB\149\SOH The runtime key to override the :ref:`default <config_http_filters_fault_injection_runtime>`\n\
    \ runtime. The default is: fault.http.max_active_faults\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\v\ENQ\DC2\EOT\134\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\v\SOH\DC2\EOT\134\SOH\t\"\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\v\ETX\DC2\EOT\134\SOH%'\n\
    \\174\SOH\n\
    \\EOT\EOT\SOH\STX\f\DC2\EOT\138\SOH\STX2\SUB\159\SOH The runtime key to override the :ref:`default <config_http_filters_fault_injection_runtime>`\n\
    \ runtime. The default is: fault.http.rate_limit.response_percent\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\ENQ\DC2\EOT\138\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\SOH\DC2\EOT\138\SOH\t,\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\ETX\DC2\EOT\138\SOH/1\n\
    \\164\SOH\n\
    \\EOT\EOT\SOH\STX\r\DC2\EOT\142\SOH\STX(\SUB\149\SOH The runtime key to override the :ref:`default <config_http_filters_fault_injection_runtime>`\n\
    \ runtime. The default is: fault.http.abort.grpc_status\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\r\ENQ\DC2\EOT\142\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\r\SOH\DC2\EOT\142\SOH\t\"\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\r\ETX\DC2\EOT\142\SOH%'\n\
    \\192\STX\n\
    \\EOT\EOT\SOH\STX\SO\DC2\EOT\148\SOH\STX-\SUB\177\STX To control whether stats storage is allocated dynamically for each downstream server.\n\
    \ If set to true, \"x-envoy-downstream-service-cluster\" field of header will be ignored by this filter.\n\
    \ If set to false, dynamic stats storage will be allocated for the downstream cluster name.\n\
    \ Default value is false.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SO\ENQ\DC2\EOT\148\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SO\SOH\DC2\EOT\148\SOH\a'\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SO\ETX\DC2\EOT\148\SOH*,b\ACKproto3"