{- This file was auto-generated from envoy/extensions/filters/http/aws_lambda/v3/aws_lambda.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.AwsLambda.V3.AwsLambda (
        Config(), Config'InvocationMode(..), Config'InvocationMode(),
        Config'InvocationMode'UnrecognizedValue, PerRouteConfig()
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
     
         * 'Proto.Envoy.Extensions.Filters.Http.AwsLambda.V3.AwsLambda_Fields.arn' @:: Lens' Config Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.AwsLambda.V3.AwsLambda_Fields.payloadPassthrough' @:: Lens' Config Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.AwsLambda.V3.AwsLambda_Fields.invocationMode' @:: Lens' Config Config'InvocationMode@ -}
data Config
  = Config'_constructor {_Config'arn :: !Data.Text.Text,
                         _Config'payloadPassthrough :: !Prelude.Bool,
                         _Config'invocationMode :: !Config'InvocationMode,
                         _Config'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Config where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Config "arn" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'arn (\ x__ y__ -> x__ {_Config'arn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Config "payloadPassthrough" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'payloadPassthrough
           (\ x__ y__ -> x__ {_Config'payloadPassthrough = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Config "invocationMode" Config'InvocationMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'invocationMode
           (\ x__ y__ -> x__ {_Config'invocationMode = y__}))
        Prelude.id
instance Data.ProtoLens.Message Config where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.aws_lambda.v3.Config"
  packedMessageDescriptor _
    = "\n\
      \\ACKConfig\DC2\EM\n\
      \\ETXarn\CAN\SOH \SOH(\tR\ETXarnB\a\250B\EOTr\STX\DLE\SOH\DC2/\n\
      \\DC3payload_passthrough\CAN\STX \SOH(\bR\DC2payloadPassthrough\DC2u\n\
      \\SIinvocation_mode\CAN\ETX \SOH(\SO2B.envoy.extensions.filters.http.aws_lambda.v3.Config.InvocationModeR\SOinvocationModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"3\n\
      \\SOInvocationMode\DC2\SI\n\
      \\vSYNCHRONOUS\DLE\NUL\DC2\DLE\n\
      \\fASYNCHRONOUS\DLE\SOH:9\154\197\136\RS4\n\
      \2envoy.config.filter.http.aws_lambda.v2alpha.Config"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        arn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "arn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"arn")) ::
              Data.ProtoLens.FieldDescriptor Config
        payloadPassthrough__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payload_passthrough"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"payloadPassthrough")) ::
              Data.ProtoLens.FieldDescriptor Config
        invocationMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "invocation_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Config'InvocationMode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"invocationMode")) ::
              Data.ProtoLens.FieldDescriptor Config
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, arn__field_descriptor),
           (Data.ProtoLens.Tag 2, payloadPassthrough__field_descriptor),
           (Data.ProtoLens.Tag 3, invocationMode__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Config'_unknownFields
        (\ x__ y__ -> x__ {_Config'_unknownFields = y__})
  defMessage
    = Config'_constructor
        {_Config'arn = Data.ProtoLens.fieldDefault,
         _Config'payloadPassthrough = Data.ProtoLens.fieldDefault,
         _Config'invocationMode = Data.ProtoLens.fieldDefault,
         _Config'_unknownFields = []}
  parseMessage
    = let
        loop :: Config -> Data.ProtoLens.Encoding.Bytes.Parser Config
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
                                       "arn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"arn") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "payload_passthrough"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"payloadPassthrough") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "invocation_mode"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"invocationMode") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Config"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"arn") _x
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
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"payloadPassthrough") _x
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
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"invocationMode") _x
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
instance Control.DeepSeq.NFData Config where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Config'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Config'arn x__)
                (Control.DeepSeq.deepseq
                   (_Config'payloadPassthrough x__)
                   (Control.DeepSeq.deepseq (_Config'invocationMode x__) ())))
newtype Config'InvocationMode'UnrecognizedValue
  = Config'InvocationMode'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Config'InvocationMode
  = Config'SYNCHRONOUS |
    Config'ASYNCHRONOUS |
    Config'InvocationMode'Unrecognized !Config'InvocationMode'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Config'InvocationMode where
  maybeToEnum 0 = Prelude.Just Config'SYNCHRONOUS
  maybeToEnum 1 = Prelude.Just Config'ASYNCHRONOUS
  maybeToEnum k
    = Prelude.Just
        (Config'InvocationMode'Unrecognized
           (Config'InvocationMode'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Config'SYNCHRONOUS = "SYNCHRONOUS"
  showEnum Config'ASYNCHRONOUS = "ASYNCHRONOUS"
  showEnum
    (Config'InvocationMode'Unrecognized (Config'InvocationMode'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "SYNCHRONOUS" = Prelude.Just Config'SYNCHRONOUS
    | (Prelude.==) k "ASYNCHRONOUS" = Prelude.Just Config'ASYNCHRONOUS
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Config'InvocationMode where
  minBound = Config'SYNCHRONOUS
  maxBound = Config'ASYNCHRONOUS
instance Prelude.Enum Config'InvocationMode where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum InvocationMode: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Config'SYNCHRONOUS = 0
  fromEnum Config'ASYNCHRONOUS = 1
  fromEnum
    (Config'InvocationMode'Unrecognized (Config'InvocationMode'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Config'ASYNCHRONOUS
    = Prelude.error
        "Config'InvocationMode.succ: bad argument Config'ASYNCHRONOUS. This value would be out of bounds."
  succ Config'SYNCHRONOUS = Config'ASYNCHRONOUS
  succ (Config'InvocationMode'Unrecognized _)
    = Prelude.error
        "Config'InvocationMode.succ: bad argument: unrecognized value"
  pred Config'SYNCHRONOUS
    = Prelude.error
        "Config'InvocationMode.pred: bad argument Config'SYNCHRONOUS. This value would be out of bounds."
  pred Config'ASYNCHRONOUS = Config'SYNCHRONOUS
  pred (Config'InvocationMode'Unrecognized _)
    = Prelude.error
        "Config'InvocationMode.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Config'InvocationMode where
  fieldDefault = Config'SYNCHRONOUS
instance Control.DeepSeq.NFData Config'InvocationMode where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.AwsLambda.V3.AwsLambda_Fields.invokeConfig' @:: Lens' PerRouteConfig Config@
         * 'Proto.Envoy.Extensions.Filters.Http.AwsLambda.V3.AwsLambda_Fields.maybe'invokeConfig' @:: Lens' PerRouteConfig (Prelude.Maybe Config)@ -}
data PerRouteConfig
  = PerRouteConfig'_constructor {_PerRouteConfig'invokeConfig :: !(Prelude.Maybe Config),
                                 _PerRouteConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PerRouteConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PerRouteConfig "invokeConfig" Config where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerRouteConfig'invokeConfig
           (\ x__ y__ -> x__ {_PerRouteConfig'invokeConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PerRouteConfig "maybe'invokeConfig" (Prelude.Maybe Config) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerRouteConfig'invokeConfig
           (\ x__ y__ -> x__ {_PerRouteConfig'invokeConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message PerRouteConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.aws_lambda.v3.PerRouteConfig"
  packedMessageDescriptor _
    = "\n\
      \\SOPerRouteConfig\DC2X\n\
      \\rinvoke_config\CAN\SOH \SOH(\v23.envoy.extensions.filters.http.aws_lambda.v3.ConfigR\finvokeConfig:A\154\197\136\RS<\n\
      \:envoy.config.filter.http.aws_lambda.v2alpha.PerRouteConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        invokeConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "invoke_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Config)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'invokeConfig")) ::
              Data.ProtoLens.FieldDescriptor PerRouteConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, invokeConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PerRouteConfig'_unknownFields
        (\ x__ y__ -> x__ {_PerRouteConfig'_unknownFields = y__})
  defMessage
    = PerRouteConfig'_constructor
        {_PerRouteConfig'invokeConfig = Prelude.Nothing,
         _PerRouteConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PerRouteConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser PerRouteConfig
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
                                       "invoke_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"invokeConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PerRouteConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'invokeConfig") _x
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
instance Control.DeepSeq.NFData PerRouteConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PerRouteConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq (_PerRouteConfig'invokeConfig x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \<envoy/extensions/filters/http/aws_lambda/v3/aws_lambda.proto\DC2+envoy.extensions.filters.http.aws_lambda.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\187\STX\n\
    \\ACKConfig\DC2\EM\n\
    \\ETXarn\CAN\SOH \SOH(\tR\ETXarnB\a\250B\EOTr\STX\DLE\SOH\DC2/\n\
    \\DC3payload_passthrough\CAN\STX \SOH(\bR\DC2payloadPassthrough\DC2u\n\
    \\SIinvocation_mode\CAN\ETX \SOH(\SO2B.envoy.extensions.filters.http.aws_lambda.v3.Config.InvocationModeR\SOinvocationModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"3\n\
    \\SOInvocationMode\DC2\SI\n\
    \\vSYNCHRONOUS\DLE\NUL\DC2\DLE\n\
    \\fASYNCHRONOUS\DLE\SOH:9\154\197\136\RS4\n\
    \2envoy.config.filter.http.aws_lambda.v2alpha.Config\"\173\SOH\n\
    \\SOPerRouteConfig\DC2X\n\
    \\rinvoke_config\CAN\SOH \SOH(\v23.envoy.extensions.filters.http.aws_lambda.v3.ConfigR\finvokeConfig:A\154\197\136\RS<\n\
    \:envoy.config.filter.http.aws_lambda.v2alpha.PerRouteConfigBU\n\
    \9io.envoyproxy.envoy.extensions.filters.http.aws_lambda.v3B\SOAwsLambdaProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\164\SO\n\
    \\ACK\DC2\EOT\NUL\NUL4\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL4\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULR\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NULR\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL/\n\
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
    \\193\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL+\SOH\SUB\SUB AWS Lambda filter config\n\
    \2\152\SOH [#protodoc-title: AWS Lambda]\n\
    \ AWS Lambda :ref:`configuration overview <config_http_filters_aws_lambda>`.\n\
    \ [#extension: envoy.filters.http.aws_lambda]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\SO\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC3\STX\DC4;\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC3\STX\DC4;\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\SYN\STX\US\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\SYN\a\NAK\n\
    \\213\SOH\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\EM\EOT\DC4\SUB\197\SOH This is the more common mode of invocation, in which Lambda responds after it has completed the function. In\n\
    \ this mode the output of the Lambda function becomes the response of the HTTP request.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\EM\EOT\SI\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\EM\DC2\DC3\n\
    \\170\STX\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\RS\EOT\NAK\SUB\154\STX In this mode Lambda responds immediately but continues to process the function asynchronously. This mode can be\n\
    \ used to signal events for example. In this mode, Lambda responds with an acknowledgment that it received the\n\
    \ call which is translated to an HTTP 200 OK by the filter.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\RS\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\RS\DC3\DC4\n\
    \\187\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX$\STX:\SUB\173\SOH The ARN of the AWS Lambda to invoke when the filter is engaged\n\
    \ Must be in the following format:\n\
    \ arn:<partition>:lambda:<region>:<account-number>:function:<function-name>\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX$\t\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX$\SI\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX$\DC19\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX$\DC28\n\
    \f\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX'\STX\US\SUBY Whether to transform the request (headers and body) to a JSON payload or pass it as is.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX'\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX'\a\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX'\GS\RS\n\
    \@\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX*\STXT\SUB3 Determines the way to invoke the Lambda function.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX*\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX*\DC1 \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX*#$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX*%S\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\DLE\DC2\ETX*&R\n\
    \\182\SOH\n\
    \\STX\EOT\SOH\DC2\EOT/\NUL4\SOH\SUB\169\SOH Per-route configuration for AWS Lambda. This can be useful when invoking a different Lambda function or a different\n\
    \ version of the same Lambda depending on the route.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX/\b\SYN\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT0\STX1C\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT0\STX1C\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX3\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX3\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX3\EM\SUBb\ACKproto3"