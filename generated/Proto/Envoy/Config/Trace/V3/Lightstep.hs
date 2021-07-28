{- This file was auto-generated from envoy/config/trace/v3/lightstep.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Trace.V3.Lightstep (
        LightstepConfig(), LightstepConfig'PropagationMode(..),
        LightstepConfig'PropagationMode(),
        LightstepConfig'PropagationMode'UnrecognizedValue
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
import qualified Proto.Envoy.Annotations.Deprecation
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Trace.V3.Lightstep_Fields.collectorCluster' @:: Lens' LightstepConfig Data.Text.Text@
         * 'Proto.Envoy.Config.Trace.V3.Lightstep_Fields.accessTokenFile' @:: Lens' LightstepConfig Data.Text.Text@
         * 'Proto.Envoy.Config.Trace.V3.Lightstep_Fields.accessToken' @:: Lens' LightstepConfig Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Config.Trace.V3.Lightstep_Fields.maybe'accessToken' @:: Lens' LightstepConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Config.Trace.V3.Lightstep_Fields.propagationModes' @:: Lens' LightstepConfig [LightstepConfig'PropagationMode]@
         * 'Proto.Envoy.Config.Trace.V3.Lightstep_Fields.vec'propagationModes' @:: Lens' LightstepConfig (Data.Vector.Vector LightstepConfig'PropagationMode)@ -}
data LightstepConfig
  = LightstepConfig'_constructor {_LightstepConfig'collectorCluster :: !Data.Text.Text,
                                  _LightstepConfig'accessTokenFile :: !Data.Text.Text,
                                  _LightstepConfig'accessToken :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                                  _LightstepConfig'propagationModes :: !(Data.Vector.Vector LightstepConfig'PropagationMode),
                                  _LightstepConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LightstepConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LightstepConfig "collectorCluster" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightstepConfig'collectorCluster
           (\ x__ y__ -> x__ {_LightstepConfig'collectorCluster = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LightstepConfig "accessTokenFile" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightstepConfig'accessTokenFile
           (\ x__ y__ -> x__ {_LightstepConfig'accessTokenFile = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LightstepConfig "accessToken" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightstepConfig'accessToken
           (\ x__ y__ -> x__ {_LightstepConfig'accessToken = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LightstepConfig "maybe'accessToken" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightstepConfig'accessToken
           (\ x__ y__ -> x__ {_LightstepConfig'accessToken = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LightstepConfig "propagationModes" [LightstepConfig'PropagationMode] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightstepConfig'propagationModes
           (\ x__ y__ -> x__ {_LightstepConfig'propagationModes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField LightstepConfig "vec'propagationModes" (Data.Vector.Vector LightstepConfig'PropagationMode) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightstepConfig'propagationModes
           (\ x__ y__ -> x__ {_LightstepConfig'propagationModes = y__}))
        Prelude.id
instance Data.ProtoLens.Message LightstepConfig where
  messageName _
    = Data.Text.pack "envoy.config.trace.v3.LightstepConfig"
  packedMessageDescriptor _
    = "\n\
      \\SILightstepConfig\DC24\n\
      \\DC1collector_cluster\CAN\SOH \SOH(\tR\DLEcollectorClusterB\a\250B\EOTr\STX\DLE\SOH\DC27\n\
      \\DC1access_token_file\CAN\STX \SOH(\tR\SIaccessTokenFileB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2C\n\
      \\faccess_token\CAN\EOT \SOH(\v2 .envoy.config.core.v3.DataSourceR\vaccessToken\DC2r\n\
      \\DC1propagation_modes\CAN\ETX \ETX(\SO26.envoy.config.trace.v3.LightstepConfig.PropagationModeR\DLEpropagationModesB\r\250B\n\
      \\146\SOH\a\"\ENQ\130\SOH\STX\DLE\SOH\"F\n\
      \\SIPropagationMode\DC2\t\n\
      \\ENQENVOY\DLE\NUL\DC2\r\n\
      \\tLIGHTSTEP\DLE\SOH\DC2\ACK\n\
      \\STXB3\DLE\STX\DC2\DC1\n\
      \\rTRACE_CONTEXT\DLE\ETX:,\154\197\136\RS'\n\
      \%envoy.config.trace.v2.LightstepConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        collectorCluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "collector_cluster"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"collectorCluster")) ::
              Data.ProtoLens.FieldDescriptor LightstepConfig
        accessTokenFile__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "access_token_file"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"accessTokenFile")) ::
              Data.ProtoLens.FieldDescriptor LightstepConfig
        accessToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "access_token"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'accessToken")) ::
              Data.ProtoLens.FieldDescriptor LightstepConfig
        propagationModes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "propagation_modes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor LightstepConfig'PropagationMode)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"propagationModes")) ::
              Data.ProtoLens.FieldDescriptor LightstepConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, collectorCluster__field_descriptor),
           (Data.ProtoLens.Tag 2, accessTokenFile__field_descriptor),
           (Data.ProtoLens.Tag 4, accessToken__field_descriptor),
           (Data.ProtoLens.Tag 3, propagationModes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LightstepConfig'_unknownFields
        (\ x__ y__ -> x__ {_LightstepConfig'_unknownFields = y__})
  defMessage
    = LightstepConfig'_constructor
        {_LightstepConfig'collectorCluster = Data.ProtoLens.fieldDefault,
         _LightstepConfig'accessTokenFile = Data.ProtoLens.fieldDefault,
         _LightstepConfig'accessToken = Prelude.Nothing,
         _LightstepConfig'propagationModes = Data.Vector.Generic.empty,
         _LightstepConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LightstepConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld LightstepConfig'PropagationMode
             -> Data.ProtoLens.Encoding.Bytes.Parser LightstepConfig
        loop x mutable'propagationModes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'propagationModes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'propagationModes)
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
                              (Data.ProtoLens.Field.field @"vec'propagationModes")
                              frozen'propagationModes
                              x))
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
                                       "collector_cluster"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"collectorCluster") y x)
                                  mutable'propagationModes
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
                                       "access_token_file"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"accessTokenFile") y x)
                                  mutable'propagationModes
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "access_token"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"accessToken") y x)
                                  mutable'propagationModes
                        24
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.toEnum
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "propagation_modes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'propagationModes y)
                                loop x v
                        26
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.toEnum
                                                                       (Prelude.fmap
                                                                          Prelude.fromIntegral
                                                                          Data.ProtoLens.Encoding.Bytes.getVarInt))
                                                                    "propagation_modes"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'propagationModes)
                                loop x y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'propagationModes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'propagationModes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'propagationModes)
          "LightstepConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"collectorCluster") _x
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
                         (Data.ProtoLens.Field.field @"accessTokenFile") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'accessToken") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
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
                   ((Data.Monoid.<>)
                      (let
                         p = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'propagationModes") _x
                       in
                         if Data.Vector.Generic.null p then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                               ((\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  (Data.ProtoLens.Encoding.Bytes.runBuilder
                                     (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                        ((Prelude..)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              Prelude.fromIntegral)
                                           Prelude.fromEnum)
                                        p))))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData LightstepConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LightstepConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LightstepConfig'collectorCluster x__)
                (Control.DeepSeq.deepseq
                   (_LightstepConfig'accessTokenFile x__)
                   (Control.DeepSeq.deepseq
                      (_LightstepConfig'accessToken x__)
                      (Control.DeepSeq.deepseq
                         (_LightstepConfig'propagationModes x__) ()))))
newtype LightstepConfig'PropagationMode'UnrecognizedValue
  = LightstepConfig'PropagationMode'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data LightstepConfig'PropagationMode
  = LightstepConfig'ENVOY |
    LightstepConfig'LIGHTSTEP |
    LightstepConfig'B3 |
    LightstepConfig'TRACE_CONTEXT |
    LightstepConfig'PropagationMode'Unrecognized !LightstepConfig'PropagationMode'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum LightstepConfig'PropagationMode where
  maybeToEnum 0 = Prelude.Just LightstepConfig'ENVOY
  maybeToEnum 1 = Prelude.Just LightstepConfig'LIGHTSTEP
  maybeToEnum 2 = Prelude.Just LightstepConfig'B3
  maybeToEnum 3 = Prelude.Just LightstepConfig'TRACE_CONTEXT
  maybeToEnum k
    = Prelude.Just
        (LightstepConfig'PropagationMode'Unrecognized
           (LightstepConfig'PropagationMode'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum LightstepConfig'ENVOY = "ENVOY"
  showEnum LightstepConfig'LIGHTSTEP = "LIGHTSTEP"
  showEnum LightstepConfig'B3 = "B3"
  showEnum LightstepConfig'TRACE_CONTEXT = "TRACE_CONTEXT"
  showEnum
    (LightstepConfig'PropagationMode'Unrecognized (LightstepConfig'PropagationMode'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ENVOY" = Prelude.Just LightstepConfig'ENVOY
    | (Prelude.==) k "LIGHTSTEP"
    = Prelude.Just LightstepConfig'LIGHTSTEP
    | (Prelude.==) k "B3" = Prelude.Just LightstepConfig'B3
    | (Prelude.==) k "TRACE_CONTEXT"
    = Prelude.Just LightstepConfig'TRACE_CONTEXT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded LightstepConfig'PropagationMode where
  minBound = LightstepConfig'ENVOY
  maxBound = LightstepConfig'TRACE_CONTEXT
instance Prelude.Enum LightstepConfig'PropagationMode where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum PropagationMode: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum LightstepConfig'ENVOY = 0
  fromEnum LightstepConfig'LIGHTSTEP = 1
  fromEnum LightstepConfig'B3 = 2
  fromEnum LightstepConfig'TRACE_CONTEXT = 3
  fromEnum
    (LightstepConfig'PropagationMode'Unrecognized (LightstepConfig'PropagationMode'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ LightstepConfig'TRACE_CONTEXT
    = Prelude.error
        "LightstepConfig'PropagationMode.succ: bad argument LightstepConfig'TRACE_CONTEXT. This value would be out of bounds."
  succ LightstepConfig'ENVOY = LightstepConfig'LIGHTSTEP
  succ LightstepConfig'LIGHTSTEP = LightstepConfig'B3
  succ LightstepConfig'B3 = LightstepConfig'TRACE_CONTEXT
  succ (LightstepConfig'PropagationMode'Unrecognized _)
    = Prelude.error
        "LightstepConfig'PropagationMode.succ: bad argument: unrecognized value"
  pred LightstepConfig'ENVOY
    = Prelude.error
        "LightstepConfig'PropagationMode.pred: bad argument LightstepConfig'ENVOY. This value would be out of bounds."
  pred LightstepConfig'LIGHTSTEP = LightstepConfig'ENVOY
  pred LightstepConfig'B3 = LightstepConfig'LIGHTSTEP
  pred LightstepConfig'TRACE_CONTEXT = LightstepConfig'B3
  pred (LightstepConfig'PropagationMode'Unrecognized _)
    = Prelude.error
        "LightstepConfig'PropagationMode.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault LightstepConfig'PropagationMode where
  fieldDefault = LightstepConfig'ENVOY
instance Control.DeepSeq.NFData LightstepConfig'PropagationMode where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \%envoy/config/trace/v3/lightstep.proto\DC2\NAKenvoy.config.trace.v3\SUB\USenvoy/config/core/v3/base.proto\SUB#envoy/annotations/deprecation.proto\SUB\RSudpa/annotations/migrate.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\175\ETX\n\
    \\SILightstepConfig\DC24\n\
    \\DC1collector_cluster\CAN\SOH \SOH(\tR\DLEcollectorClusterB\a\250B\EOTr\STX\DLE\SOH\DC27\n\
    \\DC1access_token_file\CAN\STX \SOH(\tR\SIaccessTokenFileB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2C\n\
    \\faccess_token\CAN\EOT \SOH(\v2 .envoy.config.core.v3.DataSourceR\vaccessToken\DC2r\n\
    \\DC1propagation_modes\CAN\ETX \ETX(\SO26.envoy.config.trace.v3.LightstepConfig.PropagationModeR\DLEpropagationModesB\r\250B\n\
    \\146\SOH\a\"\ENQ\130\SOH\STX\DLE\SOH\"F\n\
    \\SIPropagationMode\DC2\t\n\
    \\ENQENVOY\DLE\NUL\DC2\r\n\
    \\tLIGHTSTEP\DLE\SOH\DC2\ACK\n\
    \\STXB3\DLE\STX\DC2\DC1\n\
    \\rTRACE_CONTEXT\DLE\ETX:,\154\197\136\RS'\n\
    \%envoy.config.trace.v2.LightstepConfigBq\n\
    \#io.envoyproxy.envoy.config.trace.v3B\SOLightstepProtoP\SOH\242\152\254\143\ENQ,\DC2*envoy.extensions.tracers.lightstep.v4alpha\186\128\200\209\ACK\STX\DLE\STXJ\211\v\n\
    \\ACK\DC2\EOT\NUL\NUL8\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL-\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL+\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\SOH\b\DC2\EOT\SI\NUL\DLE1\n\
    \\SO\n\
    \\ACK\b\142\227\255Q\STX\DC2\EOT\SI\NUL\DLE1\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC1\NULF\n\
    \\131\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL8\SOH\SUBP Configuration for the LightStep tracer.\n\
    \ [#extension: envoy.tracers.lightstep]\n\
    \2% [#protodoc-title: LightStep tracer]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\ETB\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\CAN\STX\EM.\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\CAN\STX\EM.\n\
    \+\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\FS\STX(\ETX\SUB\GS Available propagation modes\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\FS\a\SYN\n\
    \P\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\RS\EOT\SO\SUBA Propagate trace context in the single header x-ot-span-context.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\RS\EOT\t\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\RS\f\r\n\
    \I\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX!\EOT\DC2\SUB: Propagate trace context using LightStep's native format.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX!\EOT\r\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX!\DLE\DC1\n\
    \=\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX$\EOT\v\SUB. Propagate trace context using the b3 format.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX$\EOT\ACK\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX$\t\n\
    \\n\
    \O\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ETX\DC2\ETX'\EOT\SYN\SUB@ Propagation trace context using the w3 trace-context standard.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETX'\EOT\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\STX\DC2\ETX'\DC4\NAK\n\
    \O\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX+\STXH\SUBB The cluster manager cluster that hosts the LightStep collectors.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX+\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX+\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX+\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX+\USG\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX+ F\n\
    \c\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT/\STX0S\SUBU File containing the access token to the `LightStep\n\
    \ <https://lightstep.com/>`_ API.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX/\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX/\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX/\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX0\ACKR\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\SOH\b\ETX\DC2\ETX0\a\CAN\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\242\232\128K\DC2\ETX0\SUBQ\n\
    \M\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX3\STX&\SUB@ Access token to the `LightStep <https://lightstep.com/>`_ API.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX3\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX3\NAK!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX3$%\n\
    \?\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT6\STX7H\SUB1 Propagation modes to use by LightStep's tracer.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX6\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX6\ESC,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX6/0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX7\ACKG\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\175\b\DC2\DC2\ETX7\aFb\ACKproto3"