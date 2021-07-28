{- This file was auto-generated from envoy/config/cluster/v3/circuit_breaker.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Cluster.V3.CircuitBreaker (
        CircuitBreakers(), CircuitBreakers'Thresholds(),
        CircuitBreakers'Thresholds'RetryBudget()
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
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.thresholds' @:: Lens' CircuitBreakers [CircuitBreakers'Thresholds]@
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.vec'thresholds' @:: Lens' CircuitBreakers (Data.Vector.Vector CircuitBreakers'Thresholds)@ -}
data CircuitBreakers
  = CircuitBreakers'_constructor {_CircuitBreakers'thresholds :: !(Data.Vector.Vector CircuitBreakers'Thresholds),
                                  _CircuitBreakers'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CircuitBreakers where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CircuitBreakers "thresholds" [CircuitBreakers'Thresholds] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'thresholds
           (\ x__ y__ -> x__ {_CircuitBreakers'thresholds = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CircuitBreakers "vec'thresholds" (Data.Vector.Vector CircuitBreakers'Thresholds) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'thresholds
           (\ x__ y__ -> x__ {_CircuitBreakers'thresholds = y__}))
        Prelude.id
instance Data.ProtoLens.Message CircuitBreakers where
  messageName _
    = Data.Text.pack "envoy.config.cluster.v3.CircuitBreakers"
  packedMessageDescriptor _
    = "\n\
      \\SICircuitBreakers\DC2S\n\
      \\n\
      \thresholds\CAN\SOH \ETX(\v23.envoy.config.cluster.v3.CircuitBreakers.ThresholdsR\n\
      \thresholds\SUB\234\ACK\n\
      \\n\
      \Thresholds\DC2K\n\
      \\bpriority\CAN\SOH \SOH(\SO2%.envoy.config.core.v3.RoutingPriorityR\bpriorityB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2E\n\
      \\SImax_connections\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOmaxConnections\DC2N\n\
      \\DC4max_pending_requests\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2maxPendingRequests\DC2?\n\
      \\fmax_requests\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\vmaxRequests\DC2=\n\
      \\vmax_retries\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
      \maxRetries\DC2b\n\
      \\fretry_budget\CAN\b \SOH(\v2?.envoy.config.cluster.v3.CircuitBreakers.Thresholds.RetryBudgetR\vretryBudget\DC2'\n\
      \\SItrack_remaining\CAN\ACK \SOH(\bR\SOtrackRemaining\DC2N\n\
      \\DC4max_connection_pools\CAN\a \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2maxConnectionPools\SUB\226\SOH\n\
      \\vRetryBudget\DC2=\n\
      \\SObudget_percent\CAN\SOH \SOH(\v2\SYN.envoy.type.v3.PercentR\rbudgetPercent\DC2P\n\
      \\NAKmin_retry_concurrency\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC3minRetryConcurrency:B\154\197\136\RS=\n\
      \;envoy.api.v2.cluster.CircuitBreakers.Thresholds.RetryBudget:6\154\197\136\RS1\n\
      \/envoy.api.v2.cluster.CircuitBreakers.Thresholds:+\154\197\136\RS&\n\
      \$envoy.api.v2.cluster.CircuitBreakers"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        thresholds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "thresholds"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CircuitBreakers'Thresholds)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"thresholds")) ::
              Data.ProtoLens.FieldDescriptor CircuitBreakers
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, thresholds__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CircuitBreakers'_unknownFields
        (\ x__ y__ -> x__ {_CircuitBreakers'_unknownFields = y__})
  defMessage
    = CircuitBreakers'_constructor
        {_CircuitBreakers'thresholds = Data.Vector.Generic.empty,
         _CircuitBreakers'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CircuitBreakers
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld CircuitBreakers'Thresholds
             -> Data.ProtoLens.Encoding.Bytes.Parser CircuitBreakers
        loop x mutable'thresholds
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'thresholds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'thresholds)
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
                              (Data.ProtoLens.Field.field @"vec'thresholds")
                              frozen'thresholds
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "thresholds"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'thresholds y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'thresholds
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'thresholds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'thresholds)
          "CircuitBreakers"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'thresholds") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CircuitBreakers where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CircuitBreakers'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CircuitBreakers'thresholds x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.priority' @:: Lens' CircuitBreakers'Thresholds Proto.Envoy.Config.Core.V3.Base.RoutingPriority@
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.maxConnections' @:: Lens' CircuitBreakers'Thresholds Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.maybe'maxConnections' @:: Lens' CircuitBreakers'Thresholds (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.maxPendingRequests' @:: Lens' CircuitBreakers'Thresholds Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.maybe'maxPendingRequests' @:: Lens' CircuitBreakers'Thresholds (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.maxRequests' @:: Lens' CircuitBreakers'Thresholds Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.maybe'maxRequests' @:: Lens' CircuitBreakers'Thresholds (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.maxRetries' @:: Lens' CircuitBreakers'Thresholds Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.maybe'maxRetries' @:: Lens' CircuitBreakers'Thresholds (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.retryBudget' @:: Lens' CircuitBreakers'Thresholds CircuitBreakers'Thresholds'RetryBudget@
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.maybe'retryBudget' @:: Lens' CircuitBreakers'Thresholds (Prelude.Maybe CircuitBreakers'Thresholds'RetryBudget)@
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.trackRemaining' @:: Lens' CircuitBreakers'Thresholds Prelude.Bool@
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.maxConnectionPools' @:: Lens' CircuitBreakers'Thresholds Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.maybe'maxConnectionPools' @:: Lens' CircuitBreakers'Thresholds (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data CircuitBreakers'Thresholds
  = CircuitBreakers'Thresholds'_constructor {_CircuitBreakers'Thresholds'priority :: !Proto.Envoy.Config.Core.V3.Base.RoutingPriority,
                                             _CircuitBreakers'Thresholds'maxConnections :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                             _CircuitBreakers'Thresholds'maxPendingRequests :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                             _CircuitBreakers'Thresholds'maxRequests :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                             _CircuitBreakers'Thresholds'maxRetries :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                             _CircuitBreakers'Thresholds'retryBudget :: !(Prelude.Maybe CircuitBreakers'Thresholds'RetryBudget),
                                             _CircuitBreakers'Thresholds'trackRemaining :: !Prelude.Bool,
                                             _CircuitBreakers'Thresholds'maxConnectionPools :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                             _CircuitBreakers'Thresholds'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CircuitBreakers'Thresholds where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds "priority" Proto.Envoy.Config.Core.V3.Base.RoutingPriority where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'priority
           (\ x__ y__ -> x__ {_CircuitBreakers'Thresholds'priority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds "maxConnections" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'maxConnections
           (\ x__ y__
              -> x__ {_CircuitBreakers'Thresholds'maxConnections = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds "maybe'maxConnections" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'maxConnections
           (\ x__ y__
              -> x__ {_CircuitBreakers'Thresholds'maxConnections = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds "maxPendingRequests" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'maxPendingRequests
           (\ x__ y__
              -> x__ {_CircuitBreakers'Thresholds'maxPendingRequests = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds "maybe'maxPendingRequests" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'maxPendingRequests
           (\ x__ y__
              -> x__ {_CircuitBreakers'Thresholds'maxPendingRequests = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds "maxRequests" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'maxRequests
           (\ x__ y__ -> x__ {_CircuitBreakers'Thresholds'maxRequests = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds "maybe'maxRequests" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'maxRequests
           (\ x__ y__ -> x__ {_CircuitBreakers'Thresholds'maxRequests = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds "maxRetries" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'maxRetries
           (\ x__ y__ -> x__ {_CircuitBreakers'Thresholds'maxRetries = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds "maybe'maxRetries" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'maxRetries
           (\ x__ y__ -> x__ {_CircuitBreakers'Thresholds'maxRetries = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds "retryBudget" CircuitBreakers'Thresholds'RetryBudget where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'retryBudget
           (\ x__ y__ -> x__ {_CircuitBreakers'Thresholds'retryBudget = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds "maybe'retryBudget" (Prelude.Maybe CircuitBreakers'Thresholds'RetryBudget) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'retryBudget
           (\ x__ y__ -> x__ {_CircuitBreakers'Thresholds'retryBudget = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds "trackRemaining" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'trackRemaining
           (\ x__ y__
              -> x__ {_CircuitBreakers'Thresholds'trackRemaining = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds "maxConnectionPools" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'maxConnectionPools
           (\ x__ y__
              -> x__ {_CircuitBreakers'Thresholds'maxConnectionPools = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds "maybe'maxConnectionPools" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'maxConnectionPools
           (\ x__ y__
              -> x__ {_CircuitBreakers'Thresholds'maxConnectionPools = y__}))
        Prelude.id
instance Data.ProtoLens.Message CircuitBreakers'Thresholds where
  messageName _
    = Data.Text.pack
        "envoy.config.cluster.v3.CircuitBreakers.Thresholds"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Thresholds\DC2K\n\
      \\bpriority\CAN\SOH \SOH(\SO2%.envoy.config.core.v3.RoutingPriorityR\bpriorityB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2E\n\
      \\SImax_connections\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOmaxConnections\DC2N\n\
      \\DC4max_pending_requests\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2maxPendingRequests\DC2?\n\
      \\fmax_requests\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\vmaxRequests\DC2=\n\
      \\vmax_retries\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
      \maxRetries\DC2b\n\
      \\fretry_budget\CAN\b \SOH(\v2?.envoy.config.cluster.v3.CircuitBreakers.Thresholds.RetryBudgetR\vretryBudget\DC2'\n\
      \\SItrack_remaining\CAN\ACK \SOH(\bR\SOtrackRemaining\DC2N\n\
      \\DC4max_connection_pools\CAN\a \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2maxConnectionPools\SUB\226\SOH\n\
      \\vRetryBudget\DC2=\n\
      \\SObudget_percent\CAN\SOH \SOH(\v2\SYN.envoy.type.v3.PercentR\rbudgetPercent\DC2P\n\
      \\NAKmin_retry_concurrency\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC3minRetryConcurrency:B\154\197\136\RS=\n\
      \;envoy.api.v2.cluster.CircuitBreakers.Thresholds.RetryBudget:6\154\197\136\RS1\n\
      \/envoy.api.v2.cluster.CircuitBreakers.Thresholds"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        priority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RoutingPriority)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"priority")) ::
              Data.ProtoLens.FieldDescriptor CircuitBreakers'Thresholds
        maxConnections__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_connections"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxConnections")) ::
              Data.ProtoLens.FieldDescriptor CircuitBreakers'Thresholds
        maxPendingRequests__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_pending_requests"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxPendingRequests")) ::
              Data.ProtoLens.FieldDescriptor CircuitBreakers'Thresholds
        maxRequests__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_requests"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxRequests")) ::
              Data.ProtoLens.FieldDescriptor CircuitBreakers'Thresholds
        maxRetries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_retries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxRetries")) ::
              Data.ProtoLens.FieldDescriptor CircuitBreakers'Thresholds
        retryBudget__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retry_budget"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CircuitBreakers'Thresholds'RetryBudget)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retryBudget")) ::
              Data.ProtoLens.FieldDescriptor CircuitBreakers'Thresholds
        trackRemaining__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "track_remaining"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"trackRemaining")) ::
              Data.ProtoLens.FieldDescriptor CircuitBreakers'Thresholds
        maxConnectionPools__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_connection_pools"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxConnectionPools")) ::
              Data.ProtoLens.FieldDescriptor CircuitBreakers'Thresholds
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, priority__field_descriptor),
           (Data.ProtoLens.Tag 2, maxConnections__field_descriptor),
           (Data.ProtoLens.Tag 3, maxPendingRequests__field_descriptor),
           (Data.ProtoLens.Tag 4, maxRequests__field_descriptor),
           (Data.ProtoLens.Tag 5, maxRetries__field_descriptor),
           (Data.ProtoLens.Tag 8, retryBudget__field_descriptor),
           (Data.ProtoLens.Tag 6, trackRemaining__field_descriptor),
           (Data.ProtoLens.Tag 7, maxConnectionPools__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CircuitBreakers'Thresholds'_unknownFields
        (\ x__ y__
           -> x__ {_CircuitBreakers'Thresholds'_unknownFields = y__})
  defMessage
    = CircuitBreakers'Thresholds'_constructor
        {_CircuitBreakers'Thresholds'priority = Data.ProtoLens.fieldDefault,
         _CircuitBreakers'Thresholds'maxConnections = Prelude.Nothing,
         _CircuitBreakers'Thresholds'maxPendingRequests = Prelude.Nothing,
         _CircuitBreakers'Thresholds'maxRequests = Prelude.Nothing,
         _CircuitBreakers'Thresholds'maxRetries = Prelude.Nothing,
         _CircuitBreakers'Thresholds'retryBudget = Prelude.Nothing,
         _CircuitBreakers'Thresholds'trackRemaining = Data.ProtoLens.fieldDefault,
         _CircuitBreakers'Thresholds'maxConnectionPools = Prelude.Nothing,
         _CircuitBreakers'Thresholds'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CircuitBreakers'Thresholds
          -> Data.ProtoLens.Encoding.Bytes.Parser CircuitBreakers'Thresholds
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
                                       "priority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priority") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_connections"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxConnections") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_pending_requests"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxPendingRequests") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_requests"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxRequests") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_retries"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxRetries") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "retry_budget"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryBudget") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "track_remaining"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"trackRemaining") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_connection_pools"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxConnectionPools") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Thresholds"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"priority") _x
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'maxConnections") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'maxPendingRequests") _x
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
                             (Data.ProtoLens.Field.field @"maybe'maxRequests") _x
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
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'maxRetries") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                                   (Data.ProtoLens.Field.field @"maybe'retryBudget") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
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
                                        (Data.ProtoLens.Field.field @"trackRemaining") _x
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
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'maxConnectionPools") _x
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
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData CircuitBreakers'Thresholds where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CircuitBreakers'Thresholds'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CircuitBreakers'Thresholds'priority x__)
                (Control.DeepSeq.deepseq
                   (_CircuitBreakers'Thresholds'maxConnections x__)
                   (Control.DeepSeq.deepseq
                      (_CircuitBreakers'Thresholds'maxPendingRequests x__)
                      (Control.DeepSeq.deepseq
                         (_CircuitBreakers'Thresholds'maxRequests x__)
                         (Control.DeepSeq.deepseq
                            (_CircuitBreakers'Thresholds'maxRetries x__)
                            (Control.DeepSeq.deepseq
                               (_CircuitBreakers'Thresholds'retryBudget x__)
                               (Control.DeepSeq.deepseq
                                  (_CircuitBreakers'Thresholds'trackRemaining x__)
                                  (Control.DeepSeq.deepseq
                                     (_CircuitBreakers'Thresholds'maxConnectionPools x__) ()))))))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.budgetPercent' @:: Lens' CircuitBreakers'Thresholds'RetryBudget Proto.Envoy.Type.V3.Percent.Percent@
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.maybe'budgetPercent' @:: Lens' CircuitBreakers'Thresholds'RetryBudget (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.minRetryConcurrency' @:: Lens' CircuitBreakers'Thresholds'RetryBudget Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields.maybe'minRetryConcurrency' @:: Lens' CircuitBreakers'Thresholds'RetryBudget (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data CircuitBreakers'Thresholds'RetryBudget
  = CircuitBreakers'Thresholds'RetryBudget'_constructor {_CircuitBreakers'Thresholds'RetryBudget'budgetPercent :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent),
                                                         _CircuitBreakers'Thresholds'RetryBudget'minRetryConcurrency :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                                         _CircuitBreakers'Thresholds'RetryBudget'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CircuitBreakers'Thresholds'RetryBudget where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds'RetryBudget "budgetPercent" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'RetryBudget'budgetPercent
           (\ x__ y__
              -> x__
                   {_CircuitBreakers'Thresholds'RetryBudget'budgetPercent = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds'RetryBudget "maybe'budgetPercent" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'RetryBudget'budgetPercent
           (\ x__ y__
              -> x__
                   {_CircuitBreakers'Thresholds'RetryBudget'budgetPercent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds'RetryBudget "minRetryConcurrency" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'RetryBudget'minRetryConcurrency
           (\ x__ y__
              -> x__
                   {_CircuitBreakers'Thresholds'RetryBudget'minRetryConcurrency = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CircuitBreakers'Thresholds'RetryBudget "maybe'minRetryConcurrency" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CircuitBreakers'Thresholds'RetryBudget'minRetryConcurrency
           (\ x__ y__
              -> x__
                   {_CircuitBreakers'Thresholds'RetryBudget'minRetryConcurrency = y__}))
        Prelude.id
instance Data.ProtoLens.Message CircuitBreakers'Thresholds'RetryBudget where
  messageName _
    = Data.Text.pack
        "envoy.config.cluster.v3.CircuitBreakers.Thresholds.RetryBudget"
  packedMessageDescriptor _
    = "\n\
      \\vRetryBudget\DC2=\n\
      \\SObudget_percent\CAN\SOH \SOH(\v2\SYN.envoy.type.v3.PercentR\rbudgetPercent\DC2P\n\
      \\NAKmin_retry_concurrency\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC3minRetryConcurrency:B\154\197\136\RS=\n\
      \;envoy.api.v2.cluster.CircuitBreakers.Thresholds.RetryBudget"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        budgetPercent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "budget_percent"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'budgetPercent")) ::
              Data.ProtoLens.FieldDescriptor CircuitBreakers'Thresholds'RetryBudget
        minRetryConcurrency__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_retry_concurrency"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minRetryConcurrency")) ::
              Data.ProtoLens.FieldDescriptor CircuitBreakers'Thresholds'RetryBudget
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, budgetPercent__field_descriptor),
           (Data.ProtoLens.Tag 2, minRetryConcurrency__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CircuitBreakers'Thresholds'RetryBudget'_unknownFields
        (\ x__ y__
           -> x__
                {_CircuitBreakers'Thresholds'RetryBudget'_unknownFields = y__})
  defMessage
    = CircuitBreakers'Thresholds'RetryBudget'_constructor
        {_CircuitBreakers'Thresholds'RetryBudget'budgetPercent = Prelude.Nothing,
         _CircuitBreakers'Thresholds'RetryBudget'minRetryConcurrency = Prelude.Nothing,
         _CircuitBreakers'Thresholds'RetryBudget'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CircuitBreakers'Thresholds'RetryBudget
          -> Data.ProtoLens.Encoding.Bytes.Parser CircuitBreakers'Thresholds'RetryBudget
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
                                       "budget_percent"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"budgetPercent") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "min_retry_concurrency"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"minRetryConcurrency") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RetryBudget"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'budgetPercent") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'minRetryConcurrency") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CircuitBreakers'Thresholds'RetryBudget where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CircuitBreakers'Thresholds'RetryBudget'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CircuitBreakers'Thresholds'RetryBudget'budgetPercent x__)
                (Control.DeepSeq.deepseq
                   (_CircuitBreakers'Thresholds'RetryBudget'minRetryConcurrency x__)
                   ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \-envoy/config/cluster/v3/circuit_breaker.proto\DC2\ETBenvoy.config.cluster.v3\SUB\USenvoy/config/core/v3/base.proto\SUB\ESCenvoy/type/v3/percent.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\128\b\n\
    \\SICircuitBreakers\DC2S\n\
    \\n\
    \thresholds\CAN\SOH \ETX(\v23.envoy.config.cluster.v3.CircuitBreakers.ThresholdsR\n\
    \thresholds\SUB\234\ACK\n\
    \\n\
    \Thresholds\DC2K\n\
    \\bpriority\CAN\SOH \SOH(\SO2%.envoy.config.core.v3.RoutingPriorityR\bpriorityB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2E\n\
    \\SImax_connections\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOmaxConnections\DC2N\n\
    \\DC4max_pending_requests\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2maxPendingRequests\DC2?\n\
    \\fmax_requests\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\vmaxRequests\DC2=\n\
    \\vmax_retries\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
    \maxRetries\DC2b\n\
    \\fretry_budget\CAN\b \SOH(\v2?.envoy.config.cluster.v3.CircuitBreakers.Thresholds.RetryBudgetR\vretryBudget\DC2'\n\
    \\SItrack_remaining\CAN\ACK \SOH(\bR\SOtrackRemaining\DC2N\n\
    \\DC4max_connection_pools\CAN\a \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2maxConnectionPools\SUB\226\SOH\n\
    \\vRetryBudget\DC2=\n\
    \\SObudget_percent\CAN\SOH \SOH(\v2\SYN.envoy.type.v3.PercentR\rbudgetPercent\DC2P\n\
    \\NAKmin_retry_concurrency\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC3minRetryConcurrency:B\154\197\136\RS=\n\
    \;envoy.api.v2.cluster.CircuitBreakers.Thresholds.RetryBudget:6\154\197\136\RS1\n\
    \/envoy.api.v2.cluster.CircuitBreakers.Thresholds:+\154\197\136\RS&\n\
    \$envoy.api.v2.cluster.CircuitBreakersBF\n\
    \%io.envoyproxy.envoy.config.cluster.v3B\DC3CircuitBreakerProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\253\GS\n\
    \\ACK\DC2\EOT\NUL\NULh\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL \n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL%\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL+\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL>\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL4\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SO\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SI\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\172\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\SYN\NULh\SOH\SUBy :ref:`Circuit breaking<arch_overview_circuit_break>` settings can be\n\
    \ specified individually for each defined priority.\n\
    \2% [#protodoc-title: Circuit breakers]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SYN\b\ETB\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\ETB\STX\CAN-\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\ETB\STX\CAN-\n\
    \\165\SOH\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\GS\STX`\ETX\SUB\150\SOH A Thresholds defines CircuitBreaker settings for a\n\
    \ :ref:`RoutingPriority<envoy_v3_api_enum_config.core.v3.RoutingPriority>`.\n\
    \ [#next-free-field: 9]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\GS\n\
    \\DC4\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT\RS\EOT\US:\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT\RS\EOT\US:\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\ETX\NUL\DC2\EOT!\EOT1\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\ETX\NUL\SOH\DC2\ETX!\f\ETB\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\ETX\NUL\a\DC2\EOT\"\ACK#H\n\
    \\DC4\n\
    \\f\EOT\NUL\ETX\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT\"\ACK#H\n\
    \\172\STX\n\
    \\b\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\DC2\ETX*\ACK)\SUB\154\STX Specifies the limit on concurrent retries as a percentage of the sum of active requests and\n\
    \ active pending requests. For example, if there are 100 active requests and the\n\
    \ budget_percent is set to 25, there may be 25 active retries.\n\
    \\n\
    \ This parameter is optional. Defaults to 20%.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX*\ACK\NAK\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX*\SYN$\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX*'(\n\
    \\209\SOH\n\
    \\b\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\DC2\ETX0\ACK<\SUB\191\SOH Specifies the minimum retry concurrency allowed for the retry budget. The limit on the\n\
    \ number of active retries may never go below this number.\n\
    \\n\
    \ This parameter is optional. Defaults to 3.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX0\ACK!\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX0\"7\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX0:;\n\
    \\142\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX5\EOTX\SUB\DEL The :ref:`RoutingPriority<envoy_v3_api_enum_config.core.v3.RoutingPriority>`\n\
    \ the specified CircuitBreaker settings apply to.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX5\EOT\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX5\FS$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX5'(\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETX5)W\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\DLE\DC2\ETX5*V\n\
    \\136\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX9\EOT4\SUBy The maximum number of connections that Envoy will make to the upstream\n\
    \ cluster. If not specified, the default is 1024.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX9\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX9 /\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX923\n\
    \\142\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETX=\EOT9\SUB\DEL The maximum number of pending requests that Envoy will allow to the\n\
    \ upstream cluster. If not specified, the default is 1024.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ACK\DC2\ETX=\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX= 4\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX=78\n\
    \\142\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\ETXA\EOT1\SUB\DEL The maximum number of parallel requests that Envoy will make to the\n\
    \ upstream cluster. If not specified, the default is 1024.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ACK\DC2\ETXA\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\ETXA ,\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\ETXA/0\n\
    \\139\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\EOT\DC2\ETXE\EOT0\SUB| The maximum number of parallel retries that Envoy will allow to the\n\
    \ upstream cluster. If not specified, the default is 3.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ACK\DC2\ETXE\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\SOH\DC2\ETXE +\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ETX\DC2\ETXE./\n\
    \\244\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ENQ\DC2\ETXN\EOT!\SUB\228\SOH Specifies a limit on concurrent retries in relation to the number of active requests. This\n\
    \ parameter is optional.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \    If this field is set, the retry budget will override any configured retry circuit\n\
    \    breaker.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ACK\DC2\ETXN\EOT\SI\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\SOH\DC2\ETXN\DLE\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ETX\DC2\ETXN\US \n\
    \\219\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ACK\DC2\ETXX\EOT\GS\SUB\203\STX If track_remaining is true, then stats will be published that expose\n\
    \ the number of resources remaining until the circuit breakers open. If\n\
    \ not specified, the default is false.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \    If a retry budget is used in lieu of the max_retries circuit breaker,\n\
    \    the remaining retry resources remaining will not be tracked.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ENQ\DC2\ETXX\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\SOH\DC2\ETXX\t\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ETX\DC2\ETXX\ESC\FS\n\
    \\214\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\a\DC2\ETX_\EOT9\SUB\198\STX The maximum number of connection pools per cluster that Envoy will concurrently support at\n\
    \ once. If not specified, the default is unlimited. Set this for clusters which create a\n\
    \ large number of connection pools. See\n\
    \ :ref:`Circuit Breaking <arch_overview_circuit_break_cluster_maximum_connection_pools>` for\n\
    \ more details.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\ACK\DC2\ETX_\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\SOH\DC2\ETX_ 4\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\ETX\DC2\ETX_78\n\
    \\134\ETX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXg\STX%\SUB\248\STX If multiple :ref:`Thresholds<envoy_v3_api_msg_config.cluster.v3.CircuitBreakers.Thresholds>`\n\
    \ are defined with the same :ref:`RoutingPriority<envoy_v3_api_enum_config.core.v3.RoutingPriority>`,\n\
    \ the first one in the list is used. If no Thresholds is defined for a given\n\
    \ :ref:`RoutingPriority<envoy_v3_api_enum_config.core.v3.RoutingPriority>`, the default values\n\
    \ are used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETXg\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXg\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXg\SYN \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXg#$b\ACKproto3"