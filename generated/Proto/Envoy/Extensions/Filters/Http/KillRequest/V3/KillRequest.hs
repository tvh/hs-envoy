{- This file was auto-generated from envoy/extensions/filters/http/kill_request/v3/kill_request.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.KillRequest.V3.KillRequest (
        KillRequest(), KillRequest'Direction(..), KillRequest'Direction(),
        KillRequest'Direction'UnrecognizedValue
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
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.KillRequest.V3.KillRequest_Fields.probability' @:: Lens' KillRequest Proto.Envoy.Type.V3.Percent.FractionalPercent@
         * 'Proto.Envoy.Extensions.Filters.Http.KillRequest.V3.KillRequest_Fields.maybe'probability' @:: Lens' KillRequest (Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent)@
         * 'Proto.Envoy.Extensions.Filters.Http.KillRequest.V3.KillRequest_Fields.killRequestHeader' @:: Lens' KillRequest Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.KillRequest.V3.KillRequest_Fields.direction' @:: Lens' KillRequest KillRequest'Direction@ -}
data KillRequest
  = KillRequest'_constructor {_KillRequest'probability :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent),
                              _KillRequest'killRequestHeader :: !Data.Text.Text,
                              _KillRequest'direction :: !KillRequest'Direction,
                              _KillRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KillRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KillRequest "probability" Proto.Envoy.Type.V3.Percent.FractionalPercent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KillRequest'probability
           (\ x__ y__ -> x__ {_KillRequest'probability = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField KillRequest "maybe'probability" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KillRequest'probability
           (\ x__ y__ -> x__ {_KillRequest'probability = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KillRequest "killRequestHeader" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KillRequest'killRequestHeader
           (\ x__ y__ -> x__ {_KillRequest'killRequestHeader = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KillRequest "direction" KillRequest'Direction where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KillRequest'direction
           (\ x__ y__ -> x__ {_KillRequest'direction = y__}))
        Prelude.id
instance Data.ProtoLens.Message KillRequest where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.kill_request.v3.KillRequest"
  packedMessageDescriptor _
    = "\n\
      \\vKillRequest\DC2B\n\
      \\vprobability\CAN\SOH \SOH(\v2 .envoy.type.v3.FractionalPercentR\vprobability\DC2;\n\
      \\DC3kill_request_header\CAN\STX \SOH(\tR\DC1killRequestHeaderB\v\250B\br\ACK\192\SOH\STX\200\SOH\NUL\DC2l\n\
      \\tdirection\CAN\ETX \SOH(\SO2D.envoy.extensions.filters.http.kill_request.v3.KillRequest.DirectionR\tdirectionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"&\n\
      \\tDirection\DC2\v\n\
      \\aREQUEST\DLE\NUL\DC2\f\n\
      \\bRESPONSE\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        probability__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "probability"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.FractionalPercent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'probability")) ::
              Data.ProtoLens.FieldDescriptor KillRequest
        killRequestHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kill_request_header"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"killRequestHeader")) ::
              Data.ProtoLens.FieldDescriptor KillRequest
        direction__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "direction"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor KillRequest'Direction)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"direction")) ::
              Data.ProtoLens.FieldDescriptor KillRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, probability__field_descriptor),
           (Data.ProtoLens.Tag 2, killRequestHeader__field_descriptor),
           (Data.ProtoLens.Tag 3, direction__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KillRequest'_unknownFields
        (\ x__ y__ -> x__ {_KillRequest'_unknownFields = y__})
  defMessage
    = KillRequest'_constructor
        {_KillRequest'probability = Prelude.Nothing,
         _KillRequest'killRequestHeader = Data.ProtoLens.fieldDefault,
         _KillRequest'direction = Data.ProtoLens.fieldDefault,
         _KillRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KillRequest -> Data.ProtoLens.Encoding.Bytes.Parser KillRequest
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
                                       "probability"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"probability") y x)
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
                                       "kill_request_header"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"killRequestHeader") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "direction"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"direction") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KillRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'probability") _x
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"killRequestHeader") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"direction") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData KillRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KillRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KillRequest'probability x__)
                (Control.DeepSeq.deepseq
                   (_KillRequest'killRequestHeader x__)
                   (Control.DeepSeq.deepseq (_KillRequest'direction x__) ())))
newtype KillRequest'Direction'UnrecognizedValue
  = KillRequest'Direction'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data KillRequest'Direction
  = KillRequest'REQUEST |
    KillRequest'RESPONSE |
    KillRequest'Direction'Unrecognized !KillRequest'Direction'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum KillRequest'Direction where
  maybeToEnum 0 = Prelude.Just KillRequest'REQUEST
  maybeToEnum 1 = Prelude.Just KillRequest'RESPONSE
  maybeToEnum k
    = Prelude.Just
        (KillRequest'Direction'Unrecognized
           (KillRequest'Direction'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum KillRequest'REQUEST = "REQUEST"
  showEnum KillRequest'RESPONSE = "RESPONSE"
  showEnum
    (KillRequest'Direction'Unrecognized (KillRequest'Direction'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "REQUEST" = Prelude.Just KillRequest'REQUEST
    | (Prelude.==) k "RESPONSE" = Prelude.Just KillRequest'RESPONSE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded KillRequest'Direction where
  minBound = KillRequest'REQUEST
  maxBound = KillRequest'RESPONSE
instance Prelude.Enum KillRequest'Direction where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Direction: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum KillRequest'REQUEST = 0
  fromEnum KillRequest'RESPONSE = 1
  fromEnum
    (KillRequest'Direction'Unrecognized (KillRequest'Direction'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ KillRequest'RESPONSE
    = Prelude.error
        "KillRequest'Direction.succ: bad argument KillRequest'RESPONSE. This value would be out of bounds."
  succ KillRequest'REQUEST = KillRequest'RESPONSE
  succ (KillRequest'Direction'Unrecognized _)
    = Prelude.error
        "KillRequest'Direction.succ: bad argument: unrecognized value"
  pred KillRequest'REQUEST
    = Prelude.error
        "KillRequest'Direction.pred: bad argument KillRequest'REQUEST. This value would be out of bounds."
  pred KillRequest'RESPONSE = KillRequest'REQUEST
  pred (KillRequest'Direction'Unrecognized _)
    = Prelude.error
        "KillRequest'Direction.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault KillRequest'Direction where
  fieldDefault = KillRequest'REQUEST
instance Control.DeepSeq.NFData KillRequest'Direction where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \@envoy/extensions/filters/http/kill_request/v3/kill_request.proto\DC2-envoy.extensions.filters.http.kill_request.v3\SUB\ESCenvoy/type/v3/percent.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\164\STX\n\
    \\vKillRequest\DC2B\n\
    \\vprobability\CAN\SOH \SOH(\v2 .envoy.type.v3.FractionalPercentR\vprobability\DC2;\n\
    \\DC3kill_request_header\CAN\STX \SOH(\tR\DC1killRequestHeaderB\v\250B\br\ACK\192\SOH\STX\200\SOH\NUL\DC2l\n\
    \\tdirection\CAN\ETX \SOH(\SO2D.envoy.extensions.filters.http.kill_request.v3.KillRequest.DirectionR\tdirectionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"&\n\
    \\tDirection\DC2\v\n\
    \\aREQUEST\DLE\NUL\DC2\f\n\
    \\bRESPONSE\DLE\SOHBY\n\
    \;io.envoyproxy.envoy.extensions.filters.http.kill_request.v3B\DLEKillRequestProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\219\b\n\
    \\ACK\DC2\EOT\NUL\NUL#\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL6\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL%\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULT\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NULT\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL1\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL1\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \\214\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL#\SOH\SUB' Configuration for KillRequest filter.\n\
    \2\160\SOH [#protodoc-title: Kill Request]\n\
    \ Kill Request :ref:`configuration overview <config_http_filters_kill_request>`.\n\
    \ [#extension: envoy.filters.http.kill_request]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\DC3\n\
    \\DEL\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\SYN\STX\EM\ETX\SUBq On which direction should the filter check for the `kill_request_header`.\n\
    \ Default to `REQUEST` if unspecified.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\SYN\a\DLE\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\ETB\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB\EOT\v\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\ETB\SO\SI\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\CAN\EOT\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\CAN\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\CAN\SI\DLE\n\
    \E\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\FS\STX,\SUB8 The probability that a Kill request will be triggered.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\FS\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\FS\FS'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\FS*+\n\
    \\225\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\US\STX V\SUB\210\SOH The name of the kill request header. If this field is not empty, it will override the :ref:`default header <config_http_filters_kill_request_http_header>` name. Otherwise the default header name will be used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\US\t\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\US\US \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX \ACKU\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\SO\DC2\ETX \aT\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\"\STXI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\"\STX\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\"\f\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\"\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX\"\SUBH\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\DLE\DC2\ETX\"\ESCGb\ACKproto3"