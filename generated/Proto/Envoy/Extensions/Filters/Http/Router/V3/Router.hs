{- This file was auto-generated from envoy/extensions/filters/http/router/v3/router.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Router.V3.Router (
        Router()
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
import qualified Proto.Envoy.Config.Accesslog.V3.Accesslog
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Router.V3.Router_Fields.dynamicStats' @:: Lens' Router Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Extensions.Filters.Http.Router.V3.Router_Fields.maybe'dynamicStats' @:: Lens' Router (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Extensions.Filters.Http.Router.V3.Router_Fields.startChildSpan' @:: Lens' Router Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.Router.V3.Router_Fields.upstreamLog' @:: Lens' Router [Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog]@
         * 'Proto.Envoy.Extensions.Filters.Http.Router.V3.Router_Fields.vec'upstreamLog' @:: Lens' Router (Data.Vector.Vector Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog)@
         * 'Proto.Envoy.Extensions.Filters.Http.Router.V3.Router_Fields.suppressEnvoyHeaders' @:: Lens' Router Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.Router.V3.Router_Fields.strictCheckHeaders' @:: Lens' Router [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Http.Router.V3.Router_Fields.vec'strictCheckHeaders' @:: Lens' Router (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.Router.V3.Router_Fields.respectExpectedRqTimeout' @:: Lens' Router Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.Router.V3.Router_Fields.suppressGrpcRequestFailureCodeStats' @:: Lens' Router Prelude.Bool@ -}
data Router
  = Router'_constructor {_Router'dynamicStats :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                         _Router'startChildSpan :: !Prelude.Bool,
                         _Router'upstreamLog :: !(Data.Vector.Vector Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog),
                         _Router'suppressEnvoyHeaders :: !Prelude.Bool,
                         _Router'strictCheckHeaders :: !(Data.Vector.Vector Data.Text.Text),
                         _Router'respectExpectedRqTimeout :: !Prelude.Bool,
                         _Router'suppressGrpcRequestFailureCodeStats :: !Prelude.Bool,
                         _Router'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Router where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Router "dynamicStats" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Router'dynamicStats
           (\ x__ y__ -> x__ {_Router'dynamicStats = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Router "maybe'dynamicStats" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Router'dynamicStats
           (\ x__ y__ -> x__ {_Router'dynamicStats = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Router "startChildSpan" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Router'startChildSpan
           (\ x__ y__ -> x__ {_Router'startChildSpan = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Router "upstreamLog" [Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Router'upstreamLog (\ x__ y__ -> x__ {_Router'upstreamLog = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Router "vec'upstreamLog" (Data.Vector.Vector Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Router'upstreamLog (\ x__ y__ -> x__ {_Router'upstreamLog = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Router "suppressEnvoyHeaders" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Router'suppressEnvoyHeaders
           (\ x__ y__ -> x__ {_Router'suppressEnvoyHeaders = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Router "strictCheckHeaders" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Router'strictCheckHeaders
           (\ x__ y__ -> x__ {_Router'strictCheckHeaders = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Router "vec'strictCheckHeaders" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Router'strictCheckHeaders
           (\ x__ y__ -> x__ {_Router'strictCheckHeaders = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Router "respectExpectedRqTimeout" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Router'respectExpectedRqTimeout
           (\ x__ y__ -> x__ {_Router'respectExpectedRqTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Router "suppressGrpcRequestFailureCodeStats" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Router'suppressGrpcRequestFailureCodeStats
           (\ x__ y__
              -> x__ {_Router'suppressGrpcRequestFailureCodeStats = y__}))
        Prelude.id
instance Data.ProtoLens.Message Router where
  messageName _
    = Data.Text.pack "envoy.extensions.filters.http.router.v3.Router"
  packedMessageDescriptor _
    = "\n\
      \\ACKRouter\DC2?\n\
      \\rdynamic_stats\CAN\SOH \SOH(\v2\SUB.google.protobuf.BoolValueR\fdynamicStats\DC2(\n\
      \\DLEstart_child_span\CAN\STX \SOH(\bR\SOstartChildSpan\DC2G\n\
      \\fupstream_log\CAN\ETX \ETX(\v2$.envoy.config.accesslog.v3.AccessLogR\vupstreamLog\DC24\n\
      \\SYNsuppress_envoy_headers\CAN\EOT \SOH(\bR\DC4suppressEnvoyHeaders\DC2\199\SOH\n\
      \\DC4strict_check_headers\CAN\ENQ \ETX(\tR\DC2strictCheckHeadersB\148\SOH\250B\144\SOH\146\SOH\140\SOH\"\137\SOHr\134\SOHR\RSx-envoy-upstream-rq-timeout-msR&x-envoy-upstream-rq-per-try-timeout-msR\DC3x-envoy-max-retriesR\NAKx-envoy-retry-grpc-onR\DLEx-envoy-retry-on\DC2=\n\
      \\ESCrespect_expected_rq_timeout\CAN\ACK \SOH(\bR\CANrespectExpectedRqTimeout\DC2U\n\
      \(suppress_grpc_request_failure_code_stats\CAN\a \SOH(\bR#suppressGrpcRequestFailureCodeStats:0\154\197\136\RS+\n\
      \)envoy.config.filter.http.router.v2.Router"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dynamicStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dynamic_stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dynamicStats")) ::
              Data.ProtoLens.FieldDescriptor Router
        startChildSpan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_child_span"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"startChildSpan")) ::
              Data.ProtoLens.FieldDescriptor Router
        upstreamLog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_log"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"upstreamLog")) ::
              Data.ProtoLens.FieldDescriptor Router
        suppressEnvoyHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "suppress_envoy_headers"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"suppressEnvoyHeaders")) ::
              Data.ProtoLens.FieldDescriptor Router
        strictCheckHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "strict_check_headers"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"strictCheckHeaders")) ::
              Data.ProtoLens.FieldDescriptor Router
        respectExpectedRqTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "respect_expected_rq_timeout"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"respectExpectedRqTimeout")) ::
              Data.ProtoLens.FieldDescriptor Router
        suppressGrpcRequestFailureCodeStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "suppress_grpc_request_failure_code_stats"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"suppressGrpcRequestFailureCodeStats")) ::
              Data.ProtoLens.FieldDescriptor Router
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dynamicStats__field_descriptor),
           (Data.ProtoLens.Tag 2, startChildSpan__field_descriptor),
           (Data.ProtoLens.Tag 3, upstreamLog__field_descriptor),
           (Data.ProtoLens.Tag 4, suppressEnvoyHeaders__field_descriptor),
           (Data.ProtoLens.Tag 5, strictCheckHeaders__field_descriptor),
           (Data.ProtoLens.Tag 6, respectExpectedRqTimeout__field_descriptor),
           (Data.ProtoLens.Tag 7, 
            suppressGrpcRequestFailureCodeStats__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Router'_unknownFields
        (\ x__ y__ -> x__ {_Router'_unknownFields = y__})
  defMessage
    = Router'_constructor
        {_Router'dynamicStats = Prelude.Nothing,
         _Router'startChildSpan = Data.ProtoLens.fieldDefault,
         _Router'upstreamLog = Data.Vector.Generic.empty,
         _Router'suppressEnvoyHeaders = Data.ProtoLens.fieldDefault,
         _Router'strictCheckHeaders = Data.Vector.Generic.empty,
         _Router'respectExpectedRqTimeout = Data.ProtoLens.fieldDefault,
         _Router'suppressGrpcRequestFailureCodeStats = Data.ProtoLens.fieldDefault,
         _Router'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Router
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog
                -> Data.ProtoLens.Encoding.Bytes.Parser Router
        loop x mutable'strictCheckHeaders mutable'upstreamLog
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'strictCheckHeaders <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'strictCheckHeaders)
                      frozen'upstreamLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'upstreamLog)
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
                              (Data.ProtoLens.Field.field @"vec'strictCheckHeaders")
                              frozen'strictCheckHeaders
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'upstreamLog")
                                 frozen'upstreamLog
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dynamic_stats"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dynamicStats") y x)
                                  mutable'strictCheckHeaders
                                  mutable'upstreamLog
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "start_child_span"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startChildSpan") y x)
                                  mutable'strictCheckHeaders
                                  mutable'upstreamLog
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "upstream_log"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'upstreamLog y)
                                loop x mutable'strictCheckHeaders v
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "suppress_envoy_headers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"suppressEnvoyHeaders") y x)
                                  mutable'strictCheckHeaders
                                  mutable'upstreamLog
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
                                        "strict_check_headers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'strictCheckHeaders y)
                                loop x v mutable'upstreamLog
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "respect_expected_rq_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"respectExpectedRqTimeout") y x)
                                  mutable'strictCheckHeaders
                                  mutable'upstreamLog
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "suppress_grpc_request_failure_code_stats"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"suppressGrpcRequestFailureCodeStats")
                                     y
                                     x)
                                  mutable'strictCheckHeaders
                                  mutable'upstreamLog
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'strictCheckHeaders
                                  mutable'upstreamLog
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'strictCheckHeaders <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              mutable'upstreamLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'strictCheckHeaders
                mutable'upstreamLog)
          "Router"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'dynamicStats") _x
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
                         (Data.ProtoLens.Field.field @"startChildSpan") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt
                            (\ b -> if b then 1 else 0)
                            _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
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
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'upstreamLog") _x))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"suppressEnvoyHeaders") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0)
                                  _v))
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
                               (Data.ProtoLens.Field.field @"vec'strictCheckHeaders") _x))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"respectExpectedRqTimeout") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (\ b -> if b then 1 else 0)
                                        _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field
                                           @"suppressGrpcRequestFailureCodeStats")
                                        _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (\ b -> if b then 1 else 0)
                                           _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData Router where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Router'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Router'dynamicStats x__)
                (Control.DeepSeq.deepseq
                   (_Router'startChildSpan x__)
                   (Control.DeepSeq.deepseq
                      (_Router'upstreamLog x__)
                      (Control.DeepSeq.deepseq
                         (_Router'suppressEnvoyHeaders x__)
                         (Control.DeepSeq.deepseq
                            (_Router'strictCheckHeaders x__)
                            (Control.DeepSeq.deepseq
                               (_Router'respectExpectedRqTimeout x__)
                               (Control.DeepSeq.deepseq
                                  (_Router'suppressGrpcRequestFailureCodeStats x__) ())))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \4envoy/extensions/filters/http/router/v3/router.proto\DC2'envoy.extensions.filters.http.router.v3\SUB)envoy/config/accesslog/v3/accesslog.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\132\ENQ\n\
    \\ACKRouter\DC2?\n\
    \\rdynamic_stats\CAN\SOH \SOH(\v2\SUB.google.protobuf.BoolValueR\fdynamicStats\DC2(\n\
    \\DLEstart_child_span\CAN\STX \SOH(\bR\SOstartChildSpan\DC2G\n\
    \\fupstream_log\CAN\ETX \ETX(\v2$.envoy.config.accesslog.v3.AccessLogR\vupstreamLog\DC24\n\
    \\SYNsuppress_envoy_headers\CAN\EOT \SOH(\bR\DC4suppressEnvoyHeaders\DC2\199\SOH\n\
    \\DC4strict_check_headers\CAN\ENQ \ETX(\tR\DC2strictCheckHeadersB\148\SOH\250B\144\SOH\146\SOH\140\SOH\"\137\SOHr\134\SOHR\RSx-envoy-upstream-rq-timeout-msR&x-envoy-upstream-rq-per-try-timeout-msR\DC3x-envoy-max-retriesR\NAKx-envoy-retry-grpc-onR\DLEx-envoy-retry-on\DC2=\n\
    \\ESCrespect_expected_rq_timeout\CAN\ACK \SOH(\bR\CANrespectExpectedRqTimeout\DC2U\n\
    \(suppress_grpc_request_failure_code_stats\CAN\a \SOH(\bR#suppressGrpcRequestFailureCodeStats:0\154\197\136\RS+\n\
    \)envoy.config.filter.http.router.v2.RouterBN\n\
    \5io.envoyproxy.envoy.extensions.filters.http.router.v3B\vRouterProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\224\CAN\n\
    \\ACK\DC2\EOT\NUL\NULZ\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL0\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL3\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULN\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NULN\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \\174\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\SYN\NULZ\SOH\SUB\ETB [#next-free-field: 8]\n\
    \2\136\SOH [#protodoc-title: Router]\n\
    \ Router :ref:`configuration overview <config_http_filters_router>`.\n\
    \ [#extension: envoy.filters.http.router]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SYN\b\SO\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\ETB\STX\CAN2\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\ETB\STX\CAN2\n\
    \\137\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\FS\STX.\SUB| Whether the router generates dynamic cluster statistics. Defaults to\n\
    \ true. Can be disabled in high performance scenarios.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\FS\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\FS\FS)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\FS,-\n\
    \\244\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\"\STX\FS\SUB\230\SOH Whether to start a child span for egress routed calls. This can be\n\
    \ useful in scenarios where other filters (auth, ratelimit, etc.) make\n\
    \ outbound calls and have child spans rooted at the same ingress\n\
    \ parent. Defaults to false.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\"\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\"\a\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\"\SUB\ESC\n\
    \\174\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX(\STX:\SUB\160\STX Configuration for HTTP upstream logs emitted by the router. Upstream logs\n\
    \ are configured in the same way as access logs, but each log entry represents\n\
    \ an upstream request. Presuming retries are configured, multiple upstream\n\
    \ requests may be made for each downstream (inbound) request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX(\v(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX()5\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX(89\n\
    \\167\STX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX.\STX\"\SUB\153\STX Do not add any additional *x-envoy-* headers to requests or responses. This\n\
    \ only affects the :ref:`router filter generated *x-envoy-* headers\n\
    \ <config_http_filters_router_headers_set>`, other Envoy filters and the HTTP\n\
    \ connection manager may continue to set *x-envoy-* headers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX.\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX.\a\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX. !\n\
    \\210\ENQ\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT@\STXJ\ENQ\SUB\195\ENQ Specifies a list of HTTP headers to strictly validate. Envoy will reject a\n\
    \ request and respond with HTTP status 400 if the request contains an invalid\n\
    \ value for any of the headers listed in this field. Strict header checking\n\
    \ is only supported for the following headers:\n\
    \\n\
    \ Value must be a ','-delimited list (i.e. no spaces) of supported retry\n\
    \ policy values:\n\
    \\n\
    \ * :ref:`config_http_filters_router_x-envoy-retry-grpc-on`\n\
    \ * :ref:`config_http_filters_router_x-envoy-retry-on`\n\
    \\n\
    \ Value must be an integer:\n\
    \\n\
    \ * :ref:`config_http_filters_router_x-envoy-max-retries`\n\
    \ * :ref:`config_http_filters_router_x-envoy-upstream-rq-timeout-ms`\n\
    \ * :ref:`config_http_filters_router_x-envoy-upstream-rq-per-try-timeout-ms`\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX@\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX@\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX@\DC2&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX@)*\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\EOT@+J\EOT\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\EOT\b\175\b\DC2\DC2\EOT@,J\ETX\n\
    \\199\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXO\STX'\SUB\185\SOH If not set, ingress Envoy will ignore\n\
    \ :ref:`config_http_filters_router_x-envoy-expected-rq-timeout-ms` header, populated by egress\n\
    \ Envoy, when deriving timeout for upstream cluster.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETXO\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXO\a\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXO%&\n\
    \\246\ETX\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETXY\STX4\SUB\232\ETX If set, Envoy will avoid incrementing HTTP failure code stats\n\
    \ on gRPC requests. This includes the individual status code value\n\
    \ (e.g. upstream_rq_504) and group stats (e.g. upstream_rq_5xx).\n\
    \ This field is useful if interested in relying only on the gRPC\n\
    \ stats filter to define success and failure metrics for gRPC requests\n\
    \ as not all failed gRPC requests charge HTTP status code metrics. See\n\
    \ :ref:`gRPC stats filter<config_http_filters_grpc_stats>` documentation\n\
    \ for more details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETXY\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXY\a/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXY23b\ACKproto3"